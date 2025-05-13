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
enum { BC_BASE_MAX = 99 };
enum { BC_DIM_MAX = 2048 };
enum { BC_SCALE_MAX = 99 };
enum { BC_STRING_MAX = 1000 };
enum { COLL_WEIGHTS_MAX = 255 };
enum { EXPR_NEST_MAX = 32 };
enum { LINE_MAX = 2048 };
enum { CHARCLASS_NAME_MAX = 2048 };
/* #define RE_DUP_MAX (0x7fff) ### define is not number */
enum { _LIMITS_H___ = 1 };
enum { CHAR_BIT = 8 };
/* #define SCHAR_MIN (-SCHAR_MAX - 1) ### define is not number */
enum { SCHAR_MAX = 0x7f };
/* #define UCHAR_MAX (SCHAR_MAX * 2 + 1) ### define is not number */
/* #define CHAR_MIN (-SCHAR_MAX - 1) ### define is not number */
enum { CHAR_MAX = 0x7f };
/* #define SHRT_MIN (-SHRT_MAX - 1) ### define is not number */
enum { SHRT_MAX = 0x7fff };
/* #define USHRT_MAX (SHRT_MAX * 2 + 1) ### define is not number */
/* #define INT_MIN (-INT_MAX - 1) ### define is not number */
enum { INT_MAX = 0x7fffffff };
/* #define UINT_MAX (INT_MAX * 2U + 1U) ### define is not number */
/* #define LONG_MIN (-LONG_MAX - 1L) ### define is not number */
/* #define ULONG_MAX (LONG_MAX * 2UL + 1UL) ### define is not number */
/* #define LLONG_MIN (-LLONG_MAX - 1LL) ### define is not number */
/* #define ULLONG_MAX (LLONG_MAX * 2ULL + 1ULL) ### define is not number */
/* + END <limits.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/limits.h */
]]

-- add in values that can't be ffi.cdef enum'd
local wrapper = setmetatable({}, {__index=ffi.C})
wrapper.LONG_MAX = 0x7FFFFFFFFFFFFFFFLL
wrapper.LONG_MIN = -wrapper.LONG_MAX - 1LL
wrapper.ULONG_MAX = 0xFFFFFFFFFFFFFFFFULL
wrapper.LLONG_MAX = wrapper.LONG_MAX
wrapper.LLONG_MIN = wrapper.LONG_MIN
return wrapper
