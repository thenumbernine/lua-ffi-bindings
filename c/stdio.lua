local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.stdio'
else
	return require 'ffi.Linux.c.stdio'
end
