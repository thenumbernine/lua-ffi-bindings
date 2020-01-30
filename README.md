Some common headers ported over to LuaJIT FFI.

Thanks to https://github.com/malkia/ufo from which some of these may have come, or at least the notion of doing such a thing came from.

For some of these I use a `$LUAJIT_LIBPATH` environment variable to specify the base of the directory structure where .so files are located.
From there sometimes I follow Malkia's structure of `/$ffi.os/$ffi.arch/` to further distinguish .so files.


### Dependencies

- LuaJIT
- The Imgui library bindings depends on the auto-generated cimgui library bindings provided at https://github.com/sonoro1234/LuaJIT-ImGui.  You don't need to re-generate the bindings (unless you are regenerating them for a newer version of cimgui).  You only need to make sure that your LUA_PATH is set up so that the LuaJIT-ImGUI/build/imgui folder can be accessed via a "require 'imgui'" call.
