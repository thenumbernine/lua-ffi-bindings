--[[
the number of files here that are solely used for splitting by os/arch is getting out of hand.
so to fix this ...
1) lots of tiny files that choose which os/arch to use
2) I could make a new package.loader that searches through these folders
3) custom-require (like luarocks does) ...
proly #3 ... here:
--]]
local ffi = require 'ffi'
return function(req)
	assert(type(req) == 'string', 'expected string')
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
		if found then return result end
		table.insert(errs, result)
	end
	error(table.concat(errs, '\n'))
end
