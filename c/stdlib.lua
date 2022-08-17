local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/c++/11/stdlib.h */
/* BEGIN /usr/include/stdlib.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
]] require 'ffi.c.bits.libc-header-start' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/libc-header-start.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h */
]] require 'ffi.c.stddef' ffi.cdef[[
/* END /usr/lib/gcc/x86_64-1-gnu/11/include/stddef.h */
enum { _STDLIB_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/waitflags.h */
enum { WNOHANG = 1 };
enum { WUNTRACED = 2 };
enum { WSTOPPED = 2 };
enum { WEXITED = 4 };
enum { WCONTINUED = 8 };
enum { WNOWAIT = 16777216 };
enum { __WNOTHREAD = 536870912 };
enum { __WALL = 1073741824 };
enum { __WCLONE = 2147483648 };
/* END /usr/include/x86_64-1-gnu/bits/waitflags.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/waitstatus.h */
enum { __W_CONTINUED = 65535 };
enum { __WCOREFLAG = 128 };
/* END /usr/include/x86_64-1-gnu/bits/waitstatus.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/floatn.h */
enum { _BITS_FLOATN_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
enum { __HAVE_FLOAT128 = 1 };
enum { __HAVE_DISTINCT_FLOAT128 = 1 };
enum { __HAVE_FLOAT64X = 1 };
enum { __HAVE_FLOAT64X_LONG_DOUBLE = 1 };
/* #   define __CFLOAT128 _Complex _Float128 ### string, not number "_Complex _Float128" */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/floatn-common.h */
enum { _BITS_FLOATN_COMMON_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/long-double.h */
/* redefining matching value: #define __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI 0 */
/* END /usr/include/x86_64-1-gnu/bits/long-double.h */
enum { __HAVE_FLOAT16 = 0 };
enum { __HAVE_FLOAT32 = 1 };
enum { __HAVE_FLOAT64 = 1 };
enum { __HAVE_FLOAT32X = 1 };
enum { __HAVE_FLOAT128X = 0 };
enum { __HAVE_DISTINCT_FLOAT16 = 0 };
enum { __HAVE_DISTINCT_FLOAT32 = 0 };
enum { __HAVE_DISTINCT_FLOAT64 = 0 };
enum { __HAVE_DISTINCT_FLOAT32X = 0 };
enum { __HAVE_DISTINCT_FLOAT64X = 0 };
enum { __HAVE_DISTINCT_FLOAT128X = 0 };
enum { __HAVE_FLOAT128_UNLIKE_LDBL = 1 };
enum { __HAVE_FLOATN_NOT_TYPEDEF = 1 };
/* #   define __CFLOAT32 _Complex _Float32 ### string, not number "_Complex _Float32" */
/* #   define __CFLOAT64 _Complex _Float64 ### string, not number "_Complex _Float64" */
/* #   define __CFLOAT32X _Complex _Float32x ### string, not number "_Complex _Float32x" */
/* #   define __CFLOAT64X _Complex _Float64x ### string, not number "_Complex _Float64x" */
/* END /usr/include/x86_64-1-gnu/bits/floatn-common.h */
/* END /usr/include/x86_64-1-gnu/bits/floatn.h */
typedef struct { int quot;
int rem;
} div_t;
typedef struct { long int quot;
long int rem;
} ldiv_t;
enum { __ldiv_t_defined = 1 };
__extension__ typedef struct { long long int quot;
long long int rem;
} lldiv_t;
enum { __lldiv_t_defined = 1 };
enum { RAND_MAX = 2147483647 };
enum { EXIT_FAILURE = 1 };
enum { EXIT_SUCCESS = 0 };
/* #define	MB_CUR_MAX	(__ctype_get_mb_cur_max ()) ### string, not number "(__ctype_get_mb_cur_max ())" */
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__));
extern double atof (const char *__nptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern int atoi (const char *__nptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern long int atol (const char *__nptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
__extension__ extern long long int atoll (const char *__nptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern double strtod (const char * __nptr, char ** __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern float strtof (const char * __nptr, char ** __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long double strtold (const char * __nptr, char ** __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int strtol (const char * __nptr, char ** __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern unsigned long int strtoul (const char * __nptr, char ** __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
__extension__ extern long long int strtoq (const char * __nptr, char ** __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
__extension__ extern unsigned long long int strtouq (const char * __nptr, char ** __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
__extension__ extern long long int strtoll (const char * __nptr, char ** __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
__extension__ extern unsigned long long int strtoull (const char * __nptr, char ** __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__));
extern long int a64l (const char *__s) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
/* BEGIN /usr/include/x86_64-linux-gnu/sys/types.h */
enum { _SYS_TYPES_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.c.bits.types' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types.h */
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
enum { __u_char_defined = 1 };
typedef __loff_t loff_t;
typedef __ino_t ino_t;
enum { __ino_t_defined = 1 };
typedef __dev_t dev_t;
enum { __dev_t_defined = 1 };
typedef __gid_t gid_t;
enum { __gid_t_defined = 1 };
typedef __mode_t mode_t;
enum { __mode_t_defined = 1 };
typedef __nlink_t nlink_t;
enum { __nlink_t_defined = 1 };
typedef __uid_t uid_t;
enum { __uid_t_defined = 1 };
typedef __off_t off_t;
enum { __off_t_defined = 1 };
]] require 'ffi.c.bits.types.pid_t' ffi.cdef[[
typedef __id_t id_t;
enum { __id_t_defined = 1 };
typedef __ssize_t ssize_t;
enum { __ssize_t_defined = 1 };
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
enum { __daddr_t_defined = 1 };
typedef __key_t key_t;
enum { __key_t_defined = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/clock_t.h */
]] require 'ffi.c.bits.types.clock_t' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types/clock_t.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h */
]] require 'ffi.c.bits.types.clockid_t' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types/clockid_t.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
]] require 'ffi.c.bits.types.time_t' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types/time_t.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/timer_t.h */
]] require 'ffi.c.bits.types.timer_t' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types/timer_t.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h */
/* END /usr/lib/gcc/x86_64-1-gnu/11/include/stddef.h */
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
/* BEGIN /usr/include/x86_64-linux-gnu/bits/stdint-intn.h */
]] require 'ffi.c.bits.stdint-intn' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/stdint-intn.h */
typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;
typedef int register_t __attribute__ ((__mode__ (__word__)));
enum { __BIT_TYPES_DEFINED__ = 1 };
/* BEGIN /usr/include/endian.h */
enum { _ENDIAN_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/endian.h */
]] require 'ffi.c.bits.endian' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/endian.h */
enum { LITTLE_ENDIAN = 1234 };
enum { BIG_ENDIAN = 4321 };
enum { PDP_ENDIAN = 3412 };
enum { BYTE_ORDER = 1234 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/byteswap.h */
enum { _BITS_BYTESWAP_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
static __inline __uint16_t __bswap_16 (__uint16_t __bsx) { return __builtin_bswap16 (__bsx);
} static __inline __uint32_t __bswap_32 (__uint32_t __bsx) { return __builtin_bswap32 (__bsx);
} __extension__ static __inline __uint64_t __bswap_64 (__uint64_t __bsx) { return __builtin_bswap64 (__bsx);
}
/* END /usr/include/x86_64-1-gnu/bits/byteswap.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/uintn-identity.h */
enum { _BITS_UINTN_IDENTITY_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
static __inline __uint16_t __uint16_identity (__uint16_t __x) { return __x;
} static __inline __uint32_t __uint32_identity (__uint32_t __x) { return __x;
} static __inline __uint64_t __uint64_identity (__uint64_t __x) { return __x;
}
/* END /usr/include/x86_64-1-gnu/bits/uintn-identity.h */
/* END /usr/include/endian.h */
/* BEGIN /usr/include/x86_64-linux-gnu/sys/select.h */
enum { _SYS_SELECT_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/select.h */
/* END /usr/include/x86_64-1-gnu/bits/select.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h */
enum { __sigset_t_defined = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
]] require 'ffi.c.bits.types.__sigset_t' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types/__sigset_t.h */
typedef __sigset_t sigset_t;
/* END /usr/include/x86_64-1-gnu/bits/types/sigset_t.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
/* END /usr/include/x86_64-1-gnu/bits/types/time_t.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h */
]] require 'ffi.c.bits.types.struct_timeval' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types/struct_timeval.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]] require 'ffi.c.bits.types.struct_timespec' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types/struct_timespec.h */
typedef __suseconds_t suseconds_t;
enum { __suseconds_t_defined = 1 };
typedef long int __fd_mask;
/* #define __NFDBITS	(8 * (int) sizeof (__fd_mask)) ### string, not number "(8 * (int) sizeof (__fd_mask))" */
typedef struct { __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
} fd_set;
enum { FD_SETSIZE = 1024 };
typedef __fd_mask fd_mask;
/* # define NFDBITS		__NFDBITS ### string, not number "__NFDBITS" */
extern int select (int __nfds, fd_set * __readfds, fd_set * __writefds, fd_set * __exceptfds, struct timeval * __timeout);
extern int pselect (int __nfds, fd_set * __readfds, fd_set * __writefds, fd_set * __exceptfds, const struct timespec * __timeout, const __sigset_t * __sigmask);
/* END /usr/include/x86_64-1-gnu/sys/select.h */
typedef __blksize_t blksize_t;
enum { __blksize_t_defined = 1 };
typedef __blkcnt_t blkcnt_t;
enum { __blkcnt_t_defined = 1 };
typedef __fsblkcnt_t fsblkcnt_t;
enum { __fsblkcnt_t_defined = 1 };
typedef __fsfilcnt_t fsfilcnt_t;
enum { __fsfilcnt_t_defined = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h */
enum { _BITS_PTHREADTYPES_COMMON_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h */
enum { _THREAD_SHARED_TYPES_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h */
enum { _BITS_PTHREADTYPES_ARCH_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* redefining matching value: # define __WORDSIZE	64 */
/* redefining matching value: # define __WORDSIZE_TIME64_COMPAT32	1 */
/* redefining matching value: # define __SYSCALL_WORDSIZE		64 */
/* END /usr/include/x86_64-1-gnu/bits/wordsize.h */
enum { __SIZEOF_PTHREAD_MUTEX_T = 40 };
enum { __SIZEOF_PTHREAD_ATTR_T = 56 };
enum { __SIZEOF_PTHREAD_RWLOCK_T = 56 };
enum { __SIZEOF_PTHREAD_BARRIER_T = 32 };
enum { __SIZEOF_PTHREAD_MUTEXATTR_T = 4 };
enum { __SIZEOF_PTHREAD_COND_T = 48 };
enum { __SIZEOF_PTHREAD_CONDATTR_T = 4 };
enum { __SIZEOF_PTHREAD_RWLOCKATTR_T = 8 };
enum { __SIZEOF_PTHREAD_BARRIERATTR_T = 4 };
enum { __LOCK_ALIGNMENT = 1 };
enum { __ONCE_ALIGNMENT = 1 };
/* END /usr/include/x86_64-1-gnu/bits/pthreadtypes-arch.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h */
enum { _BITS_ATOMIC_WIDE_COUNTER_H = 1 };
typedef union { __extension__ unsigned long long int __value64;
struct { unsigned int __low;
unsigned int __high;
} __value32;
} __atomic_wide_counter;
/* END /usr/include/x86_64-1-gnu/bits/atomic_wide_counter.h */
typedef struct __pthread_internal_list { struct __pthread_internal_list *__prev;
struct __pthread_internal_list *__next;
} __pthread_list_t;
typedef struct __pthread_internal_slist { struct __pthread_internal_slist *__next;
} __pthread_slist_t;
/* BEGIN /usr/include/x86_64-linux-gnu/bits/struct_mutex.h */
enum { _THREAD_MUTEX_INTERNAL_H = 1 };
struct __pthread_mutex_s { int __lock;
unsigned int __count;
int __owner;
unsigned int __nusers;
int __kind;
short __spins;
short __elision;
__pthread_list_t __list;
enum { __PTHREAD_MUTEX_HAVE_PREV = 1 };
};
/* END /usr/include/x86_64-1-gnu/bits/struct_mutex.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/struct_rwlock.h */
enum { _RWLOCK_INTERNAL_H = 1 };
struct __pthread_rwlock_arch_t { unsigned int __readers;
unsigned int __writers;
unsigned int __wrphase_futex;
unsigned int __writers_futex;
unsigned int __pad3;
unsigned int __pad4;
int __cur_writer;
int __shared;
signed char __rwelision;
unsigned char __pad1[7];
/* #  define __PTHREAD_RWLOCK_ELISION_EXTRA 0, { 0, 0, 0, 0, 0, 0, 0 } ### string, not number "0, { 0, 0, 0, 0, 0, 0, 0 }" */
unsigned long int __pad2;
unsigned int __flags;
};
/* END /usr/include/x86_64-1-gnu/bits/struct_rwlock.h */
struct __pthread_cond_s { __atomic_wide_counter __wseq;
__atomic_wide_counter __g1_start;
unsigned int __g_refs[2];
unsigned int __g_size[2];
unsigned int __g1_orig_size;
unsigned int __wrefs;
unsigned int __g_signals[2];
};
typedef unsigned int __tss_t;
typedef unsigned long int __thrd_t;
typedef struct { int __data;
} __once_flag;
/* #define __ONCE_FLAG_INIT { 0 } ### string, not number "{ 0 }" */
/* END /usr/include/x86_64-1-gnu/bits/thread-shared-types.h */
typedef unsigned long int pthread_t;
typedef union { char __size[4];
int __align;
} pthread_mutexattr_t;
typedef union { char __size[4];
int __align;
} pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef int pthread_once_t;
union pthread_attr_t { char __size[56];
long int __align;
};
typedef union pthread_attr_t pthread_attr_t;
enum { __have_pthread_attr_t = 1 };
typedef union { struct __pthread_mutex_s __data;
char __size[40];
long int __align;
} pthread_mutex_t;
typedef union { struct __pthread_cond_s __data;
char __size[48];
__extension__ long long int __align;
} pthread_cond_t;
typedef union { struct __pthread_rwlock_arch_t __data;
char __size[56];
long int __align;
} pthread_rwlock_t;
typedef union { char __size[8];
long int __align;
} pthread_rwlockattr_t;
typedef volatile int pthread_spinlock_t;
typedef union { char __size[32];
long int __align;
} pthread_barrier_t;
typedef union { char __size[4];
int __align;
} pthread_barrierattr_t;
/* END /usr/include/x86_64-1-gnu/bits/pthreadtypes.h */
/* END /usr/include/x86_64-1-gnu/sys/types.h */
extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));
extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));
extern char *initstate (unsigned int __seed, char *__statebuf, size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
struct random_data { int32_t *fptr;
int32_t *rptr;
int32_t *state;
int rand_type;
int rand_deg;
int rand_sep;
int32_t *end_ptr;
};
extern int random_r (struct random_data * __buf, int32_t * __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int srandom_r (unsigned int __seed, struct random_data *__buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int initstate_r (unsigned int __seed, char * __statebuf, size_t __statelen, struct random_data * __buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));
extern int setstate_r (char * __statebuf, struct random_data * __buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));
extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));
extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));
extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
struct drand48_data { unsigned short int __x[3];
unsigned short int __old_x[3];
unsigned short int __c;
unsigned short int __init;
__extension__ unsigned long long int __a;
};
extern int drand48_r (struct drand48_data * __buffer, double * __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3], struct drand48_data * __buffer, double * __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int lrand48_r (struct drand48_data * __buffer, long int * __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3], struct drand48_data * __buffer, long int * __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int mrand48_r (struct drand48_data * __buffer, long int * __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3], struct drand48_data * __buffer, long int * __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int srand48_r (long int __seedval, struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int seed48_r (unsigned short int __seed16v[3], struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int lcong48_r (unsigned short int __param[7], struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (1)));
extern void *calloc (size_t __nmemb, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (1, 2)));
extern void *realloc (void *__ptr, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__alloc_size__ (2)));
extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));
extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__alloc_size__ (2, 3))) __attribute__ ((__malloc__ (__builtin_free, 1)));
extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__ (reallocarray, 1)));
/* BEGIN /usr/include/alloca.h */
enum { _ALLOCA_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h */
/* END /usr/lib/gcc/x86_64-1-gnu/11/include/stddef.h */
extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));
/* END /usr/include/alloca.h */
extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (1)));
extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void *aligned_alloc (size_t __alignment, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_align__ (1))) __attribute__ ((__alloc_size__ (2)));
extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void quick_exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int setenv (const char *__name, const char *__value, int __replace) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1)));
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1)));
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int system (const char *__command);
extern char *realpath (const char * __name, char * __resolved) __attribute__ ((__nothrow__ , __leaf__));
enum { __COMPAR_FN_T = 1 };
typedef int (*__compar_fn_t) (const void *, const void *);
extern void *bsearch (const void *__key, const void *__base, size_t __nmemb, size_t __size, __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 2, 5)));
extern void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__ extern long long int llabs (long long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern div_t div (int __numer, int __denom) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern ldiv_t ldiv (long int __numer, long int __denom) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__ extern lldiv_t lldiv (long long int __numer, long long int __denom) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern char *ecvt (double __value, int __ndigit, int * __decpt, int * __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4)));
extern char *fcvt (double __value, int __ndigit, int * __decpt, int * __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4)));
extern char *gcvt (double __value, int __ndigit, char *__buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern char *qecvt (long double __value, int __ndigit, int * __decpt, int * __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4)));
extern char *qfcvt (long double __value, int __ndigit, int * __decpt, int * __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4)));
extern char *qgcvt (long double __value, int __ndigit, char *__buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int ecvt_r (double __value, int __ndigit, int * __decpt, int * __sign, char * __buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int * __decpt, int * __sign, char * __buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qecvt_r (long double __value, int __ndigit, int * __decpt, int * __sign, char * __buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit, int * __decpt, int * __sign, char * __buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern int mbtowc (wchar_t * __pwc, const char * __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));
extern size_t mbstowcs (wchar_t * __pwcs, const char * __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__access__ (__read_only__, 2)));
extern size_t wcstombs (char * __s, const wchar_t * __pwcs, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__access__ (a, 1, s))) __attribute__ ((__access__ (__read_only__, 2)));
extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int getsubopt (char ** __optionp, char *const * __tokens, char ** __valuep) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern int getloadavg (double __loadavg[], int __nelem) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
/* BEGIN /usr/include/x86_64-linux-gnu/bits/stdlib-float.h */
/* END /usr/include/x86_64-1-gnu/bits/stdlib-float.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/floatn.h */
/* END /usr/include/x86_64-1-gnu/bits/floatn.h */
/* END /usr/include/stdlib.h */
/* END /usr/include/c++/11/stdlib.h */
]]
