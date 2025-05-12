local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <bits/setjmp.h> /usr/include/x86_64-linux-gnu/bits/setjmp.h */
typedef long int __jmp_buf[8];
/* + END <bits/setjmp.h> /usr/include/x86_64-linux-gnu/bits/setjmp.h */
]]
