local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.wchar'
else
	error"no wchar for your os"
end
