local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <stdarg.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stdarg.h */
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
enum { _ANSI_STDARG_H_ = 1 };
enum { __GNUC_VA_LIST = 1 };
/* #define va_start (v,l) __builtin_va_start(v,l) ### define is not number */
/* #define va_end (v) __builtin_va_end(v) ### define is not number */
/* #define va_arg (v,l) __builtin_va_arg(v,l) ### define is not number */
/* #define va_copy (d,s) __builtin_va_copy(d,s) ### define is not number */
/* #define __va_copy (d,s) __builtin_va_copy(d,s) ### define is not number */
enum { _VA_LIST_ = 1 };
enum { _VA_LIST = 1 };
enum { _VA_LIST_DEFINED = 1 };
enum { __va_list__ = 1 };
/* + END <stdarg.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stdarg.h */
]]
