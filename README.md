# Common Headers Ported to LuaJIT FFI.

[![Donate via Stripe](https://img.shields.io/badge/Donate-Stripe-green.svg)](https://buy.stripe.com/00gbJZ0OdcNs9zi288)<br>


This repo contains luajit-C bindings for lots of common C files and some 3rd party libraries.

# The Files:

### [`ffi/req.lua`](https://github.com/thenumbernine/lua-ffi-bindings/blob/master/req.lua)

This is your `require` wrapper / replacement.

It searches through require paths `ffi/$os/$arch/$req, ffi/$os/$req, ffi/$arch/$req, ffi/$req` in this order.

This spares me from duplicating a lot of if-statements in tiny files in the base directory.

Ex:

``` Lua
-- on Windows this will return ffi/Windows/OpenGL.lua
-- on Linux this will return ffi/Linux/OpenGL.lua
local OpenGL = require 'ffi.req' 'OpenGL'

-- returns ffi/OpenAL.lua, since no OS/arch-specific overrides exist
local OpenAL = require 'ffi.req' 'OpenAL'
```

Why did I do this instead of modifying `package.path` or `package.loaders`?
Those would need a runtime-based configuration, based on your `ffi.os` and `ffi.arch`.
Maybe I'll replace this system with a one-time initialization that does just that.  Hmm...

TODO Also, legacy, I put all the binding code in `ffi/*`, but now that means `ffi/req.lua` etc is in the same place as `ffi/jpeg.lua` binding code, so maybe in the future I'll make the `ffi.req` root directory somewhere nested deeper, like `ffi/headers/` or something.

### [`ffi/load.lua`](https://github.com/thenumbernine/lua-ffi-bindings/blob/master/load.lua)

This is your `ffi.load` wrapper / replacement.

This is used to retrieve `.so`/`.dll`/`.dylib`'s, and used to resolve finding them.

Just calling `require 'ffi.load' '$libname'` by default will return `ffi.load '$libname'`.

From here LuaJIT has some builtin name resolutions (appending the correct `.so`/`.dll`/`.dylib` extension per-OS, prepending 'lib' for Linux, searching system library paths, searching `LD_LIBRARY_PATH`, etc...).

However you can optionally use this table to override the search location for a specific OS or architecture:

If the value is a string then the name is directly replaced:
``` Lua
require 'ffi.load' .openal = 'openal32'
local lib = require 'ffi.load' 'openal'`
```
... will assign `lib` to `ffi.load'openal32'` in all OS/arch cases.

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

### [`ffi/libwrapper.lua`](https://github.com/thenumbernine/lua-ffi-bindings/blob/master/libwrapper.lua)

It's no secret that LuaJIT has a table limit to the number of definitions it can do.
So to circumvent this I made `libwrapper`, for wrapping and storing enum and symbol prototypes in here, to be loaded only when the user requests them.

### [`ffi/c/`](https://github.com/thenumbernine/lua-ffi-bindings/tree/master/c)

I started porting C headers and putting them into the `c` folder, so that luajit code `require 'ffi.req' 'c.$header'` was equivalent to C code `#include <$header.h>`.
(But, you ask, why only put the builtin C headers in the `c` folder when the other libraries' headers go in the root folder?  Good question.)

### [`ffi/cpp/`](https://github.com/thenumbernine/lua-ffi-bindings/tree/master/cpp)

# Generation:

Most of them are automatically created by my [Lua include](https://github.com/thenumbernine/include-lua) project, whose `make.lua` file will automatically create the headers from the compiler's include files.

The original versions of this started from https://github.com/malkia/ufo .  One or two headers are still from malkia.


# Dependencies

- LuaJIT

# TODO

- why do I have a separate `ffi.req`?  It's just a search path.
Instead I should have a one-time check for inserting the `"ffi/$os/$arch/?.lua;ffi/$os/?.lua;ffi/$arch/?.lua;ffi/?.lua" into the package.path if it's not there.
That means restructuring the directories from `ffi/`, `ffi/Windows`, `ffi/OSX/` etc to `ffi/`, `ffi/Windows/ffi`, `ffi/OSX/ffi` etc ... it just means wedging one extra `ffi/` folder into the `$os/$arch, $os/, $arch/` folders.
And once I've done that, I can just do `require 'ffi.wherever'` ... but that still won't work unless I do a luarocks and do some initial setup somewhere `require = require 'ffi.require'` that auto-inserts the paths ... which honestly is just as tedious as what I'm doing right now ...
Maybe I'll keep doing `require 'ffi.req' '...'`.

...
- how about splitting this up per 3rd party search?
- then rename this package to 'c' or 'libc' or something,
- and then make require 'c' the same as the old require 'ffi.req', so you'd jsut do `require 'c' 'stdio'` to do a search for Windows/x64/stdio.lua, Windows/stdio.lua, x64/stdio.lua, or stdio.lua.

...
- separately, as for the 3rd party ones, maybe move them out of root level and into their own subfolder
- merge them with their `include/` information, make one unique file per-3rd-party-lib with its `include/` generatio info and with its `ffi/` generated binding info and with its `distinfo/` packaging information.
