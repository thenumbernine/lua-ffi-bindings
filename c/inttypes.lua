local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.inttypes'
else
	return require 'ffi.Linux.c.inttypes'
end
