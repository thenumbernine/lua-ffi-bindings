-- TODO why not just require 'ffi.ogg' instead of 'ffi.ogg.ogg' ?
local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.ogg.ogg'
else
	return require 'ffi.Linux.ogg.ogg'
end
