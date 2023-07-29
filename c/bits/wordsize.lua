local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.bits.wordsize'
else
	return require 'ffi.Linux.c.bits.wordsize'
end
