local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* + END <features.h> /usr/include/features.h */
/* + BEGIN <bits/types/struct_timespec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN <bits/endian.h> /usr/include/x86_64-linux-gnu/bits/endian.h */
]] require 'ffi.req' 'c.bits.endian' ffi.cdef[[
/* ++ END <bits/endian.h> /usr/include/x86_64-linux-gnu/bits/endian.h */
/* ++ BEGIN <bits/types/time_t.h> /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
]] require 'ffi.req' 'c.bits.types.time_t' ffi.cdef[[
/* ++ END <bits/types/time_t.h> /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
struct timespec
{
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
};
enum { _STRUCT_TIMESPEC = 1 };
/* + END <bits/types/struct_timespec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]]
