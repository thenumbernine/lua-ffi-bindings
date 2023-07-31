local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/bits/types/clock_t.h */
enum { __clock_t_defined = 1 };
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
typedef __clock_t clock_t;
/* + END   /usr/include/x86_64-linux-gnu/bits/types/clock_t.h */
]]
