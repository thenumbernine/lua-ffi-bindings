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
/* #define __f128 (x) x ##f128 ### define is not number */
/* #define __CFLOAT128 _Complex _Float128 ### define is not number */
/* #define __HAVE_DISTINCT_FLOAT16 __HAVE_FLOAT16 ### define is not number */
/* #define __HAVE_DISTINCT_FLOAT128X __HAVE_FLOAT128X ### define is not number */
/* #define __HAVE_FLOAT128_UNLIKE_LDBL (__HAVE_DISTINCT_FLOAT128 && __LDBL_MANT_DIG__ != 113) ### define is not number */
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
