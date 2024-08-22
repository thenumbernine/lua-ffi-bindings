local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/usr/lib/clang/15.0.0/include/stdint.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdint.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
typedef signed char int8_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
typedef short int16_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
typedef int int32_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
typedef long long int64_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h */
typedef unsigned char uint8_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h */
typedef unsigned short uint16_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h */
typedef unsigned int uint32_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h */
typedef unsigned long long uint64_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h */
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
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;
typedef long __darwin_intptr_t;
typedef unsigned int __darwin_natural_t;
typedef int __darwin_ct_rune_t;
typedef union {
	char __mbstate8[128];
	long long _mbstateL;
} __mbstate_t;
typedef __mbstate_t __darwin_mbstate_t;
typedef long int __darwin_ptrdiff_t;
typedef long unsigned int __darwin_size_t;
typedef __builtin_va_list __darwin_va_list;
typedef int __darwin_wchar_t;
typedef __darwin_wchar_t __darwin_rune_t;
typedef int __darwin_wint_t;
typedef unsigned long __darwin_clock_t;
typedef __uint32_t __darwin_socklen_t;
typedef long __darwin_ssize_t;
typedef long __darwin_time_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
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
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_types' ffi.cdef[[
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h */
typedef unsigned char u_int8_t;
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h */
typedef unsigned short u_int16_t;
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h */
typedef unsigned int u_int32_t;
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h */
typedef unsigned long long u_int64_t;
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h */
typedef int64_t register_t;
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
typedef unsigned long uintptr_t;
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
typedef u_int64_t user_addr_t;
typedef u_int64_t user_size_t;
typedef int64_t user_ssize_t;
typedef int64_t user_long_t;
typedef u_int64_t user_ulong_t;
typedef int64_t user_time_t;
typedef int64_t user_off_t;
/* #define USER_ADDR_NULL  ((user_addr_t) 0) ### string, not number "((user_addr_t) 0)" */
typedef u_int64_t syscall_arg_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
typedef __darwin_intptr_t intptr_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_intmax_t.h */
typedef long int intmax_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_intmax_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h */
typedef long unsigned int uintmax_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h */
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
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdint.h */
/* + END   /Library/Developer/CommandLineTools/usr/lib/clang/15.0.0/include/stdint.h */
]]
