local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h */
enum { __timeval_defined = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.c.bits.types' ffi.cdef[[
/* END   /usr/include/x86_64-linux-gnu/bits/types.h */
struct timeval { __time_t tv_sec;
__suseconds_t tv_usec;
};
/* END   /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h */
]]
