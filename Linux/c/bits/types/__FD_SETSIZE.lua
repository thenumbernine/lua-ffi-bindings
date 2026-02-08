local ffi = require 'ffi'
ffi.cdef[[
enum { __FD_SETSIZE = 1024 };
]]
