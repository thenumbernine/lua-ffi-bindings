local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.string'
else
	return require 'ffi.Linux.c.string'
end
