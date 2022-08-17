local ffi = require 'ffi'
local tiff
if ffi.os == 'Windows' then
	require 'ffi.Windows.tiff'
	tiff = ffi.load(os.getenv'LUAJIT_LIBPATH' .. [[\bin\Windows\]] .. ffi.arch .. [[\tiff.dll]])
else
	require 'ffi.Linux.tiff'
	tiff = ffi.load 'tiff'
end
return tiff
