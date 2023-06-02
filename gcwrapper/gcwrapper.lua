--[[
if you want to make use of gc dtors ...
note that the gc only sees the ffi struct
and the ffi struct only has C data (no lua refs)
and the cl.hpp GCWrapper dtor is custom per-parent-class
so this needs to be a behavior

TODO 
... why don't I just use the Lua __gc metamethod of tables?
why even use luajit's ctype metamethod?
because vanilla Lua's __gc metamethod is not as reliable?
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
	init = ctor, expects a valid, retained, id to be passed as a single argument.
		This means there is no initial retain() called, only a final release() upon destruction.
		Additional retain() or release()'s can be manually called by the API.
	gc = an instance of our luajit ffi cdata object whose __gc field calls the release() on our gc.ptr
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

	-- luajit ffi, you can't assign integral types to nil
	-- so far this seems safe alternative to c++ prim ctor's "= {}"
	local clearValue = ffi.cast(ctype, nil)

	ffi.cdef([[
struct ]]..gctype..[[ {
	]]..ctype..[[ ptr[1];
	int refcount;
};
typedef struct ]]..gctype..' '..gctype..[[;
]])
	
	local function performRelease(gc)
--print("releasing "..tostring(gc).." from refcount "..gc.refcount.." to "..(gc.refcount-1))
		gc.refcount = gc.refcount - 1
	
		local notcleared = gc.ptr[0] ~= clearValue

		-- alright here I have two choices:
		-- 1) pass gc.ptr and make all my cl release()'s into wrappers that do this one step of indirection
		-- 2) pass gc.ptr[0] and make my gl release()'s into wrappers that put the ptr into a single-sized array to pass into the glDelete...
		local result
		if gc.refcount <= 0 then
			if notcleared then
				result = release(gc.ptr)
				-- clear gc.ptr[0] upon final release so future release()'s don't try to free it twice
				gc.ptr[0] = clearValue
			else
				--print("tried to free not-cleared object "..tostring(gc).." with id "..tostring(gc.ptr[0]).." with refcount <= 0, but it had already been freed.  did someone else already release() it?")
			end
		end
		return result
	end

	local gcType = ffi.metatype(gctype, {
		__gc = function(gc)
			performRelease(gc)	-- throw away result, __gc doesn't want it
--print('object '..tostring(gc)..' now has refcount '..gc.refcount)
			if gc.refcount > 0 then
				-- assume someone else retained it?
				print("leaking object "..tostring(gc).." with refcount "..gc.refcount.." ... did someone else retain() it?")
			else
--print("freeing object "..tostring(gc).." with refcount "..gc.refcount)
			end
		end,
	})

	template = class()
	template.gctype = gctype

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
	end

	-- Make release() interoperable with delete() of gl's gc
	-- That means sometimes objects won't have a retain() function ...
	-- I would call this 'performRetain', but it really only operates here (or maybe once upon init when refcount is set to 1).
	function template:retain()
		if self.gc.ptr[0] == clearValue then
			-- error or warning?
			error("tried to retain() an object already freed.")
		end
--print("retaining "..tostring(gc).." from refcount "..self.gc.refcount.." to "..(self.gc.refcount+1))
		self.gc.refcount = self.gc.refcount + 1
		if retain then
			return retain(self.gc.ptr)
		end
	end

	function template:release()
		--[[ single release() statement matches the cl.hpp code, which itself relied on retain/release calls to refcount
		return release(self.gc.ptr)
		--]]
		-- [[ but lua does its own refcounting, so retain just needs to be called once upon creation and release once upon delete
		-- does the decrement and freeing
		return performRelease(self.gc)
		--]]
	end

	return template
end

return GCWrapper
