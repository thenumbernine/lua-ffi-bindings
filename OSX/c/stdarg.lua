local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <stdarg.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdarg.h */
/* ++ BEGIN <__stdarg_header_macro.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stdarg_header_macro.h */
/* ++ END <__stdarg_header_macro.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stdarg_header_macro.h */
/* ++ BEGIN <__stdarg___gnuc_va_list.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stdarg___gnuc_va_list.h */
typedef __builtin_va_list __gnuc_va_list;
/* ++ END <__stdarg___gnuc_va_list.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stdarg___gnuc_va_list.h */
/* ++ BEGIN <__stdarg_va_list.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stdarg_va_list.h */
typedef __builtin_va_list va_list;
/* ++ END <__stdarg_va_list.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stdarg_va_list.h */
/* ++ BEGIN <__stdarg_va_arg.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stdarg_va_arg.h */
/* ++ END <__stdarg_va_arg.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stdarg_va_arg.h */
/* ++ BEGIN <__stdarg___va_copy.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stdarg___va_copy.h */
/* ++ END <__stdarg___va_copy.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stdarg___va_copy.h */
/* ++ BEGIN <__stdarg_va_copy.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stdarg_va_copy.h */
/* ++ END <__stdarg_va_copy.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stdarg_va_copy.h */
enum { __GNUC_VA_LIST = 1 };
enum { _VA_LIST = 1 };
/* #define va_start (ap,param) __builtin_va_start(ap, param) ### define is not number */
/* #define va_end (ap) __builtin_va_end(ap) ### define is not number */
/* #define va_arg (ap,type) __builtin_va_arg(ap, type) ### define is not number */
/* #define __va_copy (d,s) __builtin_va_copy(d, s) ### define is not number */
/* #define va_copy (dest,src) __builtin_va_copy(dest, src) ### define is not number */
/* + END <stdarg.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdarg.h */
]]
