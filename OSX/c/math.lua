local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
typedef float float_t;
typedef double double_t;
/* #   define    HUGE_VAL     __builtin_huge_val() ### string, not number "__builtin_huge_val()" */
/* #   define    HUGE_VALF    __builtin_huge_valf() ### string, not number "__builtin_huge_valf()" */
/* #   define    HUGE_VALL    __builtin_huge_vall() ### string, not number "__builtin_huge_vall()" */
/* #   define    NAN          __builtin_nanf("0x7fc00000") ### string, not number "__builtin_nanf(\"0x7fc00000\")" */
/* #define INFINITY    HUGE_VALF ### string, not number "HUGE_VALF" */
enum { FP_NAN = 1 };
enum { FP_INFINITE = 2 };
enum { FP_ZERO = 3 };
enum { FP_NORMAL = 4 };
enum { FP_SUBNORMAL = 5 };
enum { FP_SUPERNORMAL = 6 };
enum { FP_ILOGB0 = -2147483648 };
enum { FP_ILOGBNAN = -2147483648 };
enum { MATH_ERRNO = 1 };
enum { MATH_ERREXCEPT = 2 };
/* #define math_errhandling (__math_errhandling()) ### string, not number "(__math_errhandling())" */
extern int __math_errhandling(void);
extern int __fpclassifyf(float);
extern int __fpclassifyd(double);
extern int __fpclassifyl(long double);
inline __attribute__ ((__always_inline__)) int __inline_isfinitef(float);
inline __attribute__ ((__always_inline__)) int __inline_isfinited(double);
inline __attribute__ ((__always_inline__)) int __inline_isfinitel(long double);
inline __attribute__ ((__always_inline__)) int __inline_isinff(float);
inline __attribute__ ((__always_inline__)) int __inline_isinfd(double);
inline __attribute__ ((__always_inline__)) int __inline_isinfl(long double);
inline __attribute__ ((__always_inline__)) int __inline_isnanf(float);
inline __attribute__ ((__always_inline__)) int __inline_isnand(double);
inline __attribute__ ((__always_inline__)) int __inline_isnanl(long double);
inline __attribute__ ((__always_inline__)) int __inline_isnormalf(float);
inline __attribute__ ((__always_inline__)) int __inline_isnormald(double);
inline __attribute__ ((__always_inline__)) int __inline_isnormall(long double);
inline __attribute__ ((__always_inline__)) int __inline_signbitf(float);
inline __attribute__ ((__always_inline__)) int __inline_signbitd(double);
inline __attribute__ ((__always_inline__)) int __inline_signbitl(long double);
inline __attribute__ ((__always_inline__)) int __inline_isfinitef(float __x) {
	return __x == __x && __builtin_fabsf(__x) != __builtin_inff();
} inline __attribute__ ((__always_inline__)) int __inline_isfinited(double __x) {
	return __x == __x && __builtin_fabs(__x) != __builtin_inf();
} inline __attribute__ ((__always_inline__)) int __inline_isfinitel(long double __x) {
	return __x == __x && __builtin_fabsl(__x) != __builtin_infl();
} inline __attribute__ ((__always_inline__)) int __inline_isinff(float __x) {
	return __builtin_fabsf(__x) == __builtin_inff();
} inline __attribute__ ((__always_inline__)) int __inline_isinfd(double __x) {
	return __builtin_fabs(__x) == __builtin_inf();
} inline __attribute__ ((__always_inline__)) int __inline_isinfl(long double __x) {
	return __builtin_fabsl(__x) == __builtin_infl();
} inline __attribute__ ((__always_inline__)) int __inline_isnanf(float __x) {
	return __x != __x;
} inline __attribute__ ((__always_inline__)) int __inline_isnand(double __x) {
	return __x != __x;
} inline __attribute__ ((__always_inline__)) int __inline_isnanl(long double __x) {
	return __x != __x;
} inline __attribute__ ((__always_inline__)) int __inline_signbitf(float __x) { union { float __f; unsigned int __u; } __u;
__u.__f = __x;
return (int)(__u.__u >> 31);
} inline __attribute__ ((__always_inline__)) int __inline_signbitd(double __x) { union { double __f; unsigned long long __u; } __u;
__u.__f = __x;
return (int)(__u.__u >> 63);
} inline __attribute__ ((__always_inline__)) int __inline_signbitl(long double __x) {
	union { long double __ld;
	struct{ unsigned long long __m; unsigned short __sexp; } __p;
} __u;
__u.__ld = __x;
return (int)(__u.__p.__sexp >> 15);
} inline __attribute__ ((__always_inline__)) int __inline_isnormalf(float __x) {
	return __inline_isfinitef(__x) && __builtin_fabsf(__x) >= 1.17549435e-38F;
} inline __attribute__ ((__always_inline__)) int __inline_isnormald(double __x) {
	return __inline_isfinited(__x) && __builtin_fabs(__x) >= 2.2250738585072014e-308;
} inline __attribute__ ((__always_inline__)) int __inline_isnormall(long double __x) {
	return __inline_isfinitel(__x) && __builtin_fabsl(__x) >= 3.36210314311209350626e-4932L;
} extern float acosf(float);
extern double acos(double);
extern long double acosl(long double);
extern float asinf(float);
extern double asin(double);
extern long double asinl(long double);
extern float atanf(float);
extern double atan(double);
extern long double atanl(long double);
extern float atan2f(float, float);
extern double atan2(double, double);
extern long double atan2l(long double, long double);
extern float cosf(float);
extern double cos(double);
extern long double cosl(long double);
extern float sinf(float);
extern double sin(double);
extern long double sinl(long double);
extern float tanf(float);
extern double tan(double);
extern long double tanl(long double);
extern float acoshf(float);
extern double acosh(double);
extern long double acoshl(long double);
extern float asinhf(float);
extern double asinh(double);
extern long double asinhl(long double);
extern float atanhf(float);
extern double atanh(double);
extern long double atanhl(long double);
extern float coshf(float);
extern double cosh(double);
extern long double coshl(long double);
extern float sinhf(float);
extern double sinh(double);
extern long double sinhl(long double);
extern float tanhf(float);
extern double tanh(double);
extern long double tanhl(long double);
extern float expf(float);
extern double exp(double);
extern long double expl(long double);
extern float exp2f(float);
extern double exp2(double);
extern long double exp2l(long double);
extern float expm1f(float);
extern double expm1(double);
extern long double expm1l(long double);
extern float logf(float);
extern double log(double);
extern long double logl(long double);
extern float log10f(float);
extern double log10(double);
extern long double log10l(long double);
extern float log2f(float);
extern double log2(double);
extern long double log2l(long double);
extern float log1pf(float);
extern double log1p(double);
extern long double log1pl(long double);
extern float logbf(float);
extern double logb(double);
extern long double logbl(long double);
extern float modff(float, float *);
extern double modf(double, double *);
extern long double modfl(long double, long double *);
extern float ldexpf(float, int);
extern double ldexp(double, int);
extern long double ldexpl(long double, int);
extern float frexpf(float, int *);
extern double frexp(double, int *);
extern long double frexpl(long double, int *);
extern int ilogbf(float);
extern int ilogb(double);
extern int ilogbl(long double);
extern float scalbnf(float, int);
extern double scalbn(double, int);
extern long double scalbnl(long double, int);
extern float scalblnf(float, long int);
extern double scalbln(double, long int);
extern long double scalblnl(long double, long int);
extern float fabsf(float);
extern double fabs(double);
extern long double fabsl(long double);
extern float cbrtf(float);
extern double cbrt(double);
extern long double cbrtl(long double);
extern float hypotf(float, float);
extern double hypot(double, double);
extern long double hypotl(long double, long double);
extern float powf(float, float);
extern double pow(double, double);
extern long double powl(long double, long double);
extern float sqrtf(float);
extern double sqrt(double);
extern long double sqrtl(long double);
extern float erff(float);
extern double erf(double);
extern long double erfl(long double);
extern float erfcf(float);
extern double erfc(double);
extern long double erfcl(long double);
extern float lgammaf(float);
extern double lgamma(double);
extern long double lgammal(long double);
extern float tgammaf(float);
extern double tgamma(double);
extern long double tgammal(long double);
extern float ceilf(float);
extern double ceil(double);
extern long double ceill(long double);
extern float floorf(float);
extern double floor(double);
extern long double floorl(long double);
extern float nearbyintf(float);
extern double nearbyint(double);
extern long double nearbyintl(long double);
extern float rintf(float);
extern double rint(double);
extern long double rintl(long double);
extern long int lrintf(float);
extern long int lrint(double);
extern long int lrintl(long double);
extern float roundf(float);
extern double round(double);
extern long double roundl(long double);
extern long int lroundf(float);
extern long int lround(double);
extern long int lroundl(long double);
extern long long int llrintf(float);
extern long long int llrint(double);
extern long long int llrintl(long double);
extern long long int llroundf(float);
extern long long int llround(double);
extern long long int llroundl(long double);
extern float truncf(float);
extern double trunc(double);
extern long double truncl(long double);
extern float fmodf(float, float);
extern double fmod(double, double);
extern long double fmodl(long double, long double);
extern float remainderf(float, float);
extern double remainder(double, double);
extern long double remainderl(long double, long double);
extern float remquof(float, float, int *);
extern double remquo(double, double, int *);
extern long double remquol(long double, long double, int *);
extern float copysignf(float, float);
extern double copysign(double, double);
extern long double copysignl(long double, long double);
extern float nanf(const char *);
extern double nan(const char *);
extern long double nanl(const char *);
extern float nextafterf(float, float);
extern double nextafter(double, double);
extern long double nextafterl(long double, long double);
extern double nexttoward(double, long double);
extern float nexttowardf(float, long double);
extern long double nexttowardl(long double, long double);
extern float fdimf(float, float);
extern double fdim(double, double);
extern long double fdiml(long double, long double);
extern float fmaxf(float, float);
extern double fmax(double, double);
extern long double fmaxl(long double, long double);
extern float fminf(float, float);
extern double fmin(double, double);
extern long double fminl(long double, long double);
extern float fmaf(float, float, float);
extern double fma(double, double, double);
extern long double fmal(long double, long double, long double);
extern float __inff(void);
extern double __inf(void);
extern long double __infl(void);
extern float __nan(void);
extern float __exp10f(float);
extern double __exp10(double);
inline __attribute__ ((__always_inline__)) void __sincosf(float __x, float *__sinp, float *__cosp);
inline __attribute__ ((__always_inline__)) void __sincos(double __x, double *__sinp, double *__cosp);
extern float __cospif(float);
extern double __cospi(double);
extern float __sinpif(float);
extern double __sinpi(double);
extern float __tanpif(float);
extern double __tanpi(double);
inline __attribute__ ((__always_inline__)) void __sincospif(float __x, float *__sinp, float *__cosp);
inline __attribute__ ((__always_inline__)) void __sincospi(double __x, double *__sinp, double *__cosp);
struct __float2 { float __sinval; float __cosval; };
struct __double2 { double __sinval; double __cosval; };
extern struct __float2 __sincosf_stret(float);
extern struct __double2 __sincos_stret(double);
extern struct __float2 __sincospif_stret(float);
extern struct __double2 __sincospi_stret(double);
inline __attribute__ ((__always_inline__)) void __sincosf(float __x, float *__sinp, float *__cosp) {
	const struct __float2 __stret = __sincosf_stret(__x);
	*__sinp = __stret.__sinval; *__cosp = __stret.__cosval;
} inline __attribute__ ((__always_inline__)) void __sincos(double __x, double *__sinp, double *__cosp) {
	const struct __double2 __stret = __sincos_stret(__x);
	*__sinp = __stret.__sinval; *__cosp = __stret.__cosval;
} inline __attribute__ ((__always_inline__)) void __sincospif(float __x, float *__sinp, float *__cosp) {
	const struct __float2 __stret = __sincospif_stret(__x);
	*__sinp = __stret.__sinval; *__cosp = __stret.__cosval;
} inline __attribute__ ((__always_inline__)) void __sincospi(double __x, double *__sinp, double *__cosp) {
	const struct __double2 __stret = __sincospi_stret(__x);
	*__sinp = __stret.__sinval; *__cosp = __stret.__cosval;
} extern double j0(double);
extern double j1(double);
extern double jn(int, double);
extern double y0(double);
extern double y1(double);
extern double yn(int, double);
extern double scalb(double, double);
extern int signgam;
/* #define M_E         2.71828182845904523536028747135266250 ### string, not number "2.71828182845904523536028747135266250" */
/* #define M_LOG2E     1.44269504088896340735992468100189214 ### string, not number "1.44269504088896340735992468100189214" */
/* #define M_LOG10E    0.434294481903251827651128918916605082 ### string, not number "0.434294481903251827651128918916605082" */
/* #define M_LN2       0.693147180559945309417232121458176568 ### string, not number "0.693147180559945309417232121458176568" */
/* #define M_LN10      2.30258509299404568401799145468436421 ### string, not number "2.30258509299404568401799145468436421" */
/* #define M_PI        3.14159265358979323846264338327950288 ### string, not number "3.14159265358979323846264338327950288" */
/* #define M_PI_2      1.57079632679489661923132169163975144 ### string, not number "1.57079632679489661923132169163975144" */
/* #define M_PI_4      0.785398163397448309615660845819875721 ### string, not number "0.785398163397448309615660845819875721" */
/* #define M_1_PI      0.318309886183790671537767526745028724 ### string, not number "0.318309886183790671537767526745028724" */
/* #define M_2_PI      0.636619772367581343075535053490057448 ### string, not number "0.636619772367581343075535053490057448" */
/* #define M_2_SQRTPI  1.12837916709551257389615890312154517 ### string, not number "1.12837916709551257389615890312154517" */
/* #define M_SQRT2     1.41421356237309504880168872420969808 ### string, not number "1.41421356237309504880168872420969808" */
/* #define M_SQRT1_2   0.707106781186547524400844362104849039 ### string, not number "0.707106781186547524400844362104849039" */
/* #define MAXFLOAT    0x1.fffffep+127f ### string, not number "0x1.fffffep+127f" */
enum { FP_SNAN = 1 };
enum { FP_QNAN = 1 };
/* #define	HUGE		MAXFLOAT ### string, not number "MAXFLOAT" */
/* #define X_TLOSS		1.41484755040568800000e+16 ### string, not number "1.41484755040568800000e+16" */
enum { DOMAIN = 1 };
enum { SING = 2 };
enum { OVERFLOW = 3 };
enum { UNDERFLOW = 4 };
enum { TLOSS = 5 };
enum { PLOSS = 6 };
extern long int rinttol(double);
extern long int roundtol(double);
extern double drem(double, double);
extern int finite(double);
extern double gamma(double);
extern double significand(double);
struct exception {
	int type;
	char *name;
	double arg1;
	double arg2;
	double retval;
};
/* + END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h */
]]
