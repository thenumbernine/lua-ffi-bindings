local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/x86_64-linux-gnu/bits/endian.h */
enum { _BITS_ENDIAN_H = 1 };
enum { __LITTLE_ENDIAN = 1234 };
enum { __BIG_ENDIAN = 4321 };
enum { __PDP_ENDIAN = 3412 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/endianness.h */
enum { _BITS_ENDIANNESS_H = 1 };
enum { __BYTE_ORDER = 1234 };
/* END /usr/include/x86_64-1-gnu/bits/endianness.h */
enum { __FLOAT_WORD_ORDER = 1234 };
/* END /usr/include/x86_64-1-gnu/bits/endian.h */
]]
