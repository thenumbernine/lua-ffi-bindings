local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <complex.h> /boot/system/develop/headers/posix/complex.h */
extern double cabs(double _Complex);
extern float cabsf(float _Complex);
extern long double cabsl(long double _Complex);
extern double _Complex cacos(double _Complex);
extern float _Complex cacosf(float _Complex);
extern double _Complex cacosh(double _Complex);
extern float _Complex cacoshf(float _Complex);
extern long double _Complex cacoshl(long double _Complex);
extern long double _Complex cacosl(long double _Complex);
extern double carg(double _Complex);
extern float cargf(float _Complex);
extern long double cargl(long double _Complex);
extern double _Complex casin(double _Complex);
extern float _Complex casinf(float _Complex);
extern double _Complex casinh(double _Complex);
extern float _Complex casinhf(float _Complex);
extern long double _Complex casinhl(long double _Complex);
extern long double _Complex casinl(long double _Complex);
extern double _Complex catan(double _Complex);
extern float _Complex catanf(float _Complex);
extern double _Complex catanh(double _Complex);
extern float _Complex catanhf(float _Complex);
extern long double _Complex catanhl(long double _Complex);
extern long double _Complex catanl(long double _Complex);
extern double _Complex ccos(double _Complex);
extern float _Complex ccosf(float _Complex);
extern double _Complex ccosh(double _Complex);
extern float _Complex ccoshf(float _Complex);
extern long double _Complex ccoshl(long double _Complex);
extern long double _Complex ccosl(long double _Complex);
extern double _Complex cexp(double _Complex);
extern float _Complex cexpf(float _Complex);
extern long double _Complex cexpl(long double _Complex);
extern double cimag(double _Complex);
extern float cimagf(float _Complex);
extern long double cimagl(long double _Complex);
extern double _Complex clog(double _Complex);
extern float _Complex clogf(float _Complex);
extern long double _Complex clogl(long double _Complex);
extern double _Complex conj(double _Complex);
extern float _Complex conjf(float _Complex);
extern long double _Complex conjl(long double _Complex);
extern double _Complex cpow(double _Complex, double _Complex);
extern float _Complex cpowf(float _Complex, float _Complex);
extern long double _Complex cpowl(long double _Complex, long double _Complex);
extern double _Complex cproj(double _Complex);
extern float _Complex cprojf(float _Complex);
extern long double _Complex cprojl(long double _Complex);
extern double creal(double _Complex);
extern float crealf(float _Complex);
extern long double creall(long double _Complex);
extern double _Complex csin(double _Complex);
extern float _Complex csinf(float _Complex);
extern double _Complex csinh(double _Complex);
extern float _Complex csinhf(float _Complex);
extern long double _Complex csinhl(long double _Complex);
extern long double _Complex csinl(long double _Complex);
extern double _Complex csqrt(double _Complex);
extern float _Complex csqrtf(float _Complex);
extern long double _Complex csqrtl(long double _Complex);
extern double _Complex ctan(double _Complex);
extern float _Complex ctanf(float _Complex);
extern double _Complex ctanh(double _Complex);
extern float _Complex ctanhf(float _Complex);
extern long double _Complex ctanhl(long double _Complex);
extern long double _Complex ctanl(long double _Complex);
enum { _COMPLEX_H_ = 1 };
/* #define _Complex_I ((float _Complex)1.0i) ### define is not number */
/* #define complex _Complex ### define is not number */
/* #define I ((float _Complex)1.0i) ### define is not number */
/* #define CMPLX (x,y) (__builtin_complex((double)(x), (double)(y))) ### define is not number */
/* #define CMPLXF (x,y) (__builtin_complex((float)(x), (float)(y))) ### define is not number */
/* #define CMPLXL (x,y) (__builtin_complex((long double)(x), (long double)(y))) ### define is not number */
/* + END <complex.h> /boot/system/develop/headers/posix/complex.h */
]]
