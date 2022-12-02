local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/complex.h */
enum { _COMPLEX_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
]] require 'ffi.c.bits.libc-header-start' ffi.cdef[[
/* END /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/mathdef.h */
/* END /usr/include/x86_64-linux-gnu/bits/mathdef.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/floatn.h */
]] require 'ffi.c.bits.floatn' ffi.cdef[[
/* END /usr/include/x86_64-linux-gnu/bits/floatn.h */
/* Manually commented out because it's already in LuaJIT: enum { _Complex = 0 }; */
/* Manually commented out because it's already in LuaJIT: enum { complex = 0 }; */
/* #define _Complex_I	(__extension__ 1.0iF) ### string, not number "(__extension__ 1.0iF)" */
/* #define I _Complex_I ### string, not number "_Complex_I" */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/cmathcalls.h */
/* # define _Mdouble_complex_ _Mdouble_ _Complex ### string, not number "_Mdouble_ _Complex" */
extern double _Complex cacos (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex casin (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex catan (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex ccos (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex csin (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex ctan (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex cacosh (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex casinh (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex catanh (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex ccosh (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex csinh (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex ctanh (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex cexp (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex clog (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex cpow (double _Complex __x, double _Complex __y) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex csqrt (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double cabs (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double carg (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex conj (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex cproj (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double cimag (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double creal (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
/* END /usr/include/x86_64-linux-gnu/bits/cmathcalls.h */
/* redefining matching value: #define _Mdouble_ 		float */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/cmathcalls.h */
extern float _Complex cacosf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex casinf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex catanf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex ccosf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex csinf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex ctanf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex cacoshf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex casinhf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex catanhf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex ccoshf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex csinhf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex ctanhf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex cexpf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex clogf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex cpowf (float _Complex __x, float _Complex __y) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex csqrtf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float cabsf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float cargf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex conjf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex cprojf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float cimagf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float crealf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
/* END /usr/include/x86_64-linux-gnu/bits/cmathcalls.h */
/* # define _Mdouble_ 		long double ### string, not number "long double" */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/cmathcalls.h */
extern long double _Complex cacosl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex casinl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex catanl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex ccosl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex csinl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex ctanl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex cacoshl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex casinhl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex catanhl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex ccoshl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex csinhl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex ctanhl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex cexpl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex clogl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex cpowl (long double _Complex __x, long double _Complex __y) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex csqrtl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double cabsl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double cargl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex conjl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex cprojl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double cimagl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double creall (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
/* END /usr/include/x86_64-linux-gnu/bits/cmathcalls.h */
/* END /usr/include/complex.h */
]]
