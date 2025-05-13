local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <limits.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/limits.h */
/* ++ BEGIN "syslimits.h" /usr/lib/gcc/x86_64-linux-gnu/14/include/syslimits.h */
/* +++ BEGIN <limits.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/limits.h */
/* ++++ BEGIN <limits.h> /usr/include/limits.h */
/* +++++ BEGIN <bits/libc-header-start.h> /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
]] require 'ffi.req' 'c.bits.libc-header-start' ffi.cdef[[
/* +++++ END <bits/libc-header-start.h> /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
/* +++++ BEGIN <bits/posix1_lim.h> /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
]] require 'ffi.req' 'c.bits.posix1_lim' ffi.cdef[[
/* +++++ END <bits/posix1_lim.h> /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
/* +++++ BEGIN <bits/posix2_lim.h> /usr/include/x86_64-linux-gnu/bits/posix2_lim.h */
/* +++++ END <bits/posix2_lim.h> /usr/include/x86_64-linux-gnu/bits/posix2_lim.h */
/* ++++ END <limits.h> /usr/include/limits.h */
/* +++ END <limits.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/limits.h */
/* ++ END "syslimits.h" /usr/lib/gcc/x86_64-linux-gnu/14/include/syslimits.h */
enum { _GCC_LIMITS_H_ = 1 };
enum { _LIBC_LIMITS_H_ = 1 };
enum { MB_LEN_MAX = 16 };
enum { _LIMITS_H___ = 1 };
/* #define CHAR_BIT __CHAR_BIT__ ### define is not number */
/* #define SCHAR_MIN (-SCHAR_MAX - 1) ### define is not number */
/* #define SCHAR_MAX __SCHAR_MAX__ ### define is not number */
/* #define UCHAR_MAX (SCHAR_MAX * 2 + 1) ### define is not number */
/* #define CHAR_MIN SCHAR_MIN ### define is not number */
/* #define CHAR_MAX SCHAR_MAX ### define is not number */
/* #define SHRT_MIN (-SHRT_MAX - 1) ### define is not number */
/* #define SHRT_MAX __SHRT_MAX__ ### define is not number */
/* #define USHRT_MAX (SHRT_MAX * 2 + 1) ### define is not number */
/* #define INT_MIN (-INT_MAX - 1) ### define is not number */
/* #define INT_MAX __INT_MAX__ ### define is not number */
/* #define UINT_MAX (INT_MAX * 2U + 1U) ### define is not number */
/* #define LONG_MIN (-LONG_MAX - 1L) ### define is not number */
/* #define LONG_MAX __LONG_MAX__ ### define is not number */
/* #define ULONG_MAX (LONG_MAX * 2UL + 1UL) ### define is not number */
/* #define LLONG_MIN (-LLONG_MAX - 1LL) ### define is not number */
/* #define LLONG_MAX __LONG_LONG_MAX__ ### define is not number */
/* #define ULLONG_MAX (LLONG_MAX * 2ULL + 1ULL) ### define is not number */
/* + END <limits.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/limits.h */
]]
