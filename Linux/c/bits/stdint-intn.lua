local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <bits/stdint-intn.h> /usr/include/x86_64-linux-gnu/bits/stdint-intn.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
/* + END <bits/stdint-intn.h> /usr/include/x86_64-linux-gnu/bits/stdint-intn.h */
enum { _BITS_STDINT_INTN_H = 1 };
]]
