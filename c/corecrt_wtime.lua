local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.corecrt_wtime'
else
	return require 'ffi.Linux.c.corecrt_wtime'
end
