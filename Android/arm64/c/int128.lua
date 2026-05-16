local ffi = require 'ffi'
ffi.cdef[[
typedef struct __uint128_t { uint64_t lo, hi; } __uint128_t;
]]
assert(ffi.sizeof'__uint128_t' == 16)
