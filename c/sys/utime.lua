local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.sys.utime'
else
	return require 'ffi.Linux.c.sys.utime'
end
