local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <bits/types/clock_t.h> /usr/include/x86_64-linux-gnu/bits/types/clock_t.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
typedef __clock_t clock_t;
/* + END <bits/types/clock_t.h> /usr/include/x86_64-linux-gnu/bits/types/clock_t.h */
]]
