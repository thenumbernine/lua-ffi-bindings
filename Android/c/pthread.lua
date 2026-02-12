local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <pthread.h> /data/data/com.termux/files/usr/bin/../../usr/include/pthread.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <limits.h> /data/data/com.termux/files/usr/lib/clang/21/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* ++ END <limits.h> /data/data/com.termux/files/usr/lib/clang/21/include/limits.h */
/* ++ BEGIN <bits/page_size.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/page_size.h */
/* ++ END <bits/page_size.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/page_size.h */
/* ++ BEGIN <bits/pthread_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/pthread_types.h */
/* ++ END <bits/pthread_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/pthread_types.h */
/* ++ BEGIN <sched.h> /data/data/com.termux/files/usr/bin/../../usr/include/sched.h */
]] require 'ffi.req' 'c.sched' ffi.cdef[[
/* ++ END <sched.h> /data/data/com.termux/files/usr/bin/../../usr/include/sched.h */
/* ++ BEGIN <time.h> /data/data/com.termux/files/usr/bin/../../usr/include/time.h */
]] require 'ffi.req' 'c.time' ffi.cdef[[
/* ++ END <time.h> /data/data/com.termux/files/usr/bin/../../usr/include/time.h */
enum {
  PTHREAD_MUTEX_NORMAL = 0,
  PTHREAD_MUTEX_RECURSIVE = 1,
  PTHREAD_MUTEX_ERRORCHECK = 2,
  PTHREAD_MUTEX_ERRORCHECK_NP = PTHREAD_MUTEX_ERRORCHECK,
  PTHREAD_MUTEX_RECURSIVE_NP = PTHREAD_MUTEX_RECURSIVE,
  PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL
};
enum {
  PTHREAD_RWLOCK_PREFER_READER_NP = 0,
  PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP = 1,
};
int pthread_atfork(void (*  __prepare)(void), void (*  __parent)(void), void (*  __child)(void));
int pthread_attr_destroy(pthread_attr_t*  __attr);
int pthread_attr_getdetachstate(const pthread_attr_t*  __attr, int*  __state);
int pthread_attr_getguardsize(const pthread_attr_t*  __attr, size_t*  __size);
int pthread_attr_getinheritsched(const pthread_attr_t*  __attr, int*  __flag) __attribute__((__availability__(android,strict,introduced=28 )));
int pthread_attr_getschedparam(const pthread_attr_t*  __attr, struct sched_param*  __param);
int pthread_attr_getschedpolicy(const pthread_attr_t*  __attr, int*  __policy);
int pthread_attr_getscope(const pthread_attr_t*  __attr, int*  __scope);
int pthread_attr_getstack(const pthread_attr_t*  __attr, void*  *  __addr, size_t*  __size);
int pthread_attr_getstacksize(const pthread_attr_t*  __attr, size_t*  __size);
int pthread_attr_init(pthread_attr_t*  __attr);
int pthread_attr_setdetachstate(pthread_attr_t*  __attr, int __state);
int pthread_attr_setguardsize(pthread_attr_t*  __attr, size_t __size);
int pthread_attr_setinheritsched(pthread_attr_t*  __attr, int __flag) __attribute__((__availability__(android,strict,introduced=28 )));
int pthread_attr_setschedparam(pthread_attr_t*  __attr, const struct sched_param*  __param);
int pthread_attr_setschedpolicy(pthread_attr_t*  __attr, int __policy);
int pthread_attr_setscope(pthread_attr_t*  __attr, int __scope);
int pthread_attr_setstack(pthread_attr_t*  __attr, void*  __addr, size_t __size);
int pthread_attr_setstacksize(pthread_attr_t*  __addr, size_t __size);
int pthread_condattr_destroy(pthread_condattr_t*  __attr);
int pthread_condattr_getclock(const pthread_condattr_t*  __attr, clockid_t*  __clock);
int pthread_condattr_getpshared(const pthread_condattr_t*  __attr, int*  __shared);
int pthread_condattr_init(pthread_condattr_t*  __attr);
int pthread_condattr_setclock(pthread_condattr_t*  __attr, clockid_t __clock);
int pthread_condattr_setpshared(pthread_condattr_t*  __attr, int __shared);
int pthread_cond_broadcast(pthread_cond_t*  __cond);
int pthread_cond_clockwait(pthread_cond_t*  __cond, pthread_mutex_t*  __mutex, clockid_t __clock,
                           const struct timespec*  __timeout) __attribute__((__availability__(android,strict,introduced=30 )));
int pthread_cond_destroy(pthread_cond_t*  __cond);
int pthread_cond_init(pthread_cond_t*  __cond, const pthread_condattr_t*  __attr);
int pthread_cond_signal(pthread_cond_t*  __cond);
int pthread_cond_timedwait(pthread_cond_t*  __cond, pthread_mutex_t*  __mutex, const struct timespec*  __timeout);
int pthread_cond_timedwait_monotonic_np(pthread_cond_t*  __cond, pthread_mutex_t*  __mutex,
                                        const struct timespec*  __timeout) ;
int pthread_cond_wait(pthread_cond_t*  __cond, pthread_mutex_t*  __mutex);
int pthread_create(pthread_t*  __pthread_ptr, pthread_attr_t const*  __attr, void*  (*  __start_routine)(void* ), void* );
int pthread_detach(pthread_t __pthread);
void pthread_exit(void*  __return_value) __attribute__((__noreturn__));
int pthread_equal(pthread_t __lhs, pthread_t __rhs);
int pthread_getattr_np(pthread_t __pthread, pthread_attr_t*  __attr);
int pthread_getcpuclockid(pthread_t __pthread, clockid_t*  __clock);
void*  pthread_getspecific(pthread_key_t __key);
pid_t pthread_gettid_np(pthread_t __pthread);
int pthread_join(pthread_t __pthread, void*  *  __return_value_ptr);
int pthread_key_create(pthread_key_t*  __key_ptr, void (*  __key_destructor)(void* ));
int pthread_key_delete(pthread_key_t __key);
int pthread_mutexattr_destroy(pthread_mutexattr_t*  __attr);
int pthread_mutexattr_getpshared(const pthread_mutexattr_t*  __attr, int*  __shared);
int pthread_mutexattr_gettype(const pthread_mutexattr_t*  __attr, int*  __type);
int pthread_mutexattr_getprotocol(const pthread_mutexattr_t*  __attr, int*  __protocol) __attribute__((__availability__(android,strict,introduced=28 )));
int pthread_mutexattr_init(pthread_mutexattr_t*  __attr);
int pthread_mutexattr_setpshared(pthread_mutexattr_t*  __attr, int __shared);
int pthread_mutexattr_settype(pthread_mutexattr_t*  __attr, int __type);
int pthread_mutexattr_setprotocol(pthread_mutexattr_t*  __attr, int __protocol) __attribute__((__availability__(android,strict,introduced=28 )));
int pthread_mutex_clocklock(pthread_mutex_t*  __mutex, clockid_t __clock,
                            const struct timespec*  __abstime) __attribute__((__availability__(android,strict,introduced=30 )));
int pthread_mutex_destroy(pthread_mutex_t*  __mutex);
int pthread_mutex_init(pthread_mutex_t*  __mutex, const pthread_mutexattr_t*  __attr);
int pthread_mutex_lock(pthread_mutex_t*  __mutex);
int pthread_mutex_timedlock(pthread_mutex_t*  __mutex, const struct timespec*  __timeout);
int pthread_mutex_timedlock_monotonic_np(pthread_mutex_t*  __mutex, const struct timespec*  __timeout)
    __attribute__((__availability__(android,strict,introduced=28 )));
int pthread_mutex_trylock(pthread_mutex_t*  __mutex);
int pthread_mutex_unlock(pthread_mutex_t*  __mutex);
int pthread_once(pthread_once_t*  __once, void (*  __init_routine)(void));
int pthread_rwlockattr_init(pthread_rwlockattr_t*  __attr);
int pthread_rwlockattr_destroy(pthread_rwlockattr_t*  __attr);
int pthread_rwlockattr_getpshared(const pthread_rwlockattr_t*  __attr, int*  __shared);
int pthread_rwlockattr_setpshared(pthread_rwlockattr_t*  __attr, int __shared);
int pthread_rwlockattr_getkind_np(const pthread_rwlockattr_t*  __attr, int*  __kind)
  __attribute__((__availability__(android,strict,introduced=23 )));
int pthread_rwlockattr_setkind_np(pthread_rwlockattr_t*  __attr, int __kind) __attribute__((__availability__(android,strict,introduced=23 )));
int pthread_rwlock_clockrdlock(pthread_rwlock_t*  __rwlock, clockid_t __clock,
                               const struct timespec*  __timeout) __attribute__((__availability__(android,strict,introduced=30 )));
int pthread_rwlock_clockwrlock(pthread_rwlock_t*  __rwlock, clockid_t __clock,
                               const struct timespec*  __timeout) __attribute__((__availability__(android,strict,introduced=30 )));
int pthread_rwlock_destroy(pthread_rwlock_t*  __rwlock);
int pthread_rwlock_init(pthread_rwlock_t*  __rwlock, const pthread_rwlockattr_t*  __attr);
int pthread_rwlock_rdlock(pthread_rwlock_t*  __rwlock);
int pthread_rwlock_timedrdlock(pthread_rwlock_t*  __rwlock, const struct timespec*  __timeout);
int pthread_rwlock_timedrdlock_monotonic_np(pthread_rwlock_t*  __rwlock,
                                            const struct timespec*  __timeout) __attribute__((__availability__(android,strict,introduced=28 )));
int pthread_rwlock_timedwrlock(pthread_rwlock_t*  __rwlock, const struct timespec*  __timeout);
int pthread_rwlock_timedwrlock_monotonic_np(pthread_rwlock_t*  __rwlock,
                                            const struct timespec*  __timeout) __attribute__((__availability__(android,strict,introduced=28 )));
int pthread_rwlock_tryrdlock(pthread_rwlock_t*  __rwlock);
int pthread_rwlock_trywrlock(pthread_rwlock_t*  __rwlock);
int pthread_rwlock_unlock(pthread_rwlock_t*  __rwlock);
int pthread_rwlock_wrlock(pthread_rwlock_t*  __rwlock);
int pthread_barrierattr_init(pthread_barrierattr_t*  __attr) __attribute__((__availability__(android,strict,introduced=24 )));
int pthread_barrierattr_destroy(pthread_barrierattr_t*  __attr) __attribute__((__availability__(android,strict,introduced=24 )));
int pthread_barrierattr_getpshared(const pthread_barrierattr_t*  __attr, int*  __shared) __attribute__((__availability__(android,strict,introduced=24 )));
int pthread_barrierattr_setpshared(pthread_barrierattr_t*  __attr, int __shared) __attribute__((__availability__(android,strict,introduced=24 )));
int pthread_barrier_init(pthread_barrier_t*  __barrier, const pthread_barrierattr_t*  __attr, unsigned __count) __attribute__((__availability__(android,strict,introduced=24 )));
int pthread_barrier_destroy(pthread_barrier_t*  __barrier) __attribute__((__availability__(android,strict,introduced=24 )));
int pthread_barrier_wait(pthread_barrier_t*  __barrier) __attribute__((__availability__(android,strict,introduced=24 )));
int pthread_spin_destroy(pthread_spinlock_t*  __spinlock) __attribute__((__availability__(android,strict,introduced=24 )));
int pthread_spin_init(pthread_spinlock_t*  __spinlock, int __shared) __attribute__((__availability__(android,strict,introduced=24 )));
int pthread_spin_lock(pthread_spinlock_t*  __spinlock) __attribute__((__availability__(android,strict,introduced=24 )));
int pthread_spin_trylock(pthread_spinlock_t*  __spinlock) __attribute__((__availability__(android,strict,introduced=24 )));
int pthread_spin_unlock(pthread_spinlock_t*  __spinlock) __attribute__((__availability__(android,strict,introduced=24 )));
pthread_t pthread_self(void) __attribute__((__const__));
int pthread_setname_np(pthread_t __pthread, const char*  __name);
int pthread_setschedparam(pthread_t __pthread, int __policy, const struct sched_param*  __param);
int pthread_getschedparam(pthread_t __pthread, int*  __policy, struct sched_param*  __param);
int pthread_setschedprio(pthread_t __pthread, int __priority) __attribute__((__availability__(android,strict,introduced=28 )));
int pthread_setspecific(pthread_key_t __key, const void*  __value);
typedef void (*  __pthread_cleanup_func_t)(void* );
typedef struct __pthread_cleanup_t {
  struct __pthread_cleanup_t*  __cleanup_prev;
  __pthread_cleanup_func_t  __cleanup_routine;
  void*  __cleanup_arg;
} __pthread_cleanup_t;
void __pthread_cleanup_push(__pthread_cleanup_t*  c, __pthread_cleanup_func_t , void* );
void __pthread_cleanup_pop(__pthread_cleanup_t* , int);
]] require 'ffi.req' 'c.PAGE_SIZE' ffi.cdef[[
/* #define PAGE_MASK (~(PAGE_SIZE - 1)) ### define is not number */
/* #define PTHREAD_MUTEX_INITIALIZER { { ((PTHREAD_MUTEX_NORMAL & 3) << 14) } } ### define is not number */
/* #define PTHREAD_RECURSIVE_MUTEX_INITIALIZER_NP { { ((PTHREAD_MUTEX_RECURSIVE & 3) << 14) } } ### define is not number */
/* #define PTHREAD_ERRORCHECK_MUTEX_INITIALIZER_NP { { ((PTHREAD_MUTEX_ERRORCHECK & 3) << 14) } } ### define is not number */
/* #define PTHREAD_COND_INITIALIZER { { 0 } } ### define is not number */
/* #define PTHREAD_COND_INITIALIZER_MONOTONIC_NP { { 1 << 1 } } ### define is not number */
/* #define PTHREAD_RWLOCK_INITIALIZER { { 0 } } ### define is not number */
enum { PTHREAD_ONCE_INIT = 0 };
/* #define PTHREAD_BARRIER_SERIAL_THREAD (-1) ### define is not number */
enum { PTHREAD_STACK_MIN = 8192 };
enum { PTHREAD_CREATE_DETACHED = 1 };
enum { PTHREAD_CREATE_JOINABLE = 0 };
enum { PTHREAD_EXPLICIT_SCHED = 0 };
enum { PTHREAD_INHERIT_SCHED = 1 };
enum { PTHREAD_PRIO_NONE = 0 };
enum { PTHREAD_PRIO_INHERIT = 1 };
enum { PTHREAD_PROCESS_PRIVATE = 0 };
enum { PTHREAD_PROCESS_SHARED = 1 };
enum { PTHREAD_SCOPE_SYSTEM = 0 };
enum { PTHREAD_SCOPE_PROCESS = 1 };
/* #define pthread_cleanup_push (routine,arg) do { __pthread_cleanup_t __cleanup; __pthread_cleanup_push( &__cleanup, (routine), (arg) ); ### define is not number */
/* #define pthread_cleanup_pop (execute) __pthread_cleanup_pop( &__cleanup, (execute)); } while (0); ### define is not number */
/* + END <pthread.h> /data/data/com.termux/files/usr/bin/../../usr/include/pthread.h */
]]
return ffi.C
