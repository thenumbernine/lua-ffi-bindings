local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.unistd'
else
	return require 'ffi.Linux.c.unistd'
end
