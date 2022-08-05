-- first taken from malkia's ufo's ffi/OpenGL.lua
-- then adjusted to allow metatables on windows for glew-like loading in my glapp project
-- then sorted out a bit based on glext.h

-- TODO hmm should include return code (like a C preproc cmd would)
-- or should it return a ffi.load library object (like the old require 'ffi.*' would)
local include = require 'include'
local code = ''
code = code .. '\n' .. include '<GL/gl.h>'
code = code .. '\n' .. include '<GL/glext.h>'

local libs = ffi_OpenGL_libs or {
	OSX = { x86 = 'OpenGL.framework/OpenGL', x64 = 'OpenGL.framework/OpenGL' },

	-- not loading UFO's SDL
	Windows = { x86 = 'OPENGL32.DLL', x64 = 'OPENGL32.DLL' },
	
	-- not loading UFO's Regal
	--Windows = { x86 = os.getenv'LUAJIT_LIBPATH'..'\\bin\\Windows\\x86\\regal.dll', x64 = os.getenv'LUAJIT_LIBPATH'..'\\bin\\Windows\\x64\\regal.dll' },
	
	Linux = { x86 = 'libGL.so', x64 = 'libGL.so', arm = 'libGL.so' },
	BSD = { x86 = 'libGL.so', x64 = 'libGL.so' },
	POSIX = { x86 = 'libGL.so', x64 = 'libGL.so' },
	Other = { x86 = 'libGL.so', x64 = 'libGL.so' },
}

local ffi  = require 'ffi'
if ffi.os == 'Windows' then
	-- weird workaround for XP
	-- Have to investigate more
	-- It's something due to REGAL, but not sure...
	ffi.load 'GLU32'
end

local lib = ffi_OpenGL_lib or libs[ffi.os][ffi.arch]

local gl = ffi.load(lib)
if ffi.os == 'Windows' then
	--[[
	windows needs functions overloaded from glext/wglGetProc
	but if I assign a meta __index wrapper later, anything that requires 'OpenGL' before that point will have the wrong package.loaded reference
	unless I make the wrapper here
	and while I'm at it, use this table to pass on the symbols to the windows init
	--]]
	return setmetatable({
		code = code,
	}, {__index=gl})
else
	return gl
end
