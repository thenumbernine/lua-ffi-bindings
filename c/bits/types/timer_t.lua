local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/timer_t.h */
enum { __timer_t_defined = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.c.bits.types' ffi.cdef[[
/* END   /usr/include/x86_64-linux-gnu/bits/types.h */
typedef __timer_t timer_t;
/* END   /usr/include/x86_64-linux-gnu/bits/types/timer_t.h */
]]
