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
		end
		if type(v) == 'function' then
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

lookup'cimgui_sdl3'.Linux = '/usr/local/lib/libcimgui_sdl3.so'				-- I'll let you pick the specific sdl version here
lookup'hdf5'.Linux = '/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so'
lookup'luajit'.Linux = '/usr/local/lib/libluajit.so'	-- why isn't this finding by default?
lookup'webgpu_dawn'.Linux = 'bin/Linux/x64/libwebgpu_dawn.so'

-- ================================ Windows ================================

lookup'luajit'.Windows = 'luajit-2.1.dll'

lookup'GL'.Windows = 'OpenGL32'				-- builtin
lookup'GLU'.Windows = 'GLU32'

lookup'vulkan'.Windows = 'vulkan-1.dll'

-- TODO when building these on Windows, make sure their names don't have version crap on the end, so there's no need for this.
-- can ffi.load"serial/hdf5" work? hmm...
lookup'z'.Windows = 'zlib'

lookup'openal'.Windows = 'OpenAL32'

-- ================================ OSX ================================


--lookup'EGL'.OSX = '/usr/local/lib/libEGL.dylib'
lookup'EGL'.OSX = '/usr/local/opt/mesa/lib/libEGL.dylib'

lookup'GL'.OSX = '/System/Library/Frameworks/OpenGL.framework/OpenGL'	-- builtin crap
--lookup'GL'.OSX = '/usr/local/lib/libGL.dylib'							-- osx brew mesa
--lookup'GL'.OSX = '/usr/local/opt/mesa/lib/libGL.dylib'		-- osx brew mesa

lookup'GLU'.OSX = '/System/Library/Frameworks/OpenGL.framework/OpenGL'	-- builtin crap
--lookup'GLU'.OSX = '/usr/local/opt/mesa-glu/lib/libGLU.dylib'						-- osx brew mesa

--lookup'GLESv1_CM'.OSX = '/usr/local/lib/libGLESv1_CM.dylib'				-- mesa
lookup'GLESv1_CM'.OSX = '/usr/local/opt/mesa/lib/libGLESv1_CM.dylib'				-- mesa

--lookup'GLESv2'.OSX = '/System/Library/Frameworks/OpenGL.framework/OpenGL'	-- builtin crap
--lookup'GLESv2'.OSX = '/System/Library/Frameworks/CoreImage.framework/Versions/A/Frameworks/libWrapGLES.dylib'	-- dlopen says incompatible platforms
--lookup'GLESv2'.OSX = '/usr/local/lib/libGLESv2.dylib'				-- osx brew mesa
lookup'GLESv2'.OSX = '/usr/local/opt/mesa/lib/libGLESv2.dylib'	-- osx brew mesa

lookup'OpenCL'.OSX = '/System/Library/Frameworks/OpenCL.framework/OpenCL'
--lookup'OpenCL'.OSX = '/usr/local/opt/mesa/lib/libMesaOpenCL.dylib'	-- osx brew mesa ... but I don't see it now ...
--lookup'OpenCL'.OSX = '/usr/local/opt/mesa/lib/libRusticlOpenCL.dylib'	-- osx brew mesa ... missing clGetMemObjectInfo ...

lookup'vulkan'.OSX = '/usr/local/opt/molten-vk/lib/libMoltenVK.dylib'	-- molten-vk ... will this work so easily?
--lookup'vulkan'.OSX = '/usr/local/opt/mesa/lib/libvulkan_lvp.dylib'	-- ... or this one? it's mesa ...
--lookup'vulkan'.OSX = '/usr/local/opt/mesa/lib/libVkLayer_MESA_overlay.dylib'	-- ... or this one? it's mesa ...
--lookup'vulkan'.OSX = '/usr/local/opt/vulkan-loader/lib/libvulkan.dylib'	-- this one is with homebrew `vulkan-loader`
--lookup'vulkan'.OSX = function()
-- ... I have an 'elseif' up there, but maybe I should separate it into an 'if' so I can specify a function at any nesting of $os/$arch/etc
--ffi_load.vulkan = function()
	-- "failed to load Vulkan Portability library ... is that a 2nd lib we gotta load?
	--ffi.load'/usr/local/opt/vulkan-tools/lib/mock_icd/libVkICD_mock_icd.dylib'
	--return '/usr/local/opt/vulkan-loader/lib/libvulkan.dylib'	-- this one is with homebrew `vulkan-loader`
--end

lookup'openal'.OSX = '/System/Library/Frameworks/OpenAL.framework/OpenAL'

-- Welp, OSX luajit stopped linking against /usr/local/lib by default ...
-- And setting DYLD_LIBRARY_PATH crashes library conflicts (which will probably start happening anyways as I change this more)
-- But here I go trying to point to /usr/local/lib on OSX for all the libs I reference in here.
-- Another reason to use malkia's model and just package all the binaries in the repo itself.
lookup'cimgui_sdl3'.OSX = '/usr/local/lib/libcimgui_sdl3.dylib'
lookup'SDL2'.OSX = '/usr/local/lib/libSDL2.dylib'
lookup'SDL3'.OSX = '/usr/local/lib/libSDL3.dylib'
lookup'png'.OSX = '/usr/local/lib/libpng.dylib'
lookup'gif'.OSX = '/usr/local/lib/libgif.dylib'
lookup'z'.OSX = '/usr/local/opt/zlib/lib/libz.dylib'	-- otherwise it uses zlib in system paths which for me is not the homebrew one but instead the 1.2.12 one ... what a mess ...
lookup'zip'.OSX = '/usr/local/lib/libzip.dylib'
lookup'jpeg'.OSX = '/usr/local/lib/libjpeg.dylib'
lookup'tiff'.OSX = '/usr/local/lib/libtiff.dylib'
lookup'clip'.OSX = '/usr/local/lib/libclip.dylib'
lookup'cfitsio'.OSX = '/usr/local/lib/libcfitsio.dylib'
lookup'netcdf'.OSX = '/usr/local/lib/libnetcdf.dylib'
lookup'hdf5'.OSX = '/usr/local/lib/libhdf5.dylib'
lookup'lapacke'.OSX = '/usr/local/lib/liblapacke.dylib'
lookup'vorbisfile'.OSX = '/usr/local/lib/libvorbisfile.dylib'
lookup'vorbis'.OSX = '/usr/local/lib/libvorbis.dylib'
lookup'ogg'.OSX = '/usr/local/lib/libogg.dylib'

return ffi_load
