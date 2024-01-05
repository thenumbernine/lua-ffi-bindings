local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/features.h */
/* ++ BEGIN /usr/include/features-time64.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/timesize.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* +++ END   /usr/include/x86_64-linux-gnu/bits/timesize.h */
/* ++ END   /usr/include/features-time64.h */
/* ++ BEGIN /usr/include/stdc-predef.h */
/* ++ END   /usr/include/stdc-predef.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/sys/cdefs.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/long-double.h */
/* +++ END   /usr/include/x86_64-linux-gnu/bits/long-double.h */
/* ++ END   /usr/include/x86_64-linux-gnu/sys/cdefs.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/gnu/stubs.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/gnu/stubs-64.h */
/* +++ END   /usr/include/x86_64-linux-gnu/gnu/stubs-64.h */
/* ++ END   /usr/include/x86_64-linux-gnu/gnu/stubs.h */
/* + END   /usr/include/features.h */
]]
