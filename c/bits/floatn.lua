local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.bits.floatn'
else
	return require 'ffi.Linux.c.bits.floatn'
end
