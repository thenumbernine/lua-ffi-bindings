local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.sys.types'
else
	return require 'ffi.Linux.c.sys.types'
end
