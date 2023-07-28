local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.sys.stat'
else
	return require 'ffi.Linux.c.sys.stat'
end
