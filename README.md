# Common Headers Ported to LuaJIT FFI.

[![Donate via Stripe](https://img.shields.io/badge/Donate-Stripe-green.svg)](https://buy.stripe.com/00gbJZ0OdcNs9zi288)<br>
[![Donate via Bitcoin](https://img.shields.io/badge/Donate-Bitcoin-green.svg)](bitcoin:37fsp7qQKU8XoHZGRQvVzQVP8FrEJ73cSJ)<br>


This repo contains luajit-C bindings for lots of common C files and some 3rd party libraries.

# The Files:

### ffi/req.lua

This is your `require` replacement.

It searches through require paths `ffi.$os.$arch.$req, ffi.$os.$req, ffi.$arch.$req, ffi.$req` in this order.

This spares me from duplicating a lot of if-statements in tiny files in the base directory.

Ex:

``` Lua
-- on Windows this will return ffi/Windows/OpenGL.lua
-- on Linux this will return ffi/Linux/OpenGL.lua
local OpenGL = require 'ffi.req' 'OpenGL'

-- returns ffi/OpenAL.lua, since no OS/arch-specific overrides exist
local OpenAL = require 'ffi.req' 'OpenAL'
```

### ffi/load.lua

This is your `ffi.load` replacement.

This is used to retrieve .so/.dll/.dylib's, and used to resolve finding them.

Just calling `require 'ffi.load' '$libname'` by default will return `ffi.load '$libname'`.

From here LuaJIT has some builtin name resolutions (appending the correct .so/.dll/.dylib extension per-OS, prepending 'lib' for Linux, searching system library paths, searching `LD_LIBRARY_PATH`, etc...).

However you can optionally use this table to override the search location for a specific OS or architecture:

If the value is a string then the name is directly replaced:
``` Lua
require 'ffi.load' .openal = 'openal32'
local lib = require 'ffi.load' 'openal'`
```
... will assign lib to `ffi.load'openal32'` in all OS/arch cases.

If the value is a table then it is assumed to be key'd by OS, and optionally second key'd by arch (x86 vs x64).
``` Lua
require 'ffi.load' .openal = {Windows = 'openal32'}
local lib = require 'ffi.load' 'openal'`
```
... will assign lib to `ffi.load'openal32'` on Windows and `ffi.load'openal'` on all other platforms.

``` Lua
require 'ffi.load' .openal = {Windows = {x86 = 'C:\path\to\x86\openal32.dll', x64 = 'C:\path\to\x64\openal32.dll'}}
local lib = require 'ffi.load' 'openal'`
```
... will assign lib to `ffi.load'C:\path\to\x86\openal32.dll'` on Windows x86, `ffi.load 'C:\path\to\x64\openal32.dll'` on Windows x64, and `ffi.load'openal'` on all other platforms.


### ffi/c/

I started porting C headers and putting them into the `c` folder, so that luajit code `require 'ffi.req' 'c.$header'` was equivalent to C code `#include <$header.h>`.
(But, you ask, why only put the builtin C headers in the `c` folder when the other libraries' headers go in the root folder?  Good question.)

### `ffi/$os/$arch/, ffi/$os/, ffi/$arch/`

For multiple OS support (currently it is Linux from 64-bit Ubuntu, with a bit of 64-bit Windows 10) I am putting os-specific code in in `ffi.$os.$path`, and a file in `ffi.$path` to return the correct file based on your OS/etc.

### ffi/cpp/

I started adding my own attempt at STL classes ported to LuaJIT classes in "lua-ffi-bindings/cpp",
so that luajit code `require 'ffi.cpp.$header'` was equivalent to C++ code `#include <$header>`.
... so far only "vector" exists but I might add more.

### ffi/gcwrapper/gcwrapper.lua

A few of my Lua class wrappers all started to exhibit the same pattern for refcounting (lua-opencl) or automatically deleting resources (lua-gl) ...
so I decided to put that behavior in one place, here.  Maybe I'll put that into its own unique repo soon.

# Generation:

Most of them are automatically created by my [C preprocessor in Lua](https://github.com/thenumbernine/preproc-lua) project, whose `generate.lua` file will automatically create the headers from the compiler's include files.
This is still a manually run and hand-tweaked process, but will hopefully eventually be automated into my [#include-in-Lua](https://github.com/thenumbernine/include-lua) project.

The original versions of this started from https://github.com/malkia/ufo .  One or two headers are still from malkia.


# Dependencies

- LuaJIT
- ffi.cpp and ffi.gcwrapper depend on my [lua-ext](https://github.com/thenumbernine/lua-ext) repo.
