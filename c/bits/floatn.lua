local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/x86_64-linux-gnu/bits/floatn.h */
enum { _BITS_FLOATN_H = 1 };
/* BEGIN /usr/include/features.h */
]] require 'ffi.c.features' ffi.cdef[[
/* END   /usr/include/features.h */
enum { __HAVE_FLOAT128 = 1 };
enum { __HAVE_DISTINCT_FLOAT128 = 1 };
enum { __HAVE_FLOAT64X = 1 };
enum { __HAVE_FLOAT64X_LONG_DOUBLE = 1 };
/* #   define __CFLOAT128 _Complex _Float128 ### string, not number "_Complex _Float128" */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/floatn-common.h */
enum { _BITS_FLOATN_COMMON_H = 1 };
/* BEGIN /usr/include/features.h */
]] require 'ffi.c.features' ffi.cdef[[
/* END   /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/long-double.h */
/* redefining matching value: #define __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI 0 */
/* END   /usr/include/x86_64-linux-gnu/bits/long-double.h */
enum { __HAVE_FLOAT16 = 0 };
enum { __HAVE_FLOAT32 = 1 };
enum { __HAVE_FLOAT64 = 1 };
enum { __HAVE_FLOAT32X = 1 };
enum { __HAVE_FLOAT128X = 0 };
enum { __HAVE_DISTINCT_FLOAT16 = 0 };
enum { __HAVE_DISTINCT_FLOAT32 = 0 };
enum { __HAVE_DISTINCT_FLOAT64 = 0 };
enum { __HAVE_DISTINCT_FLOAT32X = 0 };
enum { __HAVE_DISTINCT_FLOAT64X = 0 };
enum { __HAVE_DISTINCT_FLOAT128X = 0 };
enum { __HAVE_FLOAT128_UNLIKE_LDBL = 1 };
enum { __HAVE_FLOATN_NOT_TYPEDEF = 1 };
/* #   define __CFLOAT32 _Complex _Float32 ### string, not number "_Complex _Float32" */
/* #   define __CFLOAT64 _Complex _Float64 ### string, not number "_Complex _Float64" */
/* #   define __CFLOAT32X _Complex _Float32x ### string, not number "_Complex _Float32x" */
/* #   define __CFLOAT64X _Complex _Float64x ### string, not number "_Complex _Float64x" */
/* END   /usr/include/x86_64-linux-gnu/bits/floatn-common.h */
/* END   /usr/include/x86_64-linux-gnu/bits/floatn.h */
]]
