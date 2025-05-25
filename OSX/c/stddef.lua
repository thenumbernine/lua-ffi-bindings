local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <stddef.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stddef.h */
/* ++ BEGIN <__stddef_header_macro.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stddef_header_macro.h */
/* ++ END <__stddef_header_macro.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stddef_header_macro.h */
/* ++ BEGIN <__stddef_ptrdiff_t.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stddef_ptrdiff_t.h */
typedef long int ptrdiff_t;
/* ++ END <__stddef_ptrdiff_t.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stddef_ptrdiff_t.h */
/* ++ BEGIN <__stddef_size_t.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stddef_size_t.h */
typedef long unsigned int size_t;
/* ++ END <__stddef_size_t.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stddef_size_t.h */
/* ++ BEGIN <__stddef_wchar_t.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stddef_wchar_t.h */
typedef int wchar_t;
/* ++ END <__stddef_wchar_t.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stddef_wchar_t.h */
/* ++ BEGIN <__stddef_null.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stddef_null.h */
/* ++ END <__stddef_null.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stddef_null.h */
/* ++ BEGIN <__stddef_max_align_t.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stddef_max_align_t.h */
typedef long double max_align_t;
/* ++ END <__stddef_max_align_t.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stddef_max_align_t.h */
/* ++ BEGIN <__stddef_offsetof.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stddef_offsetof.h */
/* ++ END <__stddef_offsetof.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/__stddef_offsetof.h */
/* #define NULL ((void *)0) ### define is not number */
enum { __CLANG_MAX_ALIGN_T_DEFINED = 1 };
/* #define offsetof (t,d) __builtin_offsetof(t, d) ### define is not number */
/* + END <stddef.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stddef.h */
]]
