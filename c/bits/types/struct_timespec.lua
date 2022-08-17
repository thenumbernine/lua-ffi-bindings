local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
enum { _STRUCT_TIMESPEC = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.c.bits.types' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/endian.h */
]] require 'ffi.c.bits.endian' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/endian.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
]] require 'ffi.c.bits.types.time_t' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types/time_t.h */
struct timespec { __time_t tv_sec;
__syscall_slong_t tv_nsec;
};
/* END /usr/include/x86_64-1-gnu/bits/types/struct_timespec.h */
]]
