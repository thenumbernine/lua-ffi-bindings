local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.stddef'
else
	return require 'ffi.Linux.c.stddef'
end
