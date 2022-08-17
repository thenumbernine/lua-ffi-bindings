local ffi = require 'ffi'
require 'ffi.c.stdio'	-- for FILE, even though jpeglib.h itself never includes <stdio.h> ... hmm ...
local jpeg
if ffi.os == 'Windows' then
	-- windows msvc turbojpeg 2.0.3 cmake wouldn't build, so i used 2.0.4 instead
	-- I wonder if this is the reason for the few subtle differences
	-- TODO rebuild linux with 2.0.4 and see if they go away?
	jpeg = ffi.load'jpeg8.dll'
	require 'ffi.Windows.jpeg'
else
	-- turbojpeg 2.0.3
	if ffi.os == 'OSX' then
		jpeg = ffi.load'/opt/local/lib/libjpeg.dylib'
	else
		jpeg = 'libjpeg.so'
	end
	require 'ffi.Linux.jpeg'
end

-- these are #define's in jpeglib.h
local _jpeg = jpeg
local jpeg = setmetatable({
	jpeg_create_compress = function(cinfo)
		return _jpeg.jpeg_CreateCompress(cinfo, jpeg.JPEG_LIB_VERSION, ffi.sizeof('struct jpeg_compress_struct'))
	end,
	jpeg_create_decompress = function(cinfo)
		return _jpeg.jpeg_CreateDecompress(cinfo, jpeg.JPEG_LIB_VERSION, ffi.sizeof('struct jpeg_decompress_struct'))
	end
}, {
	__index = _jpeg,
})

return jpeg		
