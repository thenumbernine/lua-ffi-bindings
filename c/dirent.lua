local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.dirent'
else
	return require 'ffi.Linux.c.dirent'
end
