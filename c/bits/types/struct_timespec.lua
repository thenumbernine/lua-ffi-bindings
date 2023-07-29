local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.bits.types.struct_timespec'
else
	return require 'ffi.Linux.c.bits.types.struct_timespec'
end
