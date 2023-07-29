local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.corecrt_share'
else
	return require 'ffi.Linux.c.corecrt_share'
end
