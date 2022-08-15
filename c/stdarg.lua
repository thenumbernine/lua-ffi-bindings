local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h */
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stdarg.h */
]]
