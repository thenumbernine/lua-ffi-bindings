local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <stdint.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stdint.h */
/* ++ BEGIN <stdint.h> /usr/include/stdint.h */
/* +++ BEGIN <bits/libc-header-start.h> /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
]] require 'ffi.req' 'c.bits.libc-header-start' ffi.cdef[[
/* +++ END <bits/libc-header-start.h> /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
/* +++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* +++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
/* +++ BEGIN <bits/wchar.h> /usr/include/x86_64-linux-gnu/bits/wchar.h */
/* +++ END <bits/wchar.h> /usr/include/x86_64-linux-gnu/bits/wchar.h */
/* +++ BEGIN <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* +++ END <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* +++ BEGIN <bits/stdint-intn.h> /usr/include/x86_64-linux-gnu/bits/stdint-intn.h */
]] require 'ffi.req' 'c.bits.stdint-intn' ffi.cdef[[
/* +++ END <bits/stdint-intn.h> /usr/include/x86_64-linux-gnu/bits/stdint-intn.h */
/* +++ BEGIN <bits/stdint-uintn.h> /usr/include/x86_64-linux-gnu/bits/stdint-uintn.h */
]] require 'ffi.req' 'c.bits.stdint-uintn' ffi.cdef[[
/* +++ END <bits/stdint-uintn.h> /usr/include/x86_64-linux-gnu/bits/stdint-uintn.h */
/* +++ BEGIN <bits/stdint-least.h> /usr/include/x86_64-linux-gnu/bits/stdint-least.h */
]] require 'ffi.req' 'c.bits.stdint-least' ffi.cdef[[
/* +++ END <bits/stdint-least.h> /usr/include/x86_64-linux-gnu/bits/stdint-least.h */
typedef signed char int_fast8_t;
typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
typedef unsigned char uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
typedef long int intptr_t;
typedef unsigned long int uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
/* ++ END <stdint.h> /usr/include/stdint.h */
/* #define __WCHAR_MIN (-__WCHAR_MAX__ - 1) ### define is not number */
/* #define __INT64_C (c) c ## L ### define is not number */
/* #define __UINT64_C (c) c ## UL ### define is not number */
/* #define INT8_MIN (-128) ### define is not number */
/* #define INT16_MIN (-32767-1) ### define is not number */
/* #define INT32_MIN (-2147483647-1) ### define is not number */
/* #define INT64_MIN (-__INT64_C(9223372036854775807)-1) ### define is not number */
/* #define INT8_MAX (127) ### define is not number */
/* #define INT16_MAX (32767) ### define is not number */
/* #define INT32_MAX (2147483647) ### define is not number */
/* #define INT64_MAX (__INT64_C(9223372036854775807)) ### define is not number */
/* #define UINT8_MAX (255) ### define is not number */
/* #define UINT16_MAX (65535) ### define is not number */
/* #define UINT32_MAX (4294967295U) ### define is not number */
/* #define UINT64_MAX (__UINT64_C(18446744073709551615)) ### define is not number */
/* #define INT_LEAST8_MIN (-128) ### define is not number */
/* #define INT_LEAST16_MIN (-32767-1) ### define is not number */
/* #define INT_LEAST32_MIN (-2147483647-1) ### define is not number */
/* #define INT_LEAST64_MIN (-__INT64_C(9223372036854775807)-1) ### define is not number */
/* #define INT_LEAST8_MAX (127) ### define is not number */
/* #define INT_LEAST16_MAX (32767) ### define is not number */
/* #define INT_LEAST32_MAX (2147483647) ### define is not number */
/* #define INT_LEAST64_MAX (__INT64_C(9223372036854775807)) ### define is not number */
/* #define UINT_LEAST8_MAX (255) ### define is not number */
/* #define UINT_LEAST16_MAX (65535) ### define is not number */
/* #define UINT_LEAST32_MAX (4294967295U) ### define is not number */
/* #define UINT_LEAST64_MAX (__UINT64_C(18446744073709551615)) ### define is not number */
/* #define INT_FAST8_MIN (-128) ### define is not number */
/* #define INT_FAST16_MIN (-9223372036854775807L-1) ### define is not number */
/* #define INT_FAST32_MIN (-9223372036854775807L-1) ### define is not number */
/* #define INT_FAST64_MIN (-__INT64_C(9223372036854775807)-1) ### define is not number */
/* #define INT_FAST8_MAX (127) ### define is not number */
/* #define INT_FAST16_MAX (9223372036854775807L) ### define is not number */
/* #define INT_FAST32_MAX (9223372036854775807L) ### define is not number */
/* #define INT_FAST64_MAX (__INT64_C(9223372036854775807)) ### define is not number */
/* #define UINT_FAST8_MAX (255) ### define is not number */
/* #define UINT_FAST16_MAX (18446744073709551615UL) ### define is not number */
/* #define UINT_FAST32_MAX (18446744073709551615UL) ### define is not number */
/* #define UINT_FAST64_MAX (__UINT64_C(18446744073709551615)) ### define is not number */
/* #define INTPTR_MIN (-9223372036854775807L-1) ### define is not number */
/* #define INTPTR_MAX (9223372036854775807L) ### define is not number */
/* #define UINTPTR_MAX (18446744073709551615UL) ### define is not number */
/* #define INTMAX_MIN (-__INT64_C(9223372036854775807)-1) ### define is not number */
/* #define INTMAX_MAX (__INT64_C(9223372036854775807)) ### define is not number */
/* #define UINTMAX_MAX (__UINT64_C(18446744073709551615)) ### define is not number */
/* #define PTRDIFF_MIN (-9223372036854775807L-1) ### define is not number */
/* #define PTRDIFF_MAX (9223372036854775807L) ### define is not number */
/* #define SIG_ATOMIC_MIN (-2147483647-1) ### define is not number */
/* #define SIG_ATOMIC_MAX (2147483647) ### define is not number */
/* #define SIZE_MAX (18446744073709551615UL) ### define is not number */
/* #define WCHAR_MIN (-__WCHAR_MAX__ - 1) ### define is not number */
/* #define WINT_MIN (0u) ### define is not number */
/* #define WINT_MAX (4294967295u) ### define is not number */
/* #define INT8_C (c) c ### define is not number */
/* #define INT16_C (c) c ### define is not number */
/* #define INT32_C (c) c ### define is not number */
/* #define INT64_C (c) c ## L ### define is not number */
/* #define UINT8_C (c) c ### define is not number */
/* #define UINT16_C (c) c ### define is not number */
/* #define UINT32_C (c) c ## U ### define is not number */
/* #define UINT64_C (c) c ## UL ### define is not number */
/* #define INTMAX_C (c) c ## L ### define is not number */
/* #define UINTMAX_C (c) c ## UL ### define is not number */
/* + END <stdint.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stdint.h */
]]
