local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.corecrt'
else
	return require 'ffi.Linux.c.corecrt'
end
