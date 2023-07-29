local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.corecrt_stdio_config'
else
	return require 'ffi.Linux.c.corecrt_stdio_config'
end
