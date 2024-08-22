-- POSIX this is utime.h
-- Windows this is sys/utime.h
-- so I put this in ffi.c.utime and ffi.c.sys.utime
local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.sys.utime'
elseif ffi.os == 'OSX' then
	return require 'ffi.OSX.c.utime'
else
	return require 'ffi.Linux.c.utime'
end
