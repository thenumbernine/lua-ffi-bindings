local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.bits.types'
else
	return require 'ffi.Linux.c.bits.types'
end
