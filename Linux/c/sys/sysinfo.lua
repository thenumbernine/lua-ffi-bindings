local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/x86_64-linux-gnu/sys/sysinfo.h */
enum { _SYS_SYSINFO_H = 1 };
/* BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* END /usr/include/features.h */
/* BEGIN /usr/include/linux/kernel.h */
enum { _LINUX_KERNEL_H = 1 };
/* BEGIN /usr/include/linux/sysinfo.h */
enum { _LINUX_SYSINFO_H = 1 };
/* BEGIN /usr/include/linux/types.h */
enum { _LINUX_TYPES_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/asm/types.h */
/* BEGIN /usr/include/asm-generic/types.h */
enum { _ASM_GENERIC_TYPES_H = 1 };
/* BEGIN /usr/include/asm-generic/int-ll64.h */
enum { _ASM_GENERIC_INT_LL64_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/asm/bitsperlong.h */
enum { __ASM_X86_BITSPERLONG_H = 1 };
enum { __BITS_PER_LONG = 64 };
/* BEGIN /usr/include/asm-generic/bitsperlong.h */
enum { __ASM_GENERIC_BITS_PER_LONG = 1 };
/* END /usr/include/asm-generic/bitsperlong.h */
/* END /usr/include/x86_64-1-gnu/asm/bitsperlong.h */
typedef __signed__ char __s8;
typedef unsigned char __u8;
typedef __signed__ short __s16;
typedef unsigned short __u16;
typedef __signed__ int __s32;
typedef unsigned int __u32;
__extension__ typedef __signed__ long long __s64;
__extension__ typedef unsigned long long __u64;
/* END /usr/include/asm-generic/int-ll64.h */
/* END /usr/include/asm-generic/types.h */
/* END /usr/include/x86_64-1-gnu/asm/types.h */
/* BEGIN /usr/include/linux/posix_types.h */
enum { _LINUX_POSIX_TYPES_H = 1 };
/* BEGIN /usr/include/linux/stddef.h */
/* END /usr/include/1/stddef.h */
]] require 'ffi.req' 'c.__FD_SETSIZE' ffi.cdef[[
typedef struct { unsigned long fds_bits[1024 / (8 * sizeof(long))];
} __kernel_fd_set;
typedef void (*__kernel_sighandler_t)(int);
typedef int __kernel_key_t;
typedef int __kernel_mqd_t;
/* BEGIN /usr/include/x86_64-linux-gnu/asm/posix_types.h */
/* BEGIN /usr/include/x86_64-linux-gnu/asm/posix_types_64.h */
enum { _ASM_X86_POSIX_TYPES_64_H = 1 };
typedef unsigned short __kernel_old_uid_t;
typedef unsigned short __kernel_old_gid_t;
typedef unsigned long __kernel_old_dev_t;
/* BEGIN /usr/include/asm-generic/posix_types.h */
enum { __ASM_GENERIC_POSIX_TYPES_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/asm/bitsperlong.h */
/* END /usr/include/x86_64-1-gnu/asm/bitsperlong.h */
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_ino_t;
typedef unsigned int __kernel_mode_t;
typedef int __kernel_pid_t;
typedef int __kernel_ipc_pid_t;
typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;
typedef __kernel_long_t __kernel_suseconds_t;
typedef int __kernel_daddr_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef __kernel_long_t __kernel_ptrdiff_t;
typedef struct { int val[2];
} __kernel_fsid_t;
typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_old_time_t;
typedef __kernel_long_t __kernel_time_t;
typedef long long __kernel_time64_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef char * __kernel_caddr_t;
typedef unsigned short __kernel_uid16_t;
typedef unsigned short __kernel_gid16_t;
/* END /usr/include/asm-generic/posix_types.h */
/* END /usr/include/x86_64-1-gnu/asm/posix_types_64.h */
/* END /usr/include/x86_64-1-gnu/asm/posix_types.h */
/* END /usr/include/1/posix_types.h */
enum { __bitwise__ = 1 };
/* #define __bitwise __bitwise__ ### string, not number "__bitwise__" */
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u64 __be64;
typedef __u16 __sum16;
typedef __u32 __wsum;
/* #define __aligned_u64 __u64 __attribute__((aligned(8))) ### string, not number "__u64 __attribute__((aligned(8)))" */
/* #define __aligned_be64 __be64 __attribute__((aligned(8))) ### string, not number "__be64 __attribute__((aligned(8)))" */
/* #define __aligned_le64 __le64 __attribute__((aligned(8))) ### string, not number "__le64 __attribute__((aligned(8)))" */
typedef unsigned __poll_t;
/* END /usr/include/1/types.h */
enum { SI_LOAD_SHIFT = 16 };
struct sysinfo { __kernel_long_t uptime;
__kernel_ulong_t loads[3];
__kernel_ulong_t totalram;
__kernel_ulong_t freeram;
__kernel_ulong_t sharedram;
__kernel_ulong_t bufferram;
__kernel_ulong_t totalswap;
__kernel_ulong_t freeswap;
__u16 procs;
__u16 pad;
__kernel_ulong_t totalhigh;
__kernel_ulong_t freehigh;
__u32 mem_unit;
char _f[20-2*sizeof(__kernel_ulong_t)-sizeof(__u32)];
};
/* END /usr/include/1/sysinfo.h */
/* BEGIN /usr/include/linux/const.h */
enum { _LINUX_CONST_H = 1 };
/* END /usr/include/1/const.h */
/* END /usr/include/1/kernel.h */
extern int sysinfo (struct sysinfo *__info) __attribute__ ((__nothrow__ , __leaf__));
extern int get_nprocs_conf (void) __attribute__ ((__nothrow__ , __leaf__));
extern int get_nprocs (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int get_phys_pages (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int get_avphys_pages (void) __attribute__ ((__nothrow__ , __leaf__));
/* END /usr/include/x86_64-1-gnu/sys/sysinfo.h */
]]
