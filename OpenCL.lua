local ffi = require 'ffi'
ffi.cdef[[
/* manually commented out: warning: Need to implement some method to align data here */
/* + BEGIN /usr/include/CL/opencl.h */
/* ++ BEGIN /usr/include/CL/cl.h */
/* +++ BEGIN /usr/include/CL/cl_version.h */
/* #pragma message("cl_version.h: CL_TARGET_OPENCL_VERSION is not defined. Defaulting to 300 (OpenCL 3.0)") */
enum { CL_TARGET_OPENCL_VERSION = 300 };
enum { CL_VERSION_3_0 = 1 };
enum { CL_VERSION_2_2 = 1 };
enum { CL_VERSION_2_1 = 1 };
enum { CL_VERSION_2_0 = 1 };
enum { CL_VERSION_1_2 = 1 };
enum { CL_VERSION_1_1 = 1 };
enum { CL_VERSION_1_0 = 1 };
/* +++ END   /usr/include/CL/cl_version.h */
/* +++ BEGIN /usr/include/CL/cl_platform.h */
/* ++++ BEGIN /usr/include/CL/cl_version.h */
/* ++++ END   /usr/include/CL/cl_version.h */
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
/* ++++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stdint.h */
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
/* #define CL_LONG_MIN         ((cl_long) -0x7FFFFFFFFFFFFFFFLL - 1LL) ### string, not number "-9.2233720368548e+18" */
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
/* #define CL_DBL_MAX          179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0 ### string, not number "179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0" */
/* #define CL_DBL_MIN          2.225073858507201383090e-308 ### string, not number "2.225073858507201383090e-308" */
/* #define CL_DBL_EPSILON      2.220446049250313080847e-16 ### string, not number "2.220446049250313080847e-16" */
/* #define CL_M_E              2.7182818284590452354 ### string, not number "2.7182818284590452354" */
/* #define CL_M_LOG2E          1.4426950408889634074 ### string, not number "1.4426950408889634074" */
/* #define CL_M_LOG10E         0.43429448190325182765 ### string, not number "0.43429448190325182765" */
/* #define CL_M_LN2            0.69314718055994530942 ### string, not number "0.69314718055994530942" */
/* #define CL_M_LN10           2.30258509299404568402 ### string, not number "2.30258509299404568402" */
/* #define CL_M_PI             3.14159265358979323846 ### string, not number "3.14159265358979323846" */
/* #define CL_M_PI_2           1.57079632679489661923 ### string, not number "1.57079632679489661923" */
/* #define CL_M_PI_4           0.78539816339744830962 ### string, not number "0.78539816339744830962" */
/* #define CL_M_1_PI           0.31830988618379067154 ### string, not number "0.31830988618379067154" */
/* #define CL_M_2_PI           0.63661977236758134308 ### string, not number "0.63661977236758134308" */
/* #define CL_M_2_SQRTPI       1.12837916709551257390 ### string, not number "1.12837916709551257390" */
/* #define CL_M_SQRT2          1.41421356237309504880 ### string, not number "1.41421356237309504880" */
/* #define CL_M_SQRT1_2        0.70710678118654752440 ### string, not number "0.70710678118654752440" */
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
/* ++++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
typedef unsigned int cl_GLuint;
typedef int cl_GLint;
typedef unsigned int cl_GLenum;
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
/* +++ END   /usr/include/CL/cl_platform.h */
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
/* ++ END   /usr/include/CL/cl.h */
/* ++ BEGIN /usr/include/CL/cl_gl.h */
enum { OPENCL_CL_GL_H_ = 1 };
/* +++ BEGIN /usr/include/CL/cl.h */
/* +++ END   /usr/include/CL/cl.h */
enum { cl_khr_gl_sharing = 1 };
/* #define CL_KHR_GL_SHARING_EXTENSION_NAME      "cl_khr_gl_sharing" ### string, not number "\"cl_khr_gl_sharing\"" */
typedef cl_uint cl_gl_context_info;
enum { CL_INVALID_GL_SHAREGROUP_REFERENCE_KHR = -1000 };
enum { CL_CURRENT_DEVICE_FOR_GL_CONTEXT_KHR = 8198 };
enum { CL_DEVICES_FOR_GL_CONTEXT_KHR = 8199 };
enum { CL_GL_CONTEXT_KHR = 8200 };
enum { CL_EGL_DISPLAY_KHR = 8201 };
enum { CL_GLX_DISPLAY_KHR = 8202 };
enum { CL_WGL_HDC_KHR = 8203 };
enum { CL_CGL_SHAREGROUP_KHR = 8204 };
typedef cl_uint cl_gl_object_type;
typedef cl_uint cl_gl_texture_info;
typedef cl_uint cl_gl_platform_info;
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
typedef cl_int ( * clGetGLContextInfoKHR_fn)( const cl_context_properties* properties, cl_gl_context_info param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
typedef cl_mem ( * clCreateFromGLBuffer_fn)( cl_context context, cl_mem_flags flags, cl_GLuint bufobj, cl_int* errcode_ret);
extern cl_int clGetGLContextInfoKHR( const cl_context_properties* properties, cl_gl_context_info param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
extern cl_mem clCreateFromGLBuffer( cl_context context, cl_mem_flags flags, cl_GLuint bufobj, cl_int* errcode_ret);
typedef cl_mem ( * clCreateFromGLTexture_fn)( cl_context context, cl_mem_flags flags, cl_GLenum target, cl_GLint miplevel, cl_GLuint texture, cl_int* errcode_ret);
extern cl_mem clCreateFromGLTexture( cl_context context, cl_mem_flags flags, cl_GLenum target, cl_GLint miplevel, cl_GLuint texture, cl_int* errcode_ret);
typedef cl_mem ( * clCreateFromGLRenderbuffer_fn)( cl_context context, cl_mem_flags flags, cl_GLuint renderbuffer, cl_int* errcode_ret);
typedef cl_int ( * clGetGLObjectInfo_fn)( cl_mem memobj, cl_gl_object_type* gl_object_type, cl_GLuint* gl_object_name);
typedef cl_int ( * clGetGLTextureInfo_fn)( cl_mem memobj, cl_gl_texture_info param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
typedef cl_int ( * clEnqueueAcquireGLObjects_fn)( cl_command_queue command_queue, cl_uint num_objects, const cl_mem* mem_objects, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_int ( * clEnqueueReleaseGLObjects_fn)( cl_command_queue command_queue, cl_uint num_objects, const cl_mem* mem_objects, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_mem clCreateFromGLRenderbuffer( cl_context context, cl_mem_flags flags, cl_GLuint renderbuffer, cl_int* errcode_ret);
extern cl_int clGetGLObjectInfo( cl_mem memobj, cl_gl_object_type* gl_object_type, cl_GLuint* gl_object_name);
extern cl_int clGetGLTextureInfo( cl_mem memobj, cl_gl_texture_info param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
extern cl_int clEnqueueAcquireGLObjects( cl_command_queue command_queue, cl_uint num_objects, const cl_mem* mem_objects, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueReleaseGLObjects( cl_command_queue command_queue, cl_uint num_objects, const cl_mem* mem_objects, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_mem ( * clCreateFromGLTexture2D_fn)( cl_context context, cl_mem_flags flags, cl_GLenum target, cl_GLint miplevel, cl_GLuint texture, cl_int* errcode_ret) __attribute__((deprecated));
typedef cl_mem ( * clCreateFromGLTexture3D_fn)( cl_context context, cl_mem_flags flags, cl_GLenum target, cl_GLint miplevel, cl_GLuint texture, cl_int* errcode_ret) __attribute__((deprecated));
extern cl_mem clCreateFromGLTexture2D( cl_context context, cl_mem_flags flags, cl_GLenum target, cl_GLint miplevel, cl_GLuint texture, cl_int* errcode_ret) __attribute__((deprecated));
extern cl_mem clCreateFromGLTexture3D( cl_context context, cl_mem_flags flags, cl_GLenum target, cl_GLint miplevel, cl_GLuint texture, cl_int* errcode_ret) __attribute__((deprecated));
enum { cl_khr_gl_event = 1 };
/* #define CL_KHR_GL_EVENT_EXTENSION_NAME      "cl_khr_gl_event" ### string, not number "\"cl_khr_gl_event\"" */
typedef struct __GLsync * cl_GLsync;
enum { CL_COMMAND_GL_FENCE_SYNC_OBJECT_KHR = 8205 };
typedef cl_event ( * clCreateEventFromGLsyncKHR_fn)( cl_context context, cl_GLsync sync, cl_int* errcode_ret);
extern cl_event clCreateEventFromGLsyncKHR( cl_context context, cl_GLsync sync, cl_int* errcode_ret);
enum { cl_khr_gl_depth_images = 1 };
/* #define CL_KHR_GL_DEPTH_IMAGES_EXTENSION_NAME      "cl_khr_gl_depth_images" ### string, not number "\"cl_khr_gl_depth_images\"" */
enum { cl_khr_gl_msaa_sharing = 1 };
/* #define CL_KHR_GL_MSAA_SHARING_EXTENSION_NAME      "cl_khr_gl_msaa_sharing" ### string, not number "\"cl_khr_gl_msaa_sharing\"" */
enum { CL_GL_NUM_SAMPLES = 8210 };
enum { cl_intel_sharing_format_query_gl = 1 };
/* #define CL_INTEL_SHARING_FORMAT_QUERY_GL_EXTENSION_NAME      "cl_intel_sharing_format_query_gl" ### string, not number "\"cl_intel_sharing_format_query_gl\"" */
typedef cl_int ( * clGetSupportedGLTextureFormatsINTEL_fn)( cl_context context, cl_mem_flags flags, cl_mem_object_type image_type, cl_uint num_entries, cl_GLenum* gl_formats, cl_uint* num_texture_formats);
extern cl_int clGetSupportedGLTextureFormatsINTEL( cl_context context, cl_mem_flags flags, cl_mem_object_type image_type, cl_uint num_entries, cl_GLenum* gl_formats, cl_uint* num_texture_formats);
/* ++ END   /usr/include/CL/cl_gl.h */
/* ++ BEGIN /usr/include/CL/cl_ext.h */
enum { OPENCL_CL_EXT_H_ = 1 };
/* +++ BEGIN /usr/include/CL/cl.h */
/* +++ END   /usr/include/CL/cl.h */
enum { cl_khr_command_buffer = 1 };
/* #define CL_KHR_COMMAND_BUFFER_EXTENSION_NAME      "cl_khr_command_buffer" ### string, not number "\"cl_khr_command_buffer\"" */
typedef cl_bitfield cl_device_command_buffer_capabilities_khr;
typedef struct _cl_command_buffer_khr* cl_command_buffer_khr;
typedef cl_uint cl_sync_point_khr;
typedef cl_uint cl_command_buffer_info_khr;
typedef cl_uint cl_command_buffer_state_khr;
typedef cl_properties cl_command_buffer_properties_khr;
typedef cl_bitfield cl_command_buffer_flags_khr;
typedef cl_properties cl_ndrange_kernel_command_properties_khr;
typedef struct _cl_mutable_command_khr* cl_mutable_command_khr;
enum { CL_DEVICE_COMMAND_BUFFER_CAPABILITIES_KHR = 4777 };
enum { CL_DEVICE_COMMAND_BUFFER_REQUIRED_QUEUE_PROPERTIES_KHR = 4778 };
enum { CL_COMMAND_BUFFER_CAPABILITY_KERNEL_PRINTF_KHR = 1 };
enum { CL_COMMAND_BUFFER_CAPABILITY_DEVICE_SIDE_ENQUEUE_KHR = 2 };
enum { CL_COMMAND_BUFFER_CAPABILITY_SIMULTANEOUS_USE_KHR = 4 };
enum { CL_COMMAND_BUFFER_CAPABILITY_OUT_OF_ORDER_KHR = 8 };
enum { CL_COMMAND_BUFFER_FLAGS_KHR = 4755 };
enum { CL_COMMAND_BUFFER_SIMULTANEOUS_USE_KHR = 1 };
enum { CL_INVALID_COMMAND_BUFFER_KHR = -1138 };
enum { CL_INVALID_SYNC_POINT_WAIT_LIST_KHR = -1139 };
enum { CL_INCOMPATIBLE_COMMAND_QUEUE_KHR = -1140 };
enum { CL_COMMAND_BUFFER_QUEUES_KHR = 4756 };
enum { CL_COMMAND_BUFFER_NUM_QUEUES_KHR = 4757 };
enum { CL_COMMAND_BUFFER_REFERENCE_COUNT_KHR = 4758 };
enum { CL_COMMAND_BUFFER_STATE_KHR = 4759 };
enum { CL_COMMAND_BUFFER_PROPERTIES_ARRAY_KHR = 4760 };
enum { CL_COMMAND_BUFFER_CONTEXT_KHR = 4761 };
enum { CL_COMMAND_BUFFER_STATE_RECORDING_KHR = 0 };
enum { CL_COMMAND_BUFFER_STATE_EXECUTABLE_KHR = 1 };
enum { CL_COMMAND_BUFFER_STATE_PENDING_KHR = 2 };
enum { CL_COMMAND_BUFFER_STATE_INVALID_KHR = 3 };
enum { CL_COMMAND_COMMAND_BUFFER_KHR = 4776 };
typedef cl_command_buffer_khr ( * clCreateCommandBufferKHR_fn)( cl_uint num_queues, const cl_command_queue* queues, const cl_command_buffer_properties_khr* properties, cl_int* errcode_ret);
typedef cl_int ( * clFinalizeCommandBufferKHR_fn)( cl_command_buffer_khr command_buffer);
typedef cl_int ( * clRetainCommandBufferKHR_fn)( cl_command_buffer_khr command_buffer);
typedef cl_int ( * clReleaseCommandBufferKHR_fn)( cl_command_buffer_khr command_buffer);
typedef cl_int ( * clEnqueueCommandBufferKHR_fn)( cl_uint num_queues, cl_command_queue* queues, cl_command_buffer_khr command_buffer, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_int ( * clCommandBarrierWithWaitListKHR_fn)( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
typedef cl_int ( * clCommandCopyBufferKHR_fn)( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, cl_mem src_buffer, cl_mem dst_buffer, size_t src_offset, size_t dst_offset, size_t size, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
typedef cl_int ( * clCommandCopyBufferRectKHR_fn)( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, cl_mem src_buffer, cl_mem dst_buffer, const size_t* src_origin, const size_t* dst_origin, const size_t* region, size_t src_row_pitch, size_t src_slice_pitch, size_t dst_row_pitch, size_t dst_slice_pitch, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
typedef cl_int ( * clCommandCopyBufferToImageKHR_fn)( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, cl_mem src_buffer, cl_mem dst_image, size_t src_offset, const size_t* dst_origin, const size_t* region, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
typedef cl_int ( * clCommandCopyImageKHR_fn)( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, cl_mem src_image, cl_mem dst_image, const size_t* src_origin, const size_t* dst_origin, const size_t* region, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
typedef cl_int ( * clCommandCopyImageToBufferKHR_fn)( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, cl_mem src_image, cl_mem dst_buffer, const size_t* src_origin, const size_t* region, size_t dst_offset, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
typedef cl_int ( * clCommandFillBufferKHR_fn)( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, cl_mem buffer, const void* pattern, size_t pattern_size, size_t offset, size_t size, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
typedef cl_int ( * clCommandFillImageKHR_fn)( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, cl_mem image, const void* fill_color, const size_t* origin, const size_t* region, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
typedef cl_int ( * clCommandNDRangeKernelKHR_fn)( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, const cl_ndrange_kernel_command_properties_khr* properties, cl_kernel kernel, cl_uint work_dim, const size_t* global_work_offset, const size_t* global_work_size, const size_t* local_work_size, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
typedef cl_int ( * clGetCommandBufferInfoKHR_fn)( cl_command_buffer_khr command_buffer, cl_command_buffer_info_khr param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
extern cl_command_buffer_khr clCreateCommandBufferKHR( cl_uint num_queues, const cl_command_queue* queues, const cl_command_buffer_properties_khr* properties, cl_int* errcode_ret);
extern cl_int clFinalizeCommandBufferKHR( cl_command_buffer_khr command_buffer);
extern cl_int clRetainCommandBufferKHR( cl_command_buffer_khr command_buffer);
extern cl_int clReleaseCommandBufferKHR( cl_command_buffer_khr command_buffer);
extern cl_int clEnqueueCommandBufferKHR( cl_uint num_queues, cl_command_queue* queues, cl_command_buffer_khr command_buffer, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clCommandBarrierWithWaitListKHR( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
extern cl_int clCommandCopyBufferKHR( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, cl_mem src_buffer, cl_mem dst_buffer, size_t src_offset, size_t dst_offset, size_t size, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
extern cl_int clCommandCopyBufferRectKHR( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, cl_mem src_buffer, cl_mem dst_buffer, const size_t* src_origin, const size_t* dst_origin, const size_t* region, size_t src_row_pitch, size_t src_slice_pitch, size_t dst_row_pitch, size_t dst_slice_pitch, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
extern cl_int clCommandCopyBufferToImageKHR( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, cl_mem src_buffer, cl_mem dst_image, size_t src_offset, const size_t* dst_origin, const size_t* region, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
extern cl_int clCommandCopyImageKHR( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, cl_mem src_image, cl_mem dst_image, const size_t* src_origin, const size_t* dst_origin, const size_t* region, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
extern cl_int clCommandCopyImageToBufferKHR( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, cl_mem src_image, cl_mem dst_buffer, const size_t* src_origin, const size_t* region, size_t dst_offset, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
extern cl_int clCommandFillBufferKHR( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, cl_mem buffer, const void* pattern, size_t pattern_size, size_t offset, size_t size, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
extern cl_int clCommandFillImageKHR( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, cl_mem image, const void* fill_color, const size_t* origin, const size_t* region, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
extern cl_int clCommandNDRangeKernelKHR( cl_command_buffer_khr command_buffer, cl_command_queue command_queue, const cl_ndrange_kernel_command_properties_khr* properties, cl_kernel kernel, cl_uint work_dim, const size_t* global_work_offset, const size_t* global_work_size, const size_t* local_work_size, cl_uint num_sync_points_in_wait_list, const cl_sync_point_khr* sync_point_wait_list, cl_sync_point_khr* sync_point, cl_mutable_command_khr* mutable_handle);
extern cl_int clGetCommandBufferInfoKHR( cl_command_buffer_khr command_buffer, cl_command_buffer_info_khr param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
enum { cl_khr_command_buffer_multi_device = 1 };
/* #define CL_KHR_COMMAND_BUFFER_MULTI_DEVICE_EXTENSION_NAME      "cl_khr_command_buffer_multi_device" ### string, not number "\"cl_khr_command_buffer_multi_device\"" */
typedef cl_bitfield cl_platform_command_buffer_capabilities_khr;
enum { CL_PLATFORM_COMMAND_BUFFER_CAPABILITIES_KHR = 2312 };
enum { CL_COMMAND_BUFFER_PLATFORM_UNIVERSAL_SYNC_KHR = 1 };
enum { CL_COMMAND_BUFFER_PLATFORM_REMAP_QUEUES_KHR = 2 };
enum { CL_COMMAND_BUFFER_PLATFORM_AUTOMATIC_REMAP_KHR = 4 };
enum { CL_DEVICE_COMMAND_BUFFER_NUM_SYNC_DEVICES_KHR = 4779 };
enum { CL_DEVICE_COMMAND_BUFFER_SYNC_DEVICES_KHR = 4780 };
enum { CL_COMMAND_BUFFER_CAPABILITY_MULTIPLE_QUEUE_KHR = 16 };
enum { CL_COMMAND_BUFFER_DEVICE_SIDE_SYNC_KHR = 4 };
typedef cl_command_buffer_khr ( * clRemapCommandBufferKHR_fn)( cl_command_buffer_khr command_buffer, cl_bool automatic, cl_uint num_queues, const cl_command_queue* queues, cl_uint num_handles, const cl_mutable_command_khr* handles, cl_mutable_command_khr* handles_ret, cl_int* errcode_ret);
extern cl_command_buffer_khr clRemapCommandBufferKHR( cl_command_buffer_khr command_buffer, cl_bool automatic, cl_uint num_queues, const cl_command_queue* queues, cl_uint num_handles, const cl_mutable_command_khr* handles, cl_mutable_command_khr* handles_ret, cl_int* errcode_ret);
enum { cl_khr_command_buffer_mutable_dispatch = 1 };
/* #define CL_KHR_COMMAND_BUFFER_MUTABLE_DISPATCH_EXTENSION_NAME      "cl_khr_command_buffer_mutable_dispatch" ### string, not number "\"cl_khr_command_buffer_mutable_dispatch\"" */
typedef cl_uint cl_command_buffer_structure_type_khr;
typedef cl_bitfield cl_mutable_dispatch_fields_khr;
typedef cl_uint cl_mutable_command_info_khr;
typedef struct _cl_mutable_dispatch_arg_khr {
	cl_uint arg_index;
	size_t arg_size;
	const void* arg_value;
} cl_mutable_dispatch_arg_khr;
typedef struct _cl_mutable_dispatch_exec_info_khr {
	cl_uint param_name;
	size_t param_value_size;
	const void* param_value;
} cl_mutable_dispatch_exec_info_khr;
typedef struct _cl_mutable_dispatch_config_khr {
	cl_command_buffer_structure_type_khr type;
	const void* next;
	cl_mutable_command_khr command;
	cl_uint num_args;
	cl_uint num_svm_args;
	cl_uint num_exec_infos;
	cl_uint work_dim;
	const cl_mutable_dispatch_arg_khr* arg_list;
	const cl_mutable_dispatch_arg_khr* arg_svm_list;
	const cl_mutable_dispatch_exec_info_khr* exec_info_list;
	const size_t* global_work_offset;
	const size_t* global_work_size;
	const size_t* local_work_size;
} cl_mutable_dispatch_config_khr;
typedef struct _cl_mutable_base_config_khr {
	cl_command_buffer_structure_type_khr type;
	const void* next;
	cl_uint num_mutable_dispatch;
	const cl_mutable_dispatch_config_khr* mutable_dispatch_list;
} cl_mutable_base_config_khr;
enum { CL_COMMAND_BUFFER_MUTABLE_KHR = 2 };
enum { CL_INVALID_MUTABLE_COMMAND_KHR = -1141 };
enum { CL_DEVICE_MUTABLE_DISPATCH_CAPABILITIES_KHR = 4784 };
enum { CL_MUTABLE_DISPATCH_UPDATABLE_FIELDS_KHR = 4785 };
enum { CL_MUTABLE_DISPATCH_GLOBAL_OFFSET_KHR = 1 };
enum { CL_MUTABLE_DISPATCH_GLOBAL_SIZE_KHR = 2 };
enum { CL_MUTABLE_DISPATCH_LOCAL_SIZE_KHR = 4 };
enum { CL_MUTABLE_DISPATCH_ARGUMENTS_KHR = 8 };
enum { CL_MUTABLE_DISPATCH_EXEC_INFO_KHR = 16 };
enum { CL_MUTABLE_COMMAND_COMMAND_QUEUE_KHR = 4768 };
enum { CL_MUTABLE_COMMAND_COMMAND_BUFFER_KHR = 4769 };
enum { CL_MUTABLE_COMMAND_COMMAND_TYPE_KHR = 4781 };
enum { CL_MUTABLE_DISPATCH_PROPERTIES_ARRAY_KHR = 4770 };
enum { CL_MUTABLE_DISPATCH_KERNEL_KHR = 4771 };
enum { CL_MUTABLE_DISPATCH_DIMENSIONS_KHR = 4772 };
enum { CL_MUTABLE_DISPATCH_GLOBAL_WORK_OFFSET_KHR = 4773 };
enum { CL_MUTABLE_DISPATCH_GLOBAL_WORK_SIZE_KHR = 4774 };
enum { CL_MUTABLE_DISPATCH_LOCAL_WORK_SIZE_KHR = 4775 };
enum { CL_STRUCTURE_TYPE_MUTABLE_BASE_CONFIG_KHR = 0 };
enum { CL_STRUCTURE_TYPE_MUTABLE_DISPATCH_CONFIG_KHR = 1 };
typedef cl_int ( * clUpdateMutableCommandsKHR_fn)( cl_command_buffer_khr command_buffer, const cl_mutable_base_config_khr* mutable_config);
typedef cl_int ( * clGetMutableCommandInfoKHR_fn)( cl_mutable_command_khr command, cl_mutable_command_info_khr param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
extern cl_int clUpdateMutableCommandsKHR( cl_command_buffer_khr command_buffer, const cl_mutable_base_config_khr* mutable_config);
extern cl_int clGetMutableCommandInfoKHR( cl_mutable_command_khr command, cl_mutable_command_info_khr param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
enum { cl_khr_fp64 = 1 };
/* #define CL_KHR_FP64_EXTENSION_NAME      "cl_khr_fp64" ### string, not number "\"cl_khr_fp64\"" */
enum { cl_khr_fp16 = 1 };
/* #define CL_KHR_FP16_EXTENSION_NAME      "cl_khr_fp16" ### string, not number "\"cl_khr_fp16\"" */
enum { CL_DEVICE_HALF_FP_CONFIG = 4147 };
enum { cl_APPLE_SetMemObjectDestructor = 1 };
/* #define CL_APPLE_SETMEMOBJECTDESTRUCTOR_EXTENSION_NAME      "cl_APPLE_SetMemObjectDestructor" ### string, not number "\"cl_APPLE_SetMemObjectDestructor\"" */
typedef cl_int ( * clSetMemObjectDestructorAPPLE_fn)( cl_mem memobj, void (* pfn_notify)(cl_mem memobj, void* user_data), void* user_data);
extern cl_int clSetMemObjectDestructorAPPLE( cl_mem memobj, void (* pfn_notify)(cl_mem memobj, void* user_data), void* user_data);
enum { cl_APPLE_ContextLoggingFunctions = 1 };
/* #define CL_APPLE_CONTEXTLOGGINGFUNCTIONS_EXTENSION_NAME      "cl_APPLE_ContextLoggingFunctions" ### string, not number "\"cl_APPLE_ContextLoggingFunctions\"" */
typedef void ( * clLogMessagesToSystemLogAPPLE_fn)( const char* errstr, const void* private_info, size_t cb, void* user_data);
typedef void ( * clLogMessagesToStdoutAPPLE_fn)( const char* errstr, const void* private_info, size_t cb, void* user_data);
typedef void ( * clLogMessagesToStderrAPPLE_fn)( const char* errstr, const void* private_info, size_t cb, void* user_data);
extern void clLogMessagesToSystemLogAPPLE( const char* errstr, const void* private_info, size_t cb, void* user_data);
extern void clLogMessagesToStdoutAPPLE( const char* errstr, const void* private_info, size_t cb, void* user_data);
extern void clLogMessagesToStderrAPPLE( const char* errstr, const void* private_info, size_t cb, void* user_data);
enum { cl_khr_icd = 1 };
/* #define CL_KHR_ICD_EXTENSION_NAME      "cl_khr_icd" ### string, not number "\"cl_khr_icd\"" */
enum { CL_PLATFORM_ICD_SUFFIX_KHR = 2336 };
enum { CL_PLATFORM_NOT_FOUND_KHR = -1001 };
typedef cl_int ( * clIcdGetPlatformIDsKHR_fn)( cl_uint num_entries, cl_platform_id* platforms, cl_uint* num_platforms);
extern cl_int clIcdGetPlatformIDsKHR( cl_uint num_entries, cl_platform_id* platforms, cl_uint* num_platforms);
enum { cl_khr_il_program = 1 };
/* #define CL_KHR_IL_PROGRAM_EXTENSION_NAME      "cl_khr_il_program" ### string, not number "\"cl_khr_il_program\"" */
enum { CL_DEVICE_IL_VERSION_KHR = 4187 };
enum { CL_PROGRAM_IL_KHR = 4457 };
typedef cl_program ( * clCreateProgramWithILKHR_fn)( cl_context context, const void* il, size_t length, cl_int* errcode_ret);
extern cl_program clCreateProgramWithILKHR( cl_context context, const void* il, size_t length, cl_int* errcode_ret);
enum { cl_khr_image2d_from_buffer = 1 };
/* #define CL_KHR_IMAGE2D_FROM_BUFFER_EXTENSION_NAME      "cl_khr_image2d_from_buffer" ### string, not number "\"cl_khr_image2d_from_buffer\"" */
enum { CL_DEVICE_IMAGE_PITCH_ALIGNMENT_KHR = 4170 };
enum { CL_DEVICE_IMAGE_BASE_ADDRESS_ALIGNMENT_KHR = 4171 };
enum { cl_khr_initialize_memory = 1 };
/* #define CL_KHR_INITIALIZE_MEMORY_EXTENSION_NAME      "cl_khr_initialize_memory" ### string, not number "\"cl_khr_initialize_memory\"" */
enum { CL_CONTEXT_MEMORY_INITIALIZE_KHR = 8240 };
enum { cl_khr_terminate_context = 1 };
/* #define CL_KHR_TERMINATE_CONTEXT_EXTENSION_NAME      "cl_khr_terminate_context" ### string, not number "\"cl_khr_terminate_context\"" */
typedef cl_bitfield cl_device_terminate_capability_khr;
enum { CL_DEVICE_TERMINATE_CAPABILITY_KHR = 8241 };
enum { CL_CONTEXT_TERMINATE_KHR = 8242 };
enum { CL_DEVICE_TERMINATE_CAPABILITY_CONTEXT_KHR = 1 };
enum { CL_CONTEXT_TERMINATED_KHR = -1121 };
typedef cl_int ( * clTerminateContextKHR_fn)( cl_context context);
extern cl_int clTerminateContextKHR( cl_context context);
enum { cl_khr_spir = 1 };
/* #define CL_KHR_SPIR_EXTENSION_NAME      "cl_khr_spir" ### string, not number "\"cl_khr_spir\"" */
enum { CL_DEVICE_SPIR_VERSIONS = 16608 };
enum { CL_PROGRAM_BINARY_TYPE_INTERMEDIATE = 16609 };
enum { cl_khr_create_command_queue = 1 };
/* #define CL_KHR_CREATE_COMMAND_QUEUE_EXTENSION_NAME      "cl_khr_create_command_queue" ### string, not number "\"cl_khr_create_command_queue\"" */
typedef cl_properties cl_queue_properties_khr;
typedef cl_command_queue ( * clCreateCommandQueueWithPropertiesKHR_fn)( cl_context context, cl_device_id device, const cl_queue_properties_khr* properties, cl_int* errcode_ret);
extern cl_command_queue clCreateCommandQueueWithPropertiesKHR( cl_context context, cl_device_id device, const cl_queue_properties_khr* properties, cl_int* errcode_ret);
enum { cl_nv_device_attribute_query = 1 };
/* #define CL_NV_DEVICE_ATTRIBUTE_QUERY_EXTENSION_NAME      "cl_nv_device_attribute_query" ### string, not number "\"cl_nv_device_attribute_query\"" */
enum { CL_DEVICE_COMPUTE_CAPABILITY_MAJOR_NV = 16384 };
enum { CL_DEVICE_COMPUTE_CAPABILITY_MINOR_NV = 16385 };
enum { CL_DEVICE_REGISTERS_PER_BLOCK_NV = 16386 };
enum { CL_DEVICE_WARP_SIZE_NV = 16387 };
enum { CL_DEVICE_GPU_OVERLAP_NV = 16388 };
enum { CL_DEVICE_KERNEL_EXEC_TIMEOUT_NV = 16389 };
enum { CL_DEVICE_INTEGRATED_MEMORY_NV = 16390 };
enum { cl_amd_device_memory_flags = 1 };
enum { CL_MEM_USE_PERSISTENT_MEM_AMD = 64 };
enum { CL_DEVICE_MAX_ATOMIC_COUNTERS_EXT = 16434 };
enum { cl_amd_device_attribute_query = 1 };
/* #define CL_AMD_DEVICE_ATTRIBUTE_QUERY_EXTENSION_NAME      "cl_amd_device_attribute_query" ### string, not number "\"cl_amd_device_attribute_query\"" */
enum { CL_DEVICE_PROFILING_TIMER_OFFSET_AMD = 16438 };
enum { CL_DEVICE_TOPOLOGY_AMD = 16439 };
enum { CL_DEVICE_BOARD_NAME_AMD = 16440 };
enum { CL_DEVICE_GLOBAL_FREE_MEMORY_AMD = 16441 };
enum { CL_DEVICE_SIMD_PER_COMPUTE_UNIT_AMD = 16448 };
enum { CL_DEVICE_SIMD_WIDTH_AMD = 16449 };
enum { CL_DEVICE_SIMD_INSTRUCTION_WIDTH_AMD = 16450 };
enum { CL_DEVICE_WAVEFRONT_WIDTH_AMD = 16451 };
enum { CL_DEVICE_GLOBAL_MEM_CHANNELS_AMD = 16452 };
enum { CL_DEVICE_GLOBAL_MEM_CHANNEL_BANKS_AMD = 16453 };
enum { CL_DEVICE_GLOBAL_MEM_CHANNEL_BANK_WIDTH_AMD = 16454 };
enum { CL_DEVICE_LOCAL_MEM_SIZE_PER_COMPUTE_UNIT_AMD = 16455 };
enum { CL_DEVICE_LOCAL_MEM_BANKS_AMD = 16456 };
enum { CL_DEVICE_THREAD_TRACE_SUPPORTED_AMD = 16457 };
enum { CL_DEVICE_GFXIP_MAJOR_AMD = 16458 };
enum { CL_DEVICE_GFXIP_MINOR_AMD = 16459 };
enum { CL_DEVICE_AVAILABLE_ASYNC_QUEUES_AMD = 16460 };
enum { CL_DEVICE_PREFERRED_WORK_GROUP_SIZE_AMD = 16432 };
enum { CL_DEVICE_MAX_WORK_GROUP_SIZE_AMD = 16433 };
enum { CL_DEVICE_PREFERRED_CONSTANT_BUFFER_SIZE_AMD = 16435 };
enum { CL_DEVICE_PCIE_ID_AMD = 16436 };
typedef union { struct { cl_uint type; cl_uint data[5]; } raw;
struct { cl_uint type; cl_char unused[17]; cl_char bus; cl_char device; cl_char function; } pcie;
} cl_device_topology_amd;
enum { CL_DEVICE_TOPOLOGY_TYPE_PCIE_AMD = 1 };
enum { CL_CONTEXT_OFFLINE_DEVICES_AMD = 16447 };
enum { cl_arm_printf = 1 };
/* #define CL_ARM_PRINTF_EXTENSION_NAME      "cl_arm_printf" ### string, not number "\"cl_arm_printf\"" */
enum { CL_PRINTF_CALLBACK_ARM = 16560 };
enum { CL_PRINTF_BUFFERSIZE_ARM = 16561 };
enum { cl_ext_device_fission = 1 };
/* #define CL_EXT_DEVICE_FISSION_EXTENSION_NAME      "cl_ext_device_fission" ### string, not number "\"cl_ext_device_fission\"" */
typedef cl_ulong cl_device_partition_property_ext;
enum { CL_DEVICE_PARTITION_FAILED_EXT = -1057 };
enum { CL_INVALID_PARTITION_COUNT_EXT = -1058 };
enum { CL_INVALID_PARTITION_NAME_EXT = -1059 };
enum { CL_DEVICE_PARENT_DEVICE_EXT = 16468 };
enum { CL_DEVICE_PARTITION_TYPES_EXT = 16469 };
enum { CL_DEVICE_AFFINITY_DOMAINS_EXT = 16470 };
enum { CL_DEVICE_REFERENCE_COUNT_EXT = 16471 };
enum { CL_DEVICE_PARTITION_STYLE_EXT = 16472 };
enum { CL_DEVICE_PARTITION_EQUALLY_EXT = 16464 };
enum { CL_DEVICE_PARTITION_BY_COUNTS_EXT = 16465 };
enum { CL_DEVICE_PARTITION_BY_NAMES_EXT = 16466 };
enum { CL_DEVICE_PARTITION_BY_AFFINITY_DOMAIN_EXT = 16467 };
enum { CL_AFFINITY_DOMAIN_L1_CACHE_EXT = 1 };
enum { CL_AFFINITY_DOMAIN_L2_CACHE_EXT = 2 };
enum { CL_AFFINITY_DOMAIN_L3_CACHE_EXT = 3 };
enum { CL_AFFINITY_DOMAIN_L4_CACHE_EXT = 4 };
enum { CL_AFFINITY_DOMAIN_NUMA_EXT = 16 };
enum { CL_AFFINITY_DOMAIN_NEXT_FISSIONABLE_EXT = 256 };
/* #define CL_PROPERTIES_LIST_END_EXT                          ((cl_device_partition_property_ext)0) ### string, not number "((cl_device_partition_property_ext)0)" */
/* #define CL_PARTITION_BY_COUNTS_LIST_END_EXT                 ((cl_device_partition_property_ext)0) ### string, not number "((cl_device_partition_property_ext)0)" */
/* #define CL_PARTITION_BY_NAMES_LIST_END_EXT                  ((cl_device_partition_property_ext)0 - 1) ### string, not number "((cl_device_partition_property_ext)0 - 1)" */
typedef cl_int ( * clReleaseDeviceEXT_fn)( cl_device_id device);
typedef cl_int ( * clRetainDeviceEXT_fn)( cl_device_id device);
typedef cl_int ( * clCreateSubDevicesEXT_fn)( cl_device_id in_device, const cl_device_partition_property_ext* properties, cl_uint num_entries, cl_device_id* out_devices, cl_uint* num_devices);
extern cl_int clReleaseDeviceEXT( cl_device_id device);
extern cl_int clRetainDeviceEXT( cl_device_id device);
extern cl_int clCreateSubDevicesEXT( cl_device_id in_device, const cl_device_partition_property_ext* properties, cl_uint num_entries, cl_device_id* out_devices, cl_uint* num_devices);
enum { cl_ext_migrate_memobject = 1 };
/* #define CL_EXT_MIGRATE_MEMOBJECT_EXTENSION_NAME      "cl_ext_migrate_memobject" ### string, not number "\"cl_ext_migrate_memobject\"" */
typedef cl_bitfield cl_mem_migration_flags_ext;
enum { CL_MIGRATE_MEM_OBJECT_HOST_EXT = 1 };
enum { CL_COMMAND_MIGRATE_MEM_OBJECT_EXT = 16448 };
typedef cl_int ( * clEnqueueMigrateMemObjectEXT_fn)( cl_command_queue command_queue, cl_uint num_mem_objects, const cl_mem* mem_objects, cl_mem_migration_flags_ext flags, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueMigrateMemObjectEXT( cl_command_queue command_queue, cl_uint num_mem_objects, const cl_mem* mem_objects, cl_mem_migration_flags_ext flags, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
enum { cl_ext_cxx_for_opencl = 1 };
/* #define CL_EXT_CXX_FOR_OPENCL_EXTENSION_NAME      "cl_ext_cxx_for_opencl" ### string, not number "\"cl_ext_cxx_for_opencl\"" */
enum { CL_DEVICE_CXX_FOR_OPENCL_NUMERIC_VERSION_EXT = 16944 };
enum { cl_qcom_ext_host_ptr = 1 };
/* #define CL_QCOM_EXT_HOST_PTR_EXTENSION_NAME      "cl_qcom_ext_host_ptr" ### string, not number "\"cl_qcom_ext_host_ptr\"" */
typedef cl_uint cl_image_pitch_info_qcom;
typedef struct _cl_mem_ext_host_ptr {
	cl_uint allocation_type;
	cl_uint host_cache_policy;
} cl_mem_ext_host_ptr;
enum { CL_MEM_EXT_HOST_PTR_QCOM = 536870912 };
enum { CL_DEVICE_EXT_MEM_PADDING_IN_BYTES_QCOM = 16544 };
enum { CL_DEVICE_PAGE_SIZE_QCOM = 16545 };
enum { CL_IMAGE_ROW_ALIGNMENT_QCOM = 16546 };
enum { CL_IMAGE_SLICE_ALIGNMENT_QCOM = 16547 };
enum { CL_MEM_HOST_UNCACHED_QCOM = 16548 };
enum { CL_MEM_HOST_WRITEBACK_QCOM = 16549 };
enum { CL_MEM_HOST_WRITETHROUGH_QCOM = 16550 };
enum { CL_MEM_HOST_WRITE_COMBINING_QCOM = 16551 };
typedef cl_int ( * clGetDeviceImageInfoQCOM_fn)( cl_device_id device, size_t image_width, size_t image_height, const cl_image_format* image_format, cl_image_pitch_info_qcom param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
extern cl_int clGetDeviceImageInfoQCOM( cl_device_id device, size_t image_width, size_t image_height, const cl_image_format* image_format, cl_image_pitch_info_qcom param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
enum { cl_qcom_ext_host_ptr_iocoherent = 1 };
/* #define CL_QCOM_EXT_HOST_PTR_IOCOHERENT_EXTENSION_NAME      "cl_qcom_ext_host_ptr_iocoherent" ### string, not number "\"cl_qcom_ext_host_ptr_iocoherent\"" */
enum { CL_MEM_HOST_IOCOHERENT_QCOM = 16553 };
enum { cl_qcom_ion_host_ptr = 1 };
/* #define CL_QCOM_ION_HOST_PTR_EXTENSION_NAME      "cl_qcom_ion_host_ptr" ### string, not number "\"cl_qcom_ion_host_ptr\"" */
typedef struct _cl_mem_ion_host_ptr {
	cl_mem_ext_host_ptr ext_host_ptr;
	int ion_filedesc;
	void* ion_hostptr;
} cl_mem_ion_host_ptr;
enum { CL_MEM_ION_HOST_PTR_QCOM = 16552 };
enum { cl_qcom_android_native_buffer_host_ptr = 1 };
/* #define CL_QCOM_ANDROID_NATIVE_BUFFER_HOST_PTR_EXTENSION_NAME      "cl_qcom_android_native_buffer_host_ptr" ### string, not number "\"cl_qcom_android_native_buffer_host_ptr\"" */
typedef struct _cl_mem_android_native_buffer_host_ptr {
	cl_mem_ext_host_ptr ext_host_ptr;
	void* anb_ptr;
} cl_mem_android_native_buffer_host_ptr;
enum { CL_MEM_ANDROID_NATIVE_BUFFER_HOST_PTR_QCOM = 16582 };
enum { cl_img_yuv_image = 1 };
/* #define CL_IMG_YUV_IMAGE_EXTENSION_NAME      "cl_img_yuv_image" ### string, not number "\"cl_img_yuv_image\"" */
enum { CL_NV21_IMG = 16592 };
enum { CL_YV12_IMG = 16593 };
enum { cl_img_cached_allocations = 1 };
/* #define CL_IMG_CACHED_ALLOCATIONS_EXTENSION_NAME      "cl_img_cached_allocations" ### string, not number "\"cl_img_cached_allocations\"" */
enum { CL_MEM_USE_UNCACHED_CPU_MEMORY_IMG = 67108864 };
enum { CL_MEM_USE_CACHED_CPU_MEMORY_IMG = 134217728 };
enum { cl_img_use_gralloc_ptr = 1 };
/* #define CL_IMG_USE_GRALLOC_PTR_EXTENSION_NAME      "cl_img_use_gralloc_ptr" ### string, not number "\"cl_img_use_gralloc_ptr\"" */
enum { CL_GRALLOC_RESOURCE_NOT_ACQUIRED_IMG = 16596 };
enum { CL_INVALID_GRALLOC_OBJECT_IMG = 16597 };
enum { CL_MEM_USE_GRALLOC_PTR_IMG = 268435456 };
enum { CL_COMMAND_ACQUIRE_GRALLOC_OBJECTS_IMG = 16594 };
enum { CL_COMMAND_RELEASE_GRALLOC_OBJECTS_IMG = 16595 };
typedef cl_int ( * clEnqueueAcquireGrallocObjectsIMG_fn)( cl_command_queue command_queue, cl_uint num_objects, const cl_mem* mem_objects, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_int ( * clEnqueueReleaseGrallocObjectsIMG_fn)( cl_command_queue command_queue, cl_uint num_objects, const cl_mem* mem_objects, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueAcquireGrallocObjectsIMG( cl_command_queue command_queue, cl_uint num_objects, const cl_mem* mem_objects, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueReleaseGrallocObjectsIMG( cl_command_queue command_queue, cl_uint num_objects, const cl_mem* mem_objects, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
enum { cl_img_generate_mipmap = 1 };
/* #define CL_IMG_GENERATE_MIPMAP_EXTENSION_NAME      "cl_img_generate_mipmap" ### string, not number "\"cl_img_generate_mipmap\"" */
typedef cl_uint cl_mipmap_filter_mode_img;
enum { CL_MIPMAP_FILTER_ANY_IMG = 0 };
enum { CL_MIPMAP_FILTER_BOX_IMG = 1 };
enum { CL_COMMAND_GENERATE_MIPMAP_IMG = 16598 };
typedef cl_int ( * clEnqueueGenerateMipmapIMG_fn)( cl_command_queue command_queue, cl_mem src_image, cl_mem dst_image, cl_mipmap_filter_mode_img mipmap_filter_mode, const size_t* array_region, const size_t* mip_region, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueGenerateMipmapIMG( cl_command_queue command_queue, cl_mem src_image, cl_mem dst_image, cl_mipmap_filter_mode_img mipmap_filter_mode, const size_t* array_region, const size_t* mip_region, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
enum { cl_img_mem_properties = 1 };
/* #define CL_IMG_MEM_PROPERTIES_EXTENSION_NAME      "cl_img_mem_properties" ### string, not number "\"cl_img_mem_properties\"" */
enum { CL_MEM_ALLOC_FLAGS_IMG = 16599 };
enum { CL_MEM_ALLOC_RELAX_REQUIREMENTS_IMG = 1 };
enum { cl_khr_subgroups = 1 };
/* #define CL_KHR_SUBGROUPS_EXTENSION_NAME      "cl_khr_subgroups" ### string, not number "\"cl_khr_subgroups\"" */
enum { CL_KERNEL_MAX_SUB_GROUP_SIZE_FOR_NDRANGE_KHR = 8243 };
enum { CL_KERNEL_SUB_GROUP_COUNT_FOR_NDRANGE_KHR = 8244 };
typedef cl_int ( * clGetKernelSubGroupInfoKHR_fn)( cl_kernel in_kernel, cl_device_id in_device, cl_kernel_sub_group_info param_name, size_t input_value_size, const void* input_value, size_t param_value_size, void* param_value, size_t* param_value_size_ret) __attribute__((deprecated));
extern cl_int clGetKernelSubGroupInfoKHR( cl_kernel in_kernel, cl_device_id in_device, cl_kernel_sub_group_info param_name, size_t input_value_size, const void* input_value, size_t param_value_size, void* param_value, size_t* param_value_size_ret) __attribute__((deprecated));
enum { cl_khr_mipmap_image = 1 };
/* #define CL_KHR_MIPMAP_IMAGE_EXTENSION_NAME      "cl_khr_mipmap_image" ### string, not number "\"cl_khr_mipmap_image\"" */
enum { CL_SAMPLER_MIP_FILTER_MODE_KHR = 4437 };
enum { CL_SAMPLER_LOD_MIN_KHR = 4438 };
enum { CL_SAMPLER_LOD_MAX_KHR = 4439 };
enum { cl_khr_priority_hints = 1 };
/* #define CL_KHR_PRIORITY_HINTS_EXTENSION_NAME      "cl_khr_priority_hints" ### string, not number "\"cl_khr_priority_hints\"" */
typedef cl_uint cl_queue_priority_khr;
enum { CL_QUEUE_PRIORITY_KHR = 4246 };
enum { CL_QUEUE_PRIORITY_HIGH_KHR = 1 };
enum { CL_QUEUE_PRIORITY_MED_KHR = 2 };
enum { CL_QUEUE_PRIORITY_LOW_KHR = 4 };
enum { cl_khr_throttle_hints = 1 };
/* #define CL_KHR_THROTTLE_HINTS_EXTENSION_NAME      "cl_khr_throttle_hints" ### string, not number "\"cl_khr_throttle_hints\"" */
typedef cl_uint cl_queue_throttle_khr;
enum { CL_QUEUE_THROTTLE_KHR = 4247 };
enum { CL_QUEUE_THROTTLE_HIGH_KHR = 1 };
enum { CL_QUEUE_THROTTLE_MED_KHR = 2 };
enum { CL_QUEUE_THROTTLE_LOW_KHR = 4 };
enum { cl_khr_subgroup_named_barrier = 1 };
/* #define CL_KHR_SUBGROUP_NAMED_BARRIER_EXTENSION_NAME      "cl_khr_subgroup_named_barrier" ### string, not number "\"cl_khr_subgroup_named_barrier\"" */
enum { CL_DEVICE_MAX_NAMED_BARRIER_COUNT_KHR = 8245 };
enum { cl_khr_extended_versioning = 1 };
/* #define CL_KHR_EXTENDED_VERSIONING_EXTENSION_NAME      "cl_khr_extended_versioning" ### string, not number "\"cl_khr_extended_versioning\"" */
enum { CL_VERSION_MAJOR_BITS_KHR = 10 };
enum { CL_VERSION_MINOR_BITS_KHR = 10 };
enum { CL_VERSION_PATCH_BITS_KHR = 12 };
enum { CL_VERSION_MAJOR_MASK_KHR = 1023 };
enum { CL_VERSION_MINOR_MASK_KHR = 1023 };
enum { CL_VERSION_PATCH_MASK_KHR = 4095 };
enum { CL_NAME_VERSION_MAX_NAME_SIZE_KHR = 64 };
typedef cl_uint cl_version_khr;
typedef struct _cl_name_version_khr {
	cl_version_khr version;
	char name[64];
} cl_name_version_khr;
enum { CL_PLATFORM_NUMERIC_VERSION_KHR = 2310 };
enum { CL_PLATFORM_EXTENSIONS_WITH_VERSION_KHR = 2311 };
enum { CL_DEVICE_NUMERIC_VERSION_KHR = 4190 };
enum { CL_DEVICE_OPENCL_C_NUMERIC_VERSION_KHR = 4191 };
enum { CL_DEVICE_EXTENSIONS_WITH_VERSION_KHR = 4192 };
enum { CL_DEVICE_ILS_WITH_VERSION_KHR = 4193 };
enum { CL_DEVICE_BUILT_IN_KERNELS_WITH_VERSION_KHR = 4194 };
enum { cl_khr_device_uuid = 1 };
/* #define CL_KHR_DEVICE_UUID_EXTENSION_NAME      "cl_khr_device_uuid" ### string, not number "\"cl_khr_device_uuid\"" */
enum { CL_UUID_SIZE_KHR = 16 };
enum { CL_LUID_SIZE_KHR = 8 };
enum { CL_DEVICE_UUID_KHR = 4202 };
enum { CL_DRIVER_UUID_KHR = 4203 };
enum { CL_DEVICE_LUID_VALID_KHR = 4204 };
enum { CL_DEVICE_LUID_KHR = 4205 };
enum { CL_DEVICE_NODE_MASK_KHR = 4206 };
enum { cl_khr_pci_bus_info = 1 };
/* #define CL_KHR_PCI_BUS_INFO_EXTENSION_NAME      "cl_khr_pci_bus_info" ### string, not number "\"cl_khr_pci_bus_info\"" */
typedef struct _cl_device_pci_bus_info_khr {
	cl_uint pci_domain;
	cl_uint pci_bus;
	cl_uint pci_device;
	cl_uint pci_function;
} cl_device_pci_bus_info_khr;
enum { CL_DEVICE_PCI_BUS_INFO_KHR = 16655 };
enum { cl_khr_suggested_local_work_size = 1 };
/* #define CL_KHR_SUGGESTED_LOCAL_WORK_SIZE_EXTENSION_NAME      "cl_khr_suggested_local_work_size" ### string, not number "\"cl_khr_suggested_local_work_size\"" */
typedef cl_int ( * clGetKernelSuggestedLocalWorkSizeKHR_fn)( cl_command_queue command_queue, cl_kernel kernel, cl_uint work_dim, const size_t* global_work_offset, const size_t* global_work_size, size_t* suggested_local_work_size);
extern cl_int clGetKernelSuggestedLocalWorkSizeKHR( cl_command_queue command_queue, cl_kernel kernel, cl_uint work_dim, const size_t* global_work_offset, const size_t* global_work_size, size_t* suggested_local_work_size);
enum { cl_khr_integer_dot_product = 1 };
/* #define CL_KHR_INTEGER_DOT_PRODUCT_EXTENSION_NAME      "cl_khr_integer_dot_product" ### string, not number "\"cl_khr_integer_dot_product\"" */
typedef cl_bitfield cl_device_integer_dot_product_capabilities_khr;
typedef struct _cl_device_integer_dot_product_acceleration_properties_khr {
	cl_bool signed_accelerated;
	cl_bool unsigned_accelerated;
	cl_bool mixed_signedness_accelerated;
	cl_bool accumulating_saturating_signed_accelerated;
	cl_bool accumulating_saturating_unsigned_accelerated;
	cl_bool accumulating_saturating_mixed_signedness_accelerated;
} cl_device_integer_dot_product_acceleration_properties_khr;
enum { CL_DEVICE_INTEGER_DOT_PRODUCT_INPUT_4x8BIT_PACKED_KHR = 1 };
enum { CL_DEVICE_INTEGER_DOT_PRODUCT_INPUT_4x8BIT_KHR = 2 };
enum { CL_DEVICE_INTEGER_DOT_PRODUCT_CAPABILITIES_KHR = 4211 };
enum { CL_DEVICE_INTEGER_DOT_PRODUCT_ACCELERATION_PROPERTIES_8BIT_KHR = 4212 };
enum { CL_DEVICE_INTEGER_DOT_PRODUCT_ACCELERATION_PROPERTIES_4x8BIT_PACKED_KHR = 4213 };
enum { cl_khr_external_memory = 1 };
/* #define CL_KHR_EXTERNAL_MEMORY_EXTENSION_NAME      "cl_khr_external_memory" ### string, not number "\"cl_khr_external_memory\"" */
typedef cl_uint cl_external_memory_handle_type_khr;
enum { CL_PLATFORM_EXTERNAL_MEMORY_IMPORT_HANDLE_TYPES_KHR = 8260 };
enum { CL_DEVICE_EXTERNAL_MEMORY_IMPORT_HANDLE_TYPES_KHR = 8271 };
enum { CL_DEVICE_HANDLE_LIST_KHR = 8273 };
enum { CL_DEVICE_HANDLE_LIST_END_KHR = 0 };
enum { CL_COMMAND_ACQUIRE_EXTERNAL_MEM_OBJECTS_KHR = 8263 };
enum { CL_COMMAND_RELEASE_EXTERNAL_MEM_OBJECTS_KHR = 8264 };
typedef cl_int ( * clEnqueueAcquireExternalMemObjectsKHR_fn)( cl_command_queue command_queue, cl_uint num_mem_objects, const cl_mem* mem_objects, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_int ( * clEnqueueReleaseExternalMemObjectsKHR_fn)( cl_command_queue command_queue, cl_uint num_mem_objects, const cl_mem* mem_objects, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueAcquireExternalMemObjectsKHR( cl_command_queue command_queue, cl_uint num_mem_objects, const cl_mem* mem_objects, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueReleaseExternalMemObjectsKHR( cl_command_queue command_queue, cl_uint num_mem_objects, const cl_mem* mem_objects, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
enum { cl_khr_external_memory_dma_buf = 1 };
/* #define CL_KHR_EXTERNAL_MEMORY_DMA_BUF_EXTENSION_NAME      "cl_khr_external_memory_dma_buf" ### string, not number "\"cl_khr_external_memory_dma_buf\"" */
enum { CL_EXTERNAL_MEMORY_HANDLE_DMA_BUF_KHR = 8295 };
enum { cl_khr_external_memory_dx = 1 };
/* #define CL_KHR_EXTERNAL_MEMORY_DX_EXTENSION_NAME      "cl_khr_external_memory_dx" ### string, not number "\"cl_khr_external_memory_dx\"" */
enum { CL_EXTERNAL_MEMORY_HANDLE_D3D11_TEXTURE_KHR = 8291 };
enum { CL_EXTERNAL_MEMORY_HANDLE_D3D11_TEXTURE_KMT_KHR = 8292 };
enum { CL_EXTERNAL_MEMORY_HANDLE_D3D12_HEAP_KHR = 8293 };
enum { CL_EXTERNAL_MEMORY_HANDLE_D3D12_RESOURCE_KHR = 8294 };
enum { cl_khr_external_memory_opaque_fd = 1 };
/* #define CL_KHR_EXTERNAL_MEMORY_OPAQUE_FD_EXTENSION_NAME      "cl_khr_external_memory_opaque_fd" ### string, not number "\"cl_khr_external_memory_opaque_fd\"" */
enum { CL_EXTERNAL_MEMORY_HANDLE_OPAQUE_FD_KHR = 8288 };
enum { cl_khr_external_memory_win32 = 1 };
/* #define CL_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME      "cl_khr_external_memory_win32" ### string, not number "\"cl_khr_external_memory_win32\"" */
enum { CL_EXTERNAL_MEMORY_HANDLE_OPAQUE_WIN32_KHR = 8289 };
enum { CL_EXTERNAL_MEMORY_HANDLE_OPAQUE_WIN32_KMT_KHR = 8290 };
enum { cl_khr_external_semaphore = 1 };
/* #define CL_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME      "cl_khr_external_semaphore" ### string, not number "\"cl_khr_external_semaphore\"" */
typedef struct _cl_semaphore_khr * cl_semaphore_khr;
typedef cl_uint cl_external_semaphore_handle_type_khr;
enum { CL_PLATFORM_SEMAPHORE_IMPORT_HANDLE_TYPES_KHR = 8247 };
enum { CL_PLATFORM_SEMAPHORE_EXPORT_HANDLE_TYPES_KHR = 8248 };
enum { CL_DEVICE_SEMAPHORE_IMPORT_HANDLE_TYPES_KHR = 8269 };
enum { CL_DEVICE_SEMAPHORE_EXPORT_HANDLE_TYPES_KHR = 8270 };
enum { CL_SEMAPHORE_EXPORT_HANDLE_TYPES_KHR = 8255 };
enum { CL_SEMAPHORE_EXPORT_HANDLE_TYPES_LIST_END_KHR = 0 };
typedef cl_int ( * clGetSemaphoreHandleForTypeKHR_fn)( cl_semaphore_khr sema_object, cl_device_id device, cl_external_semaphore_handle_type_khr handle_type, size_t handle_size, void* handle_ptr, size_t* handle_size_ret);
extern cl_int clGetSemaphoreHandleForTypeKHR( cl_semaphore_khr sema_object, cl_device_id device, cl_external_semaphore_handle_type_khr handle_type, size_t handle_size, void* handle_ptr, size_t* handle_size_ret);
enum { cl_khr_external_semaphore_dx_fence = 1 };
/* #define CL_KHR_EXTERNAL_SEMAPHORE_DX_FENCE_EXTENSION_NAME      "cl_khr_external_semaphore_dx_fence" ### string, not number "\"cl_khr_external_semaphore_dx_fence\"" */
enum { CL_SEMAPHORE_HANDLE_D3D12_FENCE_KHR = 8281 };
enum { cl_khr_external_semaphore_opaque_fd = 1 };
/* #define CL_KHR_EXTERNAL_SEMAPHORE_OPAQUE_FD_EXTENSION_NAME      "cl_khr_external_semaphore_opaque_fd" ### string, not number "\"cl_khr_external_semaphore_opaque_fd\"" */
enum { CL_SEMAPHORE_HANDLE_OPAQUE_FD_KHR = 8277 };
enum { cl_khr_external_semaphore_sync_fd = 1 };
/* #define CL_KHR_EXTERNAL_SEMAPHORE_SYNC_FD_EXTENSION_NAME      "cl_khr_external_semaphore_sync_fd" ### string, not number "\"cl_khr_external_semaphore_sync_fd\"" */
enum { CL_SEMAPHORE_HANDLE_SYNC_FD_KHR = 8280 };
enum { cl_khr_external_semaphore_win32 = 1 };
/* #define CL_KHR_EXTERNAL_SEMAPHORE_WIN32_EXTENSION_NAME      "cl_khr_external_semaphore_win32" ### string, not number "\"cl_khr_external_semaphore_win32\"" */
enum { CL_SEMAPHORE_HANDLE_OPAQUE_WIN32_KHR = 8278 };
enum { CL_SEMAPHORE_HANDLE_OPAQUE_WIN32_KMT_KHR = 8279 };
enum { cl_khr_semaphore = 1 };
/* #define CL_KHR_SEMAPHORE_EXTENSION_NAME      "cl_khr_semaphore" ### string, not number "\"cl_khr_semaphore\"" */
typedef cl_properties cl_semaphore_properties_khr;
typedef cl_uint cl_semaphore_info_khr;
typedef cl_uint cl_semaphore_type_khr;
typedef cl_ulong cl_semaphore_payload_khr;
enum { CL_SEMAPHORE_TYPE_BINARY_KHR = 1 };
enum { CL_PLATFORM_SEMAPHORE_TYPES_KHR = 8246 };
enum { CL_DEVICE_SEMAPHORE_TYPES_KHR = 8268 };
enum { CL_SEMAPHORE_CONTEXT_KHR = 8249 };
enum { CL_SEMAPHORE_REFERENCE_COUNT_KHR = 8250 };
enum { CL_SEMAPHORE_PROPERTIES_KHR = 8251 };
enum { CL_SEMAPHORE_PAYLOAD_KHR = 8252 };
enum { CL_SEMAPHORE_TYPE_KHR = 8253 };
enum { CL_COMMAND_SEMAPHORE_WAIT_KHR = 8258 };
enum { CL_COMMAND_SEMAPHORE_SIGNAL_KHR = 8259 };
enum { CL_INVALID_SEMAPHORE_KHR = -1142 };
typedef cl_semaphore_khr ( * clCreateSemaphoreWithPropertiesKHR_fn)( cl_context context, const cl_semaphore_properties_khr* sema_props, cl_int* errcode_ret);
typedef cl_int ( * clEnqueueWaitSemaphoresKHR_fn)( cl_command_queue command_queue, cl_uint num_sema_objects, const cl_semaphore_khr* sema_objects, const cl_semaphore_payload_khr* sema_payload_list, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_int ( * clEnqueueSignalSemaphoresKHR_fn)( cl_command_queue command_queue, cl_uint num_sema_objects, const cl_semaphore_khr* sema_objects, const cl_semaphore_payload_khr* sema_payload_list, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_int ( * clGetSemaphoreInfoKHR_fn)( cl_semaphore_khr sema_object, cl_semaphore_info_khr param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
typedef cl_int ( * clReleaseSemaphoreKHR_fn)( cl_semaphore_khr sema_object);
typedef cl_int ( * clRetainSemaphoreKHR_fn)( cl_semaphore_khr sema_object);
extern cl_semaphore_khr clCreateSemaphoreWithPropertiesKHR( cl_context context, const cl_semaphore_properties_khr* sema_props, cl_int* errcode_ret);
extern cl_int clEnqueueWaitSemaphoresKHR( cl_command_queue command_queue, cl_uint num_sema_objects, const cl_semaphore_khr* sema_objects, const cl_semaphore_payload_khr* sema_payload_list, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueSignalSemaphoresKHR( cl_command_queue command_queue, cl_uint num_sema_objects, const cl_semaphore_khr* sema_objects, const cl_semaphore_payload_khr* sema_payload_list, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clGetSemaphoreInfoKHR( cl_semaphore_khr sema_object, cl_semaphore_info_khr param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
extern cl_int clReleaseSemaphoreKHR( cl_semaphore_khr sema_object);
extern cl_int clRetainSemaphoreKHR( cl_semaphore_khr sema_object);
enum { cl_arm_import_memory = 1 };
/* #define CL_ARM_IMPORT_MEMORY_EXTENSION_NAME      "cl_arm_import_memory" ### string, not number "\"cl_arm_import_memory\"" */
typedef intptr_t cl_import_properties_arm;
enum { CL_IMPORT_TYPE_ARM = 16562 };
enum { CL_IMPORT_TYPE_HOST_ARM = 16563 };
enum { CL_IMPORT_TYPE_DMA_BUF_ARM = 16564 };
enum { CL_IMPORT_TYPE_PROTECTED_ARM = 16565 };
enum { CL_IMPORT_TYPE_ANDROID_HARDWARE_BUFFER_ARM = 16866 };
enum { CL_IMPORT_DMA_BUF_DATA_CONSISTENCY_WITH_HOST_ARM = 16867 };
/* #define CL_IMPORT_MEMORY_WHOLE_ALLOCATION_ARM               SIZE_MAX ### string, not number "1.844674407371e+19" */
enum { CL_IMPORT_ANDROID_HARDWARE_BUFFER_PLANE_INDEX_ARM = 16879 };
enum { CL_IMPORT_ANDROID_HARDWARE_BUFFER_LAYER_INDEX_ARM = 16880 };
typedef cl_mem ( * clImportMemoryARM_fn)( cl_context context, cl_mem_flags flags, const cl_import_properties_arm* properties, void* memory, size_t size, cl_int* errcode_ret);
extern cl_mem clImportMemoryARM( cl_context context, cl_mem_flags flags, const cl_import_properties_arm* properties, void* memory, size_t size, cl_int* errcode_ret);
enum { cl_arm_shared_virtual_memory = 1 };
/* #define CL_ARM_SHARED_VIRTUAL_MEMORY_EXTENSION_NAME      "cl_arm_shared_virtual_memory" ### string, not number "\"cl_arm_shared_virtual_memory\"" */
typedef cl_bitfield cl_svm_mem_flags_arm;
typedef cl_uint cl_kernel_exec_info_arm;
typedef cl_bitfield cl_device_svm_capabilities_arm;
enum { CL_DEVICE_SVM_CAPABILITIES_ARM = 16566 };
enum { CL_MEM_USES_SVM_POINTER_ARM = 16567 };
enum { CL_KERNEL_EXEC_INFO_SVM_PTRS_ARM = 16568 };
enum { CL_KERNEL_EXEC_INFO_SVM_FINE_GRAIN_SYSTEM_ARM = 16569 };
enum { CL_COMMAND_SVM_FREE_ARM = 16570 };
enum { CL_COMMAND_SVM_MEMCPY_ARM = 16571 };
enum { CL_COMMAND_SVM_MEMFILL_ARM = 16572 };
enum { CL_COMMAND_SVM_MAP_ARM = 16573 };
enum { CL_COMMAND_SVM_UNMAP_ARM = 16574 };
enum { CL_DEVICE_SVM_COARSE_GRAIN_BUFFER_ARM = 1 };
enum { CL_DEVICE_SVM_FINE_GRAIN_BUFFER_ARM = 2 };
enum { CL_DEVICE_SVM_FINE_GRAIN_SYSTEM_ARM = 4 };
enum { CL_DEVICE_SVM_ATOMICS_ARM = 8 };
enum { CL_MEM_SVM_FINE_GRAIN_BUFFER_ARM = 1024 };
enum { CL_MEM_SVM_ATOMICS_ARM = 2048 };
typedef void* ( * clSVMAllocARM_fn)( cl_context context, cl_svm_mem_flags_arm flags, size_t size, cl_uint alignment);
typedef void ( * clSVMFreeARM_fn)( cl_context context, void* svm_pointer);
typedef cl_int ( * clEnqueueSVMFreeARM_fn)( cl_command_queue command_queue, cl_uint num_svm_pointers, void* svm_pointers[], void (* pfn_free_func)(cl_command_queue queue, cl_uint num_svm_pointers, void * svm_pointers[], void *user_data), void* user_data, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_int ( * clEnqueueSVMMemcpyARM_fn)( cl_command_queue command_queue, cl_bool blocking_copy, void* dst_ptr, const void* src_ptr, size_t size, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_int ( * clEnqueueSVMMemFillARM_fn)( cl_command_queue command_queue, void* svm_ptr, const void* pattern, size_t pattern_size, size_t size, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_int ( * clEnqueueSVMMapARM_fn)( cl_command_queue command_queue, cl_bool blocking_map, cl_map_flags flags, void* svm_ptr, size_t size, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_int ( * clEnqueueSVMUnmapARM_fn)( cl_command_queue command_queue, void* svm_ptr, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_int ( * clSetKernelArgSVMPointerARM_fn)( cl_kernel kernel, cl_uint arg_index, const void* arg_value);
typedef cl_int ( * clSetKernelExecInfoARM_fn)( cl_kernel kernel, cl_kernel_exec_info_arm param_name, size_t param_value_size, const void* param_value);
extern void* clSVMAllocARM( cl_context context, cl_svm_mem_flags_arm flags, size_t size, cl_uint alignment);
extern void clSVMFreeARM( cl_context context, void* svm_pointer);
extern cl_int clEnqueueSVMFreeARM( cl_command_queue command_queue, cl_uint num_svm_pointers, void* svm_pointers[], void (* pfn_free_func)(cl_command_queue queue, cl_uint num_svm_pointers, void * svm_pointers[], void *user_data), void* user_data, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueSVMMemcpyARM( cl_command_queue command_queue, cl_bool blocking_copy, void* dst_ptr, const void* src_ptr, size_t size, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueSVMMemFillARM( cl_command_queue command_queue, void* svm_ptr, const void* pattern, size_t pattern_size, size_t size, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueSVMMapARM( cl_command_queue command_queue, cl_bool blocking_map, cl_map_flags flags, void* svm_ptr, size_t size, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueSVMUnmapARM( cl_command_queue command_queue, void* svm_ptr, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clSetKernelArgSVMPointerARM( cl_kernel kernel, cl_uint arg_index, const void* arg_value);
extern cl_int clSetKernelExecInfoARM( cl_kernel kernel, cl_kernel_exec_info_arm param_name, size_t param_value_size, const void* param_value);
enum { cl_arm_get_core_id = 1 };
/* #define CL_ARM_GET_CORE_ID_EXTENSION_NAME      "cl_arm_get_core_id" ### string, not number "\"cl_arm_get_core_id\"" */
enum { CL_DEVICE_COMPUTE_UNITS_BITFIELD_ARM = 16575 };
enum { cl_arm_job_slot_selection = 1 };
/* #define CL_ARM_JOB_SLOT_SELECTION_EXTENSION_NAME      "cl_arm_job_slot_selection" ### string, not number "\"cl_arm_job_slot_selection\"" */
enum { CL_DEVICE_JOB_SLOTS_ARM = 16864 };
enum { CL_QUEUE_JOB_SLOT_ARM = 16865 };
enum { cl_arm_scheduling_controls = 1 };
/* #define CL_ARM_SCHEDULING_CONTROLS_EXTENSION_NAME      "cl_arm_scheduling_controls" ### string, not number "\"cl_arm_scheduling_controls\"" */
typedef cl_bitfield cl_device_scheduling_controls_capabilities_arm;
enum { CL_DEVICE_SCHEDULING_KERNEL_BATCHING_ARM = 1 };
enum { CL_DEVICE_SCHEDULING_WORKGROUP_BATCH_SIZE_ARM = 2 };
enum { CL_DEVICE_SCHEDULING_WORKGROUP_BATCH_SIZE_MODIFIER_ARM = 4 };
enum { CL_DEVICE_SCHEDULING_DEFERRED_FLUSH_ARM = 8 };
enum { CL_DEVICE_SCHEDULING_REGISTER_ALLOCATION_ARM = 16 };
enum { CL_DEVICE_SCHEDULING_WARP_THROTTLING_ARM = 32 };
enum { CL_DEVICE_SCHEDULING_COMPUTE_UNIT_BATCH_QUEUE_SIZE_ARM = 64 };
enum { CL_DEVICE_SCHEDULING_CONTROLS_CAPABILITIES_ARM = 16868 };
enum { CL_DEVICE_SUPPORTED_REGISTER_ALLOCATIONS_ARM = 16875 };
enum { CL_DEVICE_MAX_WARP_COUNT_ARM = 16874 };
enum { CL_KERNEL_EXEC_INFO_WORKGROUP_BATCH_SIZE_ARM = 16869 };
enum { CL_KERNEL_EXEC_INFO_WORKGROUP_BATCH_SIZE_MODIFIER_ARM = 16870 };
enum { CL_KERNEL_EXEC_INFO_WARP_COUNT_LIMIT_ARM = 16872 };
enum { CL_KERNEL_EXEC_INFO_COMPUTE_UNIT_MAX_QUEUED_BATCHES_ARM = 16881 };
enum { CL_KERNEL_MAX_WARP_COUNT_ARM = 16873 };
enum { CL_QUEUE_KERNEL_BATCHING_ARM = 16871 };
enum { CL_QUEUE_DEFERRED_FLUSH_ARM = 16876 };
enum { cl_arm_controlled_kernel_termination = 1 };
/* #define CL_ARM_CONTROLLED_KERNEL_TERMINATION_EXTENSION_NAME      "cl_arm_controlled_kernel_termination" ### string, not number "\"cl_arm_controlled_kernel_termination\"" */
typedef cl_bitfield cl_device_controlled_termination_capabilities_arm;
enum { CL_COMMAND_TERMINATED_ITSELF_WITH_FAILURE_ARM = -1108 };
enum { CL_DEVICE_CONTROLLED_TERMINATION_SUCCESS_ARM = 1 };
enum { CL_DEVICE_CONTROLLED_TERMINATION_FAILURE_ARM = 2 };
enum { CL_DEVICE_CONTROLLED_TERMINATION_QUERY_ARM = 4 };
enum { CL_DEVICE_CONTROLLED_TERMINATION_CAPABILITIES_ARM = 16878 };
enum { CL_EVENT_COMMAND_TERMINATION_REASON_ARM = 16877 };
enum { CL_COMMAND_TERMINATION_COMPLETION_ARM = 0 };
enum { CL_COMMAND_TERMINATION_CONTROLLED_SUCCESS_ARM = 1 };
enum { CL_COMMAND_TERMINATION_CONTROLLED_FAILURE_ARM = 2 };
enum { CL_COMMAND_TERMINATION_ERROR_ARM = 3 };
enum { cl_arm_protected_memory_allocation = 1 };
/* #define CL_ARM_PROTECTED_MEMORY_ALLOCATION_EXTENSION_NAME      "cl_arm_protected_memory_allocation" ### string, not number "\"cl_arm_protected_memory_allocation\"" */
/* #define CL_MEM_PROTECTED_ALLOC_ARM                          ((cl_bitfield)1 << 36) ### string, not number "((cl_bitfield)1 << 36)" */
enum { cl_intel_exec_by_local_thread = 1 };
/* #define CL_INTEL_EXEC_BY_LOCAL_THREAD_EXTENSION_NAME      "cl_intel_exec_by_local_thread" ### string, not number "\"cl_intel_exec_by_local_thread\"" */
/* #define CL_QUEUE_THREAD_LOCAL_EXEC_ENABLE_INTEL             ((cl_bitfield)1 << 31) ### string, not number "((cl_bitfield)1 << 31)" */
enum { cl_intel_device_attribute_query = 1 };
/* #define CL_INTEL_DEVICE_ATTRIBUTE_QUERY_EXTENSION_NAME      "cl_intel_device_attribute_query" ### string, not number "\"cl_intel_device_attribute_query\"" */
typedef cl_bitfield cl_device_feature_capabilities_intel;
enum { CL_DEVICE_FEATURE_FLAG_DP4A_INTEL = 1 };
enum { CL_DEVICE_FEATURE_FLAG_DPAS_INTEL = 2 };
enum { CL_DEVICE_IP_VERSION_INTEL = 16976 };
enum { CL_DEVICE_ID_INTEL = 16977 };
enum { CL_DEVICE_NUM_SLICES_INTEL = 16978 };
enum { CL_DEVICE_NUM_SUB_SLICES_PER_SLICE_INTEL = 16979 };
enum { CL_DEVICE_NUM_EUS_PER_SUB_SLICE_INTEL = 16980 };
enum { CL_DEVICE_NUM_THREADS_PER_EU_INTEL = 16981 };
enum { CL_DEVICE_FEATURE_CAPABILITIES_INTEL = 16982 };
enum { cl_intel_device_partition_by_names = 1 };
/* #define CL_INTEL_DEVICE_PARTITION_BY_NAMES_EXTENSION_NAME      "cl_intel_device_partition_by_names" ### string, not number "\"cl_intel_device_partition_by_names\"" */
enum { CL_DEVICE_PARTITION_BY_NAMES_INTEL = 16466 };
enum { CL_PARTITION_BY_NAMES_LIST_END_INTEL = -1 };
enum { cl_intel_accelerator = 1 };
/* #define CL_INTEL_ACCELERATOR_EXTENSION_NAME      "cl_intel_accelerator" ### string, not number "\"cl_intel_accelerator\"" */
typedef struct _cl_accelerator_intel* cl_accelerator_intel;
typedef cl_uint cl_accelerator_type_intel;
typedef cl_uint cl_accelerator_info_intel;
enum { CL_ACCELERATOR_DESCRIPTOR_INTEL = 16528 };
enum { CL_ACCELERATOR_REFERENCE_COUNT_INTEL = 16529 };
enum { CL_ACCELERATOR_CONTEXT_INTEL = 16530 };
enum { CL_ACCELERATOR_TYPE_INTEL = 16531 };
enum { CL_INVALID_ACCELERATOR_INTEL = -1094 };
enum { CL_INVALID_ACCELERATOR_TYPE_INTEL = -1095 };
enum { CL_INVALID_ACCELERATOR_DESCRIPTOR_INTEL = -1096 };
enum { CL_ACCELERATOR_TYPE_NOT_SUPPORTED_INTEL = -1097 };
typedef cl_accelerator_intel ( * clCreateAcceleratorINTEL_fn)( cl_context context, cl_accelerator_type_intel accelerator_type, size_t descriptor_size, const void* descriptor, cl_int* errcode_ret);
typedef cl_int ( * clGetAcceleratorInfoINTEL_fn)( cl_accelerator_intel accelerator, cl_accelerator_info_intel param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
typedef cl_int ( * clRetainAcceleratorINTEL_fn)( cl_accelerator_intel accelerator);
typedef cl_int ( * clReleaseAcceleratorINTEL_fn)( cl_accelerator_intel accelerator);
extern cl_accelerator_intel clCreateAcceleratorINTEL( cl_context context, cl_accelerator_type_intel accelerator_type, size_t descriptor_size, const void* descriptor, cl_int* errcode_ret);
extern cl_int clGetAcceleratorInfoINTEL( cl_accelerator_intel accelerator, cl_accelerator_info_intel param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
extern cl_int clRetainAcceleratorINTEL( cl_accelerator_intel accelerator);
extern cl_int clReleaseAcceleratorINTEL( cl_accelerator_intel accelerator);
enum { cl_intel_motion_estimation = 1 };
/* #define CL_INTEL_MOTION_ESTIMATION_EXTENSION_NAME      "cl_intel_motion_estimation" ### string, not number "\"cl_intel_motion_estimation\"" */
typedef struct _cl_motion_estimation_desc_intel {
	cl_uint mb_block_type;
	cl_uint subpixel_mode;
	cl_uint sad_adjust_mode;
	cl_uint search_path_type;
} cl_motion_estimation_desc_intel;
enum { CL_ACCELERATOR_TYPE_MOTION_ESTIMATION_INTEL = 0 };
enum { CL_ME_MB_TYPE_16x16_INTEL = 0 };
enum { CL_ME_MB_TYPE_8x8_INTEL = 1 };
enum { CL_ME_MB_TYPE_4x4_INTEL = 2 };
enum { CL_ME_SUBPIXEL_MODE_INTEGER_INTEL = 0 };
enum { CL_ME_SUBPIXEL_MODE_HPEL_INTEL = 1 };
enum { CL_ME_SUBPIXEL_MODE_QPEL_INTEL = 2 };
enum { CL_ME_SAD_ADJUST_MODE_NONE_INTEL = 0 };
enum { CL_ME_SAD_ADJUST_MODE_HAAR_INTEL = 1 };
enum { CL_ME_SEARCH_PATH_RADIUS_2_2_INTEL = 0 };
enum { CL_ME_SEARCH_PATH_RADIUS_4_4_INTEL = 1 };
enum { CL_ME_SEARCH_PATH_RADIUS_16_12_INTEL = 5 };
enum { cl_intel_advanced_motion_estimation = 1 };
/* #define CL_INTEL_ADVANCED_MOTION_ESTIMATION_EXTENSION_NAME      "cl_intel_advanced_motion_estimation" ### string, not number "\"cl_intel_advanced_motion_estimation\"" */
enum { CL_DEVICE_ME_VERSION_INTEL = 16510 };
enum { CL_ME_VERSION_LEGACY_INTEL = 0 };
enum { CL_ME_VERSION_ADVANCED_VER_1_INTEL = 1 };
enum { CL_ME_VERSION_ADVANCED_VER_2_INTEL = 2 };
enum { CL_ME_CHROMA_INTRA_PREDICT_ENABLED_INTEL = 1 };
enum { CL_ME_LUMA_INTRA_PREDICT_ENABLED_INTEL = 2 };
enum { CL_ME_SKIP_BLOCK_TYPE_16x16_INTEL = 0 };
enum { CL_ME_SKIP_BLOCK_TYPE_8x8_INTEL = 1 };
enum { CL_ME_COST_PENALTY_NONE_INTEL = 0 };
enum { CL_ME_COST_PENALTY_LOW_INTEL = 1 };
enum { CL_ME_COST_PENALTY_NORMAL_INTEL = 2 };
enum { CL_ME_COST_PENALTY_HIGH_INTEL = 3 };
enum { CL_ME_COST_PRECISION_QPEL_INTEL = 0 };
enum { CL_ME_COST_PRECISION_HPEL_INTEL = 1 };
enum { CL_ME_COST_PRECISION_PEL_INTEL = 2 };
enum { CL_ME_COST_PRECISION_DPEL_INTEL = 3 };
enum { CL_ME_LUMA_PREDICTOR_MODE_VERTICAL_INTEL = 0 };
enum { CL_ME_LUMA_PREDICTOR_MODE_HORIZONTAL_INTEL = 1 };
enum { CL_ME_LUMA_PREDICTOR_MODE_DC_INTEL = 2 };
enum { CL_ME_LUMA_PREDICTOR_MODE_DIAGONAL_DOWN_LEFT_INTEL = 3 };
enum { CL_ME_LUMA_PREDICTOR_MODE_DIAGONAL_DOWN_RIGHT_INTEL = 4 };
enum { CL_ME_LUMA_PREDICTOR_MODE_PLANE_INTEL = 4 };
enum { CL_ME_LUMA_PREDICTOR_MODE_VERTICAL_RIGHT_INTEL = 5 };
enum { CL_ME_LUMA_PREDICTOR_MODE_HORIZONTAL_DOWN_INTEL = 6 };
enum { CL_ME_LUMA_PREDICTOR_MODE_VERTICAL_LEFT_INTEL = 7 };
enum { CL_ME_LUMA_PREDICTOR_MODE_HORIZONTAL_UP_INTEL = 8 };
enum { CL_ME_CHROMA_PREDICTOR_MODE_DC_INTEL = 0 };
enum { CL_ME_CHROMA_PREDICTOR_MODE_HORIZONTAL_INTEL = 1 };
enum { CL_ME_CHROMA_PREDICTOR_MODE_VERTICAL_INTEL = 2 };
enum { CL_ME_CHROMA_PREDICTOR_MODE_PLANE_INTEL = 3 };
enum { CL_ME_FORWARD_INPUT_MODE_INTEL = 1 };
enum { CL_ME_BACKWARD_INPUT_MODE_INTEL = 2 };
enum { CL_ME_BIDIRECTION_INPUT_MODE_INTEL = 3 };
enum { CL_ME_BIDIR_WEIGHT_QUARTER_INTEL = 16 };
enum { CL_ME_BIDIR_WEIGHT_THIRD_INTEL = 21 };
enum { CL_ME_BIDIR_WEIGHT_HALF_INTEL = 32 };
enum { CL_ME_BIDIR_WEIGHT_TWO_THIRD_INTEL = 43 };
enum { CL_ME_BIDIR_WEIGHT_THREE_QUARTER_INTEL = 48 };
enum { cl_intel_simultaneous_sharing = 1 };
/* #define CL_INTEL_SIMULTANEOUS_SHARING_EXTENSION_NAME      "cl_intel_simultaneous_sharing" ### string, not number "\"cl_intel_simultaneous_sharing\"" */
enum { CL_DEVICE_SIMULTANEOUS_INTEROPS_INTEL = 16644 };
enum { CL_DEVICE_NUM_SIMULTANEOUS_INTEROPS_INTEL = 16645 };
enum { cl_intel_egl_image_yuv = 1 };
/* #define CL_INTEL_EGL_IMAGE_YUV_EXTENSION_NAME      "cl_intel_egl_image_yuv" ### string, not number "\"cl_intel_egl_image_yuv\"" */
enum { CL_EGL_YUV_PLANE_INTEL = 16647 };
enum { cl_intel_packed_yuv = 1 };
/* #define CL_INTEL_PACKED_YUV_EXTENSION_NAME      "cl_intel_packed_yuv" ### string, not number "\"cl_intel_packed_yuv\"" */
enum { CL_YUYV_INTEL = 16502 };
enum { CL_UYVY_INTEL = 16503 };
enum { CL_YVYU_INTEL = 16504 };
enum { CL_VYUY_INTEL = 16505 };
enum { cl_intel_required_subgroup_size = 1 };
/* #define CL_INTEL_REQUIRED_SUBGROUP_SIZE_EXTENSION_NAME      "cl_intel_required_subgroup_size" ### string, not number "\"cl_intel_required_subgroup_size\"" */
enum { CL_DEVICE_SUB_GROUP_SIZES_INTEL = 16648 };
enum { CL_KERNEL_SPILL_MEM_SIZE_INTEL = 16649 };
enum { CL_KERNEL_COMPILE_SUB_GROUP_SIZE_INTEL = 16650 };
enum { cl_intel_driver_diagnostics = 1 };
/* #define CL_INTEL_DRIVER_DIAGNOSTICS_EXTENSION_NAME      "cl_intel_driver_diagnostics" ### string, not number "\"cl_intel_driver_diagnostics\"" */
typedef cl_uint cl_diagnostics_verbose_level;
enum { CL_CONTEXT_SHOW_DIAGNOSTICS_INTEL = 16646 };
enum { CL_CONTEXT_DIAGNOSTICS_LEVEL_ALL_INTEL = 255 };
enum { CL_CONTEXT_DIAGNOSTICS_LEVEL_GOOD_INTEL = 1 };
enum { CL_CONTEXT_DIAGNOSTICS_LEVEL_BAD_INTEL = 2 };
enum { CL_CONTEXT_DIAGNOSTICS_LEVEL_NEUTRAL_INTEL = 4 };
enum { cl_intel_planar_yuv = 1 };
/* #define CL_INTEL_PLANAR_YUV_EXTENSION_NAME      "cl_intel_planar_yuv" ### string, not number "\"cl_intel_planar_yuv\"" */
enum { CL_NV12_INTEL = 16654 };
enum { CL_MEM_NO_ACCESS_INTEL = 16777216 };
enum { CL_MEM_ACCESS_FLAGS_UNRESTRICTED_INTEL = 33554432 };
enum { CL_DEVICE_PLANAR_YUV_MAX_WIDTH_INTEL = 16766 };
enum { CL_DEVICE_PLANAR_YUV_MAX_HEIGHT_INTEL = 16767 };
enum { cl_intel_device_side_avc_motion_estimation = 1 };
/* #define CL_INTEL_DEVICE_SIDE_AVC_MOTION_ESTIMATION_EXTENSION_NAME      "cl_intel_device_side_avc_motion_estimation" ### string, not number "\"cl_intel_device_side_avc_motion_estimation\"" */
enum { CL_DEVICE_AVC_ME_VERSION_INTEL = 16651 };
enum { CL_DEVICE_AVC_ME_SUPPORTS_TEXTURE_SAMPLER_USE_INTEL = 16652 };
enum { CL_DEVICE_AVC_ME_SUPPORTS_PREEMPTION_INTEL = 16653 };
enum { CL_AVC_ME_VERSION_0_INTEL = 0 };
enum { CL_AVC_ME_VERSION_1_INTEL = 1 };
enum { CL_AVC_ME_MAJOR_16x16_INTEL = 0 };
enum { CL_AVC_ME_MAJOR_16x8_INTEL = 1 };
enum { CL_AVC_ME_MAJOR_8x16_INTEL = 2 };
enum { CL_AVC_ME_MAJOR_8x8_INTEL = 3 };
enum { CL_AVC_ME_MINOR_8x8_INTEL = 0 };
enum { CL_AVC_ME_MINOR_8x4_INTEL = 1 };
enum { CL_AVC_ME_MINOR_4x8_INTEL = 2 };
enum { CL_AVC_ME_MINOR_4x4_INTEL = 3 };
enum { CL_AVC_ME_MAJOR_FORWARD_INTEL = 0 };
enum { CL_AVC_ME_MAJOR_BACKWARD_INTEL = 1 };
enum { CL_AVC_ME_MAJOR_BIDIRECTIONAL_INTEL = 2 };
enum { CL_AVC_ME_PARTITION_MASK_ALL_INTEL = 0 };
enum { CL_AVC_ME_PARTITION_MASK_16x16_INTEL = 126 };
enum { CL_AVC_ME_PARTITION_MASK_16x8_INTEL = 125 };
enum { CL_AVC_ME_PARTITION_MASK_8x16_INTEL = 123 };
enum { CL_AVC_ME_PARTITION_MASK_8x8_INTEL = 119 };
enum { CL_AVC_ME_PARTITION_MASK_8x4_INTEL = 111 };
enum { CL_AVC_ME_PARTITION_MASK_4x8_INTEL = 95 };
enum { CL_AVC_ME_PARTITION_MASK_4x4_INTEL = 63 };
enum { CL_AVC_ME_SEARCH_WINDOW_EXHAUSTIVE_INTEL = 0 };
enum { CL_AVC_ME_SEARCH_WINDOW_SMALL_INTEL = 1 };
enum { CL_AVC_ME_SEARCH_WINDOW_TINY_INTEL = 2 };
enum { CL_AVC_ME_SEARCH_WINDOW_EXTRA_TINY_INTEL = 3 };
enum { CL_AVC_ME_SEARCH_WINDOW_DIAMOND_INTEL = 4 };
enum { CL_AVC_ME_SEARCH_WINDOW_LARGE_DIAMOND_INTEL = 5 };
enum { CL_AVC_ME_SEARCH_WINDOW_RESERVED0_INTEL = 6 };
enum { CL_AVC_ME_SEARCH_WINDOW_RESERVED1_INTEL = 7 };
enum { CL_AVC_ME_SEARCH_WINDOW_CUSTOM_INTEL = 8 };
enum { CL_AVC_ME_SEARCH_WINDOW_16x12_RADIUS_INTEL = 9 };
enum { CL_AVC_ME_SEARCH_WINDOW_4x4_RADIUS_INTEL = 2 };
enum { CL_AVC_ME_SEARCH_WINDOW_2x2_RADIUS_INTEL = 10 };
enum { CL_AVC_ME_SAD_ADJUST_MODE_NONE_INTEL = 0 };
enum { CL_AVC_ME_SAD_ADJUST_MODE_HAAR_INTEL = 2 };
enum { CL_AVC_ME_SUBPIXEL_MODE_INTEGER_INTEL = 0 };
enum { CL_AVC_ME_SUBPIXEL_MODE_HPEL_INTEL = 1 };
enum { CL_AVC_ME_SUBPIXEL_MODE_QPEL_INTEL = 3 };
enum { CL_AVC_ME_COST_PRECISION_QPEL_INTEL = 0 };
enum { CL_AVC_ME_COST_PRECISION_HPEL_INTEL = 1 };
enum { CL_AVC_ME_COST_PRECISION_PEL_INTEL = 2 };
enum { CL_AVC_ME_COST_PRECISION_DPEL_INTEL = 3 };
enum { CL_AVC_ME_BIDIR_WEIGHT_QUARTER_INTEL = 16 };
enum { CL_AVC_ME_BIDIR_WEIGHT_THIRD_INTEL = 21 };
enum { CL_AVC_ME_BIDIR_WEIGHT_HALF_INTEL = 32 };
enum { CL_AVC_ME_BIDIR_WEIGHT_TWO_THIRD_INTEL = 43 };
enum { CL_AVC_ME_BIDIR_WEIGHT_THREE_QUARTER_INTEL = 48 };
enum { CL_AVC_ME_BORDER_REACHED_LEFT_INTEL = 0 };
enum { CL_AVC_ME_BORDER_REACHED_RIGHT_INTEL = 2 };
enum { CL_AVC_ME_BORDER_REACHED_TOP_INTEL = 4 };
enum { CL_AVC_ME_BORDER_REACHED_BOTTOM_INTEL = 8 };
enum { CL_AVC_ME_SKIP_BLOCK_PARTITION_16x16_INTEL = 0 };
enum { CL_AVC_ME_SKIP_BLOCK_PARTITION_8x8_INTEL = 16384 };
enum { CL_AVC_ME_SKIP_BLOCK_16x16_FORWARD_ENABLE_INTEL = 16777216 };
enum { CL_AVC_ME_SKIP_BLOCK_16x16_BACKWARD_ENABLE_INTEL = 33554432 };
enum { CL_AVC_ME_SKIP_BLOCK_16x16_DUAL_ENABLE_INTEL = 50331648 };
enum { CL_AVC_ME_SKIP_BLOCK_8x8_FORWARD_ENABLE_INTEL = 1426063360 };
enum { CL_AVC_ME_SKIP_BLOCK_8x8_BACKWARD_ENABLE_INTEL = -1442840576 };
enum { CL_AVC_ME_SKIP_BLOCK_8x8_DUAL_ENABLE_INTEL = -16777216 };
enum { CL_AVC_ME_SKIP_BLOCK_8x8_0_FORWARD_ENABLE_INTEL = 16777216 };
enum { CL_AVC_ME_SKIP_BLOCK_8x8_0_BACKWARD_ENABLE_INTEL = 33554432 };
enum { CL_AVC_ME_SKIP_BLOCK_8x8_1_FORWARD_ENABLE_INTEL = 67108864 };
enum { CL_AVC_ME_SKIP_BLOCK_8x8_1_BACKWARD_ENABLE_INTEL = 134217728 };
enum { CL_AVC_ME_SKIP_BLOCK_8x8_2_FORWARD_ENABLE_INTEL = 268435456 };
enum { CL_AVC_ME_SKIP_BLOCK_8x8_2_BACKWARD_ENABLE_INTEL = 536870912 };
enum { CL_AVC_ME_SKIP_BLOCK_8x8_3_FORWARD_ENABLE_INTEL = 1073741824 };
enum { CL_AVC_ME_SKIP_BLOCK_8x8_3_BACKWARD_ENABLE_INTEL = -2147483648 };
enum { CL_AVC_ME_BLOCK_BASED_SKIP_4x4_INTEL = 0 };
enum { CL_AVC_ME_BLOCK_BASED_SKIP_8x8_INTEL = 128 };
enum { CL_AVC_ME_INTRA_16x16_INTEL = 0 };
enum { CL_AVC_ME_INTRA_8x8_INTEL = 1 };
enum { CL_AVC_ME_INTRA_4x4_INTEL = 2 };
enum { CL_AVC_ME_INTRA_LUMA_PARTITION_MASK_16x16_INTEL = 6 };
enum { CL_AVC_ME_INTRA_LUMA_PARTITION_MASK_8x8_INTEL = 5 };
enum { CL_AVC_ME_INTRA_LUMA_PARTITION_MASK_4x4_INTEL = 3 };
enum { CL_AVC_ME_INTRA_NEIGHBOR_LEFT_MASK_ENABLE_INTEL = 96 };
enum { CL_AVC_ME_INTRA_NEIGHBOR_UPPER_MASK_ENABLE_INTEL = 16 };
enum { CL_AVC_ME_INTRA_NEIGHBOR_UPPER_RIGHT_MASK_ENABLE_INTEL = 8 };
enum { CL_AVC_ME_INTRA_NEIGHBOR_UPPER_LEFT_MASK_ENABLE_INTEL = 4 };
enum { CL_AVC_ME_LUMA_PREDICTOR_MODE_VERTICAL_INTEL = 0 };
enum { CL_AVC_ME_LUMA_PREDICTOR_MODE_HORIZONTAL_INTEL = 1 };
enum { CL_AVC_ME_LUMA_PREDICTOR_MODE_DC_INTEL = 2 };
enum { CL_AVC_ME_LUMA_PREDICTOR_MODE_DIAGONAL_DOWN_LEFT_INTEL = 3 };
enum { CL_AVC_ME_LUMA_PREDICTOR_MODE_DIAGONAL_DOWN_RIGHT_INTEL = 4 };
enum { CL_AVC_ME_LUMA_PREDICTOR_MODE_PLANE_INTEL = 4 };
enum { CL_AVC_ME_LUMA_PREDICTOR_MODE_VERTICAL_RIGHT_INTEL = 5 };
enum { CL_AVC_ME_LUMA_PREDICTOR_MODE_HORIZONTAL_DOWN_INTEL = 6 };
enum { CL_AVC_ME_LUMA_PREDICTOR_MODE_VERTICAL_LEFT_INTEL = 7 };
enum { CL_AVC_ME_LUMA_PREDICTOR_MODE_HORIZONTAL_UP_INTEL = 8 };
enum { CL_AVC_ME_CHROMA_PREDICTOR_MODE_DC_INTEL = 0 };
enum { CL_AVC_ME_CHROMA_PREDICTOR_MODE_HORIZONTAL_INTEL = 1 };
enum { CL_AVC_ME_CHROMA_PREDICTOR_MODE_VERTICAL_INTEL = 2 };
enum { CL_AVC_ME_CHROMA_PREDICTOR_MODE_PLANE_INTEL = 3 };
enum { CL_AVC_ME_FRAME_FORWARD_INTEL = 1 };
enum { CL_AVC_ME_FRAME_BACKWARD_INTEL = 2 };
enum { CL_AVC_ME_FRAME_DUAL_INTEL = 3 };
enum { CL_AVC_ME_SLICE_TYPE_PRED_INTEL = 0 };
enum { CL_AVC_ME_SLICE_TYPE_BPRED_INTEL = 1 };
enum { CL_AVC_ME_SLICE_TYPE_INTRA_INTEL = 2 };
enum { CL_AVC_ME_INTERLACED_SCAN_TOP_FIELD_INTEL = 0 };
enum { CL_AVC_ME_INTERLACED_SCAN_BOTTOM_FIELD_INTEL = 1 };
enum { cl_intel_unified_shared_memory = 1 };
/* #define CL_INTEL_UNIFIED_SHARED_MEMORY_EXTENSION_NAME      "cl_intel_unified_shared_memory" ### string, not number "\"cl_intel_unified_shared_memory\"" */
typedef cl_bitfield cl_device_unified_shared_memory_capabilities_intel;
typedef cl_properties cl_mem_properties_intel;
typedef cl_bitfield cl_mem_alloc_flags_intel;
typedef cl_uint cl_mem_info_intel;
typedef cl_uint cl_unified_shared_memory_type_intel;
typedef cl_uint cl_mem_advice_intel;
enum { CL_DEVICE_HOST_MEM_CAPABILITIES_INTEL = 16784 };
enum { CL_DEVICE_DEVICE_MEM_CAPABILITIES_INTEL = 16785 };
enum { CL_DEVICE_SINGLE_DEVICE_SHARED_MEM_CAPABILITIES_INTEL = 16786 };
enum { CL_DEVICE_CROSS_DEVICE_SHARED_MEM_CAPABILITIES_INTEL = 16787 };
enum { CL_DEVICE_SHARED_SYSTEM_MEM_CAPABILITIES_INTEL = 16788 };
enum { CL_UNIFIED_SHARED_MEMORY_ACCESS_INTEL = 1 };
enum { CL_UNIFIED_SHARED_MEMORY_ATOMIC_ACCESS_INTEL = 2 };
enum { CL_UNIFIED_SHARED_MEMORY_CONCURRENT_ACCESS_INTEL = 4 };
enum { CL_UNIFIED_SHARED_MEMORY_CONCURRENT_ATOMIC_ACCESS_INTEL = 8 };
enum { CL_MEM_ALLOC_FLAGS_INTEL = 16789 };
enum { CL_MEM_ALLOC_WRITE_COMBINED_INTEL = 1 };
enum { CL_MEM_ALLOC_INITIAL_PLACEMENT_DEVICE_INTEL = 2 };
enum { CL_MEM_ALLOC_INITIAL_PLACEMENT_HOST_INTEL = 4 };
enum { CL_MEM_ALLOC_TYPE_INTEL = 16794 };
enum { CL_MEM_ALLOC_BASE_PTR_INTEL = 16795 };
enum { CL_MEM_ALLOC_SIZE_INTEL = 16796 };
enum { CL_MEM_ALLOC_DEVICE_INTEL = 16797 };
enum { CL_MEM_TYPE_UNKNOWN_INTEL = 16790 };
enum { CL_MEM_TYPE_HOST_INTEL = 16791 };
enum { CL_MEM_TYPE_DEVICE_INTEL = 16792 };
enum { CL_MEM_TYPE_SHARED_INTEL = 16793 };
enum { CL_KERNEL_EXEC_INFO_INDIRECT_HOST_ACCESS_INTEL = 16896 };
enum { CL_KERNEL_EXEC_INFO_INDIRECT_DEVICE_ACCESS_INTEL = 16897 };
enum { CL_KERNEL_EXEC_INFO_INDIRECT_SHARED_ACCESS_INTEL = 16898 };
enum { CL_KERNEL_EXEC_INFO_USM_PTRS_INTEL = 16899 };
enum { CL_COMMAND_MEMFILL_INTEL = 16900 };
enum { CL_COMMAND_MEMCPY_INTEL = 16901 };
enum { CL_COMMAND_MIGRATEMEM_INTEL = 16902 };
enum { CL_COMMAND_MEMADVISE_INTEL = 16903 };
typedef void* ( * clHostMemAllocINTEL_fn)( cl_context context, const cl_mem_properties_intel* properties, size_t size, cl_uint alignment, cl_int* errcode_ret);
typedef void* ( * clDeviceMemAllocINTEL_fn)( cl_context context, cl_device_id device, const cl_mem_properties_intel* properties, size_t size, cl_uint alignment, cl_int* errcode_ret);
typedef void* ( * clSharedMemAllocINTEL_fn)( cl_context context, cl_device_id device, const cl_mem_properties_intel* properties, size_t size, cl_uint alignment, cl_int* errcode_ret);
typedef cl_int ( * clMemFreeINTEL_fn)( cl_context context, void* ptr);
typedef cl_int ( * clMemBlockingFreeINTEL_fn)( cl_context context, void* ptr);
typedef cl_int ( * clGetMemAllocInfoINTEL_fn)( cl_context context, const void* ptr, cl_mem_info_intel param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
typedef cl_int ( * clSetKernelArgMemPointerINTEL_fn)( cl_kernel kernel, cl_uint arg_index, const void* arg_value);
typedef cl_int ( * clEnqueueMemFillINTEL_fn)( cl_command_queue command_queue, void* dst_ptr, const void* pattern, size_t pattern_size, size_t size, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_int ( * clEnqueueMemcpyINTEL_fn)( cl_command_queue command_queue, cl_bool blocking, void* dst_ptr, const void* src_ptr, size_t size, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_int ( * clEnqueueMemAdviseINTEL_fn)( cl_command_queue command_queue, const void* ptr, size_t size, cl_mem_advice_intel advice, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern void* clHostMemAllocINTEL( cl_context context, const cl_mem_properties_intel* properties, size_t size, cl_uint alignment, cl_int* errcode_ret);
extern void* clDeviceMemAllocINTEL( cl_context context, cl_device_id device, const cl_mem_properties_intel* properties, size_t size, cl_uint alignment, cl_int* errcode_ret);
extern void* clSharedMemAllocINTEL( cl_context context, cl_device_id device, const cl_mem_properties_intel* properties, size_t size, cl_uint alignment, cl_int* errcode_ret);
extern cl_int clMemFreeINTEL( cl_context context, void* ptr);
extern cl_int clMemBlockingFreeINTEL( cl_context context, void* ptr);
extern cl_int clGetMemAllocInfoINTEL( cl_context context, const void* ptr, cl_mem_info_intel param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
extern cl_int clSetKernelArgMemPointerINTEL( cl_kernel kernel, cl_uint arg_index, const void* arg_value);
extern cl_int clEnqueueMemFillINTEL( cl_command_queue command_queue, void* dst_ptr, const void* pattern, size_t pattern_size, size_t size, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueMemcpyINTEL( cl_command_queue command_queue, cl_bool blocking, void* dst_ptr, const void* src_ptr, size_t size, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueMemAdviseINTEL( cl_command_queue command_queue, const void* ptr, size_t size, cl_mem_advice_intel advice, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_int ( * clEnqueueMigrateMemINTEL_fn)( cl_command_queue command_queue, const void* ptr, size_t size, cl_mem_migration_flags flags, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueMigrateMemINTEL( cl_command_queue command_queue, const void* ptr, size_t size, cl_mem_migration_flags flags, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_int ( * clEnqueueMemsetINTEL_fn)( cl_command_queue command_queue, void* dst_ptr, cl_int value, size_t size, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueMemsetINTEL( cl_command_queue command_queue, void* dst_ptr, cl_int value, size_t size, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
enum { cl_intel_mem_alloc_buffer_location = 1 };
/* #define CL_INTEL_MEM_ALLOC_BUFFER_LOCATION_EXTENSION_NAME      "cl_intel_mem_alloc_buffer_location" ### string, not number "\"cl_intel_mem_alloc_buffer_location\"" */
enum { CL_MEM_ALLOC_BUFFER_LOCATION_INTEL = 16798 };
enum { cl_intel_create_buffer_with_properties = 1 };
/* #define CL_INTEL_CREATE_BUFFER_WITH_PROPERTIES_EXTENSION_NAME      "cl_intel_create_buffer_with_properties" ### string, not number "\"cl_intel_create_buffer_with_properties\"" */
typedef cl_mem ( * clCreateBufferWithPropertiesINTEL_fn)( cl_context context, const cl_mem_properties_intel* properties, cl_mem_flags flags, size_t size, void* host_ptr, cl_int* errcode_ret);
extern cl_mem clCreateBufferWithPropertiesINTEL( cl_context context, const cl_mem_properties_intel* properties, cl_mem_flags flags, size_t size, void* host_ptr, cl_int* errcode_ret);
enum { cl_intel_program_scope_host_pipe = 1 };
/* #define CL_INTEL_PROGRAM_SCOPE_HOST_PIPE_EXTENSION_NAME      "cl_intel_program_scope_host_pipe" ### string, not number "\"cl_intel_program_scope_host_pipe\"" */
enum { CL_COMMAND_READ_HOST_PIPE_INTEL = 16916 };
enum { CL_COMMAND_WRITE_HOST_PIPE_INTEL = 16917 };
enum { CL_PROGRAM_NUM_HOST_PIPES_INTEL = 16918 };
enum { CL_PROGRAM_HOST_PIPE_NAMES_INTEL = 16919 };
typedef cl_int ( * clEnqueueReadHostPipeINTEL_fn)( cl_command_queue command_queue, cl_program program, const char* pipe_symbol, cl_bool blocking_read, void* ptr, size_t size, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
typedef cl_int ( * clEnqueueWriteHostPipeINTEL_fn)( cl_command_queue command_queue, cl_program program, const char* pipe_symbol, cl_bool blocking_write, const void* ptr, size_t size, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueReadHostPipeINTEL( cl_command_queue command_queue, cl_program program, const char* pipe_symbol, cl_bool blocking_read, void* ptr, size_t size, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
extern cl_int clEnqueueWriteHostPipeINTEL( cl_command_queue command_queue, cl_program program, const char* pipe_symbol, cl_bool blocking_write, const void* ptr, size_t size, cl_uint num_events_in_wait_list, const cl_event* event_wait_list, cl_event* event);
enum { cl_intel_mem_channel_property = 1 };
/* #define CL_INTEL_MEM_CHANNEL_PROPERTY_EXTENSION_NAME      "cl_intel_mem_channel_property" ### string, not number "\"cl_intel_mem_channel_property\"" */
enum { CL_MEM_CHANNEL_INTEL = 16915 };
enum { cl_intel_mem_force_host_memory = 1 };
/* #define CL_INTEL_MEM_FORCE_HOST_MEMORY_EXTENSION_NAME      "cl_intel_mem_force_host_memory" ### string, not number "\"cl_intel_mem_force_host_memory\"" */
enum { CL_MEM_FORCE_HOST_MEMORY_INTEL = 1048576 };
enum { cl_intel_command_queue_families = 1 };
/* #define CL_INTEL_COMMAND_QUEUE_FAMILIES_EXTENSION_NAME      "cl_intel_command_queue_families" ### string, not number "\"cl_intel_command_queue_families\"" */
typedef cl_bitfield cl_command_queue_capabilities_intel;
enum { CL_QUEUE_FAMILY_MAX_NAME_SIZE_INTEL = 64 };
typedef struct _cl_queue_family_properties_intel {
	cl_command_queue_properties properties;
	cl_command_queue_capabilities_intel capabilities;
	cl_uint count;
	char name[64];
} cl_queue_family_properties_intel;
enum { CL_DEVICE_QUEUE_FAMILY_PROPERTIES_INTEL = 16779 };
enum { CL_QUEUE_FAMILY_INTEL = 16780 };
enum { CL_QUEUE_INDEX_INTEL = 16781 };
enum { CL_QUEUE_DEFAULT_CAPABILITIES_INTEL = 0 };
enum { CL_QUEUE_CAPABILITY_CREATE_SINGLE_QUEUE_EVENTS_INTEL = 1 };
enum { CL_QUEUE_CAPABILITY_CREATE_CROSS_QUEUE_EVENTS_INTEL = 2 };
enum { CL_QUEUE_CAPABILITY_SINGLE_QUEUE_EVENT_WAIT_LIST_INTEL = 4 };
enum { CL_QUEUE_CAPABILITY_CROSS_QUEUE_EVENT_WAIT_LIST_INTEL = 8 };
enum { CL_QUEUE_CAPABILITY_TRANSFER_BUFFER_INTEL = 256 };
enum { CL_QUEUE_CAPABILITY_TRANSFER_BUFFER_RECT_INTEL = 512 };
enum { CL_QUEUE_CAPABILITY_MAP_BUFFER_INTEL = 1024 };
enum { CL_QUEUE_CAPABILITY_FILL_BUFFER_INTEL = 2048 };
enum { CL_QUEUE_CAPABILITY_TRANSFER_IMAGE_INTEL = 4096 };
enum { CL_QUEUE_CAPABILITY_MAP_IMAGE_INTEL = 8192 };
enum { CL_QUEUE_CAPABILITY_FILL_IMAGE_INTEL = 16384 };
enum { CL_QUEUE_CAPABILITY_TRANSFER_BUFFER_IMAGE_INTEL = 32768 };
enum { CL_QUEUE_CAPABILITY_TRANSFER_IMAGE_BUFFER_INTEL = 65536 };
enum { CL_QUEUE_CAPABILITY_MARKER_INTEL = 16777216 };
enum { CL_QUEUE_CAPABILITY_BARRIER_INTEL = 33554432 };
enum { CL_QUEUE_CAPABILITY_KERNEL_INTEL = 67108864 };
enum { cl_intel_queue_no_sync_operations = 1 };
/* #define CL_INTEL_QUEUE_NO_SYNC_OPERATIONS_EXTENSION_NAME      "cl_intel_queue_no_sync_operations" ### string, not number "\"cl_intel_queue_no_sync_operations\"" */
enum { CL_QUEUE_NO_SYNC_OPERATIONS_INTEL = 536870912 };
enum { cl_intel_sharing_format_query = 1 };
/* #define CL_INTEL_SHARING_FORMAT_QUERY_EXTENSION_NAME      "cl_intel_sharing_format_query" ### string, not number "\"cl_intel_sharing_format_query\"" */
enum { cl_ext_image_requirements_info = 1 };
/* #define CL_EXT_IMAGE_REQUIREMENTS_INFO_EXTENSION_NAME      "cl_ext_image_requirements_info" ### string, not number "\"cl_ext_image_requirements_info\"" */
typedef cl_uint cl_image_requirements_info_ext;
enum { CL_IMAGE_REQUIREMENTS_BASE_ADDRESS_ALIGNMENT_EXT = 4754 };
enum { CL_IMAGE_REQUIREMENTS_ROW_PITCH_ALIGNMENT_EXT = 4752 };
enum { CL_IMAGE_REQUIREMENTS_SIZE_EXT = 4786 };
enum { CL_IMAGE_REQUIREMENTS_MAX_WIDTH_EXT = 4787 };
enum { CL_IMAGE_REQUIREMENTS_MAX_HEIGHT_EXT = 4788 };
enum { CL_IMAGE_REQUIREMENTS_MAX_DEPTH_EXT = 4789 };
enum { CL_IMAGE_REQUIREMENTS_MAX_ARRAY_SIZE_EXT = 4790 };
typedef cl_int ( * clGetImageRequirementsInfoEXT_fn)( cl_context context, const cl_mem_properties* properties, cl_mem_flags flags, const cl_image_format* image_format, const cl_image_desc* image_desc, cl_image_requirements_info_ext param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
extern cl_int clGetImageRequirementsInfoEXT( cl_context context, const cl_mem_properties* properties, cl_mem_flags flags, const cl_image_format* image_format, const cl_image_desc* image_desc, cl_image_requirements_info_ext param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
enum { cl_ext_image_from_buffer = 1 };
/* #define CL_EXT_IMAGE_FROM_BUFFER_EXTENSION_NAME      "cl_ext_image_from_buffer" ### string, not number "\"cl_ext_image_from_buffer\"" */
enum { CL_IMAGE_REQUIREMENTS_SLICE_PITCH_ALIGNMENT_EXT = 4753 };
enum { cl_loader_info = 1 };
/* #define CL_LOADER_INFO_EXTENSION_NAME      "cl_loader_info" ### string, not number "\"cl_loader_info\"" */
typedef cl_uint cl_icdl_info;
enum { CL_ICDL_OCL_VERSION = 1 };
enum { CL_ICDL_VERSION = 2 };
enum { CL_ICDL_NAME = 3 };
enum { CL_ICDL_VENDOR = 4 };
typedef cl_int ( * clGetICDLoaderInfoOCLICD_fn)( cl_icdl_info param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
extern cl_int clGetICDLoaderInfoOCLICD( cl_icdl_info param_name, size_t param_value_size, void* param_value, size_t* param_value_size_ret);
enum { cl_khr_depth_images = 1 };
/* #define CL_KHR_DEPTH_IMAGES_EXTENSION_NAME      "cl_khr_depth_images" ### string, not number "\"cl_khr_depth_images\"" */
enum { cl_ext_float_atomics = 1 };
/* #define CL_EXT_FLOAT_ATOMICS_EXTENSION_NAME      "cl_ext_float_atomics" ### string, not number "\"cl_ext_float_atomics\"" */
typedef cl_bitfield cl_device_fp_atomic_capabilities_ext;
enum { CL_DEVICE_GLOBAL_FP_ATOMIC_LOAD_STORE_EXT = 1 };
enum { CL_DEVICE_GLOBAL_FP_ATOMIC_ADD_EXT = 2 };
enum { CL_DEVICE_GLOBAL_FP_ATOMIC_MIN_MAX_EXT = 4 };
enum { CL_DEVICE_LOCAL_FP_ATOMIC_LOAD_STORE_EXT = 65536 };
enum { CL_DEVICE_LOCAL_FP_ATOMIC_ADD_EXT = 131072 };
enum { CL_DEVICE_LOCAL_FP_ATOMIC_MIN_MAX_EXT = 262144 };
enum { CL_DEVICE_SINGLE_FP_ATOMIC_CAPABILITIES_EXT = 16945 };
enum { CL_DEVICE_DOUBLE_FP_ATOMIC_CAPABILITIES_EXT = 16946 };
enum { CL_DEVICE_HALF_FP_ATOMIC_CAPABILITIES_EXT = 16947 };
enum { cl_intel_create_mem_object_properties = 1 };
/* #define CL_INTEL_CREATE_MEM_OBJECT_PROPERTIES_EXTENSION_NAME      "cl_intel_create_mem_object_properties" ### string, not number "\"cl_intel_create_mem_object_properties\"" */
enum { CL_MEM_LOCALLY_UNCACHED_RESOURCE_INTEL = 16920 };
enum { CL_MEM_DEVICE_ID_INTEL = 16921 };
enum { cl_pocl_content_size = 1 };
/* #define CL_POCL_CONTENT_SIZE_EXTENSION_NAME      "cl_pocl_content_size" ### string, not number "\"cl_pocl_content_size\"" */
typedef cl_int ( * clSetContentSizeBufferPoCL_fn)( cl_mem buffer, cl_mem content_size_buffer);
extern cl_int clSetContentSizeBufferPoCL( cl_mem buffer, cl_mem content_size_buffer);
/* ++ END   /usr/include/CL/cl_ext.h */
/* + END   /usr/include/CL/opencl.h */
]]
return require 'ffi.load' 'OpenCL'
