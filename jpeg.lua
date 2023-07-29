local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.jpeg'
else
	return require 'ffi.Linux.jpeg'
end
