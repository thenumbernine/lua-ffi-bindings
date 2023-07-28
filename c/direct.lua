local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.direct'
else
	return require 'ffi.Linux.c.direct'
end
