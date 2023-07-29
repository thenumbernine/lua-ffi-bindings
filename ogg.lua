local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.ogg'
else
	return require 'ffi.Linux.ogg'
end
