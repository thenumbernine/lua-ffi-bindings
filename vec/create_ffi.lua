local table = require 'ext.table'
local allfields = table{'x', 'y', 'z', 'w'}

return function(dim, ctype, suffix, classCode)
	classCode = classCode or ''

	local vectorType = 'vec'..dim..suffix..'_t'
	local fields = table{unpack(allfields,1,dim)}

	local code = [=[
local ffi = require 'ffi'

ffi.cdef[[
typedef struct {
	]=]..ctype..' '..fields:concat(', ')..[=[;
} ]=]..vectorType..[=[;
]]

local vectorClass
vectorClass = ffi.metatype(']=]..vectorType..[=[', {
	__add = function(a,b)
		if type(b) == 'cdata' then
			return vectorClass( ]=]..fields:map(function(field) return 'a.'..field..' + b.'..field end):concat(', ')..[=[)
		end
		b = tonumber(b)
		if b == nil then error("can't handle "..tostring(b).." (type "..type(b)..")") end
		return vectorClass( ]=]..fields:map(function(field) return 'a.'..field..' + b' end):concat(', ')..[=[)
	end,
	__sub = function(a,b) 
		if type(b) == 'cdata' then
			return vectorClass( ]=]..fields:map(function(field) return 'a.'..field..' - b.'..field end):concat(', ')..[=[)
		end
		b = tonumber(b)
		if b == nil then error("can't handle "..tostring(b).." (type "..type(b)..")") end
		return vectorClass( ]=]..fields:map(function(field) return 'a.'..field..' - b' end):concat(', ')..[=[)
	end,
	__mul = function(a,b) 
		if type(b) == 'cdata' then
			return vectorClass( ]=]..fields:map(function(field) return 'a.'..field..' * b.'..field end):concat(', ')..[=[)
		end
		b = tonumber(b)
		if b == nil then error("can't handle "..tostring(b).." (type "..type(b)..")") end
		return vectorClass( ]=]..fields:map(function(field) return 'a.'..field..' * b' end):concat(', ')..[=[)
	end,
	__div = function(a,b)
		if type(b) == 'cdata' then
			return vectorClass( ]=]..fields:map(function(field) return 'a.'..field..' / b.'..field end):concat(', ')..[=[)
		end
		b = tonumber(b)
		if b == nil then error("can't handle "..tostring(b).." (type "..type(b)..")") end
		return vectorClass( ]=]..fields:map(function(field) return 'a.'..field..' / b' end):concat(', ')..[=[)
	end,
	__unm = function(v) return v * -1 end,
	__eq = function(a,b) 
		return ]=]..fields:map(function(field) return 'a.'..field..' == '..'b.'..field end):concat(' and ')..[=[
	end,
	__len = function(a) return a:length() end,
	__tostring = function(v)
		return ]=]..
			fields:map(function(field) return 'tostring(v.'..field..')' end):concat(' .. ", " .. ')
		..[=[
	end,
	__concat = function(a,b) return tostring(a) .. tostring(b) end,
	__index = {	-- TODO make __index point to self?
		sizeof = ffi.sizeof(']=]..vectorType..[=['),	
		type = ']=]..vectorType..[=[',
		elemType = ']=]..ctype..[=[',
		dim = ]=]..dim..[=[,	-- # is for length, dim is for dimension
		length = function(a) return math.sqrt(a:lenSq()) end,
		lenSq = function(a) return a:dot(a) end,
		dot = function(a,b) return ]=]..
			fields:map(function(field) return 'a.'..field..' * b.'..field end):concat(' + ')
		..[=[ end,
		normalize = function(v) return v / #v end,
		
		lInfLength = function(v)	-- L-infinite length
			local fp = v:ptr()
			local dist = math.abs(fp[0])
			for i=1,]=]..dim..[=[-1 do
				dist = math.max(dist, math.abs(fp[i]))
			end
			return dist
		end,
		l1Length = function(v)	--L-1 length
			local fp = v:ptr()
			local dist = math.abs(fp[0])
			for i=1,]=]..dim..[=[-1 do
				dist = dist + math.abs(fp[i])
			end
			return dist
		end,
		
		volume = function(v)
			return ]=] .. fields:map(function(field) return 'v.'..field end):concat(' * ') .. [=[
		end,
		
		set = function(self, v, v2, ...)
			if type(v) == 'cdata' then
				]=]..fields:map(function(field) return 'self.'..field..' = v.'..field end):concat(' ')..[=[
			elseif type(v) == 'table' then
				]=]..fields:map(function(field,key) return 'self.'..field..' = v['..key..']' end):concat(' ')..[=[
			else
				if v2 == nil then
					]=]..fields:map(function(field,key) return 'self.'..field..' = v' end):concat(' ')..[=[
				else
					local args = {v, v2, ...}
					assert(#args == ]=]..dim..[=[)
					]=]..fields:map(function(field,key) return 'self.'..field..' = args['..key..']' end):concat(' ')..[=[
				end
			end
			return self
		end,
		ptr = function(self) return ffi.cast(']=]..ctype..[=[*', self) end,
		unpack = function(self) return ]=]..fields:map(function(field) return 'self.'..field end):concat(', ')..[=[ end,
		toTable = function(self) return {self:unpack()} end,
		
		]=]..classCode..[=[
	},
})
return vectorClass
]=]
	local func, err = load(code)
	if not func then
		print(err, debug.traceback())
		print('code:')
		print(code)
	end
	return func()
end
