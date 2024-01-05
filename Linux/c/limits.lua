local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
/* ++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/syslimits.h */
/* +++ BEGIN /usr/include/limits.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
]] require 'ffi.req' 'c.bits.libc-header-start' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
enum { MB_LEN_MAX = 16 };
enum { LLONG_MIN = -1 };
/* #  define LLONG_MAX	__LONG_LONG_MAX__ ### string, not number "9.2233720368548e+18" */
/* #  define ULLONG_MAX	(LLONG_MAX * 2ULL + 1) ### string, not number "(LLONG_MAX * 2ULL + 1)" */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
]] require 'ffi.req' 'c.bits.posix1_lim' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/posix2_lim.h */
enum { BC_BASE_MAX = 99 };
enum { BC_DIM_MAX = 2048 };
enum { BC_SCALE_MAX = 99 };
enum { BC_STRING_MAX = 1000 };
enum { COLL_WEIGHTS_MAX = 255 };
enum { EXPR_NEST_MAX = 32 };
enum { LINE_MAX = 2048 };
enum { CHARCLASS_NAME_MAX = 2048 };
enum { RE_DUP_MAX = 32767 };
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/posix2_lim.h */
/* +++ END   /usr/include/limits.h */
/* ++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/syslimits.h */
enum { CHAR_BIT = 8 };
enum { SCHAR_MIN = -1 };
enum { SCHAR_MAX = 127 };
enum { UCHAR_MAX = 255 };
enum { CHAR_MIN = -128 };
enum { CHAR_MAX = 127 };
enum { SHRT_MIN = -1 };
enum { SHRT_MAX = 32767 };
enum { USHRT_MAX = 65535 };
enum { INT_MIN = -1 };
enum { INT_MAX = 2147483647 };
enum { UINT_MAX = 4294967295 };
enum { LONG_MIN = -1 };
/* #define LONG_MAX __LONG_MAX__ ### string, not number "9.2233720368548e+18" */
/* #define ULONG_MAX (LONG_MAX * 2UL + 1UL) ### string, not number "1.844674407371e+19" */
/* # define LLONG_MIN (-LLONG_MAX - 1LL) ### string, not number "-9.2233720368548e+18" */
/* # define LLONG_MAX __LONG_LONG_MAX__ ### string, not number "9.2233720368548e+18" */
/* # define ULLONG_MAX (LLONG_MAX * 2ULL + 1ULL) ### string, not number "(LLONG_MAX * 2ULL + 1ULL)" */
/* + END   /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
]]
