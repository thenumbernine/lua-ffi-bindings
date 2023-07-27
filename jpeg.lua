local ffi = require 'ffi'
if ffi.os == 'Windows' then
	require 'ffi.Windows.jpeg'
else
	require 'ffi.Linux.jpeg'
end
local lib = require 'ffi.load' 'jpeg'

-- these are #define's in jpeglib.h
local jpeg = setmetatable({
	jpeg_create_compress = function(cinfo)
		return lib.jpeg_CreateCompress(cinfo, jpeg.JPEG_LIB_VERSION, ffi.sizeof('struct jpeg_compress_struct'))
	end,
	jpeg_create_decompress = function(cinfo)
		return lib.jpeg_CreateDecompress(cinfo, jpeg.JPEG_LIB_VERSION, ffi.sizeof('struct jpeg_decompress_struct'))
	end
}, {
	__index = lib,
})

return jpeg		
