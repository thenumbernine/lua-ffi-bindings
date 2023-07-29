local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/bits/types/FILE.h */
enum { __FILE_defined = 1 };
struct _IO_FILE;
typedef struct _IO_FILE FILE;
/* + END   /usr/include/x86_64-linux-gnu/bits/types/FILE.h */
]]
