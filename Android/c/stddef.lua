local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
/* ++ BEGIN <__stddef_header_macro.h> /data/data/com.termux/files/usr/lib/clang/21/include/__stddef_header_macro.h */
/* ++ END <__stddef_header_macro.h> /data/data/com.termux/files/usr/lib/clang/21/include/__stddef_header_macro.h */
/* ++ BEGIN <__stddef_ptrdiff_t.h> /data/data/com.termux/files/usr/lib/clang/21/include/__stddef_ptrdiff_t.h */
typedef int ptrdiff_t;
/* ++ END <__stddef_ptrdiff_t.h> /data/data/com.termux/files/usr/lib/clang/21/include/__stddef_ptrdiff_t.h */
/* ++ BEGIN <__stddef_size_t.h> /data/data/com.termux/files/usr/lib/clang/21/include/__stddef_size_t.h */
typedef unsigned int size_t;
/* ++ END <__stddef_size_t.h> /data/data/com.termux/files/usr/lib/clang/21/include/__stddef_size_t.h */
/* ++ BEGIN <__stddef_wchar_t.h> /data/data/com.termux/files/usr/lib/clang/21/include/__stddef_wchar_t.h */
typedef unsigned int wchar_t;
/* ++ END <__stddef_wchar_t.h> /data/data/com.termux/files/usr/lib/clang/21/include/__stddef_wchar_t.h */
/* ++ BEGIN <__stddef_null.h> /data/data/com.termux/files/usr/lib/clang/21/include/__stddef_null.h */
/* ++ END <__stddef_null.h> /data/data/com.termux/files/usr/lib/clang/21/include/__stddef_null.h */
/* ++ BEGIN <__stddef_max_align_t.h> /data/data/com.termux/files/usr/lib/clang/21/include/__stddef_max_align_t.h */
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
/* ++ END <__stddef_max_align_t.h> /data/data/com.termux/files/usr/lib/clang/21/include/__stddef_max_align_t.h */
/* ++ BEGIN <__stddef_offsetof.h> /data/data/com.termux/files/usr/lib/clang/21/include/__stddef_offsetof.h */
/* ++ END <__stddef_offsetof.h> /data/data/com.termux/files/usr/lib/clang/21/include/__stddef_offsetof.h */
enum { __STDDEF_H = 1 };
enum { _PTRDIFF_T = 1 };
enum { _SIZE_T = 1 };
enum { _WCHAR_T = 1 };
/* #define NULL ((void*)0) ### define is not number */
enum { __CLANG_MAX_ALIGN_T_DEFINED = 1 };
/* #define offsetof (t,d) __builtin_offsetof(t, d) ### define is not number */
/* + END <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
]]
