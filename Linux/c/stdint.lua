local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stdint.h */
/* ++ BEGIN /usr/include/stdint.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
]] require 'ffi.req' 'c.bits.libc-header-start' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/wchar.h */
]] require 'ffi.req' 'c.bits.wchar' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/wchar.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/stdint-intn.h */
]] require 'ffi.req' 'c.bits.stdint-intn' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/stdint-intn.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/stdint-uintn.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
/* +++ END   /usr/include/x86_64-linux-gnu/bits/stdint-uintn.h */
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;
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
enum { INT8_MIN = -128 };
enum { INT16_MIN = -32768 };
enum { INT32_MIN = -2147483648 };
/* # define INT64_MIN		(-__INT64_C(9223372036854775807)-1) ### string, not number "-9.2233720368548e+18" */
enum { INT8_MAX = 127 };
enum { INT16_MAX = 32767 };
enum { INT32_MAX = 2147483647 };
/* # define INT64_MAX		(__INT64_C(9223372036854775807)) ### string, not number "9.2233720368548e+18" */
enum { UINT8_MAX = 255 };
enum { UINT16_MAX = 65535 };
enum { UINT32_MAX = 4294967295 };
/* # define UINT64_MAX		(__UINT64_C(18446744073709551615)) ### string, not number "1.844674407371e+19" */
enum { INT_LEAST8_MIN = -128 };
enum { INT_LEAST16_MIN = -32768 };
enum { INT_LEAST32_MIN = -2147483648 };
/* # define INT_LEAST64_MIN	(-__INT64_C(9223372036854775807)-1) ### string, not number "-9.2233720368548e+18" */
enum { INT_LEAST8_MAX = 127 };
enum { INT_LEAST16_MAX = 32767 };
enum { INT_LEAST32_MAX = 2147483647 };
/* # define INT_LEAST64_MAX	(__INT64_C(9223372036854775807)) ### string, not number "9.2233720368548e+18" */
enum { UINT_LEAST8_MAX = 255 };
enum { UINT_LEAST16_MAX = 65535 };
enum { UINT_LEAST32_MAX = 4294967295 };
/* # define UINT_LEAST64_MAX	(__UINT64_C(18446744073709551615)) ### string, not number "1.844674407371e+19" */
enum { INT_FAST8_MIN = -128 };
/* #  define INT_FAST16_MIN	(-9223372036854775807L-1) ### string, not number "-9.2233720368548e+18" */
/* #  define INT_FAST32_MIN	(-9223372036854775807L-1) ### string, not number "-9.2233720368548e+18" */
/* # define INT_FAST64_MIN		(-__INT64_C(9223372036854775807)-1) ### string, not number "-9.2233720368548e+18" */
enum { INT_FAST8_MAX = 127 };
/* #  define INT_FAST16_MAX	(9223372036854775807L) ### string, not number "9.2233720368548e+18" */
/* #  define INT_FAST32_MAX	(9223372036854775807L) ### string, not number "9.2233720368548e+18" */
/* # define INT_FAST64_MAX		(__INT64_C(9223372036854775807)) ### string, not number "9.2233720368548e+18" */
enum { UINT_FAST8_MAX = 255 };
/* #  define UINT_FAST16_MAX	(18446744073709551615UL) ### string, not number "1.844674407371e+19" */
/* #  define UINT_FAST32_MAX	(18446744073709551615UL) ### string, not number "1.844674407371e+19" */
/* # define UINT_FAST64_MAX	(__UINT64_C(18446744073709551615)) ### string, not number "1.844674407371e+19" */
/* #  define INTPTR_MIN		(-9223372036854775807L-1) ### string, not number "-9.2233720368548e+18" */
/* #  define INTPTR_MAX		(9223372036854775807L) ### string, not number "9.2233720368548e+18" */
/* #  define UINTPTR_MAX		(18446744073709551615UL) ### string, not number "1.844674407371e+19" */
/* # define INTMAX_MIN		(-__INT64_C(9223372036854775807)-1) ### string, not number "-9.2233720368548e+18" */
/* # define INTMAX_MAX		(__INT64_C(9223372036854775807)) ### string, not number "9.2233720368548e+18" */
/* # define UINTMAX_MAX		(__UINT64_C(18446744073709551615)) ### string, not number "1.844674407371e+19" */
/* #  define PTRDIFF_MIN		(-9223372036854775807L-1) ### string, not number "-9.2233720368548e+18" */
/* #  define PTRDIFF_MAX		(9223372036854775807L) ### string, not number "9.2233720368548e+18" */
enum { SIG_ATOMIC_MIN = -2147483648 };
enum { SIG_ATOMIC_MAX = 2147483647 };
/* #  define SIZE_MAX		(18446744073709551615UL) ### string, not number "1.844674407371e+19" */
]] require 'ffi.req' 'c.wchar' ffi.cdef[[/* # define WINT_MIN		(0u) ### string, not number "(0u)" */
/* # define WINT_MAX		(4294967295u) ### string, not number "(4294967295u)" */
/* ++ END   /usr/include/stdint.h */
/* + END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stdint.h */
]]
