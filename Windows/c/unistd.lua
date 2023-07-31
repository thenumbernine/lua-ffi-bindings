local ffi = require 'ffi'
require 'ffi.Windows.c.direct'  -- get our windows defs
local lib = ffi.C
-- TODO I see the orig name prototypes in direct.h ...
-- ... so do I even need the Lua alias anymore?
return setmetatable({
	chdir = lib._chdir,
	getcwd = lib._getcwd,
	rmdir = lib._rmdir,
}, {
	__index = lib,
})
