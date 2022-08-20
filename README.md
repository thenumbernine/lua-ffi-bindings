[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=KYWUWS86GSFGL)

Some common headers ported over to LuaJIT FFI.

Thanks to https://github.com/malkia/ufo where I got the first sets of headers for this project.

Since then I've been replacing a few of them as versions increment.

For some of these I use a `$LUAJIT_LIBPATH` environment variable to specify the base of the directory structure where .so files are located.
From there sometimes I follow Malkia's structure of `/$ffi.os/$ffi.arch/` to further distinguish .so files.

I'm slowly incorporating my [C preprocessor in Lua](https://github.com/thenumbernine/preproc-lua) project into automatically generating the headers from the compiler's include files.

This is still a manually run and hand-tweaked process, but will hopefully eventually be automated into my [#include-in-Lua](https://github.com/thenumbernine/include-lua) project.

The directory structure is a bit of a mess.

At first everything was just put in root.

Then I started porting C headers and putting them into the `c` folder, so that luajit code `require 'ffi.c.$header'` was equivalent to C code `#include <$header.h>`.  
(But, you ask, why only put the builtin C headers in the `c` folder when the other libraries' headers go in the root folder?  Good question.)

Then I started adding my own attempt at STL classes ported to LuaJIT classes in "lua-ffi-bindings/cpp",
so that luajit code `require 'ffi.cpp.$header'` was equivalent to C++ code `#include <$header>`.
... so far only "vector" exists but I might add more.


A few of my Lua class wrappers all started to exhibit the same pattern for refcounting (lua-opencl) or automatically deleting resources (lua-gl) ...
so I decided to put that behavior in one place, here.  Maybe I'll put that into its own unique repo soon.


### Dependencies

- LuaJIT
- The Imgui library bindings depends on the auto-generated cimgui library bindings provided at https://github.com/sonoro1234/LuaJIT-ImGui.  You don't need to re-generate the bindings (unless you are regenerating them for a newer version of cimgui).  You only need to make sure that your `LUA_PATH` is set up so that the LuaJIT-ImGUI/build/imgui folder can be accessed via a "require 'imgui'" call.
- [lua-ext](https://github.com/thenumbernine/lua-ext)
- [template-lua](https://github.com/thenumbernine/lua-template)

In the future, these should be incorporated:

- [include-lua](https://github.com/thenumbernine/include-lua)
- [preproc-lua](https://github.com/thenumbernine/preproc-lua) optionally if you want to generate new headers.  This requires C headers to be present, which is no problem on linux, but for Windows you'll have to have MSVC or MinGW or something installed.
