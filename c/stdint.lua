local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h */
/* BEGIN /usr/include/stdint.h */
enum { _STDINT_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
]] require 'ffi.c.bits.libc-header-start' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/libc-header-start.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.c.bits.types' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wchar.h */
enum { _BITS_WCHAR_H = 1 };
enum { __WCHAR_MAX = 0x7fffffff };
/* END /usr/include/x86_64-1-gnu/bits/wchar.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* END /usr/include/x86_64-1-gnu/bits/wordsize.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/stdint-intn.h */
enum { _BITS_STDINT_INTN_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
/* END /usr/include/x86_64-1-gnu/bits/stdint-intn.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/stdint-uintn.h */
enum { _BITS_STDINT_UINTN_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
/* END /usr/include/x86_64-1-gnu/bits/stdint-uintn.h */
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
enum { WCHAR_MAX = 0x7fffffff };
/* END /usr/include/stdint.h */
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stdint.h */
]]
