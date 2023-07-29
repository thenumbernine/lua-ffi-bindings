local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.sys.termios'
else
	return require 'ffi.Linux.c.sys.termios'
end
