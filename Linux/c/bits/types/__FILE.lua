local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/bits/types/__FILE.h */
struct _IO_FILE;
typedef struct _IO_FILE __FILE;
/* + END   /usr/include/x86_64-linux-gnu/bits/types/__FILE.h */
]]
