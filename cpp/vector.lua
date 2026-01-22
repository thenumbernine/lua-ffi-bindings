--[[
std::vector class, written in LuaJIT, but written to be memory-compatible with c++ (at least gcc with glibc < 4.8 so far)
TODO maybe move that to its own repo, like std-ffi.vector ?
--]]
local ffi = require 'ffi'
local assert = require 'ext.assert'
local range = require 'ext.range'
require 'ffi.req' 'c.stdlib'	-- malloc, free

local voidp = ffi.typeof'void*'

-- TODO I want to move functions into one place
-- but as soon as I switch __index to read the .metatable, struct:isa() stops working ...
local vectorbase = {}

function vectorbase:__gc()
	-- I could use ffi.new and just trust luajit for the gc
	-- but then this wouldn't be so compatible with casting std::vector<> memory blobs directly
	if self.v ~= nil then
		ffi.C.free(self.v)
	end
end

function vectorbase:size()
	return self.finish - self.start
end

-- lua compat
vectorbase.__len = vectorbase.size

function vectorbase:capacity()
--DEBUG(ffi.cpp.vector): print'vectorbase.capacity()'
--DEBUG(ffi.cpp.vector): print('ffi.typeof(self) = ', ffi.typeof(self))
--DEBUG(ffi.cpp.vector): print('(void*)self = ', tostring(ffi.cast('void*', self)))
-- TODO how come printing pointers is crashing?
--DEBUG(ffi.cpp.vector): print('self.start', tostring(self.start))
--DEBUG(ffi.cpp.vector): -- print('self.start', ''..self.start)
--DEBUG(ffi.cpp.vector): -- print('self.start', tostring(ffi.cast('void*', self.start)))
--DEBUG(ffi.cpp.vector): -- print('self.endOfStorage', tostring(ffi.cast('void*', self.endOfStorage)))
--DEBUG(ffi.cpp.vector): print('self.endOfStorage', tostring(self.endOfStorage))
--DEBUG(ffi.cpp.vector): print('returning', tostring(self.endOfStorage - self.start))
	return self.endOfStorage - self.start
end

