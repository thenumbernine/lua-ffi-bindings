local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.sys.select'
else
	return require 'ffi.Linux.c.sys.select'
end
