local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <math.h> /usr/include/math.h */
/* ++ BEGIN <bits/libc-header-start.h> /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
]] require 'ffi.req' 'c.bits.libc-header-start' ffi.cdef[[
/* ++ END <bits/libc-header-start.h> /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN <bits/math-vector.h> /usr/include/x86_64-linux-gnu/bits/math-vector.h */
/* +++ BEGIN <bits/libm-simd-decl-stubs.h> /usr/include/x86_64-linux-gnu/bits/libm-simd-decl-stubs.h */
/* +++ END <bits/libm-simd-decl-stubs.h> /usr/include/x86_64-linux-gnu/bits/libm-simd-decl-stubs.h */
/* ++ END <bits/math-vector.h> /usr/include/x86_64-linux-gnu/bits/math-vector.h */
/* ++ BEGIN <bits/floatn.h> /usr/include/x86_64-linux-gnu/bits/floatn.h */
]] require 'ffi.req' 'c.bits.floatn' ffi.cdef[[
/* ++ END <bits/floatn.h> /usr/include/x86_64-linux-gnu/bits/floatn.h */
/* ++ BEGIN <bits/flt-eval-method.h> /usr/include/x86_64-linux-gnu/bits/flt-eval-method.h */
/* ++ END <bits/flt-eval-method.h> /usr/include/x86_64-linux-gnu/bits/flt-eval-method.h */
typedef float float_t;
typedef double double_t;
/* ++ BEGIN <bits/fp-logb.h> /usr/include/x86_64-linux-gnu/bits/fp-logb.h */
/* ++ END <bits/fp-logb.h> /usr/include/x86_64-linux-gnu/bits/fp-logb.h */
/* ++ BEGIN <bits/fp-fast.h> /usr/include/x86_64-linux-gnu/bits/fp-fast.h */
/* ++ END <bits/fp-fast.h> /usr/include/x86_64-linux-gnu/bits/fp-fast.h */
/* ++ BEGIN <bits/mathcalls-helper-functions.h> /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h */
]] require 'ffi.req' 'c.bits.mathcalls-helper-functions' ffi.cdef[[
/* ++ END <bits/mathcalls-helper-functions.h> /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h */
/* ++ BEGIN <bits/mathcalls.h> /usr/include/x86_64-linux-gnu/bits/mathcalls.h */
 extern double acos (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __acos (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double asin (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __asin (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double atan (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atan (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double atan2 (double __y, double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atan2 (double __y, double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double cos (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cos (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double sin (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sin (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double tan (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __tan (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double cosh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cosh (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double sinh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sinh (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double tanh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __tanh (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double acosh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __acosh (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double asinh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __asinh (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double atanh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atanh (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double exp (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __exp (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern double __frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));
extern double ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern double __ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));
 extern double log (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double log10 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log10 (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double modf (double __x, double *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern double __modf (double __x, double *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
 extern double expm1 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __expm1 (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double log1p (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log1p (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double logb (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __logb (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double exp2 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __exp2 (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double log2 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log2 (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double pow (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __pow (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));
extern double sqrt (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sqrt (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double hypot (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __hypot (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));
 extern double cbrt (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cbrt (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double ceil (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __ceil (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double fabs (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fabs (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double floor (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __floor (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double fmod (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __fmod (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));
extern int isinf (double __value) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__const__));
extern int finite (double __value) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__const__));
extern double drem (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __drem (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));
extern double significand (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __significand (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double copysign (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __copysign (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double nan (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)); extern double __nan (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__));
extern int isnan (double __value) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__const__));
extern double j0 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __j0 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double j1 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __j1 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double jn (int, double) __attribute__ ((__nothrow__ , __leaf__)); extern double __jn (int, double) __attribute__ ((__nothrow__ , __leaf__));
extern double y0 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __y0 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double y1 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __y1 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double yn (int, double) __attribute__ ((__nothrow__ , __leaf__)); extern double __yn (int, double) __attribute__ ((__nothrow__ , __leaf__));
 extern double erf (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __erf (double) __attribute__ ((__nothrow__ , __leaf__));
 extern double erfc (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __erfc (double) __attribute__ ((__nothrow__ , __leaf__));
extern double lgamma (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __lgamma (double) __attribute__ ((__nothrow__ , __leaf__));
extern double tgamma (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __tgamma (double) __attribute__ ((__nothrow__ , __leaf__));
extern double gamma (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __gamma (double) __attribute__ ((__nothrow__ , __leaf__));
extern double lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__)); extern double __lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__));
extern double rint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __rint (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double nextafter (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __nextafter (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));
extern double nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));
extern double remainder (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __remainder (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));
extern double scalbn (double __x, int __n) __attribute__ ((__nothrow__ , __leaf__)); extern double __scalbn (double __x, int __n) __attribute__ ((__nothrow__ , __leaf__));
extern int ilogb (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern int __ilogb (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double scalbln (double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__)); extern double __scalbln (double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__));
extern double nearbyint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __nearbyint (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double round (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __round (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double trunc (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __trunc (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__)); extern double __remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__));
extern long int lrint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lrint (double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llrint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llrint (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long int lround (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lround (double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llround (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llround (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double fdim (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __fdim (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));
extern double fmax (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fmax (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double fmin (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fmin (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ , __leaf__)); extern double __fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ , __leaf__));
extern double scalb (double __x, double __n) __attribute__ ((__nothrow__ , __leaf__)); extern double __scalb (double __x, double __n) __attribute__ ((__nothrow__ , __leaf__));
/* ++ END <bits/mathcalls.h> /usr/include/x86_64-linux-gnu/bits/mathcalls.h */
/* ++ BEGIN <bits/mathcalls-helper-functions.h> /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h */
]] require 'ffi.req' 'c.bits.mathcalls-helper-functions' ffi.cdef[[
/* ++ END <bits/mathcalls-helper-functions.h> /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h */
/* ++ BEGIN <bits/mathcalls.h> /usr/include/x86_64-linux-gnu/bits/mathcalls.h */
 extern float acosf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __acosf (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float asinf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __asinf (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float atanf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __atanf (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float atan2f (float __y, float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __atan2f (float __y, float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float cosf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __cosf (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float sinf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __sinf (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float tanf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __tanf (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float coshf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __coshf (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float sinhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __sinhf (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float tanhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __tanhf (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float acoshf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __acoshf (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float asinhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __asinhf (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float atanhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __atanhf (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float expf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __expf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern float __frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));
extern float ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern float __ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));
 extern float logf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __logf (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float log10f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __log10f (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float modff (float __x, float *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern float __modff (float __x, float *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
 extern float expm1f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __expm1f (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float log1pf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __log1pf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float logbf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __logbf (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float exp2f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __exp2f (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float log2f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __log2f (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float powf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __powf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));
extern float sqrtf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __sqrtf (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float hypotf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __hypotf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));
 extern float cbrtf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __cbrtf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float ceilf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __ceilf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float fabsf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __fabsf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float floorf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __floorf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float fmodf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __fmodf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));
extern int isinff (float __value) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__const__));
extern int finitef (float __value) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__const__));
extern float dremf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __dremf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));
extern float significandf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __significandf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float copysignf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __copysignf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float nanf (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)); extern float __nanf (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__));
extern int isnanf (float __value) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__const__));
extern float j0f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __j0f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float j1f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __j1f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float jnf (int, float) __attribute__ ((__nothrow__ , __leaf__)); extern float __jnf (int, float) __attribute__ ((__nothrow__ , __leaf__));
extern float y0f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __y0f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float y1f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __y1f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float ynf (int, float) __attribute__ ((__nothrow__ , __leaf__)); extern float __ynf (int, float) __attribute__ ((__nothrow__ , __leaf__));
 extern float erff (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __erff (float) __attribute__ ((__nothrow__ , __leaf__));
 extern float erfcf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __erfcf (float) __attribute__ ((__nothrow__ , __leaf__));
extern float lgammaf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __lgammaf (float) __attribute__ ((__nothrow__ , __leaf__));
extern float tgammaf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __tgammaf (float) __attribute__ ((__nothrow__ , __leaf__));
extern float gammaf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __gammaf (float) __attribute__ ((__nothrow__ , __leaf__));
extern float lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__)); extern float __lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__));
extern float rintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __rintf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float nextafterf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __nextafterf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));
extern float nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));
extern float remainderf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __remainderf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));
extern float scalbnf (float __x, int __n) __attribute__ ((__nothrow__ , __leaf__)); extern float __scalbnf (float __x, int __n) __attribute__ ((__nothrow__ , __leaf__));
extern int ilogbf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern int __ilogbf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ , __leaf__)); extern float __scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ , __leaf__));
extern float nearbyintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __nearbyintf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float roundf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __roundf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float truncf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __truncf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__)); extern float __remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__));
extern long int lrintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lrintf (float __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llrintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llrintf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern long int lroundf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lroundf (float __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llroundf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llroundf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float fdimf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __fdimf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));
extern float fmaxf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __fmaxf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float fminf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __fminf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ , __leaf__)); extern float __fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ , __leaf__));
extern float scalbf (float __x, float __n) __attribute__ ((__nothrow__ , __leaf__)); extern float __scalbf (float __x, float __n) __attribute__ ((__nothrow__ , __leaf__));
/* ++ END <bits/mathcalls.h> /usr/include/x86_64-linux-gnu/bits/mathcalls.h */
/* ++ BEGIN <bits/mathcalls-helper-functions.h> /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h */
]] require 'ffi.req' 'c.bits.mathcalls-helper-functions' ffi.cdef[[
/* ++ END <bits/mathcalls-helper-functions.h> /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h */
/* ++ BEGIN <bits/mathcalls.h> /usr/include/x86_64-linux-gnu/bits/mathcalls.h */
 extern long double acosl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __acosl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double asinl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __asinl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double atanl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __atanl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double cosl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __cosl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double sinl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __sinl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double tanl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __tanl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double coshl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __coshl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double sinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __sinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double tanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __tanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double acoshl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __acoshl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double asinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __asinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double atanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __atanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double expl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __expl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern long double __frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));
extern long double ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern long double __ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));
 extern long double logl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __logl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double log10l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __log10l (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern long double __modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
 extern long double expm1l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __expm1l (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double log1pl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __log1pl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double logbl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __logbl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double exp2l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __exp2l (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double log2l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __log2l (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double powl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __powl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));
extern long double sqrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __sqrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));
 extern long double cbrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __cbrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double ceill (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __ceill (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double fabsl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __fabsl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double floorl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __floorl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));
extern int isinfl (long double __value) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__const__));
extern int finitel (long double __value) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__const__));
extern long double dreml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __dreml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));
extern long double significandl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __significandl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double nanl (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)); extern long double __nanl (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__));
extern int isnanl (long double __value) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__const__));
extern long double j0l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __j0l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double j1l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __j1l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double jnl (int, long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __jnl (int, long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double y0l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __y0l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double y1l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __y1l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double ynl (int, long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __ynl (int, long double) __attribute__ ((__nothrow__ , __leaf__));
 extern long double erfl (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __erfl (long double) __attribute__ ((__nothrow__ , __leaf__));
 extern long double erfcl (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __erfcl (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double lgammal (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __lgammal (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double tgammal (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __tgammal (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double gammal (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __gammal (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__)); extern long double __lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__));
extern long double rintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __rintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));
extern long double nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));
extern long double remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));
extern long double scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ , __leaf__)); extern long double __scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ , __leaf__));
extern int ilogbl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern int __ilogbl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__)); extern long double __scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__));
extern long double nearbyintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __nearbyintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double roundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __roundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double truncl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __truncl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__)); extern long double __remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__));
extern long int lrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long int lroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));
extern long double fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double fminl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __fminl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ , __leaf__)); extern long double __fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ , __leaf__));
extern long double scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ , __leaf__)); extern long double __scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ , __leaf__));
/* ++ END <bits/mathcalls.h> /usr/include/x86_64-linux-gnu/bits/mathcalls.h */
/* ++ BEGIN <bits/mathcalls-helper-functions.h> /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h */
]] require 'ffi.req' 'c.bits.mathcalls-helper-functions' ffi.cdef[[
/* ++ END <bits/mathcalls-helper-functions.h> /usr/include/x86_64-linux-gnu/bits/mathcalls-helper-functions.h */
extern int signgam;
enum
  {
    FP_NAN =
      0,
    FP_INFINITE =
      1,
    FP_ZERO =
      2,
    FP_SUBNORMAL =
      3,
    FP_NORMAL =
      4
  };
enum { __DECL_SIMD_cos = 1 };
enum { __DECL_SIMD_cosf = 1 };
enum { __DECL_SIMD_cosl = 1 };
enum { __DECL_SIMD_cosf16 = 1 };
enum { __DECL_SIMD_cosf32 = 1 };
enum { __DECL_SIMD_cosf64 = 1 };
enum { __DECL_SIMD_cosf128 = 1 };
enum { __DECL_SIMD_cosf32x = 1 };
enum { __DECL_SIMD_cosf64x = 1 };
enum { __DECL_SIMD_cosf128x = 1 };
enum { __DECL_SIMD_sin = 1 };
enum { __DECL_SIMD_sinf = 1 };
enum { __DECL_SIMD_sinl = 1 };
enum { __DECL_SIMD_sinf16 = 1 };
enum { __DECL_SIMD_sinf32 = 1 };
enum { __DECL_SIMD_sinf64 = 1 };
enum { __DECL_SIMD_sinf128 = 1 };
enum { __DECL_SIMD_sinf32x = 1 };
enum { __DECL_SIMD_sinf64x = 1 };
enum { __DECL_SIMD_sinf128x = 1 };
enum { __DECL_SIMD_sincos = 1 };
enum { __DECL_SIMD_sincosf = 1 };
enum { __DECL_SIMD_sincosl = 1 };
enum { __DECL_SIMD_sincosf16 = 1 };
enum { __DECL_SIMD_sincosf32 = 1 };
enum { __DECL_SIMD_sincosf64 = 1 };
enum { __DECL_SIMD_sincosf128 = 1 };
enum { __DECL_SIMD_sincosf32x = 1 };
enum { __DECL_SIMD_sincosf64x = 1 };
enum { __DECL_SIMD_sincosf128x = 1 };
enum { __DECL_SIMD_log = 1 };
enum { __DECL_SIMD_logf = 1 };
enum { __DECL_SIMD_logl = 1 };
enum { __DECL_SIMD_logf16 = 1 };
enum { __DECL_SIMD_logf32 = 1 };
enum { __DECL_SIMD_logf64 = 1 };
enum { __DECL_SIMD_logf128 = 1 };
enum { __DECL_SIMD_logf32x = 1 };
enum { __DECL_SIMD_logf64x = 1 };
enum { __DECL_SIMD_logf128x = 1 };
enum { __DECL_SIMD_exp = 1 };
enum { __DECL_SIMD_expf = 1 };
enum { __DECL_SIMD_expl = 1 };
enum { __DECL_SIMD_expf16 = 1 };
enum { __DECL_SIMD_expf32 = 1 };
enum { __DECL_SIMD_expf64 = 1 };
enum { __DECL_SIMD_expf128 = 1 };
enum { __DECL_SIMD_expf32x = 1 };
enum { __DECL_SIMD_expf64x = 1 };
enum { __DECL_SIMD_expf128x = 1 };
enum { __DECL_SIMD_pow = 1 };
enum { __DECL_SIMD_powf = 1 };
enum { __DECL_SIMD_powl = 1 };
enum { __DECL_SIMD_powf16 = 1 };
enum { __DECL_SIMD_powf32 = 1 };
enum { __DECL_SIMD_powf64 = 1 };
enum { __DECL_SIMD_powf128 = 1 };
enum { __DECL_SIMD_powf32x = 1 };
enum { __DECL_SIMD_powf64x = 1 };
enum { __DECL_SIMD_powf128x = 1 };
enum { __DECL_SIMD_acos = 1 };
enum { __DECL_SIMD_acosf = 1 };
enum { __DECL_SIMD_acosl = 1 };
enum { __DECL_SIMD_acosf16 = 1 };
enum { __DECL_SIMD_acosf32 = 1 };
enum { __DECL_SIMD_acosf64 = 1 };
enum { __DECL_SIMD_acosf128 = 1 };
enum { __DECL_SIMD_acosf32x = 1 };
enum { __DECL_SIMD_acosf64x = 1 };
enum { __DECL_SIMD_acosf128x = 1 };
enum { __DECL_SIMD_atan = 1 };
enum { __DECL_SIMD_atanf = 1 };
enum { __DECL_SIMD_atanl = 1 };
enum { __DECL_SIMD_atanf16 = 1 };
enum { __DECL_SIMD_atanf32 = 1 };
enum { __DECL_SIMD_atanf64 = 1 };
enum { __DECL_SIMD_atanf128 = 1 };
enum { __DECL_SIMD_atanf32x = 1 };
enum { __DECL_SIMD_atanf64x = 1 };
enum { __DECL_SIMD_atanf128x = 1 };
enum { __DECL_SIMD_asin = 1 };
enum { __DECL_SIMD_asinf = 1 };
enum { __DECL_SIMD_asinl = 1 };
enum { __DECL_SIMD_asinf16 = 1 };
enum { __DECL_SIMD_asinf32 = 1 };
enum { __DECL_SIMD_asinf64 = 1 };
enum { __DECL_SIMD_asinf128 = 1 };
enum { __DECL_SIMD_asinf32x = 1 };
enum { __DECL_SIMD_asinf64x = 1 };
enum { __DECL_SIMD_asinf128x = 1 };
enum { __DECL_SIMD_hypot = 1 };
enum { __DECL_SIMD_hypotf = 1 };
enum { __DECL_SIMD_hypotl = 1 };
enum { __DECL_SIMD_hypotf16 = 1 };
enum { __DECL_SIMD_hypotf32 = 1 };
enum { __DECL_SIMD_hypotf64 = 1 };
enum { __DECL_SIMD_hypotf128 = 1 };
enum { __DECL_SIMD_hypotf32x = 1 };
enum { __DECL_SIMD_hypotf64x = 1 };
enum { __DECL_SIMD_hypotf128x = 1 };
enum { __DECL_SIMD_exp2 = 1 };
enum { __DECL_SIMD_exp2f = 1 };
enum { __DECL_SIMD_exp2l = 1 };
enum { __DECL_SIMD_exp2f16 = 1 };
enum { __DECL_SIMD_exp2f32 = 1 };
enum { __DECL_SIMD_exp2f64 = 1 };
enum { __DECL_SIMD_exp2f128 = 1 };
enum { __DECL_SIMD_exp2f32x = 1 };
enum { __DECL_SIMD_exp2f64x = 1 };
enum { __DECL_SIMD_exp2f128x = 1 };
enum { __DECL_SIMD_exp10 = 1 };
enum { __DECL_SIMD_exp10f = 1 };
enum { __DECL_SIMD_exp10l = 1 };
enum { __DECL_SIMD_exp10f16 = 1 };
enum { __DECL_SIMD_exp10f32 = 1 };
enum { __DECL_SIMD_exp10f64 = 1 };
enum { __DECL_SIMD_exp10f128 = 1 };
enum { __DECL_SIMD_exp10f32x = 1 };
enum { __DECL_SIMD_exp10f64x = 1 };
enum { __DECL_SIMD_exp10f128x = 1 };
enum { __DECL_SIMD_cosh = 1 };
enum { __DECL_SIMD_coshf = 1 };
enum { __DECL_SIMD_coshl = 1 };
enum { __DECL_SIMD_coshf16 = 1 };
enum { __DECL_SIMD_coshf32 = 1 };
enum { __DECL_SIMD_coshf64 = 1 };
enum { __DECL_SIMD_coshf128 = 1 };
enum { __DECL_SIMD_coshf32x = 1 };
enum { __DECL_SIMD_coshf64x = 1 };
enum { __DECL_SIMD_coshf128x = 1 };
enum { __DECL_SIMD_expm1 = 1 };
enum { __DECL_SIMD_expm1f = 1 };
enum { __DECL_SIMD_expm1l = 1 };
enum { __DECL_SIMD_expm1f16 = 1 };
enum { __DECL_SIMD_expm1f32 = 1 };
enum { __DECL_SIMD_expm1f64 = 1 };
enum { __DECL_SIMD_expm1f128 = 1 };
enum { __DECL_SIMD_expm1f32x = 1 };
enum { __DECL_SIMD_expm1f64x = 1 };
enum { __DECL_SIMD_expm1f128x = 1 };
enum { __DECL_SIMD_sinh = 1 };
enum { __DECL_SIMD_sinhf = 1 };
enum { __DECL_SIMD_sinhl = 1 };
enum { __DECL_SIMD_sinhf16 = 1 };
enum { __DECL_SIMD_sinhf32 = 1 };
enum { __DECL_SIMD_sinhf64 = 1 };
enum { __DECL_SIMD_sinhf128 = 1 };
enum { __DECL_SIMD_sinhf32x = 1 };
enum { __DECL_SIMD_sinhf64x = 1 };
enum { __DECL_SIMD_sinhf128x = 1 };
enum { __DECL_SIMD_cbrt = 1 };
enum { __DECL_SIMD_cbrtf = 1 };
enum { __DECL_SIMD_cbrtl = 1 };
enum { __DECL_SIMD_cbrtf16 = 1 };
enum { __DECL_SIMD_cbrtf32 = 1 };
enum { __DECL_SIMD_cbrtf64 = 1 };
enum { __DECL_SIMD_cbrtf128 = 1 };
enum { __DECL_SIMD_cbrtf32x = 1 };
enum { __DECL_SIMD_cbrtf64x = 1 };
enum { __DECL_SIMD_cbrtf128x = 1 };
enum { __DECL_SIMD_atan2 = 1 };
enum { __DECL_SIMD_atan2f = 1 };
enum { __DECL_SIMD_atan2l = 1 };
enum { __DECL_SIMD_atan2f16 = 1 };
enum { __DECL_SIMD_atan2f32 = 1 };
enum { __DECL_SIMD_atan2f64 = 1 };
enum { __DECL_SIMD_atan2f128 = 1 };
enum { __DECL_SIMD_atan2f32x = 1 };
enum { __DECL_SIMD_atan2f64x = 1 };
enum { __DECL_SIMD_atan2f128x = 1 };
enum { __DECL_SIMD_log10 = 1 };
enum { __DECL_SIMD_log10f = 1 };
enum { __DECL_SIMD_log10l = 1 };
enum { __DECL_SIMD_log10f16 = 1 };
enum { __DECL_SIMD_log10f32 = 1 };
enum { __DECL_SIMD_log10f64 = 1 };
enum { __DECL_SIMD_log10f128 = 1 };
enum { __DECL_SIMD_log10f32x = 1 };
enum { __DECL_SIMD_log10f64x = 1 };
enum { __DECL_SIMD_log10f128x = 1 };
enum { __DECL_SIMD_log2 = 1 };
enum { __DECL_SIMD_log2f = 1 };
enum { __DECL_SIMD_log2l = 1 };
enum { __DECL_SIMD_log2f16 = 1 };
enum { __DECL_SIMD_log2f32 = 1 };
enum { __DECL_SIMD_log2f64 = 1 };
enum { __DECL_SIMD_log2f128 = 1 };
enum { __DECL_SIMD_log2f32x = 1 };
enum { __DECL_SIMD_log2f64x = 1 };
enum { __DECL_SIMD_log2f128x = 1 };
enum { __DECL_SIMD_log1p = 1 };
enum { __DECL_SIMD_log1pf = 1 };
enum { __DECL_SIMD_log1pl = 1 };
enum { __DECL_SIMD_log1pf16 = 1 };
enum { __DECL_SIMD_log1pf32 = 1 };
enum { __DECL_SIMD_log1pf64 = 1 };
enum { __DECL_SIMD_log1pf128 = 1 };
enum { __DECL_SIMD_log1pf32x = 1 };
enum { __DECL_SIMD_log1pf64x = 1 };
enum { __DECL_SIMD_log1pf128x = 1 };
enum { __DECL_SIMD_atanh = 1 };
enum { __DECL_SIMD_atanhf = 1 };
enum { __DECL_SIMD_atanhl = 1 };
enum { __DECL_SIMD_atanhf16 = 1 };
enum { __DECL_SIMD_atanhf32 = 1 };
enum { __DECL_SIMD_atanhf64 = 1 };
enum { __DECL_SIMD_atanhf128 = 1 };
enum { __DECL_SIMD_atanhf32x = 1 };
enum { __DECL_SIMD_atanhf64x = 1 };
enum { __DECL_SIMD_atanhf128x = 1 };
enum { __DECL_SIMD_acosh = 1 };
enum { __DECL_SIMD_acoshf = 1 };
enum { __DECL_SIMD_acoshl = 1 };
enum { __DECL_SIMD_acoshf16 = 1 };
enum { __DECL_SIMD_acoshf32 = 1 };
enum { __DECL_SIMD_acoshf64 = 1 };
enum { __DECL_SIMD_acoshf128 = 1 };
enum { __DECL_SIMD_acoshf32x = 1 };
enum { __DECL_SIMD_acoshf64x = 1 };
enum { __DECL_SIMD_acoshf128x = 1 };
enum { __DECL_SIMD_erf = 1 };
enum { __DECL_SIMD_erff = 1 };
enum { __DECL_SIMD_erfl = 1 };
enum { __DECL_SIMD_erff16 = 1 };
enum { __DECL_SIMD_erff32 = 1 };
enum { __DECL_SIMD_erff64 = 1 };
enum { __DECL_SIMD_erff128 = 1 };
enum { __DECL_SIMD_erff32x = 1 };
enum { __DECL_SIMD_erff64x = 1 };
enum { __DECL_SIMD_erff128x = 1 };
enum { __DECL_SIMD_tanh = 1 };
enum { __DECL_SIMD_tanhf = 1 };
enum { __DECL_SIMD_tanhl = 1 };
enum { __DECL_SIMD_tanhf16 = 1 };
enum { __DECL_SIMD_tanhf32 = 1 };
enum { __DECL_SIMD_tanhf64 = 1 };
enum { __DECL_SIMD_tanhf128 = 1 };
enum { __DECL_SIMD_tanhf32x = 1 };
enum { __DECL_SIMD_tanhf64x = 1 };
enum { __DECL_SIMD_tanhf128x = 1 };
enum { __DECL_SIMD_asinh = 1 };
enum { __DECL_SIMD_asinhf = 1 };
enum { __DECL_SIMD_asinhl = 1 };
enum { __DECL_SIMD_asinhf16 = 1 };
enum { __DECL_SIMD_asinhf32 = 1 };
enum { __DECL_SIMD_asinhf64 = 1 };
enum { __DECL_SIMD_asinhf128 = 1 };
enum { __DECL_SIMD_asinhf32x = 1 };
enum { __DECL_SIMD_asinhf64x = 1 };
enum { __DECL_SIMD_asinhf128x = 1 };
enum { __DECL_SIMD_erfc = 1 };
enum { __DECL_SIMD_erfcf = 1 };
enum { __DECL_SIMD_erfcl = 1 };
enum { __DECL_SIMD_erfcf16 = 1 };
enum { __DECL_SIMD_erfcf32 = 1 };
enum { __DECL_SIMD_erfcf64 = 1 };
enum { __DECL_SIMD_erfcf128 = 1 };
enum { __DECL_SIMD_erfcf32x = 1 };
enum { __DECL_SIMD_erfcf64x = 1 };
enum { __DECL_SIMD_erfcf128x = 1 };
enum { __DECL_SIMD_tan = 1 };
enum { __DECL_SIMD_tanf = 1 };
enum { __DECL_SIMD_tanl = 1 };
enum { __DECL_SIMD_tanf16 = 1 };
enum { __DECL_SIMD_tanf32 = 1 };
enum { __DECL_SIMD_tanf64 = 1 };
enum { __DECL_SIMD_tanf128 = 1 };
enum { __DECL_SIMD_tanf32x = 1 };
enum { __DECL_SIMD_tanf64x = 1 };
enum { __DECL_SIMD_tanf128x = 1 };
/* #define HUGE_VAL (__builtin_huge_val ()) ### define is not number */
/* #define HUGE_VALF (__builtin_huge_valf ()) ### define is not number */
/* #define HUGE_VALL (__builtin_huge_vall ()) ### define is not number */
/* #define INFINITY (__builtin_inff ()) ### define is not number */
/* #define NAN (__builtin_nanf ("")) ### define is not number */
enum { __GLIBC_FLT_EVAL_METHOD = 0 };
enum { __FP_LOGB0_IS_MIN = 1 };
enum { __FP_LOGBNAN_IS_MIN = 1 };
/* #define FP_ILOGB0 (-2147483647 - 1) ### define is not number */
/* #define FP_ILOGBNAN (-2147483647 - 1) ### define is not number */
/* #define __SIMD_DECL (function) __CONCAT (__DECL_SIMD_, function) ### define is not number */
/* #define __MATHCALL_VEC (function,suffix,args) __SIMD_DECL (__MATH_PRECNAME (function, suffix)) __MATHCALL (function, suffix, args) ### define is not number */
/* #define __MATHDECL_VEC (type,function,suffix,args) __SIMD_DECL (__MATH_PRECNAME (function, suffix)) __MATHDECL(type, function,suffix, args) ### define is not number */
/* #define __MATHCALLX (function,suffix,args,attrib) __MATHDECLX (_Mdouble_,function,suffix, args, attrib) ### define is not number */
/* #define __MATHDECLX (type,function,suffix,args,attrib) __MATHDECL_1(type, function,suffix, args) __attribute__ (attrib); __MATHDECL_1(type, __CONCAT(__,function),suffix, args) __attribute__ (attrib) ### define is not number */
/* #define __MATHREDIR (type,function,suffix,args,to) extern type __REDIRECT_NTH (__MATH_PRECNAME (function, suffix), args, to) ### define is not number */
enum { __MATH_DECLARE_LDOUBLE = 1 };
/* #define __MATH_TG_F32 (FUNC,ARGS) _Float32: FUNC ## f ARGS, ### define is not number */
/* #define __MATH_TG_F64X (FUNC,ARGS) _Float64x: FUNC ## l ARGS, ### define is not number */
/* #define __MATH_TG (TG_ARG,FUNC,ARGS) _Generic ((TG_ARG), float: FUNC ## f ARGS, __MATH_TG_F32 (FUNC, ARGS) default: FUNC ARGS, long double: FUNC ## l ARGS, __MATH_TG_F64X (FUNC, ARGS) _Float128: FUNC ## f128 ARGS) ### define is not number */
/* #define fpclassify (x) __builtin_fpclassify (FP_NAN, FP_INFINITE, FP_NORMAL, FP_SUBNORMAL, FP_ZERO, x) ### define is not number */
/* #define signbit (x) __builtin_signbit (x) ### define is not number */
/* #define isfinite (x) __builtin_isfinite (x) ### define is not number */
/* #define isnormal (x) __builtin_isnormal (x) ### define is not number */
/* #define isnan (x) __builtin_isnan (x) ### define is not number */
/* #define isinf (x) __builtin_isinf_sign (x) ### define is not number */
enum { MATH_ERRNO = 1 };
enum { MATH_ERREXCEPT = 2 };
/* #define math_errhandling (MATH_ERRNO | MATH_ERREXCEPT) ### define is not number */
//enum { M_E = 2.7182818284590452354 };
//enum { M_LOG2E = 1.4426950408889634074 };
//enum { M_LOG10E = 0.43429448190325182765 };
//enum { M_LN2 = 0.69314718055994530942 };
//enum { M_LN10 = 2.30258509299404568402 };
//enum { M_PI = 3.14159265358979323846 };
//enum { M_PI_2 = 1.57079632679489661923 };
//enum { M_PI_4 = 0.78539816339744830962 };
//enum { M_1_PI = 0.31830988618379067154 };
//enum { M_2_PI = 0.63661977236758134308 };
//enum { M_2_SQRTPI = 1.12837916709551257390 };
//enum { M_SQRT2 = 1.41421356237309504880 };
//enum { M_SQRT1_2 = 0.70710678118654752440 };
/* #define isgreater (x,y) __builtin_isgreater(x, y) ### define is not number */
/* #define isgreaterequal (x,y) __builtin_isgreaterequal(x, y) ### define is not number */
/* #define isless (x,y) __builtin_isless(x, y) ### define is not number */
/* #define islessequal (x,y) __builtin_islessequal(x, y) ### define is not number */
/* #define islessgreater (x,y) __builtin_islessgreater(x, y) ### define is not number */
/* #define isunordered (x,y) __builtin_isunordered(x, y) ### define is not number */
/* + END <math.h> /usr/include/math.h */
]]
