local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stdarg.h */
typedef __builtin_va_list __gnuc_va_list;
]] require 'ffi.req' 'c.va_list' ffi.cdef[[
/* + END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stdarg.h */
]]
