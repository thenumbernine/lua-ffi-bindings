local ffi = require 'ffi'
ffi.cdef[[
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
/* +++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* +++ END   /usr/include/features.h */
/* ++ END   /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
]]
