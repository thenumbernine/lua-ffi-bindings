local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <limits.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/limits.h */
/* ++ BEGIN "syslimits.h" /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/syslimits.h */
/* +++ BEGIN <limits.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/limits.h */
/* ++++ BEGIN <limits.h> /boot/system/develop/headers/posix/limits.h */
/* +++++ BEGIN <config/types.h> /boot/system/develop/headers/config/types.h */
]] require 'ffi.req' 'c.config.types' ffi.cdef[[
/* +++++ END <config/types.h> /boot/system/develop/headers/config/types.h */
/* +++++ BEGIN <float.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/float.h */
/* +++++ END <float.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/float.h */
/* +++++ BEGIN <arch/x86_64/limits.h> /boot/system/develop/headers/posix/arch/x86_64/limits.h */
/* +++++ END <arch/x86_64/limits.h> /boot/system/develop/headers/posix/arch/x86_64/limits.h */
/* ++++ END <limits.h> /boot/system/develop/headers/posix/limits.h */
/* +++ END <limits.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/limits.h */
/* ++ END "syslimits.h" /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/syslimits.h */
enum { _GCC_LIMITS_H_ = 1 };
enum { _LIBC_LIMITS_H_ = 1 };
enum { _FLOAT_H___ = 1 };
enum { FLT_RADIX = 2 };
enum { FLT_MANT_DIG = 24 };
enum { DBL_MANT_DIG = 53 };
enum { LDBL_MANT_DIG = 64 };
enum { FLT_DIG = 6 };
enum { DBL_DIG = 15 };
enum { LDBL_DIG = 18 };
/* #define FLT_MIN_EXP (-125) ### define is not number */
/* #define DBL_MIN_EXP (-1021) ### define is not number */
/* #define LDBL_MIN_EXP (-16381) ### define is not number */
/* #define FLT_MIN_10_EXP (-37) ### define is not number */
/* #define DBL_MIN_10_EXP (-307) ### define is not number */
/* #define LDBL_MIN_10_EXP (-4931) ### define is not number */
enum { FLT_MAX_EXP = 128 };
enum { DBL_MAX_EXP = 1024 };
enum { LDBL_MAX_EXP = 16384 };
enum { FLT_MAX_10_EXP = 38 };
enum { DBL_MAX_10_EXP = 308 };
enum { LDBL_MAX_10_EXP = 4932 };
/* #define FLT_MAX 3.40282346638528859811704183484516925e+38F ### define is not number */
/* #define DBL_MAX ((double)1.79769313486231570814527423731704357e+308L) ### define is not number */
/* #define ULONG_LONG_MAX (LONG_LONG_MAX * 2ULL + 1ULL) ### define is not number */
/* + END <limits.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/limits.h */
]]
-- add in values that can't be ffi.cdef enum'd
local wrapper = setmetatable({}, {__index=ffi.C})
wrapper.LONG_MAX = 0x7FFFFFFFFFFFFFFFLL
wrapper.LONG_MIN = -wrapper.LONG_MAX - 1LL
wrapper.ULONG_MAX = 0xFFFFFFFFFFFFFFFFULL
wrapper.LLONG_MAX = wrapper.LONG_MAX
wrapper.LLONG_MIN = wrapper.LONG_MIN
return wrapper
