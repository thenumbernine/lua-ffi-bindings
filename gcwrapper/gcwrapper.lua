--[[
if you want to make use of gc dtors ...
note that the gc only sees the ffi struct
and the ffi struct only has C data (no lua refs)
and the cl.hpp GCWrapper dtor is custom per-parent-class
so this needs to be a behavior
--]]

local class = require 'ext.class'
local ffi = require 'ffi'

--[[
args:
	ctype = what ctype we are holding 
	gctype = (optional) what name to give the gc ffi ctype.  default is 'autorelease_'..ctype
	retain = (optional) retain function.  if none is provided then this does nothing.
	release = release function.

fields:
	id = an instance of 'ctype'
	gc = an instance of our luajit ffi cdata object whose __gc field calls the release() on our .id
		notice that gc.ptr[0] == id must be maintained for the retain() and release() to work
	retain = calls the retain() function
	release = calls the release() function
--]]
local function GCWrapper(args)
	local ctype = assert(args.ctype)
	local release = assert(args.release)
	local retain = args.retain
	local gctype = args.gctype or 'autorelease_'..ctype

	ffi.cdef([[
struct ]]..gctype..[[ {
	]]..ctype..[[ ptr[1];
};
typedef struct ]]..gctype..' '..gctype..[[;
]])
	local gcType = ffi.metatype(gctype, {
		__gc = function(gc)
			-- clear gc.ptr[0] upon final release
			if gc.ptr[0] ~= nil then
				release(gc.ptr[0])
				gc.ptr[0] = nil
			end
		end,
	})

	local template = class()
	template.gctype = gctype

	-- TODO only use gc.ptr[0] instead of id?
	function template:init(id)
		assert(id ~= nil, "expected id")
		-- release-upon-gc/dtor
		self.gc = gcType()
		self.gc.ptr[0] = id
		self.id = id
	end

	-- make release() interoperable with delete() of gl's gc
	-- that means sometimes objects won't have a retain() function ...
	if retain then
		function template:retain()
			return retain(self.id)
		end
	else
		function template:retain() end
	end

	function template:release()
		-- single release() statement matches the cl.hpp code, which itself relied on retain/release calls to refcount
		--return release(self.id)
		-- but lua does its own refcounting, so retain just needs to be called once upon creation and release once upon delete
		if self.gc.ptr[0] ~= nil then
			local result = release(self.gc.ptr[0])
			self.gc.ptr[0] = nil
			self.id = nil
			return result
		end
	end

	return template
end

return GCWrapper

