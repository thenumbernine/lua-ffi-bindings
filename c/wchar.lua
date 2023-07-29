local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.wchar'
else
	return require 'ffi.Linux.c.wchar'
end
