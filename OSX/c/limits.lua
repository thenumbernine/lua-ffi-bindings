local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/usr/lib/clang/15.0.0/include/limits.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/limits.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/limits.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/limits.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_limits.h */
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_limits.h */
enum { MB_LEN_MAX = 6 };
enum { CLK_TCK = 100 };
enum { CHAR_BIT = 8 };
enum { SCHAR_MAX = 127 };
enum { SCHAR_MIN = -128 };
enum { UCHAR_MAX = 255 };
enum { CHAR_MAX = 127 };
enum { CHAR_MIN = -128 };
enum { USHRT_MAX = 65535 };
enum { SHRT_MAX = 32767 };
enum { SHRT_MIN = -32768 };
enum { UINT_MAX = 4294967295 };
enum { INT_MAX = 2147483647 };
enum { INT_MIN = -2147483648 };
/* #define ULONG_MAX       0xffffffffffffffffUL ### string, not number "1.844674407371e+19" */
/* #define LONG_MAX        0x7fffffffffffffffL ### string, not number "9.2233720368548e+18" */
/* #define LONG_MIN        (-0x7fffffffffffffffL-1) ### string, not number "-9.2233720368548e+18" */
/* #define ULLONG_MAX      0xffffffffffffffffULL ### string, not number "0xffffffffffffffffULL" */
/* #define LLONG_MAX       0x7fffffffffffffffLL ### string, not number "9.2233720368548e+18" */
/* #define LLONG_MIN       (-0x7fffffffffffffffLL-1) ### string, not number "-9.2233720368548e+18" */
enum { LONG_BIT = 64 };
/* #define SSIZE_MAX       LONG_MAX ### string, not number "9.2233720368548e+18" */
enum { WORD_BIT = 32 };
/* #define SIZE_T_MAX      ULONG_MAX ### string, not number "1.844674407371e+19" */
/* #define UQUAD_MAX       ULLONG_MAX ### string, not number "ULLONG_MAX" */
/* #define QUAD_MAX        LLONG_MAX ### string, not number "9.2233720368548e+18" */
/* #define QUAD_MIN        LLONG_MIN ### string, not number "-9.2233720368548e+18" */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/limits.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/limits.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/syslimits.h */
]] require 'ffi.req' 'c.sys.syslimits' ffi.cdef[[
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/syslimits.h */
enum { PTHREAD_DESTRUCTOR_ITERATIONS = 4 };
enum { PTHREAD_KEYS_MAX = 512 };
enum { PTHREAD_STACK_MIN = 8192 };
/* #define OFF_MIN		LLONG_MIN ### string, not number "-9.2233720368548e+18" */
/* #define OFF_MAX		LLONG_MAX ### string, not number "9.2233720368548e+18" */
enum { PASS_MAX = 128 };
enum { NL_ARGMAX = 9 };
enum { NL_LANGMAX = 14 };
enum { NL_MSGMAX = 32767 };
enum { NL_NMAX = 1 };
enum { NL_SETMAX = 255 };
enum { NL_TEXTMAX = 2048 };
enum { IOV_MAX = 1024 };
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/limits.h */
/* redefining matching value: #define SCHAR_MAX __SCHAR_MAX__ */
/* redefining matching value: #define SHRT_MAX  __SHRT_MAX__ */
/* redefining matching value: #define INT_MAX   __INT_MAX__ */
/* #define LONG_MAX  __LONG_MAX__ ### string, not number "9.2233720368548e+18" */
/* redefining matching value: #define SCHAR_MIN (-__SCHAR_MAX__-1) */
/* redefining matching value: #define SHRT_MIN  (-__SHRT_MAX__ -1) */
/* redefining matching value: #define INT_MIN   (-__INT_MAX__  -1) */
/* #define LONG_MIN  (-__LONG_MAX__ -1L) ### string, not number "-9.2233720368548e+18" */
/* redefining matching value: #define UCHAR_MAX (__SCHAR_MAX__*2  +1) */
/* redefining matching value: #define USHRT_MAX (__SHRT_MAX__ *2  +1) */
/* redefining matching value: #define UINT_MAX  (__INT_MAX__  *2U +1U) */
/* #define ULONG_MAX (__LONG_MAX__ *2UL+1UL) ### string, not number "1.844674407371e+19" */
/* redefining matching value: #define CHAR_BIT  __CHAR_BIT__ */
/* redefining matching value: #define CHAR_MIN SCHAR_MIN */
/* redefining matching value: #define CHAR_MAX __SCHAR_MAX__ */
/* #define LLONG_MAX  __LONG_LONG_MAX__ ### string, not number "9.2233720368548e+18" */
/* #define LLONG_MIN  (-__LONG_LONG_MAX__-1LL) ### string, not number "-9.2233720368548e+18" */
/* #define ULLONG_MAX (__LONG_LONG_MAX__*2ULL+1ULL) ### string, not number "(__LONG_LONG_MAX__*2ULL+1ULL)" */
/* #define LONG_LONG_MAX  __LONG_LONG_MAX__ ### string, not number "9.2233720368548e+18" */
/* #define LONG_LONG_MIN  (-__LONG_LONG_MAX__-1LL) ### string, not number "-9.2233720368548e+18" */
/* #define ULONG_LONG_MAX (__LONG_LONG_MAX__*2ULL+1ULL) ### string, not number "(__LONG_LONG_MAX__*2ULL+1ULL)" */
/* + END   /Library/Developer/CommandLineTools/usr/lib/clang/15.0.0/include/limits.h */
]]
