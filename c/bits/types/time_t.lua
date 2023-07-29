local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.bits.types.time_t'
else
	return require 'ffi.Linux.c.bits.types.time_t'
end
