local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/features.h */
]] require 'ffi.c.features' ffi.cdef[[
/* END /usr/include/features.h */
enum { __GLIBC_USE_LIB_EXT2 = 0 };
enum { __GLIBC_USE_IEC_60559_BFP_EXT = 0 };
enum { __GLIBC_USE_IEC_60559_BFP_EXT_C2X = 0 };
enum { __GLIBC_USE_IEC_60559_FUNCS_EXT = 0 };
enum { __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = 0 };
enum { __GLIBC_USE_IEC_60559_TYPES_EXT = 0 };
]]
