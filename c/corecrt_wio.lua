local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.corecrt_wio'
else
	return require 'ffi.Linux.c.corecrt_wio'
end
