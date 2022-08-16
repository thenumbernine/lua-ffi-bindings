local ffi = require 'ffi'
require 'ffi.c.time'
local pthread = ffi.load'pthread'
ffi.cdef[[
/* BEGIN /usr/include/pthread.h */
enum { _PTHREAD_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/sched.h */
enum { _SCHED_H = 1 };
/* BEGIN /usr/include/features.h */
]] require 'ffi.c.features' ffi.cdef[[
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.c.bits.types' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/10/include/stddef.h */
]] require 'ffi.c.stddef' ffi.cdef[[
/* END /usr/lib/gcc/x86_64-1-gnu/10/include/stddef.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
/* END /usr/include/x86_64-1-gnu/bits/types/time_t.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]] require 'ffi.c.bits.types.struct_timespec' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types/struct_timespec.h */
/* BEGIN /usr/include/time.h */
]] require 'ffi.c.time' ffi.cdef[[
/* END /usr/include/time.h */
typedef __pid_t pid_t;
/* BEGIN /usr/include/x86_64-linux-gnu/bits/sched.h */
enum { _BITS_SCHED_H = 1 };
enum { SCHED_OTHER = 0 };
enum { SCHED_FIFO = 1 };
enum { SCHED_RR = 2 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_sched_param.h */
enum { _BITS_TYPES_STRUCT_SCHED_PARAM = 1 };
struct sched_param { int sched_priority;
};
/* END /usr/include/x86_64-1-gnu/bits/types/struct_sched_param.h */
/* END /usr/include/x86_64-1-gnu/bits/sched.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/cpu-set.h */
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
/* BEGIN /usr/include/x86_64-linux-gnu/bits/endian.h */
/* END /usr/include/x86_64-1-gnu/bits/endian.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h */
enum { _BITS_PTHREADTYPES_COMMON_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h */
enum { _THREAD_SHARED_TYPES_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h */
enum { _BITS_PTHREADTYPES_ARCH_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
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
typedef unsigned int __tss_t;
typedef unsigned long int __thrd_t;
typedef struct { int __data ;
} __once_flag;
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
/* BEGIN /usr/include/x86_64-linux-gnu/bits/setjmp.h */
]] require 'ffi.c.setjmp' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/setjmp.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* END /usr/include/x86_64-1-gnu/bits/wordsize.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
/* END /usr/include/x86_64-1-gnu/bits/types/struct_timespec.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
]] require 'ffi.c.bits.types.__sigset_t' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types/__sigset_t.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct___jmp_buf_tag.h */
enum { __jmp_buf_tag_defined = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/setjmp.h */
/* END /usr/include/x86_64-1-gnu/bits/setjmp.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
/* END /usr/include/x86_64-1-gnu/bits/types/__sigset_t.h */
struct __jmp_buf_tag { __jmp_buf __jmpbuf;
int __mask_was_saved;
__sigset_t __saved_mask;
};
/* END /usr/include/x86_64-1-gnu/bits/types/struct___jmp_buf_tag.h */
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
struct __cancel_jmp_buf_tag { __jmp_buf __cancel_jmp_buf;
int __mask_was_saved;
};
typedef struct { struct __cancel_jmp_buf_tag __cancel_jmp_buf[1];
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
extern int __sigsetjmp (struct __jmp_buf_tag __env[1], int __savemask) __attribute__ ((__nothrow__));
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
