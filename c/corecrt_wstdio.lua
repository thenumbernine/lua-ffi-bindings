local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.corecrt_wstdio'
else
	return require 'ffi.Linux.c.corecrt_wstdio'
end
