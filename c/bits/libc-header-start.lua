local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.bits.libc-header-start'
else
	return require 'ffi.Linux.c.bits.libc-header-start'
end
