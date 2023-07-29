local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.math'
else
	return require 'ffi.Linux.c.math'
end
