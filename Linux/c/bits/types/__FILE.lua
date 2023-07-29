local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/bits/types/__FILE.h */
enum { ____FILE_defined = 1 };
struct _IO_FILE;
typedef struct _IO_FILE __FILE;
/* + END   /usr/include/x86_64-linux-gnu/bits/types/__FILE.h */
]]
