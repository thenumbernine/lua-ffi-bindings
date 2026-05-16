local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <stdint.h> /data/data/com.termux/files/usr/lib/clang/21/include/stdint.h */
/* ++ BEGIN <stdint.h> /data/data/com.termux/files/usr/bin/../../usr/include/stdint.h */
/* +++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* +++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* +++ BEGIN <bits/wchar_limits.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/wchar_limits.h */
/* +++ END <bits/wchar_limits.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/wchar_limits.h */
/* +++ BEGIN <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;
typedef int __intptr_t;
typedef unsigned int __uintptr_t;
typedef __int8_t int8_t;
typedef __uint8_t uint8_t;
typedef __int16_t int16_t;
typedef __uint16_t uint16_t;
typedef __int32_t int32_t;
typedef __uint32_t uint32_t;
typedef __int64_t int64_t;
typedef __uint64_t uint64_t;
typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
typedef int8_t int_least8_t;
typedef uint8_t uint_least8_t;
typedef int16_t int_least16_t;
typedef uint16_t uint_least16_t;
typedef int32_t int_least32_t;
typedef uint32_t uint_least32_t;
typedef int64_t int_least64_t;
typedef uint64_t uint_least64_t;
typedef int8_t int_fast8_t;
typedef uint8_t uint_fast8_t;
typedef int64_t int_fast64_t;
typedef uint64_t uint_fast64_t;
typedef int32_t int_fast16_t;
typedef uint32_t uint_fast16_t;
typedef int32_t int_fast32_t;
typedef uint32_t uint_fast32_t;
typedef uint64_t uintmax_t;
typedef int64_t intmax_t;
/* ++ END <stdint.h> /data/data/com.termux/files/usr/bin/../../usr/include/stdint.h */
enum { __CLANG_STDINT_H = 1 };
enum { _STDINT_H = 1 };
enum { WCHAR_MAX = 4294967295 };
/* #define WCHAR_MIN L'\0' ### define is not number */
enum { __BIT_TYPES_DEFINED__ = 1 };
/* #define INT8_C (c) c ### define is not number */
/* #define INT_LEAST8_C (c) INT8_C(c) ### define is not number */
/* #define INT_FAST8_C (c) INT8_C(c) ### define is not number */
/* #define UINT8_C (c) c ### define is not number */
/* #define UINT_LEAST8_C (c) UINT8_C(c) ### define is not number */
/* #define UINT_FAST8_C (c) UINT8_C(c) ### define is not number */
/* #define INT16_C (c) c ### define is not number */
/* #define INT_LEAST16_C (c) INT16_C(c) ### define is not number */
/* #define INT_FAST16_C (c) INT32_C(c) ### define is not number */
/* #define UINT16_C (c) c ### define is not number */
/* #define UINT_LEAST16_C (c) UINT16_C(c) ### define is not number */
/* #define UINT_FAST16_C (c) UINT32_C(c) ### define is not number */
/* #define INT32_C (c) c ### define is not number */
/* #define INT_LEAST32_C (c) INT32_C(c) ### define is not number */
/* #define INT_FAST32_C (c) INT32_C(c) ### define is not number */
/* #define UINT32_C (c) c ## U ### define is not number */
/* #define UINT_LEAST32_C (c) UINT32_C(c) ### define is not number */
/* #define UINT_FAST32_C (c) UINT32_C(c) ### define is not number */
/* #define INT_LEAST64_C (c) INT64_C(c) ### define is not number */
/* #define INT_FAST64_C (c) INT64_C(c) ### define is not number */
/* #define UINT_LEAST64_C (c) UINT64_C(c) ### define is not number */
/* #define UINT_FAST64_C (c) UINT64_C(c) ### define is not number */
/* #define INTMAX_C (c) INT64_C(c) ### define is not number */
/* #define UINTMAX_C (c) UINT64_C(c) ### define is not number */
/* #define INT64_C (c) c ## LL ### define is not number */
/* #define UINT64_C (c) c ## ULL ### define is not number */
/* #define INTPTR_C (c) INT32_C(c) ### define is not number */
/* #define UINTPTR_C (c) UINT32_C(c) ### define is not number */
/* #define PTRDIFF_C (c) INT32_C(c) ### define is not number */
/* #define INT8_MIN (-128) ### define is not number */
/* #define INT8_MAX (127) ### define is not number */
/* #define INT_LEAST8_MIN (-128) ### define is not number */
/* #define INT_LEAST8_MAX (127) ### define is not number */
/* #define INT_FAST8_MIN (-128) ### define is not number */
/* #define INT_FAST8_MAX (127) ### define is not number */
/* #define UINT8_MAX (255) ### define is not number */
/* #define UINT_LEAST8_MAX (255) ### define is not number */
/* #define UINT_FAST8_MAX (255) ### define is not number */
/* #define INT16_MIN (-32768) ### define is not number */
/* #define INT16_MAX (32767) ### define is not number */
/* #define INT_LEAST16_MIN (-32768) ### define is not number */
/* #define INT_LEAST16_MAX (32767) ### define is not number */
/* #define INT_FAST16_MIN (-2147483647-1) ### define is not number */
/* #define INT_FAST16_MAX (2147483647) ### define is not number */
/* #define UINT16_MAX (65535) ### define is not number */
/* #define UINT_LEAST16_MAX (65535) ### define is not number */
/* #define UINT_FAST16_MAX (4294967295U) ### define is not number */
/* #define INT32_MIN (-2147483647-1) ### define is not number */
/* #define INT32_MAX (2147483647) ### define is not number */
/* #define INT_LEAST32_MIN (-2147483647-1) ### define is not number */
/* #define INT_LEAST32_MAX (2147483647) ### define is not number */
/* #define INT_FAST32_MIN (-2147483647-1) ### define is not number */
/* #define INT_FAST32_MAX (2147483647) ### define is not number */
/* #define UINT32_MAX (4294967295U) ### define is not number */
/* #define UINT_LEAST32_MAX (4294967295U) ### define is not number */
/* #define UINT_FAST32_MAX (4294967295U) ### define is not number */
/* #define INT64_MIN (INT64_C(-9223372036854775807)-1) ### define is not number */
/* #define INT64_MAX (INT64_C(9223372036854775807)) ### define is not number */
/* #define INT_LEAST64_MIN (INT64_C(-9223372036854775807)-1) ### define is not number */
/* #define INT_LEAST64_MAX (INT64_C(9223372036854775807)) ### define is not number */
/* #define INT_FAST64_MIN (INT64_C(-9223372036854775807)-1) ### define is not number */
/* #define INT_FAST64_MAX (INT64_C(9223372036854775807)) ### define is not number */
/* #define UINT64_MAX (UINT64_C(18446744073709551615)) ### define is not number */
/* #define UINT_LEAST64_MAX (UINT64_C(18446744073709551615)) ### define is not number */
/* #define UINT_FAST64_MAX (UINT64_C(18446744073709551615)) ### define is not number */
/* #define INTMAX_MIN (INT64_C(-9223372036854775807)-1) ### define is not number */
/* #define INTMAX_MAX (INT64_C(9223372036854775807)) ### define is not number */
/* #define UINTMAX_MAX (UINT64_C(18446744073709551615)) ### define is not number */
/* #define SIG_ATOMIC_MAX (2147483647) ### define is not number */
/* #define SIG_ATOMIC_MIN (-2147483647-1) ### define is not number */
/* #define WINT_MAX (4294967295U) ### define is not number */
enum { WINT_MIN = 0 };
/* #define INTPTR_MIN (-2147483647-1) ### define is not number */
/* #define INTPTR_MAX (2147483647) ### define is not number */
/* #define UINTPTR_MAX (4294967295U) ### define is not number */
/* #define PTRDIFF_MIN (-2147483647-1) ### define is not number */
/* #define PTRDIFF_MAX (2147483647) ### define is not number */
/* #define SIZE_MAX (4294967295U) ### define is not number */
/* + END <stdint.h> /data/data/com.termux/files/usr/lib/clang/21/include/stdint.h */
]]
