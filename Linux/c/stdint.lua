local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <stdint.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stdint.h */
/* ++ BEGIN <stdint.h$include_next> /usr/include/stdint.h */
/* +++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* +++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
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
/* ++ END <stdint.h$include_next> /usr/include/stdint.h */
/* + END <stdint.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stdint.h */
enum { _GCC_WRAP_STDINT_H = 1 };
]]
