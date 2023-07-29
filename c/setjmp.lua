local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.setjmp'
else
	return require 'ffi.Linux.c.setjmp'
end
