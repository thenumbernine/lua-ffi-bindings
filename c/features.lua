local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.features'
else
	return require 'ffi.Linux.c.features'
end
