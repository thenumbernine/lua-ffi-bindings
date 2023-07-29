local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.stdbool'
else
	return require 'ffi.Linux.c.stdbool'
end
