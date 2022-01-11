Alright my LuaJIT / C helper projects/classes/repos are a bit of a mess.

I was putting my LuaJIT FFI/C bindings (stripped-down C headers) in my "lua-ffi-bindings" repo.

Then putting any LuaJIT Lua class wrappers around them in their own folders (like "lua-gl", "lua-opencl", etc).

Then I started adding common C headers' ports to "lua-ffi-bindings/c", 
so that luajit code "require 'ffi.c.$header'" was equivalent to C code "#include <$header.h>".

Then I made my "preproc-lua" project for generating those bindings / conversion from C headers to luajit ffi binding files.

Then I started adding my own attempt at STL classes ported to LuaJIT classes in "lua-ffi-bindings/cpp",
so that luajit code "require 'ffi.cpp.$header'" was equivalent to C++ code "#include <$header>".
... so far only "vector" exists but I might grow that soon ...


A few of my Lua class wrappers all started to exhibit the same pattern for refcounting (lua-opencl) or automatically deleting resources (lua-gl) ...
and soon to be cpp/thread and cpp/mutex ...
so I decided to put that behavior in one place, here.

