local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.bits.stdint-intn'
else
	return require 'ffi.Linux.c.bits.stdint-intn'
end
