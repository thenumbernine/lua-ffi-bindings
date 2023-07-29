local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.sys.ioctl'
else
	return require 'ffi.Linux.c.sys.ioctl'
end
