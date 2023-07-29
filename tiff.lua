local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.tiff'
else
	return require 'ffi.Linux.tiff'
end
