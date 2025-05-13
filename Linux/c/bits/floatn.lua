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
enum { _BITS_FLOATN_H = 1 };
enum { __HAVE_FLOAT128 = 1 };
enum { __HAVE_DISTINCT_FLOAT128 = 1 };
enum { __HAVE_FLOAT64X = 1 };
enum { __HAVE_FLOAT64X_LONG_DOUBLE = 1 };
/* #define __f128 (x) x ##f128 ### define is not number */
/* #define __CFLOAT128 _Complex _Float128 ### define is not number */
/* + END <bits/floatn.h> /usr/include/x86_64-linux-gnu/bits/floatn.h */
]]
