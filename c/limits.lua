local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.limits'
else
	return require 'ffi.Linux.c.limits'
end
