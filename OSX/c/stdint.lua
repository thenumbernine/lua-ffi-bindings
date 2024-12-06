local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
typedef signed char int8_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
typedef short int16_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
typedef int int32_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
typedef long long int64_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h */
typedef unsigned char uint8_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h */
typedef unsigned short uint16_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h */
typedef unsigned int uint32_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h */
typedef unsigned long long uint64_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h */
typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;
typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;
typedef int8_t int_fast8_t;
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef int64_t int_fast64_t;
typedef uint8_t uint_fast8_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
typedef uint64_t uint_fast64_t;
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
/* redefining matching value: #define USE_CLANG_TYPES 0 */
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef unsigned int __darwin_fsblkcnt_t;
typedef unsigned int __darwin_fsfilcnt_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint32_t __darwin_id_t;
typedef __uint64_t __darwin_ino64_t;
typedef __darwin_ino64_t __darwin_ino_t;
typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_pid_t;
typedef __uint32_t __darwin_sigset_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
typedef __uint32_t __darwin_useconds_t;
typedef unsigned char __darwin_uuid_t[16];
typedef char __darwin_uuid_string_t[37];
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_types' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
typedef __darwin_intptr_t intptr_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
typedef unsigned long uintptr_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_intmax_t.h */
typedef long int intmax_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_intmax_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h */
typedef long unsigned int uintmax_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h */
enum { INT8_MAX = 127 };
enum { INT16_MAX = 32767 };
enum { INT32_MAX = 2147483647 };
/* #define INT64_MAX        9223372036854775807LL ### string, not number "9.2233720368548e+18" */
enum { INT8_MIN = -128 };
enum { INT16_MIN = -32768 };
enum { INT32_MIN = -2147483648 };
/* #define INT64_MIN        (-INT64_MAX-1) ### string, not number "-9.2233720368548e+18" */
enum { UINT8_MAX = 255 };
enum { UINT16_MAX = 65535 };
enum { UINT32_MAX = 4294967295 };
/* #define UINT64_MAX        18446744073709551615ULL ### string, not number "18446744073709551615ULL" */
enum { INT_LEAST8_MIN = -128 };
enum { INT_LEAST16_MIN = -32768 };
enum { INT_LEAST32_MIN = -2147483648 };
/* #define INT_LEAST64_MIN   INT64_MIN ### string, not number "-9.2233720368548e+18" */
enum { INT_LEAST8_MAX = 127 };
enum { INT_LEAST16_MAX = 32767 };
enum { INT_LEAST32_MAX = 2147483647 };
/* #define INT_LEAST64_MAX   INT64_MAX ### string, not number "9.2233720368548e+18" */
enum { UINT_LEAST8_MAX = 255 };
enum { UINT_LEAST16_MAX = 65535 };
enum { UINT_LEAST32_MAX = 4294967295 };
/* #define UINT_LEAST64_MAX  UINT64_MAX ### string, not number "UINT64_MAX" */
enum { INT_FAST8_MIN = -128 };
enum { INT_FAST16_MIN = -32768 };
enum { INT_FAST32_MIN = -2147483648 };
/* #define INT_FAST64_MIN    INT64_MIN ### string, not number "-9.2233720368548e+18" */
enum { INT_FAST8_MAX = 127 };
enum { INT_FAST16_MAX = 32767 };
enum { INT_FAST32_MAX = 2147483647 };
/* #define INT_FAST64_MAX    INT64_MAX ### string, not number "9.2233720368548e+18" */
enum { UINT_FAST8_MAX = 255 };
enum { UINT_FAST16_MAX = 65535 };
enum { UINT_FAST32_MAX = 4294967295 };
/* #define UINT_FAST64_MAX   UINT64_MAX ### string, not number "UINT64_MAX" */
/* #define INTPTR_MAX        9223372036854775807L ### string, not number "9.2233720368548e+18" */
/* #define INTPTR_MIN        (-INTPTR_MAX-1) ### string, not number "-9.2233720368548e+18" */
/* #define UINTPTR_MAX       18446744073709551615UL ### string, not number "1.844674407371e+19" */
/* #define INTMAX_MAX        INTMAX_C(9223372036854775807) ### string, not number "9.2233720368548e+18" */
/* #define UINTMAX_MAX       UINTMAX_C(18446744073709551615) ### string, not number "1.844674407371e+19" */
/* #define INTMAX_MIN        (-INTMAX_MAX-1) ### string, not number "-9.2233720368548e+18" */
/* #define PTRDIFF_MIN	  INTMAX_MIN ### string, not number "-9.2233720368548e+18" */
/* #define PTRDIFF_MAX	  INTMAX_MAX ### string, not number "9.2233720368548e+18" */
/* #define SIZE_MAX          UINTPTR_MAX ### string, not number "1.844674407371e+19" */
enum { RSIZE_MAX = 0 };
enum { WCHAR_MAX = 2147483647 };
enum { WCHAR_MIN = -2147483648 };
enum { WINT_MIN = -2147483648 };
enum { WINT_MAX = 2147483647 };
enum { SIG_ATOMIC_MIN = -2147483648 };
enum { SIG_ATOMIC_MAX = 2147483647 };
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h */
/* + END   /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
]]
