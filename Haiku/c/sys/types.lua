local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/types.h> ./Haiku/sys/types.h */
/* ++ BEGIN <config/types.h> /boot/system/develop/headers/config/types.h */
]] require 'ffi.req' 'c.config.types' ffi.cdef[[
/* ++ END <config/types.h> /boot/system/develop/headers/config/types.h */
/* ++ BEGIN <BeBuild.h> /boot/system/develop/headers/os/BeBuild.h */
/* ++ END <BeBuild.h> /boot/system/develop/headers/os/BeBuild.h */
typedef unsigned long u_long;
typedef unsigned int u_int;
typedef unsigned short u_short;
typedef unsigned char u_char;
typedef unsigned long ulong;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned char unchar;
typedef __haiku_int64 blkcnt_t;
typedef __haiku_std_int32 blksize_t;
typedef __haiku_int64 fsblkcnt_t;
typedef __haiku_int64 fsfilcnt_t;
typedef __haiku_int64 off_t;
typedef __haiku_int64 ino_t;
typedef __haiku_std_int32 cnt_t;
typedef __haiku_int32 dev_t;
typedef __haiku_int32 pid_t;
typedef __haiku_int32 id_t;
typedef __haiku_std_uint32 uid_t;
typedef __haiku_std_uint32 gid_t;
typedef __haiku_std_uint32 mode_t;
typedef __haiku_std_uint32 umode_t;
typedef __haiku_std_int32 nlink_t;
 typedef off_t daddr_t;
typedef char* caddr_t;
typedef __haiku_addr_t addr_t;
typedef __haiku_int32 key_t;
typedef __haiku_std_int32 clockid_t;
typedef struct __timer_t* timer_t;
typedef struct _pthread_thread *pthread_t;
typedef struct _pthread_attr *pthread_attr_t;
typedef struct _pthread_barrier pthread_barrier_t;
typedef struct _pthread_barrierattr *pthread_barrierattr_t;
typedef struct _pthread_mutex pthread_mutex_t;
typedef struct _pthread_mutexattr *pthread_mutexattr_t;
typedef struct _pthread_cond pthread_cond_t;
typedef struct _pthread_condattr *pthread_condattr_t;
typedef int pthread_key_t;
typedef struct _pthread_once pthread_once_t;
typedef struct _pthread_rwlock pthread_rwlock_t;
typedef struct _pthread_rwlockattr *pthread_rwlockattr_t;
typedef struct _pthread_spinlock pthread_spinlock_t;
struct _pthread_mutex {
 __haiku_std_uint32 flags;
 __haiku_std_int32 lock;
 __haiku_std_int32 unused;
 __haiku_std_int32 owner;
 __haiku_std_int32 owner_count;
};
struct _pthread_barrier {
 __haiku_std_uint32 flags;
 __haiku_std_int32 lock;
 __haiku_std_int32 mutex;
 __haiku_std_int32 waiter_count;
 __haiku_std_int32 waiter_max;
};
struct _pthread_cond {
 __haiku_std_uint32 flags;
 __haiku_std_int32 unused;
 pthread_mutex_t* mutex;
 __haiku_std_int32 waiter_count;
 __haiku_std_int32 lock;
};
struct _pthread_once {
 __haiku_std_int32 state;
};
struct _pthread_rwlock {
 __haiku_std_uint32 flags;
 __haiku_std_int32 owner;
 union {
  struct {
   __haiku_std_int32 mutex;
   __haiku_std_int32 unused;
   __haiku_std_int32 reader_count;
   __haiku_std_int32 writer_count;
   void* waiters[2];
  } local;
  struct {
   __haiku_std_int32 sem;
  } shared;
 } u;
};
struct _pthread_spinlock {
 __haiku_std_int32 lock;
};
/* ++ BEGIN <null.h> /boot/system/develop/headers/posix/null.h */
]] require 'ffi.req' 'c.null' ffi.cdef[[
/* ++ END <null.h> /boot/system/develop/headers/posix/null.h */
/* ++ BEGIN <size_t.h> /boot/system/develop/headers/posix/size_t.h */
/* +++ BEGIN <stddef.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END <stddef.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/stddef.h */
typedef long signed int ssize_t;
/* ++ END <size_t.h> /boot/system/develop/headers/posix/size_t.h */
struct sigevent;
typedef __haiku_int32 clock_t;
typedef __haiku_int32 suseconds_t;
typedef __haiku_uint32 useconds_t;
typedef __haiku_int64 time_t;
enum { _SYS_TYPES_H = 1 };
enum { _BE_BUILD_H = 1 };
enum { B_BEOS_VERSION_4 = 0x0400 };
enum { B_BEOS_VERSION_4_5 = 0x0450 };
enum { B_BEOS_VERSION_5 = 0x0500 };
enum { B_BEOS_VERSION = 0x0500 };
enum { B_BEOS_VERSION_MAUI = 0x0500 };
enum { B_HAIKU_VERSION_BEOS = 0x00000001 };
enum { B_HAIKU_VERSION_BONE = 0x00000002 };
enum { B_HAIKU_VERSION_DANO = 0x00000003 };
enum { B_HAIKU_VERSION_1_ALPHA_1 = 0x00000100 };
enum { B_HAIKU_VERSION_1_PRE_ALPHA_2 = 0x00000101 };
enum { B_HAIKU_VERSION_1_ALPHA_2 = 0x00000200 };
enum { B_HAIKU_VERSION_1_PRE_ALPHA_3 = 0x00000201 };
enum { B_HAIKU_VERSION_1_ALPHA_3 = 0x00000300 };
enum { B_HAIKU_VERSION_1_PRE_ALPHA_4 = 0x00000301 };
enum { B_HAIKU_VERSION_1_ALPHA_4 = 0x00000400 };
enum { B_HAIKU_VERSION_1_PRE_BETA_1 = 0x00000401 };
enum { B_HAIKU_VERSION_1_BETA_1 = 0x00000500 };
enum { B_HAIKU_VERSION_1_PRE_BETA_2 = 0x00000501 };
enum { B_HAIKU_VERSION_1_BETA_2 = 0x00000600 };
enum { B_HAIKU_VERSION_1_PRE_BETA_3 = 0x00000601 };
enum { B_HAIKU_VERSION_1_BETA_3 = 0x00000700 };
enum { B_HAIKU_VERSION_1_PRE_BETA_4 = 0x00000701 };
enum { B_HAIKU_VERSION_1_BETA_4 = 0x00000800 };
enum { B_HAIKU_VERSION_1_PRE_BETA_5 = 0x00000801 };
enum { B_HAIKU_VERSION_1_BETA_5 = 0x00000900 };
enum { B_HAIKU_VERSION_1_PRE_BETA_6 = 0x00000901 };
enum { B_HAIKU_VERSION_1 = 0x00010000 };
enum { B_HAIKU_VERSION = 0x00000901 };
enum { B_HAIKU_ABI_MAJOR = 0xffff0000 };
enum { B_HAIKU_ABI_GCC_2 = 0x00020000 };
enum { B_HAIKU_ABI_GCC_4 = 0x00040000 };
enum { B_HAIKU_ABI_GCC_2_ANCIENT = 0x00020000 };
enum { B_HAIKU_ABI_GCC_2_BEOS = 0x00020001 };
enum { B_HAIKU_ABI_GCC_2_HAIKU = 0x00020002 };
/* #define B_HAIKU_ABI_NAME "x86_64" ### define is not number */
enum { B_HAIKU_ABI = 0x00040000 };
enum { B_HAIKU_BITS = 64 };
enum { B_HAIKU_PHYSICAL_BITS = 64 };
enum { B_HAIKU_64_BIT = 1 };
enum { B_HAIKU_PHYSICAL_64_BIT = 1 };
/* #define _UNUSED (argument) argument ### define is not number */
/* #define _PACKED __attribute__((packed)) ### define is not number */
/* #define _PRINTFLIKE (_format_,_args_) __attribute__((format(__printf__, _format_, _args_))) ### define is not number */
/* #define _ALIGNED_BY_ARG (_no_) __attribute__((alloc_align(_no_))) ### define is not number */
/* #define _EXPORT __attribute__((visibility("default"))) ### define is not number */
/* #define _DEPRECATED __attribute__((__deprecated__)) ### define is not number */
enum { _IMPORT = 1 };
/* #define B_DEFINE_SYMBOL_VERSION (function,versionedSymbol) __asm__(".symver " function "," versionedSymbol) ### define is not number */
/* #define B_DEFINE_WEAK_ALIAS (name,alias_name) __typeof(name) alias_name __attribute__((weak, alias(#name))) ### define is not number */
enum { _SIZE_T_H_ = 1 };
enum { __ssize_t__ = 1 };
/* + END <sys/types.h> ./Haiku/sys/types.h */
]]
