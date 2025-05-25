local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* + END <features.h> /usr/include/features.h */
/* + BEGIN <bits/floatn.h> /usr/include/x86_64-linux-gnu/bits/floatn.h */
/* ++ BEGIN <bits/floatn-common.h> /usr/include/x86_64-linux-gnu/bits/floatn-common.h */
/* +++ BEGIN <bits/long-double.h> /usr/include/x86_64-linux-gnu/bits/long-double.h */
/* +++ END <bits/long-double.h> /usr/include/x86_64-linux-gnu/bits/long-double.h */
/* ++ END <bits/floatn-common.h> /usr/include/x86_64-linux-gnu/bits/floatn-common.h */
enum { __HAVE_FLOAT128 = 1 };
enum { __HAVE_DISTINCT_FLOAT128 = 1 };
enum { __HAVE_FLOAT64X = 1 };
enum { __HAVE_FLOAT64X_LONG_DOUBLE = 1 };
/* #define __f128 (x) x ##f128 ### define is not number */
/* #define __CFLOAT128 _Complex _Float128 ### define is not number */
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
/* #define __HAVE_FLOAT128_UNLIKE_LDBL (__HAVE_DISTINCT_FLOAT128 && __LDBL_MANT_DIG__ != 113) ### define is not number */
enum { __HAVE_FLOATN_NOT_TYPEDEF = 1 };
/* #define __f32 (x) x ##f32 ### define is not number */
/* #define __f64 (x) x ##f64 ### define is not number */
/* #define __f32x (x) x ##f32x ### define is not number */
/* #define __f64x (x) x ##f64x ### define is not number */
/* #define __CFLOAT32 _Complex _Float32 ### define is not number */
/* #define __CFLOAT64 _Complex _Float64 ### define is not number */
/* #define __CFLOAT32X _Complex _Float32x ### define is not number */
/* #define __CFLOAT64X _Complex _Float64x ### define is not number */
/* + END <bits/floatn.h> /usr/include/x86_64-linux-gnu/bits/floatn.h */
]]
