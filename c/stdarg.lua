local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.stdarg'
else
	return require 'ffi.Linux.c.stdarg'
end
