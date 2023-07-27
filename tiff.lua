local ffi = require 'ffi'
if ffi.os == 'Windows' then
	--require 'ffi.Windows.tiff'	-- oops, not yet
	require 'ffi.Linux.tiff'
else
	require 'ffi.Linux.tiff'
end
return require 'ffi.load' 'tiff'
