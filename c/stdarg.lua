local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/12/include/stdarg.h */
enum { _STDARG_H = 1 };
enum { _ANSI_STDARG_H_ = 1 };
enum { __GNUC_VA_LIST = 1 };
typedef __builtin_va_list __gnuc_va_list;
]] require 'ffi.c.va_list' ffi.cdef[[
enum { _VA_LIST_ = 1 };
enum { _VA_LIST = 1 };
enum { _VA_LIST_T_H = 1 };
enum { __va_list__ = 1 };
/* END   /usr/lib/gcc/x86_64-linux-gnu/12/include/stdarg.h */
]]
