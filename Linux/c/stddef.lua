local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
enum { _STDDEF_H_ = 1 };
enum { _PTRDIFF_T = 1 };
enum { _T_PTRDIFF_ = 1 };
enum { _T_PTRDIFF = 1 };
enum { __PTRDIFF_T = 1 };
enum { _PTRDIFF_T_ = 1 };
enum { _BSD_PTRDIFF_T_ = 1 };
enum { ___int_ptrdiff_t_h = 1 };
enum { _GCC_PTRDIFF_T = 1 };
enum { _PTRDIFF_T_DECLARED = 1 };
enum { __DEFINED_ptrdiff_t = 1 };
enum { __size_t__ = 1 };
enum { __SIZE_T__ = 1 };
enum { _SIZE_T = 1 };
enum { _T_SIZE_ = 1 };
enum { _T_SIZE = 1 };
enum { __SIZE_T = 1 };
enum { _SIZE_T_ = 1 };
enum { _BSD_SIZE_T_ = 1 };
enum { _SIZE_T_DEFINED_ = 1 };
enum { _SIZE_T_DEFINED = 1 };
enum { _BSD_SIZE_T_DEFINED_ = 1 };
enum { _SIZE_T_DECLARED = 1 };
enum { __DEFINED_size_t = 1 };
enum { ___int_size_t_h = 1 };
enum { _GCC_SIZE_T = 1 };
enum { _SIZET_ = 1 };
enum { __size_t = 1 };
enum { __wchar_t__ = 1 };
enum { __WCHAR_T__ = 1 };
enum { _WCHAR_T = 1 };
enum { _T_WCHAR_ = 1 };
enum { _T_WCHAR = 1 };
enum { __WCHAR_T = 1 };
enum { _WCHAR_T_ = 1 };
enum { _WCHAR_T_DEFINED_ = 1 };
enum { _WCHAR_T_DEFINED = 1 };
enum { ___int_wchar_t_h = 1 };
enum { _GCC_WCHAR_T = 1 };
enum { _WCHAR_T_DECLARED = 1 };
enum { __DEFINED_wchar_t = 1 };
/* #define NULL ((void *)0) ### define is not number */
/* #define offsetof (TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER) ### define is not number */
enum { _GCC_MAX_ALIGN_T = 1 };
/* + END <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
]]
