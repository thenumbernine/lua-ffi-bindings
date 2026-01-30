--[[ next hurdle
I'm getting too many 'table overflow's
and we all know luajit ffi doesn't handle scope at all (sad)
so how to keep the perf benefits of a ffi.C.ENUM_VALUE or a ffi.c.funcCall()  ,but also the flexibility of porting an entire .h file into luajit-ffi ?
how about an API for requesting enums/typedefs/functions, so only the ones that are used can be defined?
I fear/suspect this will start to incorporate my `modules` library...

- First call `require 'ffi.req' 'c-header.lua'` to prepare all symbols to be requested.
- Second call `require 'ffi'.enum'ENUM_NAME'` to define only the requested names into ffi.C.

hmm,
alternatively I could overload the library table themselves.
or the table returned by `require 'ffi.req'` could have its __index overloaded to generate-upon-request ...
... but that would be a performance hit, since it isn't overloading a Lua table (which , upon retrieval and assignment, would bypass the __index)
... but instead is overloading a table that itself woudl have to be__index'd back to the ffi.C table ...

or
I could make it optional per-application,
where choosing 'defer' incurs perf penalties (but allows more symbols to be loaded)
whlie choosing 'immediate' loads everything-per-header with no __index overloading, for faster access, but risks more 'table overflow's
--]]
local assert = require 'ext.assert'
local op = require 'ext.op'
local ffi = require 'ffi'

local M = {}

-- for now I'll defer-by-default, combined with only using ffi.libwrapper with slow/offline libs like libpng/cfitsio/libtiff that I don't call in tight loops
--M.mode = 'immediate'	-- load immediately into ffi.C[k]
--M.mode = 'defer'		-- defer loading ffi.C[k] until requested
M.mode = 'defer-lua'	-- defer loading wrapper[k] until requested

--[[
args:
	defs = {[k] = gen()} key is symbol/enum name,
		... number values represent enums, to-be-defined in either the lib / ffi.C or in the wrapper (based on M.mode)
		... string values represent ffi.cdef's
		... function values are executed.  these are useful for subsequent invocations / generating dependent types before ffi.cdef'ing our own type.
			(TODO JUST USE THE MODULE SYSTEM.  THE DAG AND ffi.cdef CALLS ARE ALREADY THERE.)

	lib = `require 'ffi.load' (libraryName)`  optional, if omitted this defaults to `ffi.C`.

	init = {[k] = v}, optional, default {}
		... this is the wrapper itself.
		... put any key/values you want to initialize the wrapper with in here.
		... whereas defs holds generators to be called upon first __index, this holds values always initialized from the start

creates a wrapper for the library based on `require 'ffi.libwrapper'.mode`
- if it is 'immediate' then all enums are immediately loaded into the library (this can only be assigned / used if M.mode is set to 'immediate' before require'ing the ffi.req header name.
- if it is 'defer' then enums are only assigned upon request, and assigned to ffi.C
- if it is 'defer-lua' then " " " assigned to the wrapper table
--]]
function M.libwrapper(args)
	-- TODO this is run in require() at file-scope, so if it errors then you might get a "loop or previous error when requiring" error ...
	-- Should I just be stderr'ing the errors?
	-- Should I be fixing `require` to do that for all require'd files?

	local defs = assert.type(args.defs or {}, 'table')

	local lib = ffi.C
	if args.lib ~= nil then
		lib = assert.type(assert.index(args, 'lib'), 'userdata')
	end

	if M.mode == 'immediate' then
		-- don't wrap
		-- just define all into lib
		-- this can incur 'table overflow'
		-- but should be fast since the returned object is lib / ffi.C
		-- TODO for immediate mode, I could always just assign __index=lib directly
		-- however this would make things a lot more rigid, it'd make it not possible to change away from immediate mode to any other mode after launching an app (tho who will do that?)
		for k,v in pairs(defs) do
--DEBUG(ffi.libwrapper): print('libwrapper loading', k)
			if type(v) == 'number' then
				ffi.cdef('enum { '..k..' = '..v..' };')
			elseif type(v) == 'string' then
				ffi.cdef(v)
			elseif type(v) == 'function' then
				-- TODO ... this just won't work.
				-- functions-as-generators can't write to lib
				-- which means they won't work with mode == immediate
				wrapper[k] = v()
			else
				error("expected defs type to be number or string")
			end
		end
		return lib
	elseif M.mode == 'defer'
	or M.mode == 'defer-lua'
	then
		-- do wrap -- and incur slowdowns
		local wrapper = args.init or {}
		setmetatable(wrapper, {
			__index = function(t,k)
				local v = op.safeindex(lib, k)
				if v ~= nil then
					t[k] = v
					return v
				end

				local v = defs[k]
				if v ~= nil then
--DEBUG(ffi.libwrapper): print('libwrapper loading', k)
					if type(v) == 'number' then
						if M.mode == 'defer' then
							ffi.cdef('enum { '..k..' = '..v..' };')
							t[k] = v
						elseif M.mode == 'defer-lua' then
							t[k] = v
						end
						return v
					elseif type(v) == 'string' then
						ffi.cdef(v)
						-- it should be there by now ...
						local result = op.safeindex(lib, k)
						t[k] = result
						return result
					elseif type(v) == 'function' then
						local result = v()
						t[k] = result
						return result
					else
						error("expected defs type to be number or string")
					end
				end
			end,
		})
		return wrapper
	end
end

setmetatable(M, {
	__call = function(t,...)
		return M.libwrapper(...)
	end,
})

return M
