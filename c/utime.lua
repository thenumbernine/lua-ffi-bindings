local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.utime'
else
	return require 'ffi.Linux.c.utime'
end
