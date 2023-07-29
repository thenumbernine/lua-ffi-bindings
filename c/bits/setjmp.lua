local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.bits.setjmp'
else
	return require 'ffi.Linux.c.bits.setjmp'
end
