local ffi = require 'ffi'
local pthread = ffi.load'pthread'
ffi.cdef[[
/* BEGIN /usr/include/pthread.h */
enum { _PTHREAD_H = 1 };
/* BEGIN /usr/include/features.h */
enum { _FEATURES_H = 1 };
enum { _DEFAULT_SOURCE = 1 };
enum { __GLIBC_USE_ISOC2X = 0 };
enum { __USE_ISOC11 = 1 };
enum { __USE_ISOC99 = 1 };
enum { __USE_ISOC95 = 1 };
enum { __USE_POSIX_IMPLICITLY = 1 };
enum { _POSIX_SOURCE = 1 };
enum { __USE_POSIX = 1 };
enum { __USE_MISC = 1 };
enum { __USE_FORTIFY_LEVEL = 0 };
enum { __GLIBC_USE_DEPRECATED_GETS = 0 };
enum { __GLIBC_USE_DEPRECATED_SCANF = 0 };
/* BEGIN /usr/include/stdc-predef.h */
/* END /usr/include/stdc-predef.h */
enum { __GNU_LIBRARY__ = 6 };
enum { __GLIBC__ = 2 };
enum { __GLIBC_MINOR__ = 31 };
/* BEGIN /usr/include/x86_64-1-gnu/sys/cdefs.h */
enum { _SYS_CDEFS_H = 1 };
enum { __glibc_c99_flexarr_available = 1 };
/* BEGIN /usr/include/x86_64-1-gnu/bits/wordsize.h */
enum { __WORDSIZE = 64 };
enum { __WORDSIZE_TIME64_COMPAT32 = 1 };
enum { __SYSCALL_WORDSIZE = 64 };
/* END /usr/include/x86_64-1-gnu/bits/wordsize.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/long-double.h */
enum { __LONG_DOUBLE_USES_FLOAT128 = 0 };
/* END /usr/include/x86_64-1-gnu/bits/long-double.h */
enum { __HAVE_GENERIC_SELECTION = 1 };
/* END /usr/include/x86_64-1-gnu/sys/cdefs.h */
/* BEGIN /usr/include/x86_64-1-gnu/gnu/stubs.h */
/* BEGIN /usr/include/x86_64-1-gnu/gnu/stubs-64.h */
/* END /usr/include/x86_64-1-gnu/gnu/stubs-64.h */
/* END /usr/include/x86_64-1-gnu/gnu/stubs.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/sched.h */
enum { _SCHED_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/types.h */
enum { _BITS_TYPES_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/wordsize.h */
/* END /usr/include/x86_64-1-gnu/bits/wordsize.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/timesize.h */
/* END /usr/include/x86_64-1-gnu/bits/timesize.h */
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
/* BEGIN /usr/include/x86_64-1-gnu/bits/typesizes.h */
enum { _BITS_TYPESIZES_H = 1 };
enum { __OFF_T_MATCHES_OFF64_T = 1 };
enum { __INO_T_MATCHES_INO64_T = 1 };
enum { __RLIM_T_MATCHES_RLIM64_T = 1 };
enum { __STATFS_MATCHES_STATFS64 = 1 };
enum { __FD_SETSIZE = 1024 };
/* END /usr/include/x86_64-1-gnu/bits/typesizes.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/time64.h */
enum { _BITS_TIME64_H = 1 };
/* END /usr/include/x86_64-1-gnu/bits/time64.h */
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
/* END /usr/include/x86_64-1-gnu/bits/types.h */
/* BEGIN /usr/lib/gcc/x86_64-1-gnu/9/include/stddef.h */
typedef long unsigned int size_t;
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stddef.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/types/time_t.h */
enum { __time_t_defined = 1 };
/* BEGIN /usr/include/x86_64-1-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
typedef __time_t time_t;
/* END /usr/include/x86_64-1-gnu/bits/types/time_t.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/types/struct_timespec.h */
enum { _STRUCT_TIMESPEC = 1 };
/* BEGIN /usr/include/x86_64-1-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/endian.h */
enum { _BITS_ENDIAN_H = 1 };
enum { __LITTLE_ENDIAN = 1234 };
enum { __BIG_ENDIAN = 4321 };
enum { __PDP_ENDIAN = 3412 };
/* BEGIN /usr/include/x86_64-1-gnu/bits/endianness.h */
enum { _BITS_ENDIANNESS_H = 1 };
/* END /usr/include/x86_64-1-gnu/bits/endianness.h */
/* END /usr/include/x86_64-1-gnu/bits/endian.h */
struct timespec { __time_t tv_sec;
__syscall_slong_t tv_nsec;
};
/* END /usr/include/x86_64-1-gnu/bits/types/struct_timespec.h */
/* BEGIN /usr/include/time.h */
enum { _TIME_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/lib/gcc/x86_64-1-gnu/9/include/stddef.h */
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stddef.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/time.h */
enum { _BITS_TIME_H = 1 };
/* BEGIN /usr/include/x86_64-1-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
extern long int __sysconf (int);
/* END /usr/include/x86_64-1-gnu/bits/time.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/types/clock_t.h */
enum { __clock_t_defined = 1 };
/* BEGIN /usr/include/x86_64-1-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
typedef __clock_t clock_t;
/* END /usr/include/x86_64-1-gnu/bits/types/clock_t.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/types/time_t.h */
/* END /usr/include/x86_64-1-gnu/bits/types/time_t.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/types/struct_tm.h */
enum { __struct_tm_defined = 1 };
/* BEGIN /usr/include/x86_64-1-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
struct tm { int tm_sec;
int tm_min;
int tm_hour;
int tm_mday;
int tm_mon;
int tm_year;
int tm_wday;
int tm_yday;
int tm_isdst;
long int __tm_gmtoff;
const char *__tm_zone;
};
/* END /usr/include/x86_64-1-gnu/bits/types/struct_tm.h */
extern clock_t clock (void) __attribute__ ((__nothrow__ , __leaf__));
extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern double difftime (time_t __time1, time_t __time0) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));
extern size_t strftime (char *__restrict __s, size_t __maxsize, const char *__restrict __format, const struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));
extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));
extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;
/* END /usr/include/time.h */
typedef __pid_t pid_t;
/* BEGIN /usr/include/x86_64-1-gnu/bits/sched.h */
enum { _BITS_SCHED_H = 1 };
enum { SCHED_OTHER = 0 };
enum { SCHED_FIFO = 1 };
enum { SCHED_RR = 2 };
/* BEGIN /usr/include/x86_64-1-gnu/bits/types/struct_sched_param.h */
enum { _BITS_TYPES_STRUCT_SCHED_PARAM = 1 };
struct sched_param { int sched_priority;
};
/* END /usr/include/x86_64-1-gnu/bits/types/struct_sched_param.h */
/* END /usr/include/x86_64-1-gnu/bits/sched.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/cpu-set.h */
enum { _BITS_CPU_SET_H = 1 };
enum { __CPU_SETSIZE = 1024 };
typedef unsigned long int __cpu_mask;
typedef struct { __cpu_mask __bits[1024 / (8 * sizeof (__cpu_mask))];
} cpu_set_t;
extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp) __attribute__ ((__nothrow__ , __leaf__));
extern cpu_set_t *__sched_cpualloc (size_t __count) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void __sched_cpufree (cpu_set_t *__set) __attribute__ ((__nothrow__ , __leaf__));
/* END /usr/include/x86_64-1-gnu/bits/cpu-set.h */
extern int sched_setparam (__pid_t __pid, const struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_getparam (__pid_t __pid, struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_setscheduler (__pid_t __pid, int __policy, const struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_getscheduler (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_yield (void) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_get_priority_max (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_get_priority_min (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_rr_get_interval (__pid_t __pid, struct timespec *__t) __attribute__ ((__nothrow__ , __leaf__));
/* END /usr/include/sched.h */
/* BEGIN /usr/include/time.h */
/* END /usr/include/time.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/endian.h */
/* END /usr/include/x86_64-1-gnu/bits/endian.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/pthreadtypes.h */
enum { _BITS_PTHREADTYPES_COMMON_H = 1 };
/* BEGIN /usr/include/x86_64-1-gnu/bits/thread-shared-types.h */
enum { _THREAD_SHARED_TYPES_H = 1 };
/* BEGIN /usr/include/x86_64-1-gnu/bits/pthreadtypes-arch.h */
enum { _BITS_PTHREADTYPES_ARCH_H = 1 };
/* BEGIN /usr/include/x86_64-1-gnu/bits/wordsize.h */
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
/* END /usr/include/x86_64-1-gnu/bits/pthreadtypes-arch.h */
typedef struct __pthread_internal_list { struct __pthread_internal_list *__prev;
struct __pthread_internal_list *__next;
} __pthread_list_t;
typedef struct __pthread_internal_slist { struct __pthread_internal_slist *__next;
} __pthread_slist_t;
/* BEGIN /usr/include/x86_64-1-gnu/bits/struct_mutex.h */
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
/* BEGIN /usr/include/x86_64-1-gnu/bits/struct_rwlock.h */
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
unsigned long int __pad2;
unsigned int __flags;
};
/* END /usr/include/x86_64-1-gnu/bits/struct_rwlock.h */
struct __pthread_cond_s { __extension__ union { __extension__ unsigned long long int __wseq;
struct { unsigned int __low;
unsigned int __high;
} __wseq32;
};
__extension__ union { __extension__ unsigned long long int __g1_start;
struct { unsigned int __low;
unsigned int __high;
} __g1_start32;
};
unsigned int __g_refs[2] ;
unsigned int __g_size[2];
unsigned int __g1_orig_size;
unsigned int __wrefs;
unsigned int __g_signals[2];
};
/* END /usr/include/x86_64-1-gnu/bits/thread-shared-types.h */
typedef unsigned long int pthread_t;
typedef union { char __size[4];
int __align;
} pthread_mutexattr_t;
typedef union { char __size[4];
int __align;
} pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef int  pthread_once_t;
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
/* END /usr/include/x86_64-1-gnu/bits/pthreadtypes.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/setjmp.h */
enum { _BITS_SETJMP_H = 1 };
/* BEGIN /usr/include/x86_64-1-gnu/bits/wordsize.h */
/* END /usr/include/x86_64-1-gnu/bits/wordsize.h */
typedef long int __jmp_buf[8];
/* END /usr/include/x86_64-1-gnu/bits/setjmp.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/wordsize.h */
/* END /usr/include/x86_64-1-gnu/bits/wordsize.h */
/* BEGIN /usr/include/x86_64-1-gnu/bits/types/struct_timespec.h */
/* END /usr/include/x86_64-1-gnu/bits/types/struct_timespec.h */
enum { PTHREAD_CREATE_JOINABLE, PTHREAD_CREATE_DETACHED };
enum { PTHREAD_MUTEX_TIMED_NP, PTHREAD_MUTEX_RECURSIVE_NP, PTHREAD_MUTEX_ERRORCHECK_NP, PTHREAD_MUTEX_ADAPTIVE_NP };
enum { PTHREAD_INHERIT_SCHED, PTHREAD_EXPLICIT_SCHED };
enum { PTHREAD_SCOPE_SYSTEM, PTHREAD_SCOPE_PROCESS };
enum { PTHREAD_PROCESS_PRIVATE, PTHREAD_PROCESS_SHARED };
struct _pthread_cleanup_buffer { void (*__routine) (void *);
void *__arg;
int __canceltype;
struct _pthread_cleanup_buffer *__prev;
};
enum { PTHREAD_CANCEL_ENABLE, PTHREAD_CANCEL_DISABLE };
enum { PTHREAD_CANCEL_DEFERRED, PTHREAD_CANCEL_ASYNCHRONOUS };
enum { PTHREAD_ONCE_INIT = 0 };
extern int pthread_create (pthread_t *__restrict __newthread, const pthread_attr_t *__restrict __attr, void *(*__start_routine) (void *), void *__restrict __arg) __attribute__ ((__nothrow__))  __attribute__ ((__nonnull__ (1, 3))) ;
extern void pthread_exit (void *__retval) __attribute__ ((__noreturn__));
extern int pthread_join (pthread_t __th, void **__thread_return);
extern int pthread_detach (pthread_t __th) __attribute__ ((__nothrow__ , __leaf__));
extern pthread_t pthread_self (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int pthread_equal (pthread_t __thread1, pthread_t __thread2) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int pthread_attr_init (pthread_attr_t *__attr) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_attr_destroy (pthread_attr_t *__attr) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_attr_getdetachstate (const pthread_attr_t *__attr, int *__detachstate) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int pthread_attr_setdetachstate (pthread_attr_t *__attr, int __detachstate) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_attr_getguardsize (const pthread_attr_t *__attr, size_t *__guardsize) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int pthread_attr_setguardsize (pthread_attr_t *__attr, size_t __guardsize) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr, struct sched_param *__restrict __param) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr, const struct sched_param *__restrict __param) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int pthread_attr_getschedpolicy (const pthread_attr_t *__restrict __attr, int *__restrict __policy) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int pthread_attr_setschedpolicy (pthread_attr_t *__attr, int __policy) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict __attr, int *__restrict __inherit) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int pthread_attr_setinheritsched (pthread_attr_t *__attr, int __inherit) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_attr_getscope (const pthread_attr_t *__restrict __attr, int *__restrict __scope) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int pthread_attr_setscope (pthread_attr_t *__attr, int __scope) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_attr_getstackaddr (const pthread_attr_t *__restrict __attr, void **__restrict __stackaddr) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2)))  __attribute__ ((__deprecated__));
extern int pthread_attr_setstackaddr (pthread_attr_t *__attr, void *__stackaddr) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1)))  __attribute__ ((__deprecated__));
extern int pthread_attr_getstacksize (const pthread_attr_t *__restrict __attr, size_t *__restrict __stacksize) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int pthread_attr_setstacksize (pthread_attr_t *__attr, size_t __stacksize) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_setschedparam (pthread_t __target_thread, int __policy, const struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (3))) ;
extern int pthread_getschedparam (pthread_t __target_thread, int *__restrict __policy, struct sched_param *__restrict __param) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (2, 3))) ;
extern int pthread_setschedprio (pthread_t __target_thread, int __prio) __attribute__ ((__nothrow__ , __leaf__));
extern int pthread_once (pthread_once_t *__once_control, void (*__init_routine) (void))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int pthread_setcancelstate (int __state, int *__oldstate);
extern int pthread_setcanceltype (int __type, int *__oldtype);
extern int pthread_cancel (pthread_t __th);
extern void pthread_testcancel (void);
typedef struct { struct { __jmp_buf __cancel_jmp_buf;
int __mask_was_saved;
} __cancel_jmp_buf[1];
void *__pad[4];
} __pthread_unwind_buf_t __attribute__ ((__aligned__));
struct __pthread_cleanup_frame { void (*__cancel_routine) (void *);
void *__cancel_arg;
int __do_it;
int __cancel_type;
};
extern void __pthread_register_cancel (__pthread_unwind_buf_t *__buf) ;
extern void __pthread_unregister_cancel (__pthread_unwind_buf_t *__buf) ;
extern void __pthread_unwind_next (__pthread_unwind_buf_t *__buf) __attribute__ ((__noreturn__)) __attribute__ ((__weak__)) ;
struct __jmp_buf_tag;
extern int __sigsetjmp (struct __jmp_buf_tag *__env, int __savemask) __attribute__ ((__nothrow__));
extern int pthread_mutex_init (pthread_mutex_t *__mutex, const pthread_mutexattr_t *__mutexattr) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_mutex_destroy (pthread_mutex_t *__mutex) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_mutex_trylock (pthread_mutex_t *__mutex) __attribute__ ((__nothrow__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_mutex_lock (pthread_mutex_t *__mutex) __attribute__ ((__nothrow__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_mutex_unlock (pthread_mutex_t *__mutex) __attribute__ ((__nothrow__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_mutex_getprioceiling (const pthread_mutex_t * __restrict __mutex, int *__restrict __prioceiling) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int pthread_mutex_setprioceiling (pthread_mutex_t *__restrict __mutex, int __prioceiling, int *__restrict __old_ceiling) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 3))) ;
extern int pthread_mutexattr_init (pthread_mutexattr_t *__attr) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_mutexattr_destroy (pthread_mutexattr_t *__attr) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_mutexattr_getpshared (const pthread_mutexattr_t * __restrict __attr, int *__restrict __pshared) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int pthread_mutexattr_setpshared (pthread_mutexattr_t *__attr, int __pshared) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_mutexattr_getprotocol (const pthread_mutexattr_t * __restrict __attr, int *__restrict __protocol) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int pthread_mutexattr_setprotocol (pthread_mutexattr_t *__attr, int __protocol) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_mutexattr_getprioceiling (const pthread_mutexattr_t * __restrict __attr, int *__restrict __prioceiling) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int pthread_mutexattr_setprioceiling (pthread_mutexattr_t *__attr, int __prioceiling) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_cond_init (pthread_cond_t *__restrict __cond, const pthread_condattr_t *__restrict __cond_attr) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_cond_destroy (pthread_cond_t *__cond) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_cond_signal (pthread_cond_t *__cond) __attribute__ ((__nothrow__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_cond_broadcast (pthread_cond_t *__cond) __attribute__ ((__nothrow__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_cond_wait (pthread_cond_t *__restrict __cond, pthread_mutex_t *__restrict __mutex) __attribute__ ((__nonnull__ (1, 2))) ;
extern int pthread_cond_timedwait (pthread_cond_t *__restrict __cond, pthread_mutex_t *__restrict __mutex, const struct timespec *__restrict __abstime) __attribute__ ((__nonnull__ (1, 2, 3))) ;
extern int pthread_condattr_init (pthread_condattr_t *__attr) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_condattr_destroy (pthread_condattr_t *__attr) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_condattr_getpshared (const pthread_condattr_t * __restrict __attr, int *__restrict __pshared) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int pthread_condattr_setpshared (pthread_condattr_t *__attr, int __pshared) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_key_create (pthread_key_t *__key, void (*__destr_function) (void *)) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int pthread_key_delete (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));
extern void *pthread_getspecific (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));
extern int pthread_setspecific (pthread_key_t __key, const void *__pointer) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int pthread_atfork (void (*__prepare) (void), void (*__parent) (void), void (*__child) (void)) __attribute__ ((__nothrow__ , __leaf__));
/* END /usr/include/pthread.h */
]]
return pthread
