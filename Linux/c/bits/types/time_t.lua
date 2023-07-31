local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
enum { __time_t_defined = 1 };
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
typedef __time_t time_t;
/* + END   /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
]]
