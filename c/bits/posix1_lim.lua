local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.bits.posix1_lim'
else
	return require 'ffi.Linux.c.bits.posix1_lim'
end
