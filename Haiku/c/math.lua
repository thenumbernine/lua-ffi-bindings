local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <math.h> /boot/system/develop/headers/gnu/math.h */
/* ++ BEGIN <math.h> /boot/system/develop/headers/posix/math.h */
 
typedef float float_t;
 typedef double double_t;
/* +++ BEGIN <limits.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* +++ END <limits.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/limits.h */
struct exception;
extern int matherr(struct exception *);
struct exception {
 int type;
 char *name;
 double arg1;
 double arg2;
 double retval;
};
extern int signgam;
extern float acosf(float x);
extern float acoshf(float x);
extern float asinf(float x);
extern float asinhf(float x);
extern float atan2f(float y, float x);
extern float atanf(float x);
extern float atanhf(float x);
extern float cbrtf(float x);
extern float ceilf(float x);
extern float copysignf(float x, float y);
extern float cosf(float x);
extern float coshf(float x);
extern float erfcf(float x);
extern float erff(float x);
extern float expf(float x);
extern float exp2f(float x);
extern float expm1f(float x);
extern float fabsf(float x);
extern float fdimf(float x, float y);
extern float floorf(float x);
extern float fmaf(float x, float y, float z);
extern float fmaxf(float x, float y);
extern float fminf(float x, float y);
extern float fmodf(float x, float y);
extern float frexpf(float x, int *_exponent);
extern float gammaf(float x);
extern float hypotf(float x, float y);
extern int ilogbf(float x);
extern float ldexpf(float x, int exponent);
extern float lgammaf(float x);
extern long long llrintf(float x);
extern long long llroundf(float x);
extern float log10f(float x);
extern float log1pf(float x);
extern float log2f(float x);
extern float logbf(float x);
extern float logf(float x);
extern long lrintf(float x);
extern long lroundf(float x);
extern float modff(float x, float *y);
extern float nanf(const char *tagp);
extern float nearbyintf(float x);
extern float nextafterf(float x, float y);
extern float nexttowardf(float x, long double y);
extern float powf(float x, float y);
extern float remainderf(float x, float y);
extern float remquof(float x, float y, int *quo);
extern float rintf(float x);
extern float roundf(float x);
extern float scalbf(float x, float n);
extern float scalblnf(float x, long n);
extern float scalbnf(float x, int n);
extern float sinf(float x);
extern float sinhf(float x);
extern float sqrtf(float x);
extern float tanf(float x);
extern float tanhf(float x);
extern float tgammaf(float x);
extern float truncf(float x);
extern double acos(double x);
extern double acosh(double x);
extern double asin(double x);
extern double asinh(double x);
extern double atan(double x);
extern double atan2(double x, double y);
extern double atanh(double x);
extern double cbrt(double x);
extern double ceil(double x);
extern double copysign(double x, double y);
extern double cos(double x);
extern double cosh(double x);
extern double erf(double x);
extern double erfc(double x);
extern double exp(double x);
extern double expm1(double x);
extern double exp2(double x);
extern double fabs(double x);
extern double fdim(double x, double y);
extern double floor(double x);
extern double fma(double x, double y, double z);
extern double fmax(double x, double y);
extern double fmin(double x, double y);
extern double fmod(double x, double y);
extern double frexp(double x, int *_exponent);
extern double gamma(double x);
extern double hypot(double x, double y);
extern int ilogb(double x);
extern double ldexp(double x, int exponent);
extern double lgamma(double x);
extern long long llrint(double x);
extern long long llround(double x);
extern double log(double x);
extern double log10(double x);
extern double log1p(double x);
extern double log2(double x);
extern double logb(double x);
extern long lrint(double x);
extern long lround(double x);
extern double modf(double x, double *y);
extern double nan(const char* tagp);
extern double nearbyint(double x);
extern double nextafter(double x, double y);
extern double nexttoward(double x, long double y);
extern double pow(double x, double y);
extern double remainder(double x, double y);
extern double remquo(double x, double y, int *quo);
extern double rint(double x);
extern double round(double x);
extern double scalb(double x, double y);
extern double scalbln(double x, long n);
extern double scalbn(double x, int y);
extern double sin(double x);
extern double sinh(double x);
extern double sqrt(double x);
extern double tan(double x);
extern double tanh(double x);
extern double tgamma(double x);
extern double trunc(double x);
extern long double acoshl(long double x);
extern long double acosl(long double x);
extern long double asinhl(long double x);
extern long double asinl(long double x);
extern long double atanhl(long double x);
extern long double atanl(long double x);
extern long double atan2l(long double y, long double x);
extern long double cbrtl(long double x);
extern long double ceill(long double x);
extern long double copysignl(long double x, long double y);
extern long double cosl(long double x);
extern long double coshl(long double x);
extern long double erfcl(long double x);
extern long double erfl(long double x);
extern long double expl(long double x);
extern long double expm1l(long double x);
extern long double exp2l(long double x);
extern long double fabsl(long double x);
extern long double fdiml(long double x, long double y);
extern long double floorl(long double x);
extern long double fmal(long double x, long double y, long double z);
extern long double fmaxl(long double x, long double y);
extern long double fminl(long double x, long double y);
extern long double fmodl(long double x, long double y);
extern long double frexpl(long double num, int *_exponent);
extern long double hypotl(long double x, long double y);
extern int ilogbl(long double x);
extern long double ldexpl(long double x, int exponent);
extern long double lgammal(long double x);
extern long long llrintl(long double x);
extern long long llroundl(long double x);
extern long double logbl(long double x);
extern long double logl(long double x);
extern long double log1pl(long double x);
extern long double log10l(long double x);
extern long double log2l(long double x);
extern long lrintl(long double x);
extern long lroundl(long double x);
extern long double modfl(long double value, long double *iptr);
extern long double nanl(const char* tagp);
extern long double nearbyintl(long double x);
extern long double nextafterl(long double x, long double y);
extern long double nexttowardl(long double x, long double y);
extern long double powl(long double x, long double y);
extern long double remainderl(long double x, long double y);
extern long double remquol(long double x, long double y, int *quo);
extern long double rintl(long double x);
extern long double roundl(long double x);
extern long double scalbnl(long double x, int n);
extern long double scalblnl(long double x, long n);
extern long double sinl(long double x);
extern long double sinhl(long double x);
extern long double sqrtl(long double x);
extern long double tanl(long double x);
extern long double tanhl(long double x);
extern long double tgammal(long double x);
extern long double truncl(long double x);
extern double j0(double x);
extern double j1(double x);
extern double jn(int x, double y);
extern double lgamma_r(double x, int *y);
extern double y0(double x);
extern double y1(double x);
extern double yn(int x, double y);
extern int isinff(float value);
extern int finitef(float value);
extern float dremf(float x, float y);
extern float significandf(float x);
extern int isnanf(float value);
extern double significand(double x);
extern double drem(double x, double y);
extern int finite(double x);
extern float j0f(float x);
extern float j1f(float x);
extern float jnf(int x, float y);
extern float y0f(float x);
extern float y1f(float x);
extern float ynf(int x, float y);
extern float lgammaf_r(float x, int *y);
/* ++ END <math.h> /boot/system/develop/headers/posix/math.h */
/* ++ BEGIN <features.h> /boot/system/develop/headers/bsd/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /boot/system/develop/headers/bsd/features.h */
void sincos(double x, double *sin, double *cos);
void sincosf(float x, float *sin, float *cos);
void sincosl(long double x, long double *sin, long double *cos);
double exp10(double);
float exp10f(float);
long double exp10l(long double);
enum { _GNU_MATH_H_ = 1 };
enum { _MATH_H_ = 1 };
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
/* #define HUGE_VAL __builtin_huge_val() ### define is not number */
/* #define HUGE_VALF __builtin_huge_valf() ### define is not number */
/* #define HUGE_VALL __builtin_huge_vall() ### define is not number */
/* #define NAN __builtin_nanf("") ### define is not number */
/* #define INFINITY __builtin_inff() ### define is not number */
/* #define MAXFLOAT 3.40282346638528859811704183484516925e+38F ### define is not number */
enum { FP_NAN = 0 };
enum { FP_INFINITE = 1 };
enum { FP_ZERO = 2 };
enum { FP_SUBNORMAL = 3 };
enum { FP_NORMAL = 4 };
enum { FP_FAST_FMA = 0 };
enum { FP_FAST_FMAF = 0 };
enum { FP_FAST_FMAL = 0 };
/* #define FP_ILOGB0 (-INT_MAX - 1) ### define is not number */
enum { FP_ILOGBNAN = 0x7fffffff };
enum { MATH_ERRNO = 1 };
enum { MATH_ERREXCEPT = 2 };
enum { math_errhandling = 0 };
enum { DOMAIN = 1 };
enum { SING = 2 };
enum { OVERFLOW = 3 };
enum { UNDERFLOW = 4 };
enum { TLOSS = 5 };
enum { PLOSS = 6 };
/* #define fpclassify (value) __builtin_fpclassify(FP_NAN, FP_INFINITE, FP_NORMAL, FP_SUBNORMAL, FP_ZERO, (value)) ### define is not number */
/* #define signbit (value) __builtin_signbit((value)) ### define is not number */
/* #define isfinite (value) __builtin_isfinite((value)) ### define is not number */
/* #define isnormal (value) __builtin_isnormal((value)) ### define is not number */
/* #define isnan (value) __builtin_isnan((value)) ### define is not number */
/* #define isinf (value) __builtin_isinf_sign((value)) ### define is not number */
/* #define isgreater (x,y) __builtin_isgreater((x), (y)) ### define is not number */
/* #define isgreaterequal (x,y) __builtin_isgreaterequal((x), (y)) ### define is not number */
/* #define isless (x,y) __builtin_isless((x), (y)) ### define is not number */
/* #define islessequal (x,y) __builtin_islessequal((x), (y)) ### define is not number */
/* #define islessgreater (x,y) __builtin_islessgreater((x), (y)) ### define is not number */
/* #define isunordered (x,y) __builtin_isunordered((x), (y)) ### define is not number */
/* + END <math.h> /boot/system/develop/headers/gnu/math.h */
]]
