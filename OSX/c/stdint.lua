local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <stdint.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
/* ++ BEGIN <stdint.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h */
/* +++ BEGIN <sys/_types/_int8_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
]] require 'ffi.req' 'c.sys._types._int8_t' ffi.cdef[[
/* +++ END <sys/_types/_int8_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
/* +++ BEGIN <sys/_types/_int16_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
]] require 'ffi.req' 'c.sys._types._int16_t' ffi.cdef[[
/* +++ END <sys/_types/_int16_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
/* +++ BEGIN <sys/_types/_int32_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
]] require 'ffi.req' 'c.sys._types._int32_t' ffi.cdef[[
/* +++ END <sys/_types/_int32_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
/* +++ BEGIN <sys/_types/_int64_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
]] require 'ffi.req' 'c.sys._types._int64_t' ffi.cdef[[
/* +++ END <sys/_types/_int64_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
/* +++ BEGIN <_types/_uint8_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h */
]] require 'ffi.req' 'c._types._uint8_t' ffi.cdef[[
/* +++ END <_types/_uint8_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h */
/* +++ BEGIN <_types/_uint16_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h */
]] require 'ffi.req' 'c._types._uint16_t' ffi.cdef[[
/* +++ END <_types/_uint16_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h */
/* +++ BEGIN <_types/_uint32_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h */
]] require 'ffi.req' 'c._types._uint32_t' ffi.cdef[[
/* +++ END <_types/_uint32_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h */
/* +++ BEGIN <_types/_uint64_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h */
]] require 'ffi.req' 'c._types._uint64_t' ffi.cdef[[
/* +++ END <_types/_uint64_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h */
typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;
typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;
typedef int8_t int_fast8_t;
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef int64_t int_fast64_t;
typedef uint8_t uint_fast8_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
typedef uint64_t uint_fast64_t;
/* +++ BEGIN <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
]] require 'ffi.req' 'c.sys._types' ffi.cdef[[
/* +++ END <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ BEGIN <sys/_types/_intptr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
]] require 'ffi.req' 'c.sys._types._intptr_t' ffi.cdef[[
/* +++ END <sys/_types/_intptr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* +++ BEGIN <sys/_types/_uintptr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
]] require 'ffi.req' 'c.sys._types._uintptr_t' ffi.cdef[[
/* +++ END <sys/_types/_uintptr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
/* +++ BEGIN <_types/_intmax_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_intmax_t.h */
]] require 'ffi.req' 'c._types._intmax_t' ffi.cdef[[
/* +++ END <_types/_intmax_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_intmax_t.h */
/* +++ BEGIN <_types/_uintmax_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h */
]] require 'ffi.req' 'c._types._uintmax_t' ffi.cdef[[
/* +++ END <_types/_uintmax_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h */
/* ++ END <stdint.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h */
enum { __WORDSIZE = 64 };
/* #define INT8_C (v) (v) ### define is not number */
/* #define INT16_C (v) (v) ### define is not number */
/* #define INT32_C (v) (v) ### define is not number */
/* #define INT64_C (v) (v ## LL) ### define is not number */
/* #define UINT8_C (v) (v) ### define is not number */
/* #define UINT16_C (v) (v) ### define is not number */
/* #define UINT32_C (v) (v ## U) ### define is not number */
/* #define UINT64_C (v) (v ## ULL) ### define is not number */
/* #define INTMAX_C (v) (v ## L) ### define is not number */
/* #define UINTMAX_C (v) (v ## UL) ### define is not number */
enum { INT8_MAX = 127 };
enum { INT16_MAX = 32767 };
enum { INT32_MAX = 2147483647 };
enum { INT8_MIN = -128 };
enum { INT16_MIN = -32768 };
/* #define INT32_MIN (-INT32_MAX-1) ### define is not number */
/* #define INT64_MIN (-INT64_MAX-1) ### define is not number */
enum { UINT8_MAX = 255 };
enum { UINT16_MAX = 65535 };
enum { UINT32_MAX = 4294967295 };
enum { INT_LEAST8_MIN = -128 };
enum { INT_LEAST16_MIN = -32768 };
/* #define INT_LEAST32_MIN (-INT32_MAX-1) ### define is not number */
/* #define INT_LEAST64_MIN (-INT64_MAX-1) ### define is not number */
enum { INT_LEAST8_MAX = 127 };
enum { INT_LEAST16_MAX = 32767 };
enum { INT_LEAST32_MAX = 2147483647 };
enum { UINT_LEAST8_MAX = 255 };
enum { UINT_LEAST16_MAX = 65535 };
enum { UINT_LEAST32_MAX = 4294967295 };
enum { INT_FAST8_MIN = -128 };
enum { INT_FAST16_MIN = -32768 };
/* #define INT_FAST32_MIN (-INT32_MAX-1) ### define is not number */
/* #define INT_FAST64_MIN (-INT64_MAX-1) ### define is not number */
enum { INT_FAST8_MAX = 127 };
enum { INT_FAST16_MAX = 32767 };
enum { INT_FAST32_MAX = 2147483647 };
enum { UINT_FAST8_MAX = 255 };
enum { UINT_FAST16_MAX = 65535 };
enum { UINT_FAST32_MAX = 4294967295 };
/* #define INTPTR_MIN (-INTPTR_MAX-1) ### define is not number */
/* #define INTMAX_MAX INTMAX_C(9223372036854775807) ### define is not number */
/* #define UINTMAX_MAX UINTMAX_C(18446744073709551615) ### define is not number */
/* #define INTMAX_MIN (-INTMAX_MAX-1) ### define is not number */
/* #define PTRDIFF_MIN (-INTMAX_MAX-1) ### define is not number */
/* #define PTRDIFF_MAX INTMAX_C(9223372036854775807) ### define is not number */
/* #define RSIZE_MAX (SIZE_MAX >> 1) ### define is not number */
/* #define WCHAR_MIN (-WCHAR_MAX-1) ### define is not number */
/* #define WINT_MIN (-INT32_MAX-1) ### define is not number */
enum { WINT_MAX = 2147483647 };
/* #define SIG_ATOMIC_MIN (-INT32_MAX-1) ### define is not number */
enum { SIG_ATOMIC_MAX = 2147483647 };
/* + END <stdint.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
]]
