local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <complex.h> /data/data/com.termux/files/usr/bin/../../usr/include/complex.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
double _Complex cacos(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float _Complex cacosf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double _Complex cacosl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
double _Complex casin(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float _Complex casinf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double _Complex casinl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
double _Complex catan(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float _Complex catanf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double _Complex catanl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
double _Complex ccos(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float _Complex ccosf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double _Complex ccosl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
double _Complex csin(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float _Complex csinf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double _Complex csinl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
double _Complex ctan(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float _Complex ctanf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double _Complex ctanl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
double _Complex cacosh(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float _Complex cacoshf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double _Complex cacoshl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
double _Complex casinh(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float _Complex casinhf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double _Complex casinhl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
double _Complex catanh(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float _Complex catanhf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double _Complex catanhl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
double _Complex ccosh(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float _Complex ccoshf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double _Complex ccoshl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
double _Complex csinh(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float _Complex csinhf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double _Complex csinhl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
double _Complex ctanh(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float _Complex ctanhf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double _Complex ctanhl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
double _Complex cexp(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float _Complex cexpf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double _Complex cexpl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
double _Complex clog(double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
float _Complex clogf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
long double _Complex clogl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
double cabs(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float cabsf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double cabsl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
double _Complex cpow(double _Complex __x, double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
float _Complex cpowf(float _Complex __x, float _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
long double _Complex cpowl(long double _Complex __x, long double _Complex __z) __attribute__((__availability__(android,strict,introduced=26 )));
double _Complex csqrt(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float _Complex csqrtf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double _Complex csqrtl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
double carg(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float cargf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double cargl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
double cimag(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float cimagf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double cimagl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
double _Complex conj(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float _Complex conjf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double _Complex conjl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
double _Complex cproj(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float _Complex cprojf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double _Complex cprojl(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
double creal(double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
float crealf(float _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
long double creall(long double _Complex __z) __attribute__((__availability__(android,strict,introduced=23 )));
enum { _COMPLEX_H = 1 };
/* #define _Complex_I ((float _Complex)1.0i) ### define is not number */
/* #define complex _Complex ### define is not number */
/* #define I ((float _Complex)1.0i) ### define is not number */
/* #define CMPLX (x,y) ((double complex){ x, y }) ### define is not number */
/* #define CMPLXF (x,y) ((float complex){ x, y }) ### define is not number */
/* #define CMPLXL (x,y) ((long double complex){ x, y }) ### define is not number */
/* + END <complex.h> /data/data/com.termux/files/usr/bin/../../usr/include/complex.h */
]]
