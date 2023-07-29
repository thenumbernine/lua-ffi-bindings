local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.bits.wchar'
else
	return require 'ffi.Linux.c.bits.wchar'
end
