--[[
OSX 10.14 offers two options for OpenGL:
OpenGL 2.1, in all its deprecated well-functioning glory
OpenGL 4.1 core, where glMatrixMode no longer exists, and everything needs a VAO to render
... just like GLES3.  
Fun fact, OSX does not come with GLES!!! Fucking genius!
Fun fact, all my GLES3 apps, when piped through a browser into WebGL2 work perfectly fine on OSX.
So OSX could easily have GLES3 if they wanted, via whatever Safari is doing, but they just decided to fuck everything up just because.
So here I'm going to redirect to OpenGL3.lua, built from OSX's OpenGL framework's <OpenGL/gl3.h> file.
Feel free to change it via `require 'gl.setup' 'OpenGL2'`, but that'd be very OSX-specific if you did that.
--]]
return require 'ffi.OSX.OpenGL3'
--return require 'ffi.OSX.OpenGL2'
--return require 'ffi.Linux.OpenGLMesa'
