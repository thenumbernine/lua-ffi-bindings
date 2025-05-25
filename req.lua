--[[
the number of files here that are solely used for splitting by os/arch is getting out of hand.
so to fix this ...
1) lots of tiny files in the root ffi/ folder that manually decide which os/arch subdir to use and require it
2) I could make a new package.loader that searches through these folders
3) custom-require (like luarocks does) ...
4) I could modify the search path once at runtime to include multiple ffi/? locations ... but then I'd have to wedge another ffi/ into each sublocation in order to keep the require() paths from changing (i.e. ffi/, ffi/Linux/ffi/, ffi/Linux/x64/ffi/)
- #4 I don't think I'll wedge in ffi/ subdir ... maybe someday I'll do the #2 ... for now it's #3 here:
--]]
local ffi = require 'ffi'
local assert = require 'ext.assert'
return function(req)
	assert.type(req, 'string')
	-- first search $os/$arch/$req
	-- then search $os/$req
	-- (then search $arch/$req?)
	-- then search $req
	local errs = {}
	for _,search in ipairs{
		ffi.os..'.'..ffi.arch..'.'..req,
		ffi.os..'.'..req,
		ffi.arch..'.'..req,
		req,
	} do
		local found, result = xpcall(function()
			return require('ffi.'..search)
		end, function(err)
			return err..'\n'..debug.traceback()
		end)
		if found then
--DEBUG(ffi.req):print('ffi.req', req, search)
			return result
		end
		table.insert(errs, result)
	end
	error(table.concat(errs, '\n'))
end
