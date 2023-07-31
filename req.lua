--[[
the number of files here that are solely used for splitting by os/arch is getting out of hand.
so to fix this ...
1) lots of tiny files that choose which os/arch to use
2) I could make a new package.loader that searches through these folders
3) custom-require (like luarocks does) ...
proly #3 ... here:
--]]
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
		local found, err = pcall(require, 'ffi.'..search)
		if found then return found end
		table.insert(errs, err)
	end
	return false, table.concat(errs, '\n')
end
