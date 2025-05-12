local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <bits/stdint-uintn.h> /usr/include/x86_64-linux-gnu/bits/stdint-uintn.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
/* + END <bits/stdint-uintn.h> /usr/include/x86_64-linux-gnu/bits/stdint-uintn.h */
enum { _BITS_STDINT_UINTN_H = 1 };
]]
