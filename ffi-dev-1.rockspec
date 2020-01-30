package = "ffi"
version = "dev-1"
source = {
	url = "git+https://github.com/thenumbernine/lua-ffi-bindings.git"
}
description = {
	detailed = "Some common headers ported over to LuaJIT FFI.",
	homepage = "https://github.com/thenumbernine/lua-ffi-bindings",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		["ffi.EGL"] = "EGL.lua",
		["ffi.OpenAL"] = "OpenAL.lua",
		["ffi.OpenALUT"] = "OpenALUT.lua",
		["ffi.OpenCL"] = "OpenCL.lua",
		["ffi.OpenGL"] = "OpenGL.lua",
		["ffi.OpenGLES1"] = "OpenGLES1.lua",
		["ffi.OpenGLES2"] = "OpenGLES2.lua",
		["ffi.android.EGL"] = "android/EGL.lua",
		["ffi.c.dirent"] = "c/dirent.lua",
		["ffi.c.setjmp"] = "c/setjmp.lua",
		["ffi.c.stdio"] = "c/stdio.lua",
		["ffi.c.stdlib"] = "c/stdlib.lua",
		["ffi.c.string"] = "c/string.lua",
		["ffi.c.sys.ioctl"] = "c/sys/ioctl.lua",
		["ffi.c.sys.select"] = "c/sys/select.lua",
		["ffi.c.sys.termios"] = "c/sys/termios.lua",
		["ffi.c.sys.time"] = "c/sys/time.lua",
		["ffi.c.time"] = "c/time.lua",
		["ffi.c.unistd"] = "c/unistd.lua",
		["ffi.fitsio"] = "fitsio.lua",
		["ffi.glu"] = "glu.lua",
		["ffi.imgui"] = "imgui.lua",
		["ffi.jpeg"] = "jpeg.lua",
		["ffi.png"] = "png.lua",
		["ffi.sdl"] = "sdl.lua",
		["ffi.tiff"] = "tiff.lua"
	}
}
