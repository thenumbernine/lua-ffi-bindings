local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/sys/types.h */
/* ++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END   /usr/include/features.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
typedef __loff_t loff_t;
]] require 'ffi.req' 'c.bits.types.ino_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.dev_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.gid_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.mode_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.nlink_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.uid_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.off_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.pid_t' ffi.cdef[[
typedef __id_t id_t;
]] require 'ffi.req' 'c.bits.types.ssize_t' ffi.cdef[[
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
typedef __key_t key_t;
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/clock_t.h */
]] require 'ffi.req' 'c.bits.types.clock_t' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/clock_t.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h */
]] require 'ffi.req' 'c.bits.types.clockid_t' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
]] require 'ffi.req' 'c.bits.types.time_t' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/timer_t.h */
]] require 'ffi.req' 'c.bits.types.timer_t' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/timer_t.h */
/* ++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/stdint-intn.h */
]] require 'ffi.req' 'c.bits.stdint-intn' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/stdint-intn.h */
typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;
typedef int register_t __attribute__ ((__mode__ (__word__)));
/* ++ BEGIN /usr/include/endian.h */
/* +++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* +++ END   /usr/include/features.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/endian.h */
]] require 'ffi.req' 'c.bits.endian' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/endian.h */
enum { LITTLE_ENDIAN = 1234 };
enum { BIG_ENDIAN = 4321 };
enum { PDP_ENDIAN = 3412 };
enum { BYTE_ORDER = 1234 };
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/byteswap.h */
/* ++++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++++ END   /usr/include/features.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
static __inline __uint16_t __bswap_16 (__uint16_t __bsx) {
	return __builtin_bswap16 (__bsx);
} static __inline __uint32_t __bswap_32 (__uint32_t __bsx) {
	return __builtin_bswap32 (__bsx);
} __extension__ static __inline __uint64_t __bswap_64 (__uint64_t __bsx) {
	return __builtin_bswap64 (__bsx);
}
/* +++ END   /usr/include/x86_64-linux-gnu/bits/byteswap.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/uintn-identity.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
static __inline __uint16_t __uint16_identity (__uint16_t __x) {
	return __x;
} static __inline __uint32_t __uint32_identity (__uint32_t __x) {
	return __x;
} static __inline __uint64_t __uint64_identity (__uint64_t __x) {
	return __x;
}
/* +++ END   /usr/include/x86_64-linux-gnu/bits/uintn-identity.h */
/* ++ END   /usr/include/endian.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/sys/select.h */
]] require 'ffi.req' 'c.sys.select' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/sys/select.h */
typedef __blksize_t blksize_t;
typedef __blkcnt_t blkcnt_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h */
/* +++++ BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* +++++ END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h */
typedef union {
	__extension__ unsigned long long int __value64;
	struct {
	unsigned int __low;
	unsigned int __high;
} __value32;
} __atomic_wide_counter;
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h */
typedef struct __pthread_internal_list {
	struct __pthread_internal_list *__prev;
	struct __pthread_internal_list *__next;
} __pthread_list_t;
typedef struct __pthread_internal_slist {
	struct __pthread_internal_slist *__next;
} __pthread_slist_t;
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/struct_mutex.h */
struct __pthread_mutex_s {
	int __lock;
	unsigned int __count;
	int __owner;
	unsigned int __nusers;
	int __kind;
	short __spins;
	short __elision;
	__pthread_list_t __list;
};
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/struct_mutex.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/struct_rwlock.h */
struct __pthread_rwlock_arch_t {
	unsigned int __readers;
	unsigned int __writers;
	unsigned int __wrphase_futex;
	unsigned int __writers_futex;
	unsigned int __pad3;
	unsigned int __pad4;
	int __cur_writer;
	int __shared;
	signed char __rwelision;
	unsigned char __pad1[7];
	unsigned long int __pad2;
	unsigned int __flags;
};
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/struct_rwlock.h */
struct __pthread_cond_s {
	__atomic_wide_counter __wseq;
	__atomic_wide_counter __g1_start;
	unsigned int __g_refs[2];
	unsigned int __g_size[2];
	unsigned int __g1_orig_size;
	unsigned int __wrefs;
	unsigned int __g_signals[2];
};
typedef unsigned int __tss_t;
typedef unsigned long int __thrd_t;
typedef struct {
	int __data;
} __once_flag;
/* +++ END   /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h */
typedef unsigned long int pthread_t;
typedef union {
	char __size[4];
	int __align;
} pthread_mutexattr_t;
typedef union {
	char __size[4];
	int __align;
} pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef int pthread_once_t;
union pthread_attr_t {
	char __size[56];
	long int __align;
};
typedef union pthread_attr_t pthread_attr_t;
typedef union {
	struct __pthread_mutex_s __data;
	char __size[40];
	long int __align;
} pthread_mutex_t;
typedef union {
	struct __pthread_cond_s __data;
	char __size[48];
	__extension__ long long int __align;
} pthread_cond_t;
typedef union {
	struct __pthread_rwlock_arch_t __data;
	char __size[56];
	long int __align;
} pthread_rwlock_t;
typedef union {
	char __size[8];
	long int __align;
} pthread_rwlockattr_t;
typedef volatile int pthread_spinlock_t;
typedef union {
	char __size[32];
	long int __align;
} pthread_barrier_t;
typedef union {
	char __size[4];
	int __align;
} pthread_barrierattr_t;
/* ++ END   /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h */
/* + END   /usr/include/x86_64-linux-gnu/sys/types.h */
]]
