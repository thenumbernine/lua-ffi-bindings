local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.stdint'
else
	return require 'ffi.Linux.c.stdint'
end
