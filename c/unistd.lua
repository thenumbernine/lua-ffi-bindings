local ffi = require 'ffi'
if ffi.os == 'Windows' then
	require 'ffi.Windows.c.direct'	-- get our windows defs
	local lib = ffi.C
	return setmetatable({
		chdir = lib._chdir,
		getcwd = lib._getcwd,
		rmdir = lib._rmdir,
	}, {
		__index = lib,
	})
else
	return require 'ffi.Linux.c.unistd'
end
