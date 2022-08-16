local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h */
enum { __clockid_t_defined = 1 };
]] require 'ffi.c.bits.types' ffi.cdef[[
typedef __clockid_t clockid_t;
/* END /usr/include/x86_64-1-gnu/bits/types/clockid_t.h */
]]
