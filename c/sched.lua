local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.sched'
else
	return require 'ffi.Linux.c.sched'
end
