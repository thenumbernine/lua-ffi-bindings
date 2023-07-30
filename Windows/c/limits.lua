local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.36.32532/include/limits.h */
enum { _INC_LIMITS = 1 };
/* #pragma warning(push) */
/* #pragma warning(disable: _VCRUNTIME_DISABLED_WARNINGS) */
enum { CHAR_BIT = 8 };
enum { SCHAR_MIN = -128 };
enum { SCHAR_MAX = 127 };
enum { UCHAR_MAX = 255 };
enum { CHAR_MIN = -128 };
enum { CHAR_MAX = 127 };
enum { MB_LEN_MAX = 5 };
enum { SHRT_MIN = -32768 };
enum { SHRT_MAX = 32767 };
enum { USHRT_MAX = 65535 };
enum { INT_MIN = -2147483648 };
enum { INT_MAX = 2147483647 };
enum { UINT_MAX = 4294967295 };
enum { LONG_MIN = -2147483648 };
enum { LONG_MAX = 2147483647 };
enum { ULONG_MAX = 4294967295 };
/* #define LLONG_MAX     9223372036854775807i64 ### string, not number "9223372036854775807i64" */
/* #define LLONG_MIN   (-9223372036854775807i64 - 1) ### string, not number "(-9223372036854775807i64 - 1)" */
/* #define ULLONG_MAX    0xffffffffffffffffui64 ### string, not number "0xffffffffffffffffui64" */
/* #define _I8_MIN     (-127i8 - 1) ### string, not number "(-127i8 - 1)" */
/* #define _I8_MAX       127i8 ### string, not number "127i8" */
/* #define _UI8_MAX      0xffui8 ### string, not number "0xffui8" */
/* #define _I16_MIN    (-32767i16 - 1) ### string, not number "(-32767i16 - 1)" */
/* #define _I16_MAX      32767i16 ### string, not number "32767i16" */
/* #define _UI16_MAX     0xffffui16 ### string, not number "0xffffui16" */
/* #define _I32_MIN    (-2147483647i32 - 1) ### string, not number "(-2147483647i32 - 1)" */
/* #define _I32_MAX      2147483647i32 ### string, not number "2147483647i32" */
/* #define _UI32_MAX     0xffffffffui32 ### string, not number "0xffffffffui32" */
/* #define _I64_MIN    (-9223372036854775807i64 - 1) ### string, not number "(-9223372036854775807i64 - 1)" */
/* #define _I64_MAX      9223372036854775807i64 ### string, not number "9223372036854775807i64" */
/* #define _UI64_MAX     0xffffffffffffffffui64 ### string, not number "0xffffffffffffffffui64" */
/* #define SIZE_MAX 0xffffffffffffffffui64 ### string, not number "0xffffffffffffffffui64" */
/* #pragma warning(pop)  */
/* + END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.36.32532/include/limits.h */
]]
