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
enum { _POSIX2_BC_BASE_MAX = 99 };
enum { _POSIX2_BC_DIM_MAX = 2048 };
enum { _POSIX2_BC_SCALE_MAX = 99 };
enum { _POSIX2_BC_STRING_MAX = 1000 };
enum { _POSIX2_COLL_WEIGHTS_MAX = 2 };
enum { _POSIX2_EXPR_NEST_MAX = 32 };
enum { _POSIX2_LINE_MAX = 2048 };
enum { _POSIX2_RE_DUP_MAX = 255 };
enum { _POSIX2_CHARCLASS_NAME_MAX = 14 };
/* #define BC_BASE_MAX _POSIX2_BC_BASE_MAX ### define is not number */
/* #define BC_DIM_MAX _POSIX2_BC_DIM_MAX ### define is not number */
/* #define BC_SCALE_MAX _POSIX2_BC_SCALE_MAX ### define is not number */
/* #define BC_STRING_MAX _POSIX2_BC_STRING_MAX ### define is not number */
enum { COLL_WEIGHTS_MAX = 255 };
/* #define EXPR_NEST_MAX _POSIX2_EXPR_NEST_MAX ### define is not number */
/* #define LINE_MAX _POSIX2_LINE_MAX ### define is not number */
enum { CHARCLASS_NAME_MAX = 2048 };
/* #define RE_DUP_MAX (0x7fff) ### define is not number */
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
