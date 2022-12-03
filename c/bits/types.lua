local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
enum { _BITS_TYPES_H = 1 };
/* BEGIN /usr/include/features.h */
]] require 'ffi.c.features' ffi.cdef[[
/* END   /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* redefining matching value: # define __WORDSIZE	64 */
/* redefining matching value: # define __WORDSIZE_TIME64_COMPAT32	1 */
/* redefining matching value: # define __SYSCALL_WORDSIZE		64 */
/* END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/timesize.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* redefining matching value: # define __WORDSIZE	64 */
/* redefining matching value: # define __WORDSIZE_TIME64_COMPAT32	1 */
/* redefining matching value: # define __SYSCALL_WORDSIZE		64 */
/* END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* redefining matching value: # define __TIMESIZE	__WORDSIZE */
/* END   /usr/include/x86_64-linux-gnu/bits/timesize.h */
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
/* #define	__S16_TYPE		short int ### string, not number "short int" */
/* #define __U16_TYPE		unsigned short int ### string, not number "unsigned short int" */
enum { __S32_TYPE = 0 };
/* #define __U32_TYPE		unsigned int ### string, not number "unsigned int" */
/* #define __SLONGWORD_TYPE	long int ### string, not number "long int" */
/* #define __ULONGWORD_TYPE	unsigned long int ### string, not number "unsigned long int" */
/* # define __SQUAD_TYPE		long int ### string, not number "long int" */
/* # define __UQUAD_TYPE		unsigned long int ### string, not number "unsigned long int" */
/* # define __SWORD_TYPE		long int ### string, not number "long int" */
/* # define __UWORD_TYPE		unsigned long int ### string, not number "unsigned long int" */
enum { __SLONG32_TYPE = 0 };
/* # define __ULONG32_TYPE		unsigned int ### string, not number "unsigned int" */
/* # define __S64_TYPE		long int ### string, not number "long int" */
/* # define __U64_TYPE		unsigned long int ### string, not number "unsigned long int" */
enum { __STD_TYPE = 0 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/typesizes.h */
enum { _BITS_TYPESIZES_H = 1 };
/* # define __SYSCALL_SLONG_TYPE	__SLONGWORD_TYPE ### string, not number "__SLONGWORD_TYPE" */
/* # define __SYSCALL_ULONG_TYPE	__ULONGWORD_TYPE ### string, not number "__ULONGWORD_TYPE" */
/* #define __DEV_T_TYPE		__UQUAD_TYPE ### string, not number "__UQUAD_TYPE" */
/* #define __UID_T_TYPE		__U32_TYPE ### string, not number "__U32_TYPE" */
/* #define __GID_T_TYPE		__U32_TYPE ### string, not number "__U32_TYPE" */
/* #define __INO_T_TYPE		__SYSCALL_ULONG_TYPE ### string, not number "__SYSCALL_ULONG_TYPE" */
/* #define __INO64_T_TYPE		__UQUAD_TYPE ### string, not number "__UQUAD_TYPE" */
/* #define __MODE_T_TYPE		__U32_TYPE ### string, not number "__U32_TYPE" */
/* # define __NLINK_T_TYPE		__SYSCALL_ULONG_TYPE ### string, not number "__SYSCALL_ULONG_TYPE" */
/* # define __FSWORD_T_TYPE	__SYSCALL_SLONG_TYPE ### string, not number "__SYSCALL_SLONG_TYPE" */
/* #define __OFF_T_TYPE		__SYSCALL_SLONG_TYPE ### string, not number "__SYSCALL_SLONG_TYPE" */
/* #define __OFF64_T_TYPE		__SQUAD_TYPE ### string, not number "__SQUAD_TYPE" */
enum { __PID_T_TYPE = 0 };
/* #define __RLIM_T_TYPE		__SYSCALL_ULONG_TYPE ### string, not number "__SYSCALL_ULONG_TYPE" */
/* #define __RLIM64_T_TYPE		__UQUAD_TYPE ### string, not number "__UQUAD_TYPE" */
/* #define __BLKCNT_T_TYPE		__SYSCALL_SLONG_TYPE ### string, not number "__SYSCALL_SLONG_TYPE" */
/* #define __BLKCNT64_T_TYPE	__SQUAD_TYPE ### string, not number "__SQUAD_TYPE" */
/* #define __FSBLKCNT_T_TYPE	__SYSCALL_ULONG_TYPE ### string, not number "__SYSCALL_ULONG_TYPE" */
/* #define __FSBLKCNT64_T_TYPE	__UQUAD_TYPE ### string, not number "__UQUAD_TYPE" */
/* #define __FSFILCNT_T_TYPE	__SYSCALL_ULONG_TYPE ### string, not number "__SYSCALL_ULONG_TYPE" */
/* #define __FSFILCNT64_T_TYPE	__UQUAD_TYPE ### string, not number "__UQUAD_TYPE" */
/* #define __ID_T_TYPE		__U32_TYPE ### string, not number "__U32_TYPE" */
/* #define __CLOCK_T_TYPE		__SYSCALL_SLONG_TYPE ### string, not number "__SYSCALL_SLONG_TYPE" */
/* #define __TIME_T_TYPE		__SYSCALL_SLONG_TYPE ### string, not number "__SYSCALL_SLONG_TYPE" */
/* #define __USECONDS_T_TYPE	__U32_TYPE ### string, not number "__U32_TYPE" */
/* #define __SUSECONDS_T_TYPE	__SYSCALL_SLONG_TYPE ### string, not number "__SYSCALL_SLONG_TYPE" */
/* #define __SUSECONDS64_T_TYPE	__SQUAD_TYPE ### string, not number "__SQUAD_TYPE" */
enum { __DADDR_T_TYPE = 0 };
enum { __KEY_T_TYPE = 0 };
enum { __CLOCKID_T_TYPE = 0 };
/* #define __TIMER_T_TYPE		void * ### string, not number "void *" */
/* #define __BLKSIZE_T_TYPE	__SYSCALL_SLONG_TYPE ### string, not number "__SYSCALL_SLONG_TYPE" */
/* #define __FSID_T_TYPE		struct { int __val[2]; } ### string, not number "struct { int __val[2]; }" */
/* #define __SSIZE_T_TYPE		__SWORD_TYPE ### string, not number "__SWORD_TYPE" */
/* #define __CPU_MASK_TYPE 	__SYSCALL_ULONG_TYPE ### string, not number "__SYSCALL_ULONG_TYPE" */
enum { __OFF_T_MATCHES_OFF64_T = 1 };
enum { __INO_T_MATCHES_INO64_T = 1 };
enum { __RLIM_T_MATCHES_RLIM64_T = 1 };
enum { __STATFS_MATCHES_STATFS64 = 1 };
enum { __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = 1 };
]] require 'ffi.c.__FD_SETSIZE' ffi.cdef[[
/* END   /usr/include/x86_64-linux-gnu/bits/typesizes.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/time64.h */
enum { _BITS_TIME64_H = 1 };
/* # define __TIME64_T_TYPE		__TIME_T_TYPE ### string, not number "__TIME_T_TYPE" */
/* END   /usr/include/x86_64-linux-gnu/bits/time64.h */
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;
typedef int __daddr_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void * __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
typedef long int __fsword_t;
typedef long int __ssize_t;
typedef long int __syscall_slong_t;
typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;
typedef int __sig_atomic_t;
/* END   /usr/include/x86_64-linux-gnu/bits/types.h */
]]
