-- I can't use #ifdef #define scattered everywhere like linux does so ...
local ffi = require 'ffi'
ffi.cdef[[
enum { __FD_SETSIZE = 1024 };
]]
