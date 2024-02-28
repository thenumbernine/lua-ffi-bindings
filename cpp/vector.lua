--[[
Here's my attempt at a STL class remade into Lua.
Of course the API isn't exact, since C++ and Lua do different member method calls, inheritence, templates, etc.

I'm not sure whether to put this here or in lua-ext.
This does depend on my lua-ext project.

.v is the field I'm using to hold raw access to the pointer, and using everywhere outside this because calling a function to access a field is too slow.
--]]
local ffi = require 'ffi'
local class = require 'ext.class'
local range = require 'ext.range'

-- [=[
--[[
stl vector class
have I made this before?

TODO here's an idea for embedding vectors in other ffi structs ...
make vector a ffi struct itself
give it a metatype
and generate it per-type that's used (and maybe store in package.loaded['ffi.cpp.vector.<typename>'])
--]]
local vector = class()

-- enable this and then swap out all your .v[] with []
-- no promises it won't go horribly slow though
vector.useIndexOp = false

-- TODO how about a ctor based on ptr and size?
function vector:init(ctype, arg)
	self.type = ctype
	self.size = 0
	self.capacity = 0
	self:reserve(32)
	if arg ~= nil then
		if type(arg) == 'number' then
			self:resize(arg)
		elseif type(arg) == 'table' then
			self:resize(#arg)
			for i,v in ipairs(arg) do
				self.v[i-1] = v
			end
		end
	end

	if self.useIndexOp then
		local table = require 'ext.table'
		local mt = table(vector)
		function mt:__index(k)
			-- see if the metatype has anything
			local mv = mt[k]
			if mv ~= nil then return mv end
			-- then treat the index like vector access
			if k < 0 or k >= self.size then
				error("got out of bounds index: "..tostring(k))
			end
			if self.size > self.capacity then
				error("got a bad size "..self.size.." vs capacity "..self.capacity)
			end
			if self.capacity * ffi.sizeof(self.type) ~= ffi.sizeof(self.v) then
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
			if k < 0 or k >= self.size then
				error("got out of bounds index: "..tostring(k))
			end
			if self.size > self.capacity then
				error("got a bad size "..self.size.." vs capacity "..self.capacity)
			end
			if self.capacity * ffi.sizeof(self.type) ~= ffi.sizeof(self.v) then
				-- TODO don't use capacity, just use ffi.sizeof ?
				error("capacity is misaligned")
			end
			rawget(self, 'v')[k] = v
		end
		setmetatable(self, mt)
	end
end

function vector:__ipairs()
	return coroutine.wrap(function()
		for i=0,self.size-1 do
			coroutine.yield(i, self.v[i])
		end
	end)
end

-- [[ return the self.v object as a raw pointer / array
function vector:alloc(ctype, capacity)
	return ffi.new(ctype..'[?]', capacity)
end
--]]
-- [[ return the self.v object with bounds-checking

--]]

function vector:reserve(newcap)
	if newcap <= self.capacity then return end
	-- so self.capacity < newcap
	local newv = self:alloc(self.type, newcap)
	assert(self.size <= self.capacity)
	ffi.copy(newv, self.v, ffi.sizeof(self.type) * self.size)
	self.v = newv
	self.capacity = newcap
end

function vector:resize(newsize)
	newsize = assert(tonumber(newsize))
	-- TODO increase by %age?  like 20% or so? with a min threshold of 32 / increments of 32?
	self:reserve((math.floor(newsize / 32) + 1) * 32)
	-- TODO ffi.fill with zero here?
	self.size = newsize
end

function vector:clear()
	self:resize(0)
end

function vector:push_back(obj)
	self:resize(self.size + 1)
	self.v[self.size - 1] = obj
end

function vector:emplace_back()
	self:resize(self.size + 1)
	return self:back()
end

-- returns a ptr to the first element
function vector:front()
	return self.v
end

-- returns a ptr to the last element
function vector:back()
	assert(self.size > 0)
	return self.v + self.size - 1
end

-- because the __index removes access from the object itself ...
vector.data = vector.front

-- TODO use iterators and coroutines?  even though they are horribly slow
vector.begin = vector.front

-- returns a ptr past the last element
function vector:iend()
	return self.v + self.size
end

vector.rbegin = vector.back

function vector:rend()
	return self.v - 1
end

--[[
insert(where, ptr first, ptr last)
insert(where, ref value)
--]]
function vector:insert(...)
	local n = select('#', ...)
	if n == 3 then
		local where, first, last = ...
		first = ffi.cast(self.type..'*', first)
		last = ffi.cast(self.type..'*', last)

		local numToCopy = last - first
		if numToCopy == 0 then return end
		assert(numToCopy > 0)

		local offset = where - self.v
		assert(offset >= 0 and offset <= self.size)

		local origSize = self.size
		self:resize(self.size + numToCopy)
		if offset < origSize then
			ffi.copy(self.v + offset + numToCopy, self.v + offset, ffi.sizeof(self.type) * (origSize - offset))
		end
		ffi.copy(self.v + offset, first, ffi.sizeof(self.type) * numToCopy)
	elseif n == 2 then
		local where, value = ...
		local offset = where - self.v
		assert(0 <= offset and offset <= self.size)
		self:resize(self.size + 1)
		for i=self.size-1,offset+1,-1 do
			self.v[i] = self.v[i-1]
		end
		self.v[offset] = value
	end
end

--[[
first = ptr into v, inclusive
last = ptr into v, exclusive
--]]
function vector:erase(first, last)
	if first >= last then return end
	local iend = self:iend()
	assert(first >= self.v and first <= iend)
	assert(last >= self.v and last <= iend)
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
	ffi.copy(first, last, ffi.sizeof(T) * count)
	--]]
	self.size = self.size - change
end

-- returns a Lua table of the elements.
function vector:totable()
	return range(0,self.size-1):mapi(function(i)
		return self.v[i]
	end)
end

function vector:__len()
	--return rawget(self, 'size')
	return self.size
end

function vector:empty()
	return self.size == 0
end

function vector:__tostring()
	local s = '['
	local sep = ''
	for i=0,self.size-1 do
		s = s .. sep .. self.v[i]
		sep = ', '
	end
	return s .. ']'
end

--[[
local v = vector'int'
v:push_back(10)
print(v)
print(#v)
print(v[0])
v:push_back(20)
v:push_back(30)
local ip = ffi.new('int[3]', 1,2,3)
v:insert(v.v + 1, ip, ip + 3)
print(#v)
print(v)
os.exit()
--]]
--]=]

return vector
