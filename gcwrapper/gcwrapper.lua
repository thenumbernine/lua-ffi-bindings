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

NOTICE that the template init expects a valid, retained, id to be passed as a single argument.
This means there is no initial retain() called, only a final release() upon destruction.
Additional retain() or release()'s can be manually called by the API.

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

	local template


	ffi.cdef([[
struct ]]..gctype..[[ {
	]]..ctype..[[ ptr[1];
	int refcount;
};
typedef struct ]]..gctype..' '..gctype..[[;
]])
	
	local function performRelease(gc)
		gc.refcount = gc.refcount - 1
		local result = release(gc.ptr[0])
		if gc.refcount <= 0 then
			if gc.ptr[0] ~= nil then
				-- clear gc.ptr[0] upon final release so future release()'s don't try to free it twice
				gc.ptr[0] = nil
			else
				if template.debugleaks then
					print("tried to free object "..tostring(gc).." with refcount 0, but it had already been freed.  did someone else release() it?")
				end
			end
		end
		return result
	end

	local gcType = ffi.metatype(gctype, {
		__gc = function(gc)
			performRelease(gc)	-- throw away result, __gc doesn't want it
			if gc.refcount > 0 then
				-- assume someone else retained it?
				if template.debugleaks then
					print("leaking object "..tostring(gc).." with refcount "..gc.refcount.." ... did someone else retain() it?")
				end
			else
				if template.debugleaks then
					print("freeing object "..tostring(gc).." with refcount "..gc.refcount)
				end
			end
		end,
	})

	template = class()
	template.gctype = gctype

	-- [[ enable this for debugging
	template.debugleaks = true
	--]]

	-- TODO only use gc.ptr[0] instead of id?
	function template:init(id)
		--[[
		TODO I can't always expect 'id' to be valid, esp for the case of creating 'cl.event' objects that have not yet been initialized, 
		but will be passed into cl routines for initialization later ...
		in their case, how does memory management pan out?
		--]]
		id = ffi.cast(ctype, id)

		-- release-upon-gc/dtor
		self.gc = gcType()
		self.gc.ptr[0] = id
		self.gc.refcount = 1;
		self.id = id
	end

	-- Make release() interoperable with delete() of gl's gc
	-- That means sometimes objects won't have a retain() function ...
	-- I would call this 'performRetain', but it really only operates here (or maybe once upon init when refcount is set to 1).
	function template:retain()
		if self.gc.ptr[0] == nil then
			-- error or warning?
			error("tried to retain() an object already freed.")
		end
		self.gc.refcount = self.gc.refcount + 1
		if retain then
			return retain(self.id)
		end
	end

	function template:release()
		--[[ single release() statement matches the cl.hpp code, which itself relied on retain/release calls to refcount
		return release(self.id)
		--]]
		-- [[ but lua does its own refcounting, so retain just needs to be called once upon creation and release once upon delete
		-- does the decrement and freeing
		return performRelease(self.gc)
		--]]
	end

	return template
end

return GCWrapper

