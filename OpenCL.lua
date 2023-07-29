local ffi = require 'ffi'
ffi.cdef[[
/* manually commented out: warning: Need to implement some method to align data here */
/* + BEGIN /usr/include/CL/cl.h */
enum { __OPENCL_CL_H = 1 };
/* ++ BEGIN /usr/include/CL/cl_version.h */
enum { __CL_VERSION_H = 1 };
/* #pragma message("cl_version.h: CL_TARGET_OPENCL_VERSION is not defined. Defaulting to 300 (OpenCL 3.0)") */
enum { CL_TARGET_OPENCL_VERSION = 300 };
enum { CL_VERSION_3_0 = 1 };
enum { CL_VERSION_2_2 = 1 };
enum { CL_VERSION_2_1 = 1 };
enum { CL_VERSION_2_0 = 1 };
enum { CL_VERSION_1_2 = 1 };
enum { CL_VERSION_1_1 = 1 };
enum { CL_VERSION_1_0 = 1 };
/* ++ END   /usr/include/CL/cl_version.h */
/* ++ BEGIN /usr/include/CL/cl_platform.h */
enum { __CL_PLATFORM_H = 1 };
/* +++ BEGIN /usr/include/CL/cl_version.h */
/* +++ END   /usr/include/CL/cl_version.h */
enum { CL_API_ENTRY = 1 };
enum { CL_API_CALL = 1 };
enum { CL_CALLBACK = 1 };
enum { CL_API_SUFFIX_USER = 1 };
enum { CL_API_PREFIX_USER = 1 };
/* #define CL_API_SUFFIX_COMMON CL_API_SUFFIX_USER ### string, not number "CL_API_SUFFIX_USER" */
/* #define CL_API_PREFIX_COMMON CL_API_PREFIX_USER ### string, not number "CL_API_PREFIX_USER" */
/* #define CL_API_SUFFIX__VERSION_1_0 CL_API_SUFFIX_COMMON ### string, not number "CL_API_SUFFIX_COMMON" */
/* #define CL_API_SUFFIX__VERSION_1_1 CL_API_SUFFIX_COMMON ### string, not number "CL_API_SUFFIX_COMMON" */
/* #define CL_API_SUFFIX__VERSION_1_2 CL_API_SUFFIX_COMMON ### string, not number "CL_API_SUFFIX_COMMON" */
/* #define CL_API_SUFFIX__VERSION_2_0 CL_API_SUFFIX_COMMON ### string, not number "CL_API_SUFFIX_COMMON" */
/* #define CL_API_SUFFIX__VERSION_2_1 CL_API_SUFFIX_COMMON ### string, not number "CL_API_SUFFIX_COMMON" */
/* #define CL_API_SUFFIX__VERSION_2_2 CL_API_SUFFIX_COMMON ### string, not number "CL_API_SUFFIX_COMMON" */
/* #define CL_API_SUFFIX__VERSION_3_0 CL_API_SUFFIX_COMMON ### string, not number "CL_API_SUFFIX_COMMON" */
/* #define CL_API_SUFFIX__EXPERIMENTAL CL_API_SUFFIX_COMMON ### string, not number "CL_API_SUFFIX_COMMON" */
/* #define CL_API_SUFFIX_DEPRECATED __attribute__((deprecated)) ### string, not number "__attribute__((deprecated))" */
enum { CL_API_PREFIX_DEPRECATED = 1 };
/* #define CL_API_SUFFIX__VERSION_1_0_DEPRECATED CL_API_SUFFIX_COMMON CL_API_SUFFIX_DEPRECATED ### string, not number "CL_API_SUFFIX_COMMON CL_API_SUFFIX_DEPRECATED" */
/* #define CL_API_PREFIX__VERSION_1_0_DEPRECATED CL_API_PREFIX_COMMON CL_API_PREFIX_DEPRECATED ### string, not number "CL_API_PREFIX_COMMON CL_API_PREFIX_DEPRECATED" */
/* #define CL_API_SUFFIX__VERSION_1_1_DEPRECATED CL_API_SUFFIX_COMMON CL_API_SUFFIX_DEPRECATED ### string, not number "CL_API_SUFFIX_COMMON CL_API_SUFFIX_DEPRECATED" */
/* #define CL_API_PREFIX__VERSION_1_1_DEPRECATED CL_API_PREFIX_COMMON CL_API_PREFIX_DEPRECATED ### string, not number "CL_API_PREFIX_COMMON CL_API_PREFIX_DEPRECATED" */
/* #define CL_API_SUFFIX__VERSION_1_2_DEPRECATED CL_API_SUFFIX_COMMON CL_API_SUFFIX_DEPRECATED ### string, not number "CL_API_SUFFIX_COMMON CL_API_SUFFIX_DEPRECATED" */
/* #define CL_API_PREFIX__VERSION_1_2_DEPRECATED CL_API_PREFIX_COMMON CL_API_PREFIX_DEPRECATED ### string, not number "CL_API_PREFIX_COMMON CL_API_PREFIX_DEPRECATED" */
/* #define CL_API_SUFFIX__VERSION_2_0_DEPRECATED CL_API_SUFFIX_COMMON CL_API_SUFFIX_DEPRECATED ### string, not number "CL_API_SUFFIX_COMMON CL_API_SUFFIX_DEPRECATED" */
/* #define CL_API_PREFIX__VERSION_2_0_DEPRECATED CL_API_PREFIX_COMMON CL_API_PREFIX_DEPRECATED ### string, not number "CL_API_PREFIX_COMMON CL_API_PREFIX_DEPRECATED" */
/* #define CL_API_SUFFIX__VERSION_2_1_DEPRECATED CL_API_SUFFIX_COMMON CL_API_SUFFIX_DEPRECATED ### string, not number "CL_API_SUFFIX_COMMON CL_API_SUFFIX_DEPRECATED" */
/* #define CL_API_PREFIX__VERSION_2_1_DEPRECATED CL_API_PREFIX_COMMON CL_API_PREFIX_DEPRECATED ### string, not number "CL_API_PREFIX_COMMON CL_API_PREFIX_DEPRECATED" */
/* #define CL_API_SUFFIX__VERSION_2_2_DEPRECATED CL_API_SUFFIX_COMMON CL_API_SUFFIX_DEPRECATED ### string, not number "CL_API_SUFFIX_COMMON CL_API_SUFFIX_DEPRECATED" */
/* #define CL_API_PREFIX__VERSION_2_2_DEPRECATED CL_API_PREFIX_COMMON CL_API_PREFIX_DEPRECATED ### string, not number "CL_API_PREFIX_COMMON CL_API_PREFIX_DEPRECATED" */
/* +++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/12/include/stdint.h */
]] require 'ffi.c.stdint' ffi.cdef[[
/* +++ END   /usr/lib/gcc/x86_64-linux-gnu/12/include/stdint.h */
typedef int8_t cl_char;
typedef uint8_t cl_uchar;
typedef int16_t cl_short;
typedef uint16_t cl_ushort;
typedef int32_t cl_int;
typedef uint32_t cl_uint;
typedef int64_t cl_long;
typedef uint64_t cl_ulong;
typedef uint16_t cl_half;
typedef float cl_float;
typedef double cl_double;
enum { CL_CHAR_BIT = 8 };
enum { CL_SCHAR_MAX = 127 };
enum { CL_SCHAR_MIN = -128 };
enum { CL_CHAR_MAX = 127 };
enum { CL_CHAR_MIN = -128 };
enum { CL_UCHAR_MAX = 255 };
enum { CL_SHRT_MAX = 32767 };
enum { CL_SHRT_MIN = -32768 };
enum { CL_USHRT_MAX = 65535 };
enum { CL_INT_MAX = 2147483647 };
enum { CL_INT_MIN = -2147483648 };
enum { CL_UINT_MAX = 4294967295 };
/* #define CL_LONG_MAX         ((cl_long) 0x7FFFFFFFFFFFFFFFLL) ### string, not number "((cl_long) 0x7FFFFFFFFFFFFFFFLL)" */
/* #define CL_LONG_MIN         ((cl_long) -0x7FFFFFFFFFFFFFFFLL - 1LL) ### string, number, replaceline "-9.2233720368548e+18" */
/* #define CL_ULONG_MAX        ((cl_ulong) 0xFFFFFFFFFFFFFFFFULL) ### string, not number "((cl_ulong) 0xFFFFFFFFFFFFFFFFULL)" */
enum { CL_FLT_DIG = 6 };
enum { CL_FLT_MANT_DIG = 24 };
enum { CL_FLT_MAX_10_EXP = 38 };
enum { CL_FLT_MAX_EXP = 128 };
enum { CL_FLT_MIN_10_EXP = -37 };
enum { CL_FLT_MIN_EXP = -125 };
enum { CL_FLT_RADIX = 2 };
/* #define CL_FLT_MAX          340282346638528859811704183484516925440.0f ### string, not number "340282346638528859811704183484516925440.0f" */
/* #define CL_FLT_MIN          1.175494350822287507969e-38f ### string, not number "1.175494350822287507969e-38f" */
/* #define CL_FLT_EPSILON      1.1920928955078125e-7f ### string, not number "1.1920928955078125e-7f" */
enum { CL_HALF_DIG = 3 };
enum { CL_HALF_MANT_DIG = 11 };
enum { CL_HALF_MAX_10_EXP = 4 };
enum { CL_HALF_MAX_EXP = 16 };
enum { CL_HALF_MIN_10_EXP = -4 };
enum { CL_HALF_MIN_EXP = -13 };
enum { CL_HALF_RADIX = 2 };
/* #define CL_HALF_MAX          65504.0f ### string, not number "65504.0f" */
/* #define CL_HALF_MIN          6.103515625e-05f ### string, not number "6.103515625e-05f" */
/* #define CL_HALF_EPSILON      9.765625e-04f ### string, not number "9.765625e-04f" */
enum { CL_DBL_DIG = 15 };
enum { CL_DBL_MANT_DIG = 53 };
enum { CL_DBL_MAX_10_EXP = 308 };
enum { CL_DBL_MAX_EXP = 1024 };
enum { CL_DBL_MIN_10_EXP = -307 };
enum { CL_DBL_MIN_EXP = -1021 };
enum { CL_DBL_RADIX = 2 };
/* #define CL_DBL_MAX          179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0 ### string, number, replaceline "179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0" */
/* #define CL_DBL_MIN          2.225073858507201383090e-308 ### string, number, replaceline "2.225073858507201383090e-308" */
/* #define CL_DBL_EPSILON      2.220446049250313080847e-16 ### string, number, replaceline "2.220446049250313080847e-16" */
/* #define CL_M_E              2.7182818284590452354 ### string, number, replaceline "2.7182818284590452354" */
/* #define CL_M_LOG2E          1.4426950408889634074 ### string, number, replaceline "1.4426950408889634074" */
/* #define CL_M_LOG10E         0.43429448190325182765 ### string, number, replaceline "0.43429448190325182765" */
/* #define CL_M_LN2            0.69314718055994530942 ### string, number, replaceline "0.69314718055994530942" */
/* #define CL_M_LN10           2.30258509299404568402 ### string, number, replaceline "2.30258509299404568402" */
/* #define CL_M_PI             3.14159265358979323846 ### string, number, replaceline "3.14159265358979323846" */
/* #define CL_M_PI_2           1.57079632679489661923 ### string, number, replaceline "1.57079632679489661923" */
/* #define CL_M_PI_4           0.78539816339744830962 ### string, number, replaceline "0.78539816339744830962" */
/* #define CL_M_1_PI           0.31830988618379067154 ### string, number, replaceline "0.31830988618379067154" */
/* #define CL_M_2_PI           0.63661977236758134308 ### string, number, replaceline "0.63661977236758134308" */
/* #define CL_M_2_SQRTPI       1.12837916709551257390 ### string, number, replaceline "1.12837916709551257390" */
/* #define CL_M_SQRT2          1.41421356237309504880 ### string, number, replaceline "1.41421356237309504880" */
/* #define CL_M_SQRT1_2        0.70710678118654752440 ### string, number, replaceline "0.70710678118654752440" */
/* #define CL_M_E_F            2.718281828f ### string, not number "2.718281828f" */
/* #define CL_M_LOG2E_F        1.442695041f ### string, not number "1.442695041f" */
/* #define CL_M_LOG10E_F       0.434294482f ### string, not number "0.434294482f" */
/* #define CL_M_LN2_F          0.693147181f ### string, not number "0.693147181f" */
/* #define CL_M_LN10_F         2.302585093f ### string, not number "2.302585093f" */
/* #define CL_M_PI_F           3.141592654f ### string, not number "3.141592654f" */
/* #define CL_M_PI_2_F         1.570796327f ### string, not number "1.570796327f" */
/* #define CL_M_PI_4_F         0.785398163f ### string, not number "0.785398163f" */
/* #define CL_M_1_PI_F         0.318309886f ### string, not number "0.318309886f" */
/* #define CL_M_2_PI_F         0.636619772f ### string, not number "0.636619772f" */
/* #define CL_M_2_SQRTPI_F     1.128379167f ### string, not number "1.128379167f" */
/* #define CL_M_SQRT2_F        1.414213562f ### string, not number "1.414213562f" */
/* #define CL_M_SQRT1_2_F      0.707106781f ### string, not number "0.707106781f" */
/* #define CL_HUGE_VALF     ((cl_float) 1e50) ### string, not number "((cl_float) 1e50)" */
/* #define CL_HUGE_VAL      ((cl_double) 1e500) ### string, not number "((cl_double) 1e500)" */
float nanf( const char * );
/* #define CL_NAN           nanf( "" ) ### string, not number "nanf( \"\" )" */
/* #define CL_MAXFLOAT         CL_FLT_MAX ### string, not number "CL_FLT_MAX" */
/* #define CL_INFINITY         CL_HUGE_VALF ### string, not number "CL_HUGE_VALF" */
/* +++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/12/include/stddef.h */
]] require 'ffi.c.stddef' ffi.cdef[[
/* +++ END   /usr/lib/gcc/x86_64-linux-gnu/12/include/stddef.h */
typedef unsigned int cl_GLuint;
typedef int cl_GLint;
typedef unsigned int cl_GLenum;
enum { __CL_HAS_ANON_STRUCT__ = 1 };
enum { __CL_ANON_STRUCT__ = 1 };
enum { CL_HAS_NAMED_VECTOR_FIELDS = 1 };
enum { CL_HAS_HI_LO_VECTOR_FIELDS = 1 };
typedef union {
	cl_char s[2];
	struct{ cl_char x, y; };
	struct{ cl_char s0, s1; };
	struct{ cl_char lo, hi; };
}cl_char2;
typedef union {
	cl_char s[4];
	struct{ cl_char x, y, z, w; };
	struct{ cl_char s0, s1, s2, s3; };
	struct{ cl_char2 lo, hi; };
}cl_char4;
typedef cl_char4 cl_char3;
typedef union {
	cl_char s[8];
	struct{ cl_char x, y, z, w; };
	struct{ cl_char s0, s1, s2, s3, s4, s5, s6, s7; };
	struct{ cl_char4 lo, hi; };
}cl_char8;
typedef union {
	cl_char s[16];
	struct{ cl_char x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
	struct{ cl_char s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
	struct{ cl_char8 lo, hi; };
}cl_char16;
typedef union {
	cl_uchar s[2];
	struct{ cl_uchar x, y; };
	struct{ cl_uchar s0, s1; };
	struct{ cl_uchar lo, hi; };
}cl_uchar2;
typedef union {
	cl_uchar s[4];
	struct{ cl_uchar x, y, z, w; };
	struct{ cl_uchar s0, s1, s2, s3; };
	struct{ cl_uchar2 lo, hi; };
}cl_uchar4;
typedef cl_uchar4 cl_uchar3;
typedef union {
	cl_uchar s[8];
	struct{ cl_uchar x, y, z, w; };
	struct{ cl_uchar s0, s1, s2, s3, s4, s5, s6, s7; };
	struct{ cl_uchar4 lo, hi; };
}cl_uchar8;
typedef union {
	cl_uchar s[16];
	struct{ cl_uchar x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
	struct{ cl_uchar s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
	struct{ cl_uchar8 lo, hi; };
}cl_uchar16;
typedef union {
	cl_short s[2];
	struct{ cl_short x, y; };
	struct{ cl_short s0, s1; };
	struct{ cl_short lo, hi; };
}cl_short2;
typedef union {
	cl_short s[4];
	struct{ cl_short x, y, z, w; };
	struct{ cl_short s0, s1, s2, s3; };
	struct{ cl_short2 lo, hi; };
}cl_short4;
typedef cl_short4 cl_short3;
typedef union {
	cl_short s[8];
	struct{ cl_short x, y, z, w; };
	struct{ cl_short s0, s1, s2, s3, s4, s5, s6, s7; };
	struct{ cl_short4 lo, hi; };
}cl_short8;
typedef union {
	cl_short s[16];
	struct{ cl_short x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
	struct{ cl_short s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
	struct{ cl_short8 lo, hi; };
}cl_short16;
typedef union {
	cl_ushort s[2];
	struct{ cl_ushort x, y; };
	struct{ cl_ushort s0, s1; };
	struct{ cl_ushort lo, hi; };
}cl_ushort2;
typedef union {
	cl_ushort s[4];
	struct{ cl_ushort x, y, z, w; };
	struct{ cl_ushort s0, s1, s2, s3; };
	struct{ cl_ushort2 lo, hi; };
}cl_ushort4;
typedef cl_ushort4 cl_ushort3;
typedef union {
	cl_ushort s[8];
	struct{ cl_ushort x, y, z, w; };
	struct{ cl_ushort s0, s1, s2, s3, s4, s5, s6, s7; };
	struct{ cl_ushort4 lo, hi; };
}cl_ushort8;
typedef union {
	cl_ushort s[16];
	struct{ cl_ushort x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
	struct{ cl_ushort s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
	struct{ cl_ushort8 lo, hi; };
}cl_ushort16;
typedef union {
	cl_half s[2];
	struct{ cl_half x, y; };
	struct{ cl_half s0, s1; };
	struct{ cl_half lo, hi; };
}cl_half2;
typedef union {
	cl_half s[4];
	struct{ cl_half x, y, z, w; };
	struct{ cl_half s0, s1, s2, s3; };
	struct{ cl_half2 lo, hi; };
}cl_half4;
typedef cl_half4 cl_half3;
typedef union {
	cl_half s[8];
	struct{ cl_half x, y, z, w; };
	struct{ cl_half s0, s1, s2, s3, s4, s5, s6, s7; };
	struct{ cl_half4 lo, hi; };
}cl_half8;
typedef union {
	cl_half s[16];
	struct{ cl_half x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
	struct{ cl_half s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
	struct{ cl_half8 lo, hi; };
}cl_half16;
typedef union {
	cl_int s[2];
	struct{ cl_int x, y; };
	struct{ cl_int s0, s1; };
	struct{ cl_int lo, hi; };
}cl_int2;
typedef union {
	cl_int s[4];
	struct{ cl_int x, y, z, w; };
	struct{ cl_int s0, s1, s2, s3; };
	struct{ cl_int2 lo, hi; };
}cl_int4;
typedef cl_int4 cl_int3;
typedef union {
	cl_int s[8];
	struct{ cl_int x, y, z, w; };
	struct{ cl_int s0, s1, s2, s3, s4, s5, s6, s7; };
	struct{ cl_int4 lo, hi; };
}cl_int8;
typedef union {
	cl_int s[16];
	struct{ cl_int x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
	struct{ cl_int s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
	struct{ cl_int8 lo, hi; };
}cl_int16;
typedef union {
	cl_uint s[2];
	struct{ cl_uint x, y; };
	struct{ cl_uint s0, s1; };
	struct{ cl_uint lo, hi; };
}cl_uint2;
typedef union {
	cl_uint s[4];
	struct{ cl_uint x, y, z, w; };
	struct{ cl_uint s0, s1, s2, s3; };
	struct{ cl_uint2 lo, hi; };
}cl_uint4;
typedef cl_uint4 cl_uint3;
typedef union {
	cl_uint s[8];
	struct{ cl_uint x, y, z, w; };
	struct{ cl_uint s0, s1, s2, s3, s4, s5, s6, s7; };
	struct{ cl_uint4 lo, hi; };
}cl_uint8;
typedef union {
	cl_uint s[16];
	struct{ cl_uint x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
	struct{ cl_uint s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
	struct{ cl_uint8 lo, hi; };
}cl_uint16;
typedef union {
	cl_long s[2];
	struct{ cl_long x, y; };
	struct{ cl_long s0, s1; };
	struct{ cl_long lo, hi; };
}cl_long2;
typedef union {
	cl_long s[4];
	struct{ cl_long x, y, z, w; };
	struct{ cl_long s0, s1, s2, s3; };
	struct{ cl_long2 lo, hi; };
}cl_long4;
typedef cl_long4 cl_long3;
typedef union {
	cl_long s[8];
	struct{ cl_long x, y, z, w; };
	struct{ cl_long s0, s1, s2, s3, s4, s5, s6, s7; };
	struct{ cl_long4 lo, hi; };
}cl_long8;
typedef union {
	cl_long s[16];
	struct{ cl_long x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
	struct{ cl_long s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
	struct{ cl_long8 lo, hi; };
}cl_long16;
typedef union {
	cl_ulong s[2];
	struct{ cl_ulong x, y; };
	struct{ cl_ulong s0, s1; };
	struct{ cl_ulong lo, hi; };
}cl_ulong2;
typedef union {
	cl_ulong s[4];
	struct{ cl_ulong x, y, z, w; };
	struct{ cl_ulong s0, s1, s2, s3; };
	struct{ cl_ulong2 lo, hi; };
}cl_ulong4;
typedef cl_ulong4 cl_ulong3;
typedef union {
	cl_ulong s[8];
	struct{ cl_ulong x, y, z, w; };
	struct{ cl_ulong s0, s1, s2, s3, s4, s5, s6, s7; };
	struct{ cl_ulong4 lo, hi; };
}cl_ulong8;
typedef union {
	cl_ulong s[16];
	struct{ cl_ulong x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
	struct{ cl_ulong s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
	struct{ cl_ulong8 lo, hi; };
}cl_ulong16;
typedef union {
	cl_float s[2];
	struct{ cl_float x, y; };
	struct{ cl_float s0, s1; };
	struct{ cl_float lo, hi; };
}cl_float2;
typedef union {
	cl_float s[4];
	struct{ cl_float x, y, z, w; };
	struct{ cl_float s0, s1, s2, s3; };
	struct{ cl_float2 lo, hi; };
}cl_float4;
typedef cl_float4 cl_float3;
typedef union {
	cl_float s[8];
	struct{ cl_float x, y, z, w; };
	struct{ cl_float s0, s1, s2, s3, s4, s5, s6, s7; };
	struct{ cl_float4 lo, hi; };
}cl_float8;
typedef union {
	cl_float s[16];
	struct{ cl_float x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
	struct{ cl_float s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
	struct{ cl_float8 lo, hi; };
}cl_float16;
typedef union {
	cl_double s[2];
	struct{ cl_double x, y; };
	struct{ cl_double s0, s1; };
	struct{ cl_double lo, hi; };
}cl_double2;
typedef union {
	cl_double s[4];
	struct{ cl_double x, y, z, w; };
	struct{ cl_double s0, s1, s2, s3; };
	struct{ cl_double2 lo, hi; };
}cl_double4;
typedef cl_double4 cl_double3;
typedef union {
	cl_double s[8];
	struct{ cl_double x, y, z, w; };
	struct{ cl_double s0, s1, s2, s3, s4, s5, s6, s7; };
	struct{ cl_double4 lo, hi; };
}cl_double8;
typedef union {
	cl_double s[16];
	struct{ cl_double x, y, z, w, __spacer4, __spacer5, __spacer6, __spacer7, __spacer8, __spacer9, sa, sb, sc, sd, se, sf; };
	struct{ cl_double s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF; };
	struct{ cl_double8 lo, hi; };
}cl_double16;
/* #define  CL_PROGRAM_STRING_DEBUG_INFO       "#line "  _CL_STRINGIFY(__LINE__) " \"" __FILE__ "\" \n\n" ### string, not number "\"#line \"  _CL_STRINGIFY(__LINE__) \" \\\"\" __FILE__ \"\\\" \\n\\n\"" */
/* ++ END   /usr/include/CL/cl_platform.h */
typedef struct _cl_platform_id * cl_platform_id;
typedef struct _cl_device_id * cl_device_id;
typedef struct _cl_context * cl_context;
typedef struct _cl_command_queue * cl_command_queue;
typedef struct _cl_mem * cl_mem;
typedef struct _cl_program * cl_program;
typedef struct _cl_kernel * cl_kernel;
typedef struct _cl_event * cl_event;
typedef struct _cl_sampler * cl_sampler;
typedef cl_uint cl_bool;
typedef cl_ulong cl_bitfield;
typedef cl_ulong cl_properties;
typedef cl_bitfield cl_device_type;
typedef cl_uint cl_platform_info;
typedef cl_uint cl_device_info;
typedef cl_bitfield cl_device_fp_config;
typedef cl_uint cl_device_mem_cache_type;
typedef cl_uint cl_device_local_mem_type;
typedef cl_bitfield cl_device_exec_capabilities;
typedef cl_bitfield cl_device_svm_capabilities;
typedef cl_bitfield cl_command_queue_properties;
typedef intptr_t cl_device_partition_property;
typedef cl_bitfield cl_device_affinity_domain;
typedef intptr_t cl_context_properties;
typedef cl_uint cl_context_info;
typedef cl_properties cl_queue_properties;
typedef cl_uint cl_command_queue_info;
typedef cl_uint cl_channel_order;
typedef cl_uint cl_channel_type;
typedef cl_bitfield cl_mem_flags;
typedef cl_bitfield cl_svm_mem_flags;
typedef cl_uint cl_mem_object_type;
typedef cl_uint cl_mem_info;
typedef cl_bitfield cl_mem_migration_flags;
typedef cl_uint cl_image_info;
typedef cl_uint cl_buffer_create_type;
typedef cl_uint cl_addressing_mode;
typedef cl_uint cl_filter_mode;
typedef cl_uint cl_sampler_info;
typedef cl_bitfield cl_map_flags;
typedef intptr_t cl_pipe_properties;
typedef cl_uint cl_pipe_info;
typedef cl_uint cl_program_info;
typedef cl_uint cl_program_build_info;
typedef cl_uint cl_program_binary_type;
typedef cl_int cl_build_status;
typedef cl_uint cl_kernel_info;
typedef cl_uint cl_kernel_arg_info;
typedef cl_uint cl_kernel_arg_address_qualifier;
typedef cl_uint cl_kernel_arg_access_qualifier;
typedef cl_bitfield cl_kernel_arg_type_qualifier;
typedef cl_uint cl_kernel_work_group_info;
typedef cl_uint cl_kernel_sub_group_info;
typedef cl_uint cl_event_info;
typedef cl_uint cl_command_type;
typedef cl_uint cl_profiling_info;
typedef cl_properties cl_sampler_properties;
typedef cl_uint cl_kernel_exec_info;
typedef cl_bitfield cl_device_atomic_capabilities;
typedef cl_bitfield cl_device_device_enqueue_capabilities;
typedef cl_uint cl_khronos_vendor_id;
typedef cl_properties cl_mem_properties;
typedef cl_uint cl_version;
typedef struct _cl_image_format {
	cl_channel_order image_channel_order;
	cl_channel_type image_channel_data_type;
} cl_image_format;
typedef struct _cl_image_desc {
	cl_mem_object_type image_type;
	size_t image_width;
	size_t image_height;
	size_t image_depth;
	size_t image_array_size;
	size_t image_row_pitch;
	size_t image_slice_pitch;
	cl_uint num_mip_levels;
	cl_uint num_samples;
	__extension__ union {
	cl_mem buffer;
	cl_mem mem_object;
};
} cl_image_desc;
typedef struct _cl_buffer_region {
	size_t origin;
	size_t size;
} cl_buffer_region;
enum { CL_NAME_VERSION_MAX_NAME_SIZE = 64 };
typedef struct _cl_name_version {
	cl_version version;
	char name[64];
} cl_name_version;
enum { CL_SUCCESS = 0 };
enum { CL_DEVICE_NOT_FOUND = -1 };
enum { CL_DEVICE_NOT_AVAILABLE = -2 };
enum { CL_COMPILER_NOT_AVAILABLE = -3 };
enum { CL_MEM_OBJECT_ALLOCATION_FAILURE = -4 };
enum { CL_OUT_OF_RESOURCES = -5 };
enum { CL_OUT_OF_HOST_MEMORY = -6 };
enum { CL_PROFILING_INFO_NOT_AVAILABLE = -7 };
enum { CL_MEM_COPY_OVERLAP = -8 };
enum { CL_IMAGE_FORMAT_MISMATCH = -9 };
enum { CL_IMAGE_FORMAT_NOT_SUPPORTED = -10 };
enum { CL_BUILD_PROGRAM_FAILURE = -11 };
enum { CL_MAP_FAILURE = -12 };
enum { CL_MISALIGNED_SUB_BUFFER_OFFSET = -13 };
enum { CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST = -14 };
enum { CL_COMPILE_PROGRAM_FAILURE = -15 };
enum { CL_LINKER_NOT_AVAILABLE = -16 };
enum { CL_LINK_PROGRAM_FAILURE = -17 };
enum { CL_DEVICE_PARTITION_FAILED = -18 };
enum { CL_KERNEL_ARG_INFO_NOT_AVAILABLE = -19 };
enum { CL_INVALID_VALUE = -30 };
enum { CL_INVALID_DEVICE_TYPE = -31 };
enum { CL_INVALID_PLATFORM = -32 };
enum { CL_INVALID_DEVICE = -33 };
enum { CL_INVALID_CONTEXT = -34 };
enum { CL_INVALID_QUEUE_PROPERTIES = -35 };
enum { CL_INVALID_COMMAND_QUEUE = -36 };
enum { CL_INVALID_HOST_PTR = -37 };
enum { CL_INVALID_MEM_OBJECT = -38 };
enum { CL_INVALID_IMAGE_FORMAT_DESCRIPTOR = -39 };
enum { CL_INVALID_IMAGE_SIZE = -40 };
enum { CL_INVALID_SAMPLER = -41 };
enum { CL_INVALID_BINARY = -42 };
enum { CL_INVALID_BUILD_OPTIONS = -43 };
enum { CL_INVALID_PROGRAM = -44 };
enum { CL_INVALID_PROGRAM_EXECUTABLE = -45 };
enum { CL_INVALID_KERNEL_NAME = -46 };
enum { CL_INVALID_KERNEL_DEFINITION = -47 };
enum { CL_INVALID_KERNEL = -48 };
enum { CL_INVALID_ARG_INDEX = -49 };
enum { CL_INVALID_ARG_VALUE = -50 };
enum { CL_INVALID_ARG_SIZE = -51 };
enum { CL_INVALID_KERNEL_ARGS = -52 };
enum { CL_INVALID_WORK_DIMENSION = -53 };
enum { CL_INVALID_WORK_GROUP_SIZE = -54 };
enum { CL_INVALID_WORK_ITEM_SIZE = -55 };
enum { CL_INVALID_GLOBAL_OFFSET = -56 };
enum { CL_INVALID_EVENT_WAIT_LIST = -57 };
enum { CL_INVALID_EVENT = -58 };
enum { CL_INVALID_OPERATION = -59 };
enum { CL_INVALID_GL_OBJECT = -60 };
enum { CL_INVALID_BUFFER_SIZE = -61 };
enum { CL_INVALID_MIP_LEVEL = -62 };
enum { CL_INVALID_GLOBAL_WORK_SIZE = -63 };
enum { CL_INVALID_PROPERTY = -64 };
enum { CL_INVALID_IMAGE_DESCRIPTOR = -65 };
enum { CL_INVALID_COMPILER_OPTIONS = -66 };
enum { CL_INVALID_LINKER_OPTIONS = -67 };
enum { CL_INVALID_DEVICE_PARTITION_COUNT = -68 };
enum { CL_INVALID_PIPE_SIZE = -69 };
enum { CL_INVALID_DEVICE_QUEUE = -70 };
enum { CL_INVALID_SPEC_ID = -71 };
enum { CL_MAX_SIZE_RESTRICTION_EXCEEDED = -72 };
enum { CL_FALSE = 0 };
enum { CL_TRUE = 1 };
enum { CL_BLOCKING = 1 };
enum { CL_NON_BLOCKING = 0 };
enum { CL_PLATFORM_PROFILE = 2304 };
enum { CL_PLATFORM_VERSION = 2305 };
enum { CL_PLATFORM_NAME = 2306 };
enum { CL_PLATFORM_VENDOR = 2307 };
enum { CL_PLATFORM_EXTENSIONS = 2308 };
enum { CL_PLATFORM_HOST_TIMER_RESOLUTION = 2309 };
enum { CL_PLATFORM_NUMERIC_VERSION = 2310 };
enum { CL_PLATFORM_EXTENSIONS_WITH_VERSION = 2311 };
enum { CL_DEVICE_TYPE_DEFAULT = 1 };
enum { CL_DEVICE_TYPE_CPU = 2 };
enum { CL_DEVICE_TYPE_GPU = 4 };
enum { CL_DEVICE_TYPE_ACCELERATOR = 8 };
enum { CL_DEVICE_TYPE_CUSTOM = 16 };
enum { CL_DEVICE_TYPE_ALL = 4294967295 };
enum { CL_DEVICE_TYPE = 4096 };
enum { CL_DEVICE_VENDOR_ID = 4097 };
enum { CL_DEVICE_MAX_COMPUTE_UNITS = 4098 };
enum { CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS = 4099 };
enum { CL_DEVICE_MAX_WORK_GROUP_SIZE = 4100 };
enum { CL_DEVICE_MAX_WORK_ITEM_SIZES = 4101 };
enum { CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR = 4102 };
enum { CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT = 4103 };
enum { CL_DEVICE_PREFERRED_VECTOR_WIDTH_INT = 4104 };
enum { CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG = 4105 };
enum { CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT = 4106 };
enum { CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE = 4107 };
enum { CL_DEVICE_MAX_CLOCK_FREQUENCY = 4108 };
enum { CL_DEVICE_ADDRESS_BITS = 4109 };
enum { CL_DEVICE_MAX_READ_IMAGE_ARGS = 4110 };
enum { CL_DEVICE_MAX_WRITE_IMAGE_ARGS = 4111 };
enum { CL_DEVICE_MAX_MEM_ALLOC_SIZE = 4112 };
enum { CL_DEVICE_IMAGE2D_MAX_WIDTH = 4113 };
enum { CL_DEVICE_IMAGE2D_MAX_HEIGHT = 4114 };
enum { CL_DEVICE_IMAGE3D_MAX_WIDTH = 4115 };
enum { CL_DEVICE_IMAGE3D_MAX_HEIGHT = 4116 };
enum { CL_DEVICE_IMAGE3D_MAX_DEPTH = 4117 };
enum { CL_DEVICE_IMAGE_SUPPORT = 4118 };
enum { CL_DEVICE_MAX_PARAMETER_SIZE = 4119 };
enum { CL_DEVICE_MAX_SAMPLERS = 4120 };
enum { CL_DEVICE_MEM_BASE_ADDR_ALIGN = 4121 };
enum { CL_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE = 4122 };
enum { CL_DEVICE_SINGLE_FP_CONFIG = 4123 };
enum { CL_DEVICE_GLOBAL_MEM_CACHE_TYPE = 4124 };
enum { CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE = 4125 };
enum { CL_DEVICE_GLOBAL_MEM_CACHE_SIZE = 4126 };
enum { CL_DEVICE_GLOBAL_MEM_SIZE = 4127 };
enum { CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE = 4128 };
enum { CL_DEVICE_MAX_CONSTANT_ARGS = 4129 };
enum { CL_DEVICE_LOCAL_MEM_TYPE = 4130 };
enum { CL_DEVICE_LOCAL_MEM_SIZE = 4131 };
enum { CL_DEVICE_ERROR_CORRECTION_SUPPORT = 4132 };
enum { CL_DEVICE_PROFILING_TIMER_RESOLUTION = 4133 };
enum { CL_DEVICE_ENDIAN_LITTLE = 4134 };
enum { CL_DEVICE_AVAILABLE = 4135 };
enum { CL_DEVICE_COMPILER_AVAILABLE = 4136 };
enum { CL_DEVICE_EXECUTION_CAPABILITIES = 4137 };
enum { CL_DEVICE_QUEUE_PROPERTIES = 4138 };
enum { CL_DEVICE_QUEUE_ON_HOST_PROPERTIES = 4138 };
enum { CL_DEVICE_NAME = 4139 };
enum { CL_DEVICE_VENDOR = 4140 };
enum { CL_DRIVER_VERSION = 4141 };
enum { CL_DEVICE_PROFILE = 4142 };
enum { CL_DEVICE_VERSION = 4143 };
enum { CL_DEVICE_EXTENSIONS = 4144 };
enum { CL_DEVICE_PLATFORM = 4145 };
enum { CL_DEVICE_DOUBLE_FP_CONFIG = 4146 };
enum { CL_DEVICE_PREFERRED_VECTOR_WIDTH_HALF = 4148 };
enum { CL_DEVICE_HOST_UNIFIED_MEMORY = 4149 };
enum { CL_DEVICE_NATIVE_VECTOR_WIDTH_CHAR = 4150 };
enum { CL_DEVICE_NATIVE_VECTOR_WIDTH_SHORT = 4151 };
enum { CL_DEVICE_NATIVE_VECTOR_WIDTH_INT = 4152 };
enum { CL_DEVICE_NATIVE_VECTOR_WIDTH_LONG = 4153 };
enum { CL_DEVICE_NATIVE_VECTOR_WIDTH_FLOAT = 4154 };
enum { CL_DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE = 4155 };
enum { CL_DEVICE_NATIVE_VECTOR_WIDTH_HALF = 4156 };
enum { CL_DEVICE_OPENCL_C_VERSION = 4157 };
enum { CL_DEVICE_LINKER_AVAILABLE = 4158 };
enum { CL_DEVICE_BUILT_IN_KERNELS = 4159 };
enum { CL_DEVICE_IMAGE_MAX_BUFFER_SIZE = 4160 };
enum { CL_DEVICE_IMAGE_MAX_ARRAY_SIZE = 4161 };
enum { CL_DEVICE_PARENT_DEVICE = 4162 };
enum { CL_DEVICE_PARTITION_MAX_SUB_DEVICES = 4163 };
enum { CL_DEVICE_PARTITION_PROPERTIES = 4164 };
enum { CL_DEVICE_PARTITION_AFFINITY_DOMAIN = 4165 };
enum { CL_DEVICE_PARTITION_TYPE = 4166 };
enum { CL_DEVICE_REFERENCE_COUNT = 4167 };
enum { CL_DEVICE_PREFERRED_INTEROP_USER_SYNC = 4168 };
enum { CL_DEVICE_PRINTF_BUFFER_SIZE = 4169 };
enum { CL_DEVICE_IMAGE_PITCH_ALIGNMENT = 4170 };
enum { CL_DEVICE_IMAGE_BASE_ADDRESS_ALIGNMENT = 4171 };
enum { CL_DEVICE_MAX_READ_WRITE_IMAGE_ARGS = 4172 };
enum { CL_DEVICE_MAX_GLOBAL_VARIABLE_SIZE = 4173 };
enum { CL_DEVICE_QUEUE_ON_DEVICE_PROPERTIES = 4174 };
enum { CL_DEVICE_QUEUE_ON_DEVICE_PREFERRED_SIZE = 4175 };
enum { CL_DEVICE_QUEUE_ON_DEVICE_MAX_SIZE = 4176 };
enum { CL_DEVICE_MAX_ON_DEVICE_QUEUES = 4177 };
enum { CL_DEVICE_MAX_ON_DEVICE_EVENTS = 4178 };
enum { CL_DEVICE_SVM_CAPABILITIES = 4179 };
enum { CL_DEVICE_GLOBAL_VARIABLE_PREFERRED_TOTAL_SIZE = 4180 };
enum { CL_DEVICE_MAX_PIPE_ARGS = 4181 };
enum { CL_DEVICE_PIPE_MAX_ACTIVE_RESERVATIONS = 4182 };
enum { CL_DEVICE_PIPE_MAX_PACKET_SIZE = 4183 };
enum { CL_DEVICE_PREFERRED_PLATFORM_ATOMIC_ALIGNMENT = 4184 };
enum { CL_DEVICE_PREFERRED_GLOBAL_ATOMIC_ALIGNMENT = 4185 };
enum { CL_DEVICE_PREFERRED_LOCAL_ATOMIC_ALIGNMENT = 4186 };
enum { CL_DEVICE_IL_VERSION = 4187 };
enum { CL_DEVICE_MAX_NUM_SUB_GROUPS = 4188 };
enum { CL_DEVICE_SUB_GROUP_INDEPENDENT_FORWARD_PROGRESS = 4189 };
enum { CL_DEVICE_NUMERIC_VERSION = 4190 };
enum { CL_DEVICE_EXTENSIONS_WITH_VERSION = 4192 };
enum { CL_DEVICE_ILS_WITH_VERSION = 4193 };
enum { CL_DEVICE_BUILT_IN_KERNELS_WITH_VERSION = 4194 };
enum { CL_DEVICE_ATOMIC_MEMORY_CAPABILITIES = 4195 };
enum { CL_DEVICE_ATOMIC_FENCE_CAPABILITIES = 4196 };
enum { CL_DEVICE_NON_UNIFORM_WORK_GROUP_SUPPORT = 4197 };
enum { CL_DEVICE_OPENCL_C_ALL_VERSIONS = 4198 };
enum { CL_DEVICE_PREFERRED_WORK_GROUP_SIZE_MULTIPLE = 4199 };
enum { CL_DEVICE_WORK_GROUP_COLLECTIVE_FUNCTIONS_SUPPORT = 4200 };
enum { CL_DEVICE_GENERIC_ADDRESS_SPACE_SUPPORT = 4201 };
enum { CL_DEVICE_OPENCL_C_FEATURES = 4207 };
enum { CL_DEVICE_DEVICE_ENQUEUE_CAPABILITIES = 4208 };
enum { CL_DEVICE_PIPE_SUPPORT = 4209 };
enum { CL_DEVICE_LATEST_CONFORMANCE_VERSION_PASSED = 4210 };
enum { CL_FP_DENORM = 1 };
enum { CL_FP_INF_NAN = 2 };
enum { CL_FP_ROUND_TO_NEAREST = 4 };
enum { CL_FP_ROUND_TO_ZERO = 8 };
enum { CL_FP_ROUND_TO_INF = 16 };
enum { CL_FP_FMA = 32 };
enum { CL_FP_SOFT_FLOAT = 64 };
enum { CL_FP_CORRECTLY_ROUNDED_DIVIDE_SQRT = 128 };
enum { CL_NONE = 0 };
enum { CL_READ_ONLY_CACHE = 1 };
enum { CL_READ_WRITE_CACHE = 2 };
enum { CL_LOCAL = 1 };
enum { CL_GLOBAL = 2 };
enum { CL_EXEC_KERNEL = 1 };
enum { CL_EXEC_NATIVE_KERNEL = 2 };
enum { CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE = 1 };
enum { CL_QUEUE_PROFILING_ENABLE = 2 };
enum { CL_QUEUE_ON_DEVICE = 4 };
enum { CL_QUEUE_ON_DEVICE_DEFAULT = 8 };
enum { CL_CONTEXT_REFERENCE_COUNT = 4224 };
enum { CL_CONTEXT_DEVICES = 4225 };
enum { CL_CONTEXT_PROPERTIES = 4226 };
enum { CL_CONTEXT_NUM_DEVICES = 4227 };
enum { CL_CONTEXT_PLATFORM = 4228 };
enum { CL_CONTEXT_INTEROP_USER_SYNC = 4229 };
enum { CL_DEVICE_PARTITION_EQUALLY = 4230 };
enum { CL_DEVICE_PARTITION_BY_COUNTS = 4231 };
enum { CL_DEVICE_PARTITION_BY_COUNTS_LIST_END = 0 };
enum { CL_DEVICE_PARTITION_BY_AFFINITY_DOMAIN = 4232 };
enum { CL_DEVICE_AFFINITY_DOMAIN_NUMA = 1 };
enum { CL_DEVICE_AFFINITY_DOMAIN_L4_CACHE = 2 };
enum { CL_DEVICE_AFFINITY_DOMAIN_L3_CACHE = 4 };
enum { CL_DEVICE_AFFINITY_DOMAIN_L2_CACHE = 8 };
enum { CL_DEVICE_AFFINITY_DOMAIN_L1_CACHE = 16 };
enum { CL_DEVICE_AFFINITY_DOMAIN_NEXT_PARTITIONABLE = 32 };
enum { CL_DEVICE_SVM_COARSE_GRAIN_BUFFER = 1 };
enum { CL_DEVICE_SVM_FINE_GRAIN_BUFFER = 2 };
enum { CL_DEVICE_SVM_FINE_GRAIN_SYSTEM = 4 };
enum { CL_DEVICE_SVM_ATOMICS = 8 };
enum { CL_QUEUE_CONTEXT = 4240 };
enum { CL_QUEUE_DEVICE = 4241 };
enum { CL_QUEUE_REFERENCE_COUNT = 4242 };
enum { CL_QUEUE_PROPERTIES = 4243 };
enum { CL_QUEUE_SIZE = 4244 };
enum { CL_QUEUE_DEVICE_DEFAULT = 4245 };
enum { CL_QUEUE_PROPERTIES_ARRAY = 4248 };
enum { CL_MEM_READ_WRITE = 1 };
enum { CL_MEM_WRITE_ONLY = 2 };
enum { CL_MEM_READ_ONLY = 4 };
enum { CL_MEM_USE_HOST_PTR = 8 };
enum { CL_MEM_ALLOC_HOST_PTR = 16 };
enum { CL_MEM_COPY_HOST_PTR = 32 };
enum { CL_MEM_HOST_WRITE_ONLY = 128 };
enum { CL_MEM_HOST_READ_ONLY = 256 };
enum { CL_MEM_HOST_NO_ACCESS = 512 };
enum { CL_MEM_SVM_FINE_GRAIN_BUFFER = 1024 };
enum { CL_MEM_SVM_ATOMICS = 2048 };
enum { CL_MEM_KERNEL_READ_AND_WRITE = 4096 };
enum { CL_MIGRATE_MEM_OBJECT_HOST = 1 };
enum { CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED = 2 };
enum { CL_R = 4272 };
enum { CL_A = 4273 };
enum { CL_RG = 4274 };
enum { CL_RA = 4275 };
enum { CL_RGB = 4276 };
enum { CL_RGBA = 4277 };
enum { CL_BGRA = 4278 };
enum { CL_ARGB = 4279 };
enum { CL_INTENSITY = 4280 };
enum { CL_LUMINANCE = 4281 };
enum { CL_Rx = 4282 };
enum { CL_RGx = 4283 };
enum { CL_RGBx = 4284 };
enum { CL_DEPTH = 4285 };
enum { CL_DEPTH_STENCIL = 4286 };
enum { CL_sRGB = 4287 };
enum { CL_sRGBx = 4288 };
enum { CL_sRGBA = 4289 };
enum { CL_sBGRA = 4290 };
enum { CL_ABGR = 4291 };
enum { CL_SNORM_INT8 = 4304 };
enum { CL_SNORM_INT16 = 4305 };
enum { CL_UNORM_INT8 = 4306 };
enum { CL_UNORM_INT16 = 4307 };
enum { CL_UNORM_SHORT_565 = 4308 };
enum { CL_UNORM_SHORT_555 = 4309 };
enum { CL_UNORM_INT_101010 = 4310 };
enum { CL_SIGNED_INT8 = 4311 };
enum { CL_SIGNED_INT16 = 4312 };
enum { CL_SIGNED_INT32 = 4313 };
enum { CL_UNSIGNED_INT8 = 4314 };
enum { CL_UNSIGNED_INT16 = 4315 };
enum { CL_UNSIGNED_INT32 = 4316 };
enum { CL_HALF_FLOAT = 4317 };
enum { CL_FLOAT = 4318 };
enum { CL_UNORM_INT24 = 4319 };
enum { CL_UNORM_INT_101010_2 = 4320 };
enum { CL_MEM_OBJECT_BUFFER = 4336 };
enum { CL_MEM_OBJECT_IMAGE2D = 4337 };
enum { CL_MEM_OBJECT_IMAGE3D = 4338 };
enum { CL_MEM_OBJECT_IMAGE2D_ARRAY = 4339 };
enum { CL_MEM_OBJECT_IMAGE1D = 4340 };
enum { CL_MEM_OBJECT_IMAGE1D_ARRAY = 4341 };
enum { CL_MEM_OBJECT_IMAGE1D_BUFFER = 4342 };
enum { CL_MEM_OBJECT_PIPE = 4343 };
enum { CL_MEM_TYPE = 4352 };
enum { CL_MEM_FLAGS = 4353 };
enum { CL_MEM_SIZE = 4354 };
enum { CL_MEM_HOST_PTR = 4355 };
enum { CL_MEM_MAP_COUNT = 4356 };
enum { CL_MEM_REFERENCE_COUNT = 4357 };
enum { CL_MEM_CONTEXT = 4358 };
enum { CL_MEM_ASSOCIATED_MEMOBJECT = 4359 };
enum { CL_MEM_OFFSET = 4360 };
enum { CL_MEM_USES_SVM_POINTER = 4361 };
enum { CL_MEM_PROPERTIES = 4362 };
enum { CL_IMAGE_FORMAT = 4368 };
enum { CL_IMAGE_ELEMENT_SIZE = 4369 };
enum { CL_IMAGE_ROW_PITCH = 4370 };
enum { CL_IMAGE_SLICE_PITCH = 4371 };
enum { CL_IMAGE_WIDTH = 4372 };
enum { CL_IMAGE_HEIGHT = 4373 };
enum { CL_IMAGE_DEPTH = 4374 };
enum { CL_IMAGE_ARRAY_SIZE = 4375 };
enum { CL_IMAGE_BUFFER = 4376 };
enum { CL_IMAGE_NUM_MIP_LEVELS = 4377 };
enum { CL_IMAGE_NUM_SAMPLES = 4378 };
enum { CL_PIPE_PACKET_SIZE = 4384 };
enum { CL_PIPE_MAX_PACKETS = 4385 };
enum { CL_PIPE_PROPERTIES = 4386 };
enum { CL_ADDRESS_NONE = 4400 };
enum { CL_ADDRESS_CLAMP_TO_EDGE = 4401 };
enum { CL_ADDRESS_CLAMP = 4402 };
enum { CL_ADDRESS_REPEAT = 4403 };
enum { CL_ADDRESS_MIRRORED_REPEAT = 4404 };
enum { CL_FILTER_NEAREST = 4416 };
enum { CL_FILTER_LINEAR = 4417 };
enum { CL_SAMPLER_REFERENCE_COUNT = 4432 };
enum { CL_SAMPLER_CONTEXT = 4433 };
enum { CL_SAMPLER_NORMALIZED_COORDS = 4434 };
enum { CL_SAMPLER_ADDRESSING_MODE = 4435 };
enum { CL_SAMPLER_FILTER_MODE = 4436 };
enum { CL_SAMPLER_MIP_FILTER_MODE = 4437 };
enum { CL_SAMPLER_LOD_MIN = 4438 };
enum { CL_SAMPLER_LOD_MAX = 4439 };
enum { CL_SAMPLER_PROPERTIES = 4440 };
enum { CL_MAP_READ = 1 };
enum { CL_MAP_WRITE = 2 };
enum { CL_MAP_WRITE_INVALIDATE_REGION = 4 };
enum { CL_PROGRAM_REFERENCE_COUNT = 4448 };
enum { CL_PROGRAM_CONTEXT = 4449 };
enum { CL_PROGRAM_NUM_DEVICES = 4450 };
enum { CL_PROGRAM_DEVICES = 4451 };
enum { CL_PROGRAM_SOURCE = 4452 };
enum { CL_PROGRAM_BINARY_SIZES = 4453 };
enum { CL_PROGRAM_BINARIES = 4454 };
enum { CL_PROGRAM_NUM_KERNELS = 4455 };
enum { CL_PROGRAM_KERNEL_NAMES = 4456 };
enum { CL_PROGRAM_IL = 4457 };
enum { CL_PROGRAM_SCOPE_GLOBAL_CTORS_PRESENT = 4458 };
enum { CL_PROGRAM_SCOPE_GLOBAL_DTORS_PRESENT = 4459 };
enum { CL_PROGRAM_BUILD_STATUS = 4481 };
enum { CL_PROGRAM_BUILD_OPTIONS = 4482 };
enum { CL_PROGRAM_BUILD_LOG = 4483 };
enum { CL_PROGRAM_BINARY_TYPE = 4484 };
enum { CL_PROGRAM_BUILD_GLOBAL_VARIABLE_TOTAL_SIZE = 4485 };
enum { CL_PROGRAM_BINARY_TYPE_NONE = 0 };
enum { CL_PROGRAM_BINARY_TYPE_COMPILED_OBJECT = 1 };
enum { CL_PROGRAM_BINARY_TYPE_LIBRARY = 2 };
enum { CL_PROGRAM_BINARY_TYPE_EXECUTABLE = 4 };
enum { CL_BUILD_SUCCESS = 0 };
enum { CL_BUILD_NONE = -1 };
enum { CL_BUILD_ERROR = -2 };
enum { CL_BUILD_IN_PROGRESS = -3 };
enum { CL_KERNEL_FUNCTION_NAME = 4496 };
enum { CL_KERNEL_NUM_ARGS = 4497 };
enum { CL_KERNEL_REFERENCE_COUNT = 4498 };
enum { CL_KERNEL_CONTEXT = 4499 };
enum { CL_KERNEL_PROGRAM = 4500 };
enum { CL_KERNEL_ATTRIBUTES = 4501 };
enum { CL_KERNEL_ARG_ADDRESS_QUALIFIER = 4502 };
enum { CL_KERNEL_ARG_ACCESS_QUALIFIER = 4503 };
enum { CL_KERNEL_ARG_TYPE_NAME = 4504 };
enum { CL_KERNEL_ARG_TYPE_QUALIFIER = 4505 };
enum { CL_KERNEL_ARG_NAME = 4506 };
enum { CL_KERNEL_ARG_ADDRESS_GLOBAL = 4507 };
enum { CL_KERNEL_ARG_ADDRESS_LOCAL = 4508 };
enum { CL_KERNEL_ARG_ADDRESS_CONSTANT = 4509 };
enum { CL_KERNEL_ARG_ADDRESS_PRIVATE = 4510 };
enum { CL_KERNEL_ARG_ACCESS_READ_ONLY = 4512 };
enum { CL_KERNEL_ARG_ACCESS_WRITE_ONLY = 4513 };
enum { CL_KERNEL_ARG_ACCESS_READ_WRITE = 4514 };
enum { CL_KERNEL_ARG_ACCESS_NONE = 4515 };
enum { CL_KERNEL_ARG_TYPE_NONE = 0 };
enum { CL_KERNEL_ARG_TYPE_CONST = 1 };
enum { CL_KERNEL_ARG_TYPE_RESTRICT = 2 };
enum { CL_KERNEL_ARG_TYPE_VOLATILE = 4 };
enum { CL_KERNEL_ARG_TYPE_PIPE = 8 };
enum { CL_KERNEL_WORK_GROUP_SIZE = 4528 };
enum { CL_KERNEL_COMPILE_WORK_GROUP_SIZE = 4529 };
enum { CL_KERNEL_LOCAL_MEM_SIZE = 4530 };
enum { CL_KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE = 4531 };
enum { CL_KERNEL_PRIVATE_MEM_SIZE = 4532 };
enum { CL_KERNEL_GLOBAL_WORK_SIZE = 4533 };
enum { CL_KERNEL_MAX_SUB_GROUP_SIZE_FOR_NDRANGE = 8243 };
enum { CL_KERNEL_SUB_GROUP_COUNT_FOR_NDRANGE = 8244 };
enum { CL_KERNEL_LOCAL_SIZE_FOR_SUB_GROUP_COUNT = 4536 };
enum { CL_KERNEL_MAX_NUM_SUB_GROUPS = 4537 };
enum { CL_KERNEL_COMPILE_NUM_SUB_GROUPS = 4538 };
enum { CL_KERNEL_EXEC_INFO_SVM_PTRS = 4534 };
enum { CL_KERNEL_EXEC_INFO_SVM_FINE_GRAIN_SYSTEM = 4535 };
enum { CL_EVENT_COMMAND_QUEUE = 4560 };
enum { CL_EVENT_COMMAND_TYPE = 4561 };
enum { CL_EVENT_REFERENCE_COUNT = 4562 };
enum { CL_EVENT_COMMAND_EXECUTION_STATUS = 4563 };
enum { CL_EVENT_CONTEXT = 4564 };
enum { CL_COMMAND_NDRANGE_KERNEL = 4592 };
enum { CL_COMMAND_TASK = 4593 };
enum { CL_COMMAND_NATIVE_KERNEL = 4594 };
enum { CL_COMMAND_READ_BUFFER = 4595 };
enum { CL_COMMAND_WRITE_BUFFER = 4596 };
enum { CL_COMMAND_COPY_BUFFER = 4597 };
enum { CL_COMMAND_READ_IMAGE = 4598 };
enum { CL_COMMAND_WRITE_IMAGE = 4599 };
enum { CL_COMMAND_COPY_IMAGE = 4600 };
enum { CL_COMMAND_COPY_IMAGE_TO_BUFFER = 4601 };
enum { CL_COMMAND_COPY_BUFFER_TO_IMAGE = 4602 };
enum { CL_COMMAND_MAP_BUFFER = 4603 };
enum { CL_COMMAND_MAP_IMAGE = 4604 };
enum { CL_COMMAND_UNMAP_MEM_OBJECT = 4605 };
enum { CL_COMMAND_MARKER = 4606 };
enum { CL_COMMAND_ACQUIRE_GL_OBJECTS = 4607 };
enum { CL_COMMAND_RELEASE_GL_OBJECTS = 4608 };
enum { CL_COMMAND_READ_BUFFER_RECT = 4609 };
enum { CL_COMMAND_WRITE_BUFFER_RECT = 4610 };
enum { CL_COMMAND_COPY_BUFFER_RECT = 4611 };
enum { CL_COMMAND_USER = 4612 };
enum { CL_COMMAND_BARRIER = 4613 };
enum { CL_COMMAND_MIGRATE_MEM_OBJECTS = 4614 };
enum { CL_COMMAND_FILL_BUFFER = 4615 };
enum { CL_COMMAND_FILL_IMAGE = 4616 };
enum { CL_COMMAND_SVM_FREE = 4617 };
enum { CL_COMMAND_SVM_MEMCPY = 4618 };
enum { CL_COMMAND_SVM_MEMFILL = 4619 };
enum { CL_COMMAND_SVM_MAP = 4620 };
enum { CL_COMMAND_SVM_UNMAP = 4621 };
enum { CL_COMMAND_SVM_MIGRATE_MEM = 4622 };
enum { CL_COMPLETE = 0 };
enum { CL_RUNNING = 1 };
enum { CL_SUBMITTED = 2 };
enum { CL_QUEUED = 3 };
enum { CL_BUFFER_CREATE_TYPE_REGION = 4640 };
enum { CL_PROFILING_COMMAND_QUEUED = 4736 };
enum { CL_PROFILING_COMMAND_SUBMIT = 4737 };
enum { CL_PROFILING_COMMAND_START = 4738 };
enum { CL_PROFILING_COMMAND_END = 4739 };
enum { CL_PROFILING_COMMAND_COMPLETE = 4740 };
enum { CL_DEVICE_ATOMIC_ORDER_RELAXED = 1 };
enum { CL_DEVICE_ATOMIC_ORDER_ACQ_REL = 2 };
enum { CL_DEVICE_ATOMIC_ORDER_SEQ_CST = 4 };
enum { CL_DEVICE_ATOMIC_SCOPE_WORK_ITEM = 8 };
enum { CL_DEVICE_ATOMIC_SCOPE_WORK_GROUP = 16 };
enum { CL_DEVICE_ATOMIC_SCOPE_DEVICE = 32 };
enum { CL_DEVICE_ATOMIC_SCOPE_ALL_DEVICES = 64 };
enum { CL_DEVICE_QUEUE_SUPPORTED = 1 };
enum { CL_DEVICE_QUEUE_REPLACEABLE_DEFAULT = 2 };
enum { CL_KHRONOS_VENDOR_ID_CODEPLAY = 65540 };
enum { CL_VERSION_MAJOR_BITS = 10 };
enum { CL_VERSION_MINOR_BITS = 10 };
enum { CL_VERSION_PATCH_BITS = 12 };
enum { CL_VERSION_MAJOR_MASK = 1023 };
enum { CL_VERSION_MINOR_MASK = 1023 };
enum { CL_VERSION_PATCH_MASK = 4095 };
extern cl_int clGetPlatformIDs(cl_uint num_entries, cl_platform_id * platforms, cl_uint * num_platforms);
extern cl_int clGetPlatformInfo(cl_platform_id platform, cl_platform_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
extern cl_int clGetDeviceIDs(cl_platform_id platform, cl_device_type device_type, cl_uint num_entries, cl_device_id * devices, cl_uint * num_devices);
extern cl_int clGetDeviceInfo(cl_device_id device, cl_device_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
extern cl_int clCreateSubDevices(cl_device_id in_device, const cl_device_partition_property * properties, cl_uint num_devices, cl_device_id * out_devices, cl_uint * num_devices_ret);
extern cl_int clRetainDevice(cl_device_id device);
extern cl_int clReleaseDevice(cl_device_id device);
extern cl_int clSetDefaultDeviceCommandQueue(cl_context context, cl_device_id device, cl_command_queue command_queue);
extern cl_int clGetDeviceAndHostTimer(cl_device_id device, cl_ulong* device_timestamp, cl_ulong* host_timestamp);
extern cl_int clGetHostTimer(cl_device_id device, cl_ulong * host_timestamp);
extern cl_context clCreateContext(const cl_context_properties * properties, cl_uint num_devices, const cl_device_id * devices, void ( * pfn_notify)(const char * errinfo, const void * private_info, size_t cb, void * user_data), void * user_data, cl_int * errcode_ret);
extern cl_context clCreateContextFromType(const cl_context_properties * properties, cl_device_type device_type, void ( * pfn_notify)(const char * errinfo, const void * private_info, size_t cb, void * user_data), void * user_data, cl_int * errcode_ret);
extern cl_int clRetainContext(cl_context context);
extern cl_int clReleaseContext(cl_context context);
extern cl_int clGetContextInfo(cl_context context, cl_context_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
extern cl_int clSetContextDestructorCallback(cl_context context, void (* pfn_notify)(cl_context context, void* user_data), void* user_data);
extern cl_command_queue clCreateCommandQueueWithProperties(cl_context context, cl_device_id device, const cl_queue_properties * properties, cl_int * errcode_ret);
extern cl_int clRetainCommandQueue(cl_command_queue command_queue);
extern cl_int clReleaseCommandQueue(cl_command_queue command_queue);
extern cl_int clGetCommandQueueInfo(cl_command_queue command_queue, cl_command_queue_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
extern cl_mem clCreateBuffer(cl_context context, cl_mem_flags flags, size_t size, void * host_ptr, cl_int * errcode_ret);
extern cl_mem clCreateSubBuffer(cl_mem buffer, cl_mem_flags flags, cl_buffer_create_type buffer_create_type, const void * buffer_create_info, cl_int * errcode_ret);
extern cl_mem clCreateImage(cl_context context, cl_mem_flags flags, const cl_image_format * image_format, const cl_image_desc * image_desc, void * host_ptr, cl_int * errcode_ret);
extern cl_mem clCreatePipe(cl_context context, cl_mem_flags flags, cl_uint pipe_packet_size, cl_uint pipe_max_packets, const cl_pipe_properties * properties, cl_int * errcode_ret);
extern cl_mem clCreateBufferWithProperties(cl_context context, const cl_mem_properties * properties, cl_mem_flags flags, size_t size, void * host_ptr, cl_int * errcode_ret);
extern cl_mem clCreateImageWithProperties(cl_context context, const cl_mem_properties * properties, cl_mem_flags flags, const cl_image_format * image_format, const cl_image_desc * image_desc, void * host_ptr, cl_int * errcode_ret);
extern cl_int clRetainMemObject(cl_mem memobj);
extern cl_int clReleaseMemObject(cl_mem memobj);
extern cl_int clGetSupportedImageFormats(cl_context context, cl_mem_flags flags, cl_mem_object_type image_type, cl_uint num_entries, cl_image_format * image_formats, cl_uint * num_image_formats);
extern cl_int clGetMemObjectInfo(cl_mem memobj, cl_mem_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
extern cl_int clGetImageInfo(cl_mem image, cl_image_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
extern cl_int clGetPipeInfo(cl_mem pipe, cl_pipe_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
extern cl_int clSetMemObjectDestructorCallback(cl_mem memobj, void ( * pfn_notify)(cl_mem memobj, void * user_data), void * user_data);
extern void * clSVMAlloc(cl_context context, cl_svm_mem_flags flags, size_t size, cl_uint alignment);
extern void clSVMFree(cl_context context, void * svm_pointer);
extern cl_sampler clCreateSamplerWithProperties(cl_context context, const cl_sampler_properties * sampler_properties, cl_int * errcode_ret);
extern cl_int clRetainSampler(cl_sampler sampler);
extern cl_int clReleaseSampler(cl_sampler sampler);
extern cl_int clGetSamplerInfo(cl_sampler sampler, cl_sampler_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
extern cl_program clCreateProgramWithSource(cl_context context, cl_uint count, const char ** strings, const size_t * lengths, cl_int * errcode_ret);
extern cl_program clCreateProgramWithBinary(cl_context context, cl_uint num_devices, const cl_device_id * device_list, const size_t * lengths, const unsigned char ** binaries, cl_int * binary_status, cl_int * errcode_ret);
extern cl_program clCreateProgramWithBuiltInKernels(cl_context context, cl_uint num_devices, const cl_device_id * device_list, const char * kernel_names, cl_int * errcode_ret);
extern cl_program clCreateProgramWithIL(cl_context context, const void* il, size_t length, cl_int* errcode_ret);
extern cl_int clRetainProgram(cl_program program);
extern cl_int clReleaseProgram(cl_program program);
extern cl_int clBuildProgram(cl_program program, cl_uint num_devices, const cl_device_id * device_list, const char * options, void ( * pfn_notify)(cl_program program, void * user_data), void * user_data);
extern cl_int clCompileProgram(cl_program program, cl_uint num_devices, const cl_device_id * device_list, const char * options, cl_uint num_input_headers, const cl_program * input_headers, const char ** header_include_names, void ( * pfn_notify)(cl_program program, void * user_data), void * user_data);
extern cl_program clLinkProgram(cl_context context, cl_uint num_devices, const cl_device_id * device_list, const char * options, cl_uint num_input_programs, const cl_program * input_programs, void ( * pfn_notify)(cl_program program, void * user_data), void * user_data, cl_int * errcode_ret);
extern cl_int clSetProgramReleaseCallback(cl_program program, void ( * pfn_notify)(cl_program program, void * user_data), void * user_data) __attribute__((deprecated));
extern cl_int clSetProgramSpecializationConstant(cl_program program, cl_uint spec_id, size_t spec_size, const void* spec_value);
extern cl_int clUnloadPlatformCompiler(cl_platform_id platform);
extern cl_int clGetProgramInfo(cl_program program, cl_program_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
extern cl_int clGetProgramBuildInfo(cl_program program, cl_device_id device, cl_program_build_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
extern cl_kernel clCreateKernel(cl_program program, const char * kernel_name, cl_int * errcode_ret);
extern cl_int clCreateKernelsInProgram(cl_program program, cl_uint num_kernels, cl_kernel * kernels, cl_uint * num_kernels_ret);
extern cl_kernel clCloneKernel(cl_kernel source_kernel, cl_int* errcode_ret);
extern cl_int clRetainKernel(cl_kernel kernel);
extern cl_int clReleaseKernel(cl_kernel kernel);
extern cl_int clSetKernelArg(cl_kernel kernel, cl_uint arg_index, size_t arg_size, const void * arg_value);
extern cl_int clSetKernelArgSVMPointer(cl_kernel kernel, cl_uint arg_index, const void * arg_value);
extern cl_int clSetKernelExecInfo(cl_kernel kernel, cl_kernel_exec_info param_name, size_t param_value_size, const void * param_value);
extern cl_int clGetKernelInfo(cl_kernel kernel, cl_kernel_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
extern cl_int clGetKernelArgInfo(cl_kernel kernel, cl_uint arg_indx, cl_kernel_arg_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
extern cl_int clGetKernelWorkGroupInfo(cl_kernel kernel, cl_device_id device, cl_kernel_work_group_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
extern cl_int clGetKernelSubGroupInfo(cl_kernel kernel, cl_device_id device, cl_kernel_sub_group_info param_name, size_t input_value_size, const void* input_value, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
extern cl_int clWaitForEvents(cl_uint num_events, const cl_event * event_list);
extern cl_int clGetEventInfo(cl_event event, cl_event_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
extern cl_event clCreateUserEvent(cl_context context, cl_int * errcode_ret);
extern cl_int clRetainEvent(cl_event event);
extern cl_int clReleaseEvent(cl_event event);
extern cl_int clSetUserEventStatus(cl_event event, cl_int execution_status);
extern cl_int clSetEventCallback(cl_event event, cl_int command_exec_callback_type, void ( * pfn_notify)(cl_event event, cl_int event_command_status, void * user_data), void * user_data);
extern cl_int clGetEventProfilingInfo(cl_event event, cl_profiling_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
extern cl_int clFlush(cl_command_queue command_queue);
extern cl_int clFinish(cl_command_queue command_queue);
extern cl_int clEnqueueReadBuffer(cl_command_queue command_queue, cl_mem buffer, cl_bool blocking_read, size_t offset, size_t size, void * ptr, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueReadBufferRect(cl_command_queue command_queue, cl_mem buffer, cl_bool blocking_read, const size_t * buffer_origin, const size_t * host_origin, const size_t * region, size_t buffer_row_pitch, size_t buffer_slice_pitch, size_t host_row_pitch, size_t host_slice_pitch, void * ptr, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueWriteBuffer(cl_command_queue command_queue, cl_mem buffer, cl_bool blocking_write, size_t offset, size_t size, const void * ptr, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueWriteBufferRect(cl_command_queue command_queue, cl_mem buffer, cl_bool blocking_write, const size_t * buffer_origin, const size_t * host_origin, const size_t * region, size_t buffer_row_pitch, size_t buffer_slice_pitch, size_t host_row_pitch, size_t host_slice_pitch, const void * ptr, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueFillBuffer(cl_command_queue command_queue, cl_mem buffer, const void * pattern, size_t pattern_size, size_t offset, size_t size, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueCopyBuffer(cl_command_queue command_queue, cl_mem src_buffer, cl_mem dst_buffer, size_t src_offset, size_t dst_offset, size_t size, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueCopyBufferRect(cl_command_queue command_queue, cl_mem src_buffer, cl_mem dst_buffer, const size_t * src_origin, const size_t * dst_origin, const size_t * region, size_t src_row_pitch, size_t src_slice_pitch, size_t dst_row_pitch, size_t dst_slice_pitch, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueReadImage(cl_command_queue command_queue, cl_mem image, cl_bool blocking_read, const size_t * origin, const size_t * region, size_t row_pitch, size_t slice_pitch, void * ptr, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueWriteImage(cl_command_queue command_queue, cl_mem image, cl_bool blocking_write, const size_t * origin, const size_t * region, size_t input_row_pitch, size_t input_slice_pitch, const void * ptr, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueFillImage(cl_command_queue command_queue, cl_mem image, const void * fill_color, const size_t * origin, const size_t * region, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueCopyImage(cl_command_queue command_queue, cl_mem src_image, cl_mem dst_image, const size_t * src_origin, const size_t * dst_origin, const size_t * region, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueCopyImageToBuffer(cl_command_queue command_queue, cl_mem src_image, cl_mem dst_buffer, const size_t * src_origin, const size_t * region, size_t dst_offset, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueCopyBufferToImage(cl_command_queue command_queue, cl_mem src_buffer, cl_mem dst_image, size_t src_offset, const size_t * dst_origin, const size_t * region, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern void * clEnqueueMapBuffer(cl_command_queue command_queue, cl_mem buffer, cl_bool blocking_map, cl_map_flags map_flags, size_t offset, size_t size, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event, cl_int * errcode_ret);
extern void * clEnqueueMapImage(cl_command_queue command_queue, cl_mem image, cl_bool blocking_map, cl_map_flags map_flags, const size_t * origin, const size_t * region, size_t * image_row_pitch, size_t * image_slice_pitch, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event, cl_int * errcode_ret);
extern cl_int clEnqueueUnmapMemObject(cl_command_queue command_queue, cl_mem memobj, void * mapped_ptr, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueMigrateMemObjects(cl_command_queue command_queue, cl_uint num_mem_objects, const cl_mem * mem_objects, cl_mem_migration_flags flags, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueNDRangeKernel(cl_command_queue command_queue, cl_kernel kernel, cl_uint work_dim, const size_t * global_work_offset, const size_t * global_work_size, const size_t * local_work_size, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueNativeKernel(cl_command_queue command_queue, void ( * user_func)(void *), void * args, size_t cb_args, cl_uint num_mem_objects, const cl_mem * mem_list, const void ** args_mem_loc, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueMarkerWithWaitList(cl_command_queue command_queue, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueBarrierWithWaitList(cl_command_queue command_queue, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueSVMFree(cl_command_queue command_queue, cl_uint num_svm_pointers, void * svm_pointers[], void ( * pfn_free_func)(cl_command_queue queue, cl_uint num_svm_pointers, void * svm_pointers[], void * user_data), void * user_data, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueSVMMemcpy(cl_command_queue command_queue, cl_bool blocking_copy, void * dst_ptr, const void * src_ptr, size_t size, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueSVMMemFill(cl_command_queue command_queue, void * svm_ptr, const void * pattern, size_t pattern_size, size_t size, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueSVMMap(cl_command_queue command_queue, cl_bool blocking_map, cl_map_flags flags, void * svm_ptr, size_t size, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueSVMUnmap(cl_command_queue command_queue, void * svm_ptr, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueSVMMigrateMem(cl_command_queue command_queue, cl_uint num_svm_pointers, const void ** svm_pointers, const size_t * sizes, cl_mem_migration_flags flags, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern void * clGetExtensionFunctionAddressForPlatform(cl_platform_id platform, const char * func_name);
extern cl_mem clCreateImage2D(cl_context context, cl_mem_flags flags, const cl_image_format * image_format, size_t image_width, size_t image_height, size_t image_row_pitch, void * host_ptr, cl_int * errcode_ret) __attribute__((deprecated));
extern cl_mem clCreateImage3D(cl_context context, cl_mem_flags flags, const cl_image_format * image_format, size_t image_width, size_t image_height, size_t image_depth, size_t image_row_pitch, size_t image_slice_pitch, void * host_ptr, cl_int * errcode_ret) __attribute__((deprecated));
extern cl_int clEnqueueMarker(cl_command_queue command_queue, cl_event * event) __attribute__((deprecated));
extern cl_int clEnqueueWaitForEvents(cl_command_queue command_queue, cl_uint num_events, const cl_event * event_list) __attribute__((deprecated));
extern cl_int clEnqueueBarrier(cl_command_queue command_queue) __attribute__((deprecated));
extern cl_int clUnloadCompiler(void) __attribute__((deprecated));
extern void * clGetExtensionFunctionAddress(const char * func_name) __attribute__((deprecated));
extern cl_command_queue clCreateCommandQueue(cl_context context, cl_device_id device, cl_command_queue_properties properties, cl_int * errcode_ret) __attribute__((deprecated));
extern cl_sampler clCreateSampler(cl_context context, cl_bool normalized_coords, cl_addressing_mode addressing_mode, cl_filter_mode filter_mode, cl_int * errcode_ret) __attribute__((deprecated));
extern cl_int clEnqueueTask(cl_command_queue command_queue, cl_kernel kernel, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event) __attribute__((deprecated));
/* + END   /usr/include/CL/cl.h */
/* + BEGIN /usr/include/CL/cl_gl.h */
enum { __OPENCL_CL_GL_H = 1 };
/* ++ BEGIN /usr/include/CL/cl.h */
/* ++ END   /usr/include/CL/cl.h */
typedef cl_uint cl_gl_object_type;
typedef cl_uint cl_gl_texture_info;
typedef cl_uint cl_gl_platform_info;
typedef struct __GLsync *cl_GLsync;
enum { CL_GL_OBJECT_BUFFER = 8192 };
enum { CL_GL_OBJECT_TEXTURE2D = 8193 };
enum { CL_GL_OBJECT_TEXTURE3D = 8194 };
enum { CL_GL_OBJECT_RENDERBUFFER = 8195 };
enum { CL_GL_OBJECT_TEXTURE2D_ARRAY = 8206 };
enum { CL_GL_OBJECT_TEXTURE1D = 8207 };
enum { CL_GL_OBJECT_TEXTURE1D_ARRAY = 8208 };
enum { CL_GL_OBJECT_TEXTURE_BUFFER = 8209 };
enum { CL_GL_TEXTURE_TARGET = 8196 };
enum { CL_GL_MIPMAP_LEVEL = 8197 };
enum { CL_GL_NUM_SAMPLES = 8210 };
extern cl_mem clCreateFromGLBuffer(cl_context context, cl_mem_flags flags, cl_GLuint bufobj, cl_int * errcode_ret);
extern cl_mem clCreateFromGLTexture(cl_context context, cl_mem_flags flags, cl_GLenum target, cl_GLint miplevel, cl_GLuint texture, cl_int * errcode_ret);
extern cl_mem clCreateFromGLRenderbuffer(cl_context context, cl_mem_flags flags, cl_GLuint renderbuffer, cl_int * errcode_ret);
extern cl_int clGetGLObjectInfo(cl_mem memobj, cl_gl_object_type * gl_object_type, cl_GLuint * gl_object_name);
extern cl_int clGetGLTextureInfo(cl_mem memobj, cl_gl_texture_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
extern cl_int clEnqueueAcquireGLObjects(cl_command_queue command_queue, cl_uint num_objects, const cl_mem * mem_objects, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_int clEnqueueReleaseGLObjects(cl_command_queue command_queue, cl_uint num_objects, const cl_mem * mem_objects, cl_uint num_events_in_wait_list, const cl_event * event_wait_list, cl_event * event);
extern cl_mem clCreateFromGLTexture2D(cl_context context, cl_mem_flags flags, cl_GLenum target, cl_GLint miplevel, cl_GLuint texture, cl_int * errcode_ret) __attribute__((deprecated));
extern cl_mem clCreateFromGLTexture3D(cl_context context, cl_mem_flags flags, cl_GLenum target, cl_GLint miplevel, cl_GLuint texture, cl_int * errcode_ret) __attribute__((deprecated));
enum { cl_khr_gl_sharing = 1 };
typedef cl_uint cl_gl_context_info;
enum { CL_INVALID_GL_SHAREGROUP_REFERENCE_KHR = -1000 };
enum { CL_CURRENT_DEVICE_FOR_GL_CONTEXT_KHR = 8198 };
enum { CL_DEVICES_FOR_GL_CONTEXT_KHR = 8199 };
enum { CL_GL_CONTEXT_KHR = 8200 };
enum { CL_EGL_DISPLAY_KHR = 8201 };
enum { CL_GLX_DISPLAY_KHR = 8202 };
enum { CL_WGL_HDC_KHR = 8203 };
enum { CL_CGL_SHAREGROUP_KHR = 8204 };
extern cl_int clGetGLContextInfoKHR(const cl_context_properties * properties, cl_gl_context_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
typedef cl_int ( *clGetGLContextInfoKHR_fn)( const cl_context_properties * properties, cl_gl_context_info param_name, size_t param_value_size, void * param_value, size_t * param_value_size_ret);
enum { CL_COMMAND_GL_FENCE_SYNC_OBJECT_KHR = 8205 };
extern cl_event clCreateEventFromGLsyncKHR(cl_context context, cl_GLsync sync, cl_int * errcode_ret);
enum { cl_intel_sharing_format_query_gl = 1 };
extern cl_int clGetSupportedGLTextureFormatsINTEL( cl_context context, cl_mem_flags flags, cl_mem_object_type image_type, cl_uint num_entries, cl_GLenum* gl_formats, cl_uint* num_texture_formats);
typedef cl_int ( * clGetSupportedGLTextureFormatsINTEL_fn)( cl_context context, cl_mem_flags flags, cl_mem_object_type image_type, cl_uint num_entries, cl_GLenum* gl_formats, cl_uint* num_texture_formats);
/* + END   /usr/include/CL/cl_gl.h */
]]
return require 'ffi.load' 'OpenCL'
