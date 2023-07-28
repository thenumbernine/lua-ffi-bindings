local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.io'
else
	return require 'ffi.Linux.c.io'
end
