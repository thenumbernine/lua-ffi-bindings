-- first taken from malkia's ufo's ffi/OpenGL.lua
-- then adjusted to allow metatables on windows for glew-like loading in my glapp project
-- then sorted out a bit based on glext.h

local ffi  = require( "ffi" )

if ffi.os == 'Windows' then 
	return require 'ffi.Windows.OpenGL' 
	-- TODO I used to have to load GLU32 as well ... but meh?
elseif ffi.os == 'Linux' then
	return require 'ffi.Linux.OpenGL'
else
	-- default?
	return require 'ffi.Linux.OpenGL'
end
