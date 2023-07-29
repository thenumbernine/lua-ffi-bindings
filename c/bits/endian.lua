local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.bits.endian'
else
	return require 'ffi.Linux.c.bits.endian'
end
