local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.corecrt_wdirect'
else
	return require 'ffi.Linux.c.corecrt_wdirect'
end
