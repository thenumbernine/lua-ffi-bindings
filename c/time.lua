local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.time'
else
	return require 'ffi.Linux.c.time'
end
