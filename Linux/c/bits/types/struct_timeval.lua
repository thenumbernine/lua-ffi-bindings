local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* + END <features.h> /usr/include/features.h */
/* + BEGIN <bits/types/struct_timeval.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};
/* + END <bits/types/struct_timeval.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h */
]]
