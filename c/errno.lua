local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.errno'
else
	return require 'ffi.Linux.c.errno'
end
