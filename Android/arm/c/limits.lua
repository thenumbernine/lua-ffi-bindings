local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <limits.h> /data/data/com.termux/files/usr/lib/clang/21/include/limits.h */
/* ++ BEGIN <limits.h> /data/data/com.termux/files/usr/bin/../../usr/include/limits.h */
/* +++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* +++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* +++ BEGIN <float.h> /data/data/com.termux/files/usr/lib/clang/21/include/float.h */
/* +++ END <float.h> /data/data/com.termux/files/usr/lib/clang/21/include/float.h */
/* +++ BEGIN <linux/limits.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/limits.h */
/* +++ END <linux/limits.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/limits.h */
/* +++ BEGIN <bits/posix_limits.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/posix_limits.h */
/* +++ END <bits/posix_limits.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/posix_limits.h */
/* ++ END <limits.h> /data/data/com.termux/files/usr/bin/../../usr/include/limits.h */
enum { __CLANG_LIMITS_H = 1 };
enum { _GCC_LIMITS_H_ = 1 };
enum { __CLANG_FLOAT_H = 1 };
/* #define FLT_EVAL_METHOD __FLT_EVAL_METHOD__ ### define is not number */
/* #define FLT_ROUNDS (__builtin_flt_rounds()) ### define is not number */
enum { FLT_RADIX = 2 };
enum { FLT_MANT_DIG = 24 };
enum { DBL_MANT_DIG = 53 };
enum { LDBL_MANT_DIG = 53 };
enum { DECIMAL_DIG = 17 };
enum { FLT_DIG = 6 };
enum { DBL_DIG = 15 };
enum { LDBL_DIG = 15 };
/* #define FLT_MIN_EXP (-125) ### define is not number */
/* #define DBL_MIN_EXP (-1021) ### define is not number */
/* #define LDBL_MIN_EXP (-1021) ### define is not number */
/* #define FLT_MIN_10_EXP (-37) ### define is not number */
/* #define DBL_MIN_10_EXP (-307) ### define is not number */
/* #define LDBL_MIN_10_EXP (-307) ### define is not number */
enum { FLT_MAX_EXP = 128 };
enum { DBL_MAX_EXP = 1024 };
enum { LDBL_MAX_EXP = 1024 };
enum { FLT_MAX_10_EXP = 38 };
enum { DBL_MAX_10_EXP = 308 };
enum { LDBL_MAX_10_EXP = 308 };
/* #define FLT_MAX 3.40282347e+38F ### define is not number */
/* #define LONG_LONG_MIN (-__LONG_LONG_MAX__-1LL) ### define is not number */
/* #define ULONG_LONG_MAX (__LONG_LONG_MAX__*2ULL+1ULL) ### define is not number */
/* + END <limits.h> /data/data/com.termux/files/usr/lib/clang/21/include/limits.h */
]]

-- add in values that can't be ffi.cdef enum'd
local wrapper = setmetatable({}, {__index=ffi.C})
wrapper.LONG_MAX = 0x7FFFFFFFFFFFFFFFLL
wrapper.LONG_MIN = -wrapper.LONG_MAX - 1LL
wrapper.ULONG_MAX = 0xFFFFFFFFFFFFFFFFULL
wrapper.LLONG_MAX = wrapper.LONG_MAX
wrapper.LLONG_MIN = wrapper.LONG_MIN
return wrapper
