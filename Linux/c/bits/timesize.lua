local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <bits/timesize.h> /usr/include/x86_64-linux-gnu/bits/timesize.h */
/* ++ BEGIN <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* ++ END <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
enum { __TIMESIZE = 64 };
/* + END <bits/timesize.h> /usr/include/x86_64-linux-gnu/bits/timesize.h */
]]
