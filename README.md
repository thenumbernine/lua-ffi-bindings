## Common Headers Ported to LuaJIT FFI.

[![Donate via Stripe](https://img.shields.io/badge/Donate-Stripe-green.svg)](https://buy.stripe.com/00gbJZ0OdcNs9zi288)<br>
[![Donate via Bitcoin](https://img.shields.io/badge/Donate-Bitcoin-green.svg)](bitcoin:37fsp7qQKU8XoHZGRQvVzQVP8FrEJ73cSJ)<br>


This repo contains luajit-C bindings for lots of common C files and some 3rd party libraries.

Most of them are automatically created by my [C preprocessor in Lua](https://github.com/thenumbernine/preproc-lua) project, whose `generate.lua` file will automatically create the headers from the compiler's include files.

For some files I use a `$LUAJIT_LIBPATH` environment variable to specify the base of the directory structure where `.so` files are located.

From there, sometimes I follow [malkia's](https://github.com/malkia/ufo) structure of `/$ffi.os/$ffi.arch/` to further distinguish .so files.

This is still a manually run and hand-tweaked process, but will hopefully eventually be automated into my [#include-in-Lua](https://github.com/thenumbernine/include-lua) project.

The original versions of this started from https://github.com/malkia/ufo .


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
- [lua-ext](https://github.com/thenumbernine/lua-ext)
- [template-lua](https://github.com/thenumbernine/lua-template)
- [preproc-lua](https://github.com/thenumbernine/preproc-lua) optionally if you want to generate new headers.  This requires C headers to be present, which is no problem on linux, but for Windows you'll have to have MSVC or MinGW or something installed.

In the future, I'm hoping to incorporate:

- [include-lua](https://github.com/thenumbernine/include-lua)
