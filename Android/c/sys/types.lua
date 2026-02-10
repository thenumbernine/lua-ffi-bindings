local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
/* ++ BEGIN <stdint.h> /data/data/com.termux/files/usr/lib/clang/21/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++ END <stdint.h> /data/data/com.termux/files/usr/lib/clang/21/include/stdint.h */
/* ++ BEGIN <linux/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/types.h */
/* +++ BEGIN <asm/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/types.h */
/* ++++ BEGIN <asm-generic/int-ll64.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/int-ll64.h */
/* +++++ BEGIN <asm/bitsperlong.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/bitsperlong.h */
/* ++++++ BEGIN <asm-generic/bitsperlong.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/bitsperlong.h */
/* ++++++ END <asm-generic/bitsperlong.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/bitsperlong.h */
/* +++++ END <asm/bitsperlong.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/bitsperlong.h */
typedef __signed__ char __s8;
typedef unsigned char __u8;
typedef __signed__ short __s16;
typedef unsigned short __u16;
typedef __signed__ int __s32;
typedef unsigned int __u32;
__extension__ typedef __signed__ long long __s64;
__extension__ typedef unsigned long long __u64;
/* ++++ END <asm-generic/int-ll64.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/int-ll64.h */
/* +++ END <asm/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/types.h */
/* +++ BEGIN <linux/posix_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/posix_types.h */
/* ++++ BEGIN <linux/stddef.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/stddef.h */
/* +++++ BEGIN <linux/compiler_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/compiler_types.h */
/* ++++++ BEGIN <linux/compiler.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/compiler.h */
/* ++++++ END <linux/compiler.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/compiler.h */
/* +++++ END <linux/compiler_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/compiler_types.h */
/* ++++ END <linux/stddef.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/stddef.h */
typedef struct {
  unsigned long fds_bits[1024 / (8 * sizeof(long))];
} __kernel_fd_set;
typedef void(* __kernel_sighandler_t) (int);
typedef int __kernel_key_t;
typedef int __kernel_mqd_t;
/* ++++ BEGIN <asm/posix_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/posix_types.h */
typedef unsigned short __kernel_mode_t;
typedef unsigned short __kernel_ipc_pid_t;
typedef unsigned short __kernel_uid_t;
typedef unsigned short __kernel_gid_t;
typedef unsigned short __kernel_old_dev_t;
/* +++++ BEGIN <asm-generic/posix_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/posix_types.h */
/* ++++++ BEGIN <asm/bitsperlong.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/bitsperlong.h */
/* ++++++ END <asm/bitsperlong.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/bitsperlong.h */
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_ino_t;
typedef int __kernel_pid_t;
typedef __kernel_long_t __kernel_suseconds_t;
typedef int __kernel_daddr_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_uid_t __kernel_old_uid_t;
typedef __kernel_gid_t __kernel_old_gid_t;
typedef unsigned int __kernel_size_t;
typedef int __kernel_ssize_t;
typedef int __kernel_ptrdiff_t;
typedef struct {
  int val[2];
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
/* +++++ END <asm-generic/posix_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/posix_types.h */
/* ++++ END <asm/posix_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/posix_types.h */
/* +++ END <linux/posix_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/posix_types.h */
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u64 __be64;
typedef __u16 __sum16;
typedef __u32 __wsum;
typedef unsigned __poll_t;
/* ++ END <linux/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/types.h */
/* ++ BEGIN <bits/pthread_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/pthread_types.h */
/* +++ BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
/* +++ END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
typedef struct {
  uint32_t flags;
  void* stack_base;
  size_t stack_size;
  size_t guard_size;
  int32_t sched_policy;
  int32_t sched_priority;
} pthread_attr_t;
typedef struct {
  int32_t __private[8];
} pthread_barrier_t;
typedef int pthread_barrierattr_t;
typedef struct {
  int32_t __private[1];
} pthread_cond_t;
typedef long pthread_condattr_t;
typedef int pthread_key_t;
typedef struct {
  int32_t __private[1];
} pthread_mutex_t;
typedef long pthread_mutexattr_t;
typedef int pthread_once_t;
typedef struct {
  int32_t __private[10];
} pthread_rwlock_t;
typedef long pthread_rwlockattr_t;
typedef struct {
  int32_t __private[2];
} pthread_spinlock_t;
typedef long pthread_t;
/* ++ END <bits/pthread_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/pthread_types.h */
typedef __kernel_gid32_t __gid_t;
typedef __gid_t gid_t;
typedef __kernel_uid32_t __uid_t;
typedef __uid_t uid_t;
typedef __kernel_pid_t __pid_t;
typedef __pid_t pid_t;
typedef uint32_t __id_t;
typedef __id_t id_t;
typedef unsigned long blkcnt_t;
typedef unsigned long blksize_t;
typedef __kernel_caddr_t caddr_t;
typedef __kernel_clock_t clock_t;
typedef __kernel_clockid_t __clockid_t;
typedef __clockid_t clockid_t;
typedef __kernel_daddr_t daddr_t;
typedef unsigned long fsblkcnt_t;
typedef unsigned long fsfilcnt_t;
typedef __kernel_mode_t __mode_t;
typedef __mode_t mode_t;
typedef __kernel_key_t __key_t;
typedef __key_t key_t;
typedef __kernel_ino_t __ino_t;
typedef __ino_t ino_t;
typedef uint64_t ino64_t;
typedef uint32_t __nlink_t;
typedef __nlink_t nlink_t;
typedef void* __timer_t;
typedef __timer_t timer_t;
typedef __kernel_suseconds_t __suseconds_t;
typedef __suseconds_t suseconds_t;
typedef uint32_t __useconds_t;
typedef __useconds_t useconds_t;
typedef uint32_t dev_t;
typedef __kernel_time_t __time_t;
typedef __time_t time_t;
typedef __kernel_off_t off_t;
typedef __kernel_loff_t loff_t;
typedef loff_t off64_t;
typedef int32_t __socklen_t;
typedef __socklen_t socklen_t;
typedef __builtin_va_list __va_list;
typedef __kernel_ssize_t ssize_t;
typedef unsigned int uint_t;
typedef unsigned int uint;
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;
typedef uint32_t u_int32_t;
typedef uint16_t u_int16_t;
typedef uint8_t u_int8_t;
typedef uint64_t u_int64_t;
enum { _SYS_TYPES_H_ = 1 };
enum { _UAPI_LINUX_TYPES_H = 1 };
enum { _UAPI_ASM_TYPES_H = 1 };
enum { _UAPI_ASM_GENERIC_INT_LL64_H = 1 };
enum { _UAPI__ASM_GENERIC_BITS_PER_LONG = 1 };
/* #define __BITS_PER_LONG (__CHAR_BIT__ * __SIZEOF_LONG__) ### define is not number */
enum { __BITS_PER_LONG_LONG = 64 };
/* #define __INT32_TYPE__ int ### define is not number */
/* #define __UINT32_TYPE__ unsigned int ### define is not number */
/* #define __UINTPTR_TYPE__ unsigned long ### define is not number */
enum { _LINUX_POSIX_TYPES_H = 1 };
enum { _UAPI_LINUX_STDDEF_H = 1 };
enum { __force = 1 };
enum { __user = 1 };
/* #define __struct_group (TAG,NAME,ATTRS,MEMBERS...) union { struct { MEMBERS } ATTRS; struct TAG { MEMBERS } ATTRS NAME; } ATTRS ### define is not number */
/* #define __DECLARE_FLEX_ARRAY (TYPE,NAME) struct { struct { } __empty_ ##NAME; TYPE NAME[]; } ### define is not number */
/* #define __counted_by (m)  ### define is not number */
/* #define __counted_by_le (m)  ### define is not number */
/* #define __counted_by_be (m)  ### define is not number */
enum { __FD_SETSIZE = 1024 };
enum { __ARCH_ARM_POSIX_TYPES_H = 1 };
/* #define __kernel_mode_t __kernel_mode_t ### define is not number */
/* #define __kernel_ipc_pid_t __kernel_ipc_pid_t ### define is not number */
/* #define __kernel_uid_t __kernel_uid_t ### define is not number */
/* #define __kernel_old_dev_t __kernel_old_dev_t ### define is not number */
enum { __ASM_GENERIC_POSIX_TYPES_H = 1 };
enum { __bitwise = 1 };
enum { __bitwise__ = 1 };
/* #define __aligned_u64 __u64 __attribute__((aligned(8))) ### define is not number */
/* #define __aligned_be64 __be64 __attribute__((aligned(8))) ### define is not number */
/* #define __aligned_le64 __le64 __attribute__((aligned(8))) ### define is not number */
enum { _SSIZE_T_DEFINED_ = 1 };
/* + END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
]]
