local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <bits/types/clockid_t.h> /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
typedef __clockid_t clockid_t;
/* + END <bits/types/clockid_t.h> /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h */
]]