-- safe access
-- returns ref for cdata or value for primitives (which means doesn't work for writing)
function vectorbase:at(i)
	if i < 0 or i >= self.finish - self.start then
		return nil, 'out of bounds'
	end
	return self.start[i]
end

-- safe access
-- since there's no refs in luajit, here's a ptr version
function vectorbase:atPtr(i)
	if i < 0 or i >= self.finish - self.start then
		return nil, 'out of bounds'
	end
	return self.start + i
end

function vectorbase:__ipairs()
	-- slow impl
	return coroutine.wrap(function()
		-- TODO validate size every iteration?
		-- or just claim that modifying invalidates iteration...
		for i=0,self:size()-1 do
			coroutine.yield(i, self.v[i])
		end
	end)
end

function vectorbase:reserve(newcap)
--DEBUG(ffi.cpp.vector): print('vectorbase.reserve', newcap)
	local oldcap = self:capacity()
--DEBUG(ffi.cpp.vector): print('oldcap', oldcap)
	if newcap <= oldcap then
--DEBUG(ffi.cpp.vector): print('newcap <= oldcap, returning')
		return
	end

	-- add 25%, rounded up
	newcap = newcap
		+ bit.rshift(newcap, 2)
		+ (bit.band(newcap, 3) ~= 0 and 1 or 0)
	-- round up to 16
	newcap = bit.lshift(
		bit.rshift(newcap, 4)
		+ (bit.band(newcap, 15) ~= 0 and 1 or 0)
		, 4)

	-- so self:capacity() < newcap
	-- TODO realloc?
	local bytes = ffi.sizeof(self.T) * newcap
--DEBUG(ffi.cpp.vector): print('allocating '..tostring(bytes)..' bytes')
	local newv = ffi.C.malloc(bytes)
	if newv == nil then error("malloc failed to allocate "..bytes) end
	local size = self:size()
	assert.le(size, oldcap)
--DEBUG(ffi.cpp.vector): print('copying old', tostring(ffi.cast('void*', self.v)), 'to new', tostring(ffi.cast('void*', newv)), '#bytes', ffi.sizeof(self.T) * size)
	ffi.copy(newv, self.v, ffi.sizeof(self.T) * size)
	if self.v ~= nil then
--DEBUG(ffi.cpp.vector): print('freeing', tostring(ffi.cast('void*', self.v)))
		ffi.C.free(self.v)
	end
	self.v = newv
--DEBUG(ffi.cpp.vector): print('new v:', tostring(ffi.cast('void*', self.v)))
	self.finish = self.v + size
--DEBUG(ffi.cpp.vector): print('new finish:', tostring(ffi.cast('void*', self.finish)))
	self.endOfStorage = self.v + newcap
--DEBUG(ffi.cpp.vector): print('new endOfStorage:', tostring(ffi.cast('void*', self.endOfStorage)))
end

function vectorbase:resize(newsize)
--DEBUG(ffi.cpp.vector): print('vectorbase.resize', newsize)
	self:reserve(newsize)
	-- TODO ffi.fill with zero here?
	self.finish = self.v + newsize
--DEBUG(ffi.cpp.vector): assert.ge(self:size(), newsize)
end

function vectorbase:clear()
	self:resize(0)
end

function vectorbase:push_back(obj)
	self:resize(self:size() + 1)
--DEBUG(ffi.cpp.vector): assert.gt(self:size(), 0)
	self.finish[-1] = obj
end

function vectorbase:emplace_back()
	self:resize(self:size() + 1)
	return self.finish - 1
end

-- returns a ptr to the first element
function vectorbase:front()
	return self.start
end

-- returns a ptr to the last element
function vectorbase:back()
	assert.gt(self:size(), 0)
	return self.finish - 1
end

-- because the __index removes access from the object itself ...
vectorbase.data = vectorbase.front

-- TODO use iterators and coroutines?  even though they are horribly slow
vectorbase.begin = vectorbase.front

-- returns a ptr past the last element
function vectorbase:iend()
	return self.finish
end

vectorbase.rbegin = vectorbase.back

function vectorbase:rend()
	return self.start - 1
end

--[[
insert(where, ptr first, ptr last)
insert(where, ref value)
--]]
function vectorbase:insert(...)
	local n = select('#', ...)
	if n == 3 then
		local where, first, last = ...
--DEBUG(ffi.cpp.vector): first = ffi.cast(self.Tptr, first)
--DEBUG(ffi.cpp.vector): last = ffi.cast(self.Tptr, last)

		local numToCopy = last - first
		if numToCopy == 0 then return end
		assert.gt(numToCopy, 0)

		local offset = where - self.v
		assert.le(0, offset)
		assert.le(offset, self:size())

		local origSize = self:size()
		self:resize(self:size() + numToCopy)
		if offset < origSize then
			ffi.copy(self.v + offset + numToCopy, self.v + offset, ffi.sizeof(self.T) * (origSize - offset))
		end
		ffi.copy(self.v + offset, first, ffi.sizeof(self.T) * numToCopy)
	elseif n == 2 then
		local where, value = ...
		local offset = where - self.v
		assert.le(0, offset)
		assert.le(offset, self:size())
		self:resize(self:size() + 1)
		for i=self:size()-1,offset+1,-1 do
			self.v[i] = self.v[i-1]
		end
		self.v[offset] = value
	end
end

--[[
first = ptr into v, inclusive
last = ptr into v, exclusive
--]]
function vectorbase:erase(first, last)
	if first >= last then return end
	local iend = self:iend()
	assert.le(self.v, first)
	assert.le(first, iend)
	assert.le(self.v, last)
	assert.le(last, iend)
	local change = last - first
	-- [[
	while last < iend do
		first[0] = last[0]
		first = first + 1
		last = last + 1
	end
	--]]
	--[[
	local count = iend - last
	ffi.copy(first, last, ffi.sizeof(self.T) * count)
	--]]
	self.finish = self.finish - change
end

-- returns a Lua table of the elements.
function vectorbase:totable()
	return range(0,self:size()-1):mapi(function(i)
		return self.v[i]
	end)
end

function vectorbase:empty()
	return self.start == self.finish
end

function vectorbase:__tostring()
	local s = '['
	local sep = ''
	for i=0,self:size()-1 do
		s = s .. sep .. self.v[i]
		sep = ', '
	end
	return s .. ']'
end


local function makeVectorType(T)
	T = ffi.typeof(T)
	local Tptr = ffi.typeof('$*', T)
	local ctype = ffi.typeof([[
struct {
	union {
		$ v;
		$ start;
	};
	$ finish;
	$ endOfStorage;
}
]], Tptr, Tptr, Tptr, Tptr)

	local mt = {}

	mt.T = T
	mt.Tptr = Tptr

	-- __index for numbers to lookup in .v[]
	function mt:__index(k)
		-- NOTICE
		-- getmetatable(any cdata) returns the string "ffi"
		-- debug.getmetatable(any cdata) returns some other table internal to luajit
		-- is there no possible way to get back the metatype table?
		-- I guess I'll have to assign "metatable.metatable = metatable" in struct-lua ...
		-- see if the metatype has anything
-- why does accessing self.metatable here make the function 'assert(struct:isa(metatype)) fail ...
--print(self.metatable)
--print('mt', mt, type(self), ffi.typeof(self))
		--local mv = self.metatable[k]
		local mv = mt[k]
		if mv ~= nil then return mv end
		-- then treat the index like vector access
		if k < 0 or k >= self:size() then
			error("got out of bounds index: "..tostring(k))
		end
		if self:size() > self:capacity() then
			error("got a bad size "..self:size().." vs capacity "..self:capacity())
		end
		if self:capacity() * ffi.sizeof(self.type) ~= ffi.sizeof(self.v) then
			-- TODO don't use capacity, just use ffi.sizeof ?
			error("capacity is misaligned")
		end
		return self.v[k]
	end

	function mt:__newindex(k, v)
		-- see if we are writing a field
		if type(k) ~= 'number' then
			rawset(self, k, v)
			return
		end
		-- otherwise treat number access as vector access
		if k < 0 or k >= self:size() then
			error("got out of bounds index: "..tostring(k))
		end
		if self:size() > self:capacity() then
			error("got a bad size "..self:size().." vs capacity "..self:capacity())
		end
		if self:capacity() * ffi.sizeof(self.type) ~= ffi.sizeof(self.v) then
			-- TODO don't use capacity, just use ffi.sizeof ?
			error("capacity is misaligned")
		end
		rawget(self, 'v')[k] = v
	end

	-- return the vector constructor
	function mt:__new(arg)
		local o = ffi.new(self)
		o.start = nil
		o.finish = nil
		o.endOfStorage = nil
		o:reserve(32)
		if arg ~= nil then
			if type(arg) == 'number' then
				o:resize(arg)
			elseif type(arg) == 'table' then
				o:resize(#arg)
				for i,v in ipairs(arg) do
					o.v[i-1] = v
				end
			end
		end
		return o
	end

	for k,v in pairs(vectorbase) do
		mt[k] = v
	end

	ffi.metatype(ctype, mt)

	-- stl vector in my gcc / linux is 24 bytes
	-- template type of our vector ... 8 bytes mind you
	assert.eq(ffi.sizeof(ctype), 3*ffi.sizeof(voidp))	-- 24
	assert.eq(ffi.sizeof(Tptr), ffi.sizeof(voidp))	-- 8

	return ctype
end

return setmetatable({}, {
	__index = {
		-- allow outside access to vectorbase
		-- so anyone wanting to tweak the inherited class before creating a vector can do so
		vectorbase = vectorbase,
	},
	__call = function(t, ...)
		return makeVectorType(...)
	end,
})
