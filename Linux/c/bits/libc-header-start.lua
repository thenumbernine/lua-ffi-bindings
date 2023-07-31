local ffi = require 'ffi'
ffi.cdef[[
enum { __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
/* BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* END /usr/include/features.h */
enum { __GLIBC_USE_LIB_EXT2 = 0 };
enum { __GLIBC_USE_IEC_60559_BFP_EXT = 0 };
enum { __GLIBC_USE_IEC_60559_BFP_EXT_C2X = 0 };
enum { __GLIBC_USE_IEC_60559_EXT = 0 };
enum { __GLIBC_USE_IEC_60559_FUNCS_EXT = 0 };
enum { __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = 0 };
enum { __GLIBC_USE_IEC_60559_TYPES_EXT = 0 };
/* END /usr/include/x86_64-1-gnu/bits/libc-header-start.h */
]]
