local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/usr/lib/clang/15.0.0/include/stdarg.h */
typedef __builtin_va_list va_list;
typedef __builtin_va_list __gnuc_va_list;
/* + END   /Library/Developer/CommandLineTools/usr/lib/clang/15.0.0/include/stdarg.h */
]]
