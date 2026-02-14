local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <stdint.h> /boot/system/develop/headers/posix/stdint.h */
/* ++ BEGIN <config/types.h> /boot/system/develop/headers/config/types.h */
]] require 'ffi.req' 'c.config.types' ffi.cdef[[
/* ++ END <config/types.h> /boot/system/develop/headers/config/types.h */
typedef __haiku_std_int8 int8_t;
typedef __haiku_std_uint8 uint8_t;
typedef __haiku_std_int16 int16_t;
typedef __haiku_std_uint16 uint16_t;
typedef __haiku_std_int32 int32_t;
typedef __haiku_std_uint32 uint32_t;
typedef __haiku_std_int64 int64_t;
typedef __haiku_std_uint64 uint64_t;
typedef int8_t int_least8_t;
typedef uint8_t uint_least8_t;
typedef int16_t int_least16_t;
typedef uint16_t uint_least16_t;
typedef int32_t int_least32_t;
typedef uint32_t uint_least32_t;
typedef int64_t int_least64_t;
typedef uint64_t uint_least64_t;
typedef int32_t int_fast8_t;
typedef uint32_t uint_fast8_t;
typedef int32_t int_fast16_t;
typedef uint32_t uint_fast16_t;
typedef int32_t int_fast32_t;
typedef uint32_t uint_fast32_t;
typedef int64_t int_fast64_t;
typedef uint64_t uint_fast64_t;
typedef __haiku_saddr_t intptr_t;
typedef __haiku_addr_t uintptr_t;
typedef int64_t intmax_t;
typedef uint64_t uintmax_t;
typedef uint8_t u_int8_t;
typedef uint16_t u_int16_t;
typedef uint32_t u_int32_t;
typedef uint64_t u_int64_t;
enum { _STDINT_H_ = 1 };
/* #define INT8_MIN (-128) ### define is not number */
/* #define INT8_MAX (127) ### define is not number */
/* #define UINT8_MAX (255) ### define is not number */
/* #define INT16_MIN (-32768) ### define is not number */
/* #define INT16_MAX (32767) ### define is not number */
/* #define UINT16_MAX (65535) ### define is not number */
/* #define INT32_MAX (2147483647) ### define is not number */
/* #define INT32_MIN (-INT32_MAX-1) ### define is not number */
/* #define UINT32_MAX (4294967295U) ### define is not number */
/* #define INT64_MAX (9223372036854775807L) ### define is not number */
/* #define UINT64_MAX (18446744073709551615UL) ### define is not number */
/* #define INT64_MIN (-INT64_MAX-1) ### define is not number */
/* #define INT_LEAST8_MIN (-128) ### define is not number */
/* #define INT_LEAST8_MAX (127) ### define is not number */
/* #define UINT_LEAST8_MAX (255) ### define is not number */
/* #define INT_LEAST16_MIN (-32768) ### define is not number */
/* #define INT_LEAST16_MAX (32767) ### define is not number */
/* #define UINT_LEAST16_MAX (65535) ### define is not number */
/* #define INT_LEAST32_MIN (-INT32_MAX-1) ### define is not number */
/* #define INT_LEAST32_MAX (2147483647) ### define is not number */
/* #define UINT_LEAST32_MAX (4294967295U) ### define is not number */
/* #define INT_LEAST64_MIN (-INT64_MAX-1) ### define is not number */
/* #define INT_LEAST64_MAX (9223372036854775807L) ### define is not number */
/* #define UINT_LEAST64_MAX (18446744073709551615UL) ### define is not number */
/* #define INT_FAST8_MIN (-128) ### define is not number */
/* #define INT_FAST8_MAX (127) ### define is not number */
/* #define UINT_FAST8_MAX (255) ### define is not number */
/* #define INT_FAST16_MIN (-32768) ### define is not number */
/* #define INT_FAST16_MAX (32767) ### define is not number */
/* #define UINT_FAST16_MAX (65535) ### define is not number */
/* #define INT_FAST32_MIN (-INT32_MAX-1) ### define is not number */
/* #define INT_FAST32_MAX (2147483647) ### define is not number */
/* #define UINT_FAST32_MAX (4294967295U) ### define is not number */
/* #define INT_FAST64_MIN (-INT64_MAX-1) ### define is not number */
/* #define INT_FAST64_MAX (9223372036854775807L) ### define is not number */
/* #define UINT_FAST64_MAX (18446744073709551615UL) ### define is not number */
/* #define INTPTR_MIN (-__HAIKU_SADDR_MAX-1) ### define is not number */
/* #define INTPTR_MAX (9223372036854775807LL) ### define is not number */
/* #define UINTPTR_MAX (18446744073709551615ULL) ### define is not number */
/* #define INTMAX_MIN (-INT64_MAX-1) ### define is not number */
/* #define INTMAX_MAX (9223372036854775807L) ### define is not number */
/* #define UINTMAX_MAX (18446744073709551615UL) ### define is not number */
/* #define PTRDIFF_MIN (-__HAIKU_SADDR_MAX-1) ### define is not number */
/* #define PTRDIFF_MAX (9223372036854775807LL) ### define is not number */
/* #define SIG_ATOMIC_MIN (-INT32_MAX-1) ### define is not number */
/* #define SIG_ATOMIC_MAX (2147483647) ### define is not number */
/* #define SIZE_MAX (18446744073709551615ULL) ### define is not number */
enum { WINT_MIN = 0 };
/* #define WINT_MAX ((wint_t)-1) ### define is not number */
/* #define INT8_C (value) value ### define is not number */
/* #define INT16_C (value) value ### define is not number */
/* #define INT32_C (value) value ### define is not number */
/* #define UINT8_C (value) value ### define is not number */
/* #define UINT16_C (value) value ### define is not number */
/* #define UINT32_C (value) value ## U ### define is not number */
/* #define INT64_C (value) value ## L ### define is not number */
/* #define UINT64_C (value) value ## UL ### define is not number */
/* #define INTMAX_C (value) value ## L ### define is not number */
/* #define UINTMAX_C (value) value ## UL ### define is not number */
/* + END <stdint.h> /boot/system/develop/headers/posix/stdint.h */
]]
