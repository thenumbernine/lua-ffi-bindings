--[[
This file will be a master list of where all ffi.load()'s will go.
This way they can be overridden in one easy place ... right?
The bad side? This is harder to automatically generate?

key = identifier that the ffi/abc.lua header will use for requesting the library.
value = a string, for loading the library name in any OS subject to builtin luajit resolution (prepend lib, append extension, where to search, etc)

call operator = returns the approprate ffi.load of the requested key.

A calling ffi.abc.lua header file would put this at the end:
	return require 'ffi.load' 'libname'

Platform-specific overrides can work as follows:
	require 'ffi.load'.libname = 'your favorite override library location'

Values in the table can be either a string or a table, key'd by [os] or [os][arch]

If no value exists then the key will be used as the default name to search for the library.

All $names will be resolved as environment variables.
--]]
local ffi = require 'ffi'

local ffi_load = setmetatable({}, {
	__call = function(self, reqname)
		assert(type(reqname) == 'string', "expected string")
		local v = self[reqname]
		if type(v) == 'table' then
			-- if it's a table then assume it is in [os] or [os][arch] nesting
			v = v[ffi.os]
			if type(v) == 'table' then
				v = v[ffi.arch]
			end
		elseif type(v) == 'function' then
			-- if it's a function then call?
			v = v(reqname)
		end
		if v == nil then
			-- if it's not here ... just use the key as-is
			v = reqname
		end
		if type(v) ~= 'string' then
			error("require'ffi.load'("..tostring(reqname).." was not a string: "..tostring(v))
		end
		v = v:gsub('%$([_%w]+)', os.getenv)
		return ffi.load(v)
	end,
})

-- like op.safeindex but with default-assignments as you go
local function lookup(...)
	local t = ffi_load
	for i=1,select('#', ...) do
		local k = select(i, ...)
		if t[k] == nil then t[k] = {} end
		t = t[k]
	end
	return t
end


-- if ever ffi.load() searching for the name will fail, just specify its override location here:


-- ================================ Linux ================================


-- Why doesn't this automatically search here?  Maybe it does and I just forgot to run ldconfig?
lookup'cimgui_sdl'.Linux = '/usr/local/lib/libcimgui_sdl.so'

lookup'hdf5'.Linux = '/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so'


-- ================================ Windows ================================


lookup'GL'.Windows = 'OpenGL32'				-- builtin
lookup'GLU'.Windows = 'GLU32'

-- TODO when building these on Windows, make sure their names don't have version crap on the end, so there's no need for this.
-- can ffi.load"serial/hdf5" work? hmm...
lookup'png'.Windows = 'libpng16'
lookup'z'.Windows = 'zlib'

-- For Windows msvc turbojpeg 2.0.3 cmake wouldn't build, so i used 2.0.4 instead
-- I wonder if this is the reason for the few subtle differences
-- TODO rebuild linux with 2.0.4 and see if they go away?
lookup'jpeg'.Windows = 'jpeg8'
-- for Linux, libturbojpeg 2.1.2 (which is not libjpeg-turbo *smh* who named this)
-- the header generated matches libturbojpeg 2.0.3 for Ubuntu ... except the version macros

lookup'openal'.Windows = 'OpenAL32'
lookup'vorbis'.Windows = 'libvorbis-0'
lookup'vorbisfile'.Windows = 'libvorbisfile-3'
lookup'ogg'.Windows = 'libogg-0'


-- ================================ OSX ================================


lookup'GL'.OSX = '/System/Library/Frameworks/OpenGL.framework/OpenGL'	-- builtin crap
--lookup'GL'.OSX = '/usr/local/lib/libGL.dylib'							-- osx brew mesa ... which, just having this installed, after the last libSDL2 brew update, caused *every single thing* that used brew SDL2 to segfault upon start.

lookup'GLU'.OSX = '/System/Library/Frameworks/OpenGL.framework/OpenGL'	-- builtin crap
--lookup'GLU'.OSX = '/usr/local/lib/libGLU.dylib'						-- osx brew mesa ... which, just having this installed, after the last libSDL2 brew update, caused *every single thing* that used brew SDL2 to segfault upon start.

-- hmm, GLES library names are funny
-- GLES1, GLES/gl.h uses GLESv1_CM.so
-- GLES2, GLES2/gl2.h uses GLESv2.so
-- GLES3, GLES3/gl3.h uses ... GLESv2.so as well
-- (on Linux?)
lookup'GLESv2'.OSX = '/System/Library/Frameworks/OpenGL.framework/OpenGL'	-- builtin crap
--lookup'GLESv2'.OSX = '/System/Library/Frameworks/CoreImage.framework/Versions/A/Frameworks/libWrapGLES.dylib'	-- dlopen says incompatible platforms
--lookup'GLESv2'.OSX = '/usr/local/lib/libGLESv2.dylib'	-- osx brew mesa

lookup'OpenCL'.OSX = '/System/Library/Frameworks/OpenCL.framework/OpenCL'
lookup'openal'.OSX = '/System/Library/Frameworks/OpenAL.framework/OpenAL'

-- Welp, OSX luajit stopped linking against /usr/local/lib by default ...
-- And setting DYLD_LIBRARY_PATH crashes library conflicts (which will probably start happening anyways as I change this more)
-- But here I go trying to point to /usr/local/lib on OSX for all the libs I reference in here.
-- Another reason to use malkia's model and just package all the binaries in the repo itself.
lookup'cimgui_sdl'.OSX = '/usr/local/lib/libcimgui_sdl.dylib'
lookup'SDL2'.OSX = '/usr/local/lib/libSDL2.dylib'
lookup'png'.OSX = '/usr/local/lib/libpng.dylib'
lookup'z'.OSX = '/usr/local/opt/zlib/lib/libz.dylib'	-- otherwise it uses zlib in system paths which for me is not the homebrew one but instead the 1.2.12 one ... what a mess ...
lookup'zip'.OSX = '/usr/local/lib/libzip.dylib'
lookup'jpeg'.OSX = '/usr/local/lib/libjpeg.dylib'
lookup'tiff'.OSX = '/usr/local/lib/libtiff.dylib'
lookup'vorbis'.OSX = '/usr/local/lib/libvorbis.dylib'
lookup'clip'.OSX = '/usr/local/lib/libclip.dylib'
lookup'cfitsio'.OSX = '/usr/local/lib/libcfitsio.dylib'
lookup'netcdf'.OSX = '/usr/local/lib/libnetcdf.dylib'
lookup'EGL'.OSX = '/usr/local/lib/libEGL.dylib'

return ffi_load
