local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
enum { __WORDSIZE = 64 };
enum { __WORDSIZE_TIME64_COMPAT32 = 1 };
enum { __SYSCALL_WORDSIZE = 64 };
/* + END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]]
