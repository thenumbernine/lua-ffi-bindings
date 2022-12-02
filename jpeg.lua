local ffi = require 'ffi'
local jpeg
if ffi.os == 'Windows' then
	-- windows msvc turbojpeg 2.0.3 cmake wouldn't build, so i used 2.0.4 instead
	-- I wonder if this is the reason for the few subtle differences
	-- TODO rebuild linux with 2.0.4 and see if they go away?
	jpeg = ffi.load'jpeg8.dll'
	require 'ffi.Windows.jpeg'
else
	-- libturbojpeg 2.1.2 (which is not libjpeg-turbo *smh* who named this)
	-- the header generated matches libturbojpeg 2.0.3 for Ubuntu ... except the version macros
	if ffi.os == 'OSX' then
		jpeg = ffi.load'/opt/local/lib/libjpeg.dylib'
	else
		jpeg = ffi.load'libjpeg.so'
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
