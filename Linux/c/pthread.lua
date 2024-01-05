local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/pthread.h */
/* ++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END   /usr/include/features.h */
/* ++ BEGIN /usr/include/sched.h */
]] require 'ffi.req' 'c.sched' ffi.cdef[[
/* ++ END   /usr/include/sched.h */
/* ++ BEGIN /usr/include/time.h */
]] require 'ffi.req' 'c.time' ffi.cdef[[
/* ++ END   /usr/include/time.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/endian.h */
]] require 'ffi.req' 'c.bits.endian' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/endian.h */
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
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/setjmp.h */
]] require 'ffi.req' 'c.bits.setjmp' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/setjmp.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]] require 'ffi.req' 'c.bits.types.struct_timespec' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
]] require 'ffi.req' 'c.bits.types.__sigset_t' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct___jmp_buf_tag.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/setjmp.h */
]] require 'ffi.req' 'c.bits.setjmp' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/setjmp.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
]] require 'ffi.req' 'c.bits.types.__sigset_t' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
struct __jmp_buf_tag {
	__jmp_buf __jmpbuf;
	int __mask_was_saved;
	__sigset_t __saved_mask;
};
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/struct___jmp_buf_tag.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/pthread_stack_min-dynamic.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/pthread_stack_min.h */
enum { PTHREAD_STACK_MIN = 16384 };
/* +++ END   /usr/include/x86_64-linux-gnu/bits/pthread_stack_min.h */
/* ++ END   /usr/include/x86_64-linux-gnu/bits/pthread_stack_min-dynamic.h */
enum { PTHREAD_CREATE_JOINABLE,/* enum { PTHREAD_CREATE_JOINABLE = 0 }; */
PTHREAD_CREATE_DETACHED/* enum { PTHREAD_CREATE_DETACHED = 0 }; */
};
enum { PTHREAD_MUTEX_TIMED_NP, PTHREAD_MUTEX_RECURSIVE_NP, PTHREAD_MUTEX_ERRORCHECK_NP, PTHREAD_MUTEX_ADAPTIVE_NP , PTHREAD_MUTEX_NORMAL = PTHREAD_MUTEX_TIMED_NP, PTHREAD_MUTEX_RECURSIVE = PTHREAD_MUTEX_RECURSIVE_NP, PTHREAD_MUTEX_ERRORCHECK = PTHREAD_MUTEX_ERRORCHECK_NP, PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL };
enum { PTHREAD_MUTEX_STALLED, PTHREAD_MUTEX_STALLED_NP = PTHREAD_MUTEX_STALLED, PTHREAD_MUTEX_ROBUST, PTHREAD_MUTEX_ROBUST_NP = PTHREAD_MUTEX_ROBUST };
enum { PTHREAD_PRIO_NONE, PTHREAD_PRIO_INHERIT, PTHREAD_PRIO_PROTECT };
/* #define PTHREAD_MUTEX_INITIALIZER   { {  __PTHREAD_MUTEX_INITIALIZER (PTHREAD_MUTEX_TIMED_NP) } } ### string, not number "{ {  __PTHREAD_MUTEX_INITIALIZER (PTHREAD_MUTEX_TIMED_NP) } }" */
enum { PTHREAD_RWLOCK_PREFER_READER_NP, PTHREAD_RWLOCK_PREFER_WRITER_NP, PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP, PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP };
/* # define PTHREAD_RWLOCK_INITIALIZER    { { __PTHREAD_RWLOCK_INITIALIZER (PTHREAD_RWLOCK_DEFAULT_NP) } } ### string, not number "{ { __PTHREAD_RWLOCK_INITIALIZER (PTHREAD_RWLOCK_DEFAULT_NP) } }" */
enum { PTHREAD_INHERIT_SCHED,/* enum { PTHREAD_INHERIT_SCHED = 0 }; */
PTHREAD_EXPLICIT_SCHED/* enum { PTHREAD_EXPLICIT_SCHED = 0 }; */
};
enum { PTHREAD_SCOPE_SYSTEM,/* enum { PTHREAD_SCOPE_SYSTEM = 0 }; */
PTHREAD_SCOPE_PROCESS/* enum { PTHREAD_SCOPE_PROCESS = 0 }; */
};
enum { PTHREAD_PROCESS_PRIVATE,/* enum { PTHREAD_PROCESS_PRIVATE = 0 }; */
PTHREAD_PROCESS_SHARED/* enum { PTHREAD_PROCESS_SHARED = 0 }; */
};
/* #define PTHREAD_COND_INITIALIZER { { {0}, {0}, {0, 0}, {0, 0}, 0, 0, {0, 0} } } ### string, not number "{ { {0}, {0}, {0, 0}, {0, 0}, 0, 0, {0, 0} } }" */
struct _pthread_cleanup_buffer {
	void (*__routine) (void *);
	void *__arg;
	int __canceltype;
	struct _pthread_cleanup_buffer *__prev;
};
enum { PTHREAD_CANCEL_ENABLE,/* enum { PTHREAD_CANCEL_ENABLE = 0 }; */
PTHREAD_CANCEL_DISABLE/* enum { PTHREAD_CANCEL_DISABLE = 0 }; */
};
enum { PTHREAD_CANCEL_DEFERRED,/* enum { PTHREAD_CANCEL_DEFERRED = 0 }; */
PTHREAD_CANCEL_ASYNCHRONOUS/* enum { PTHREAD_CANCEL_ASYNCHRONOUS = 0 }; */
};
/* #define PTHREAD_CANCELED ((void *) -1) ### string, not number "((void *) -1)" */
enum { PTHREAD_ONCE_INIT = 0 };
enum { PTHREAD_BARRIER_SERIAL_THREAD = -1 };
extern int pthread_create (pthread_t * __newthread, const pthread_attr_t * __attr, void *(*__start_routine) (void *), void * __arg) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));
extern void pthread_exit (void *__retval) __attribute__ ((__noreturn__));
extern int pthread_join (pthread_t __th, void **__thread_return);
extern int pthread_detach (pthread_t __th) __attribute__ ((__nothrow__ , __leaf__));
extern pthread_t pthread_self (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int pthread_equal (pthread_t __thread1, pthread_t __thread2) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int pthread_attr_init (pthread_attr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_destroy (pthread_attr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_getdetachstate (const pthread_attr_t *__attr, int *__detachstate) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_attr_setdetachstate (pthread_attr_t *__attr, int __detachstate) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_getguardsize (const pthread_attr_t *__attr, size_t *__guardsize) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_attr_setguardsize (pthread_attr_t *__attr, size_t __guardsize) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_getschedparam (const pthread_attr_t * __attr, struct sched_param * __param) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_attr_setschedparam (pthread_attr_t * __attr, const struct sched_param * __param) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_attr_getschedpolicy (const pthread_attr_t * __attr, int * __policy) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_attr_setschedpolicy (pthread_attr_t *__attr, int __policy) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_getinheritsched (const pthread_attr_t * __attr, int * __inherit) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_attr_setinheritsched (pthread_attr_t *__attr, int __inherit) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_getscope (const pthread_attr_t * __attr, int * __scope) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_attr_setscope (pthread_attr_t *__attr, int __scope) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_getstackaddr (const pthread_attr_t * __attr, void ** __stackaddr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__deprecated__));
extern int pthread_attr_setstackaddr (pthread_attr_t *__attr, void *__stackaddr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__));
extern int pthread_attr_getstacksize (const pthread_attr_t * __attr, size_t * __stacksize) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_attr_setstacksize (pthread_attr_t *__attr, size_t __stacksize) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_getstack (const pthread_attr_t * __attr, void ** __stackaddr, size_t * __stacksize) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern int pthread_attr_setstack (pthread_attr_t *__attr, void *__stackaddr, size_t __stacksize) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_setschedparam (pthread_t __target_thread, int __policy, const struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int pthread_getschedparam (pthread_t __target_thread, int * __policy, struct sched_param * __param) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern int pthread_setschedprio (pthread_t __target_thread, int __prio) __attribute__ ((__nothrow__ , __leaf__));
extern int pthread_once (pthread_once_t *__once_control, void (*__init_routine) (void)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_setcancelstate (int __state, int *__oldstate);
extern int pthread_setcanceltype (int __type, int *__oldtype);
extern int pthread_cancel (pthread_t __th);
extern void pthread_testcancel (void);
struct __cancel_jmp_buf_tag {
	__jmp_buf __cancel_jmp_buf;
	int __mask_was_saved;
};
typedef struct {
	struct __cancel_jmp_buf_tag __cancel_jmp_buf[1];
	void *__pad[4];
} __pthread_unwind_buf_t __attribute__ ((__aligned__));
struct __pthread_cleanup_frame {
	void (*__cancel_routine) (void *);
	void *__cancel_arg;
	int __do_it;
	int __cancel_type;
};
extern void __pthread_register_cancel (__pthread_unwind_buf_t *__buf);
extern void __pthread_unregister_cancel (__pthread_unwind_buf_t *__buf);
extern void __pthread_unwind_next (__pthread_unwind_buf_t *__buf) __attribute__ ((__noreturn__)) __attribute__ ((__weak__));
/* ### INCOMPLETE ARG MACRO ### __REDIRECT_NTHNL ### IN LINE ### extern int __REDIRECT_NTHNL (__sigsetjmp_cancel, */
/* ### PREPENDING ### extern int __REDIRECT_NTHNL (__sigsetjmp_cancel, ### TO ### (struct __cancel_jmp_buf_tag __env[1], */
/* ### INCOMPLETE ARG MACRO ### __REDIRECT_NTHNL ### IN LINE ### extern int __REDIRECT_NTHNL (__sigsetjmp_cancel, (struct __cancel_jmp_buf_tag __env[1], */
/* ### PREPENDING ### extern int __REDIRECT_NTHNL (__sigsetjmp_cancel, (struct __cancel_jmp_buf_tag __env[1], ### TO ### int __savemask), */
/* ### INCOMPLETE ARG MACRO ### __REDIRECT_NTHNL ### IN LINE ### extern int __REDIRECT_NTHNL (__sigsetjmp_cancel, (struct __cancel_jmp_buf_tag __env[1], int __savemask), */
/* ### PREPENDING ### extern int __REDIRECT_NTHNL (__sigsetjmp_cancel, (struct __cancel_jmp_buf_tag __env[1], int __savemask), ### TO ### __sigsetjmp) __attribute_returns_twice__; */
extern int __sigsetjmp_cancel (struct __cancel_jmp_buf_tag __env[1], int __savemask) __attribute__ ((__nothrow__)) __attribute__ ((__returns_twice__));
extern int pthread_mutex_init (pthread_mutex_t *__mutex, const pthread_mutexattr_t *__mutexattr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutex_destroy (pthread_mutex_t *__mutex) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutex_trylock (pthread_mutex_t *__mutex) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutex_lock (pthread_mutex_t *__mutex) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutex_timedlock (pthread_mutex_t * __mutex, const struct timespec * __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_mutex_unlock (pthread_mutex_t *__mutex) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutex_getprioceiling (const pthread_mutex_t * __mutex, int * __prioceiling) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_mutex_setprioceiling (pthread_mutex_t * __mutex, int __prioceiling, int * __old_ceiling) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
extern int pthread_mutex_consistent (pthread_mutex_t *__mutex) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutexattr_init (pthread_mutexattr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutexattr_destroy (pthread_mutexattr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutexattr_getpshared (const pthread_mutexattr_t * __attr, int * __pshared) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_mutexattr_setpshared (pthread_mutexattr_t *__attr, int __pshared) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutexattr_gettype (const pthread_mutexattr_t * __attr, int * __kind) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_mutexattr_settype (pthread_mutexattr_t *__attr, int __kind) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutexattr_getprotocol (const pthread_mutexattr_t * __attr, int * __protocol) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_mutexattr_setprotocol (pthread_mutexattr_t *__attr, int __protocol) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutexattr_getprioceiling (const pthread_mutexattr_t * __attr, int * __prioceiling) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_mutexattr_setprioceiling (pthread_mutexattr_t *__attr, int __prioceiling) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutexattr_getrobust (const pthread_mutexattr_t *__attr, int *__robustness) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr, int __robustness) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlock_init (pthread_rwlock_t * __rwlock, const pthread_rwlockattr_t * __attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlock_destroy (pthread_rwlock_t *__rwlock) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlock_rdlock (pthread_rwlock_t *__rwlock) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlock_tryrdlock (pthread_rwlock_t *__rwlock) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlock_timedrdlock (pthread_rwlock_t * __rwlock, const struct timespec * __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_rwlock_wrlock (pthread_rwlock_t *__rwlock) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlock_trywrlock (pthread_rwlock_t *__rwlock) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlock_timedwrlock (pthread_rwlock_t * __rwlock, const struct timespec * __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_rwlock_unlock (pthread_rwlock_t *__rwlock) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlockattr_init (pthread_rwlockattr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlockattr_destroy (pthread_rwlockattr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlockattr_getpshared (const pthread_rwlockattr_t * __attr, int * __pshared) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_rwlockattr_setpshared (pthread_rwlockattr_t *__attr, int __pshared) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlockattr_getkind_np (const pthread_rwlockattr_t * __attr, int * __pref) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_rwlockattr_setkind_np (pthread_rwlockattr_t *__attr, int __pref) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_cond_init (pthread_cond_t * __cond, const pthread_condattr_t * __cond_attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_cond_destroy (pthread_cond_t *__cond) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_cond_signal (pthread_cond_t *__cond) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_cond_broadcast (pthread_cond_t *__cond) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_cond_wait (pthread_cond_t * __cond, pthread_mutex_t * __mutex) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_cond_timedwait (pthread_cond_t * __cond, pthread_mutex_t * __mutex, const struct timespec * __abstime) __attribute__ ((__nonnull__ (1, 2, 3)));
extern int pthread_condattr_init (pthread_condattr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_condattr_destroy (pthread_condattr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_condattr_getpshared (const pthread_condattr_t * __attr, int * __pshared) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_condattr_setpshared (pthread_condattr_t *__attr, int __pshared) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_condattr_getclock (const pthread_condattr_t * __attr, __clockid_t * __clock_id) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_condattr_setclock (pthread_condattr_t *__attr, __clockid_t __clock_id) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_spin_init (pthread_spinlock_t *__lock, int __pshared) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_spin_destroy (pthread_spinlock_t *__lock) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_spin_lock (pthread_spinlock_t *__lock) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_spin_trylock (pthread_spinlock_t *__lock) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_spin_unlock (pthread_spinlock_t *__lock) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_barrier_init (pthread_barrier_t * __barrier, const pthread_barrierattr_t * __attr, unsigned int __count) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_barrier_destroy (pthread_barrier_t *__barrier) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_barrier_wait (pthread_barrier_t *__barrier) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_barrierattr_init (pthread_barrierattr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_barrierattr_destroy (pthread_barrierattr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_barrierattr_getpshared (const pthread_barrierattr_t * __attr, int * __pshared) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_barrierattr_setpshared (pthread_barrierattr_t *__attr, int __pshared) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_key_create (pthread_key_t *__key, void (*__destr_function) (void *)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_key_delete (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));
extern void *pthread_getspecific (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));
extern int pthread_setspecific (pthread_key_t __key, const void *__pointer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__access__ (__none__, 2)));
extern int pthread_getcpuclockid (pthread_t __thread_id, __clockid_t *__clock_id) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int pthread_atfork (void (*__prepare) (void), void (*__parent) (void), void (*__child) (void)) __attribute__ ((__nothrow__ , __leaf__));
/* + END   /usr/include/pthread.h */
]]
