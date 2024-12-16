local ffi = require 'ffi'
ffi.cdef[[
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/setjmp.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
typedef long int __jmp_buf[8];
/* ++ END   /usr/include/x86_64-linux-gnu/bits/setjmp.h */
]]
