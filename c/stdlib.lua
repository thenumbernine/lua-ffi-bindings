local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.stdlib'
else
	return require 'ffi.Linux.c.stdlib'
end
