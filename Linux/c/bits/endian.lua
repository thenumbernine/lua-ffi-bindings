local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* + END <features.h> /usr/include/features.h */
/* + BEGIN <bits/endian.h> /usr/include/x86_64-linux-gnu/bits/endian.h */
/* ++ BEGIN <bits/endianness.h> /usr/include/x86_64-linux-gnu/bits/endianness.h */
/* ++ END <bits/endianness.h> /usr/include/x86_64-linux-gnu/bits/endianness.h */
enum { __LITTLE_ENDIAN = 1234 };
enum { __BIG_ENDIAN = 4321 };
enum { __PDP_ENDIAN = 3412 };
enum { __BYTE_ORDER = 1234 };
enum { __FLOAT_WORD_ORDER = 1234 };
/* #define __LONG_LONG_PAIR (HI,LO) LO, HI ### define is not number */
/* + END <bits/endian.h> /usr/include/x86_64-linux-gnu/bits/endian.h */
]]
