local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <pthread.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/pthread.h */
/* ++ BEGIN <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* ++ END <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
/* ++ BEGIN <pthread/sched.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/pthread/sched.h */
/* +++ BEGIN <pthread/pthread_impl.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/pthread/pthread_impl.h */
]] require 'ffi.req' 'c.pthread.pthread_impl' ffi.cdef[[
/* +++ END <pthread/pthread_impl.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/pthread/pthread_impl.h */
]] require 'ffi.req' 'c.sched' ffi.cdef[[
/* ++ END <pthread/sched.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/pthread/sched.h */
/* ++ BEGIN <time.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h */
]] require 'ffi.req' 'c.time' ffi.cdef[[
/* ++ END <time.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h */
/* ++ BEGIN <sys/_pthread/_pthread_attr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_attr_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_attr_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_attr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_attr_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_cond_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_cond_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_cond_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_cond_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_cond_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_condattr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_condattr_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_condattr_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_condattr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_condattr_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_key_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_key_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_key_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_key_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_key_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_mutex_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_mutex_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_mutex_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_mutex_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_mutex_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_mutexattr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_mutexattr_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_mutexattr_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_mutexattr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_mutexattr_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_once_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_once_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_once_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_once_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_once_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_rwlock_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_rwlock_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_rwlock_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_rwlock_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_rwlock_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_rwlockattr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_rwlockattr_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_rwlockattr_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_rwlockattr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_rwlockattr_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_t.h */
/* ++ BEGIN <pthread/qos.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/pthread/qos.h */
/* +++ BEGIN <sys/qos.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/qos.h */
enum { QOS_CLASS_USER_INTERACTIVE   = 0x21, QOS_CLASS_USER_INITIATED   = 0x19, QOS_CLASS_DEFAULT   = 0x15, QOS_CLASS_UTILITY   = 0x11, QOS_CLASS_BACKGROUND   = 0x09, QOS_CLASS_UNSPECIFIED   = 0x00, }; typedef unsigned int qos_class_t;
qos_class_t
qos_class_self(void);
qos_class_t
qos_class_main(void);
/* +++ END <sys/qos.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/qos.h */
#pragma clang assume_nonnull begin
int
pthread_attr_set_qos_class_np(pthread_attr_t *__attr,
  qos_class_t __qos_class, int __relative_priority);
int
pthread_attr_get_qos_class_np(pthread_attr_t * restrict __attr,
  qos_class_t * restrict __qos_class,
  int * restrict __relative_priority);
int
pthread_set_qos_class_self_np(qos_class_t __qos_class,
  int __relative_priority);
int
pthread_get_qos_class_np(pthread_t __pthread,
  qos_class_t * restrict __qos_class,
  int * restrict __relative_priority);
typedef struct pthread_override_s* pthread_override_t;
pthread_override_t
pthread_override_qos_class_start_np(pthread_t __pthread,
  qos_class_t __qos_class, int __relative_priority);
int
pthread_override_qos_class_end_np(pthread_override_t __override);
#pragma clang assume_nonnull end
/* ++ END <pthread/qos.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/pthread/qos.h */
/* ++ BEGIN <sys/_types/_mach_port_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mach_port_t.h */
typedef __darwin_mach_port_t mach_port_t;
/* ++ END <sys/_types/_mach_port_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mach_port_t.h */
/* ++ BEGIN <sys/_types/_sigset_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigset_t.h */
]] require 'ffi.req' 'c.sys._types._sigset_t' ffi.cdef[[
/* ++ END <sys/_types/_sigset_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigset_t.h */
#pragma clang assume_nonnull begin
int pthread_atfork(void (* )(void), void (* )(void),
  void (* )(void));
int pthread_attr_destroy(pthread_attr_t *);
int pthread_attr_getdetachstate(const pthread_attr_t *, int *);
int pthread_attr_getguardsize(const pthread_attr_t * restrict, size_t * restrict);
int pthread_attr_getinheritsched(const pthread_attr_t * restrict, int * restrict);
int pthread_attr_getschedparam(const pthread_attr_t * restrict,
  struct sched_param * restrict);
int pthread_attr_getschedpolicy(const pthread_attr_t * restrict, int * restrict);
int pthread_attr_getscope(const pthread_attr_t * restrict, int * restrict);
int pthread_attr_getstack(const pthread_attr_t * restrict,
  void * * restrict, size_t * restrict);
int pthread_attr_getstackaddr(const pthread_attr_t * restrict,
  void * * restrict);
int pthread_attr_getstacksize(const pthread_attr_t * restrict, size_t * restrict);
int pthread_attr_init(pthread_attr_t *);
int pthread_attr_setdetachstate(pthread_attr_t *, int);
int pthread_attr_setguardsize(pthread_attr_t *, size_t);
int pthread_attr_setinheritsched(pthread_attr_t *, int);
int pthread_attr_setschedparam(pthread_attr_t * restrict,
  const struct sched_param * restrict);
int pthread_attr_setschedpolicy(pthread_attr_t *, int);
int pthread_attr_setscope(pthread_attr_t *, int);
int pthread_attr_setstack(pthread_attr_t *, void *, size_t);
int pthread_attr_setstackaddr(pthread_attr_t *, void *);
int pthread_attr_setstacksize(pthread_attr_t *, size_t);
int pthread_cancel(pthread_t) __asm("_" "pthread_cancel" );
int pthread_cond_broadcast(pthread_cond_t *);
int pthread_cond_destroy(pthread_cond_t *);
int pthread_cond_init(
  pthread_cond_t * restrict,
  const pthread_condattr_t * restrict)
  __asm("_" "pthread_cond_init" );
int pthread_cond_signal(pthread_cond_t *);
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use an asynchronous wait instead of a synchronous wait" "\")")))
int pthread_cond_timedwait(
  pthread_cond_t * restrict, pthread_mutex_t * restrict,
  const struct timespec * restrict)
  __asm("_" "pthread_cond_timedwait" );
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use an asynchronous wait instead of a synchronous wait" "\")")))
int pthread_cond_wait(pthread_cond_t * restrict,
  pthread_mutex_t * restrict) __asm("_" "pthread_cond_wait" );
int pthread_condattr_destroy(pthread_condattr_t *);
int pthread_condattr_init(pthread_condattr_t *);
int pthread_condattr_getpshared(const pthread_condattr_t * restrict,
  int * restrict);
int pthread_condattr_setpshared(pthread_condattr_t *, int);
int pthread_create(pthread_t * restrict,
  const pthread_attr_t * restrict,
  void * (* )(void * ),
  void * restrict);
int pthread_detach(pthread_t);
int pthread_equal(pthread_t , pthread_t );
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Thread lifecycle is owned by Swift Concurrency runtime" "\")")))
void pthread_exit(void * ) __attribute__((__noreturn__));
int pthread_getconcurrency(void);
int pthread_getschedparam(pthread_t , int * restrict,
  struct sched_param * restrict);
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use Task Local Values instead" "\")")))
void* pthread_getspecific(pthread_key_t);
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use an asynchronous wait instead of a synchronous wait" "\")")))
int pthread_join(pthread_t , void * * )
  __asm("_" "pthread_join" );
int pthread_key_create(pthread_key_t *, void (* )(void *));
int pthread_key_delete(pthread_key_t);
int pthread_mutex_destroy(pthread_mutex_t *);
int pthread_mutex_getprioceiling(const pthread_mutex_t * restrict,
  int * restrict);
int pthread_mutex_init(pthread_mutex_t * restrict,
  const pthread_mutexattr_t * restrict);
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use OSAllocatedUnfairLock's withLock or NSLock for async-safe scoped locking" "\")")))
int pthread_mutex_lock(pthread_mutex_t *);
int pthread_mutex_setprioceiling(pthread_mutex_t * restrict, int,
  int * restrict);
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use OSAllocatedUnfairLock's withLockIfAvailable or NSLock for async-safe scoped locking" "\")")))
int pthread_mutex_trylock(pthread_mutex_t *);
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use OSAllocatedUnfairLock's withLock or NSLock for async-safe scoped locking" "\")")))
int pthread_mutex_unlock(pthread_mutex_t *);
int pthread_mutexattr_destroy(pthread_mutexattr_t *) __asm("_" "pthread_mutexattr_destroy" );
int pthread_mutexattr_getprioceiling(const pthread_mutexattr_t * restrict,
  int * restrict);
int pthread_mutexattr_getprotocol(const pthread_mutexattr_t * restrict,
  int * restrict);
int pthread_mutexattr_getpshared(const pthread_mutexattr_t * restrict,
  int * restrict);
int pthread_mutexattr_gettype(const pthread_mutexattr_t * restrict,
  int * restrict);
int pthread_mutexattr_getpolicy_np(const pthread_mutexattr_t * restrict,
  int * restrict);
int pthread_mutexattr_init(pthread_mutexattr_t *);
int pthread_mutexattr_setprioceiling(pthread_mutexattr_t *, int);
int pthread_mutexattr_setprotocol(pthread_mutexattr_t *, int);
int pthread_mutexattr_setpshared(pthread_mutexattr_t *, int);
int pthread_mutexattr_settype(pthread_mutexattr_t *, int);
int pthread_mutexattr_setpolicy_np(pthread_mutexattr_t *, int);
int pthread_once(pthread_once_t *, void (* )(void));
int pthread_rwlock_destroy(pthread_rwlock_t * ) __asm("_" "pthread_rwlock_destroy" );
int pthread_rwlock_init(pthread_rwlock_t * restrict,
  const pthread_rwlockattr_t * restrict)
  __asm("_" "pthread_rwlock_init" );
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use async-safe scoped locking instead" "\")")))
int pthread_rwlock_rdlock(pthread_rwlock_t *) __asm("_" "pthread_rwlock_rdlock" );
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use async-safe scoped locking instead" "\")")))
int pthread_rwlock_tryrdlock(pthread_rwlock_t *) __asm("_" "pthread_rwlock_tryrdlock" );
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use async-safe scoped locking instead" "\")")))
int pthread_rwlock_trywrlock(pthread_rwlock_t *) __asm("_" "pthread_rwlock_trywrlock" );
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use async-safe scoped locking instead" "\")")))
int pthread_rwlock_wrlock(pthread_rwlock_t *) __asm("_" "pthread_rwlock_wrlock" );
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use async-safe scoped locking instead" "\")")))
int pthread_rwlock_unlock(pthread_rwlock_t *) __asm("_" "pthread_rwlock_unlock" );
int pthread_rwlockattr_destroy(pthread_rwlockattr_t *);
int pthread_rwlockattr_getpshared(const pthread_rwlockattr_t * restrict,
  int * restrict);
int pthread_rwlockattr_init(pthread_rwlockattr_t *);
int pthread_rwlockattr_setpshared(pthread_rwlockattr_t *, int);
pthread_t pthread_self(void);
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use Task cancellation instead" "\")")))
int pthread_setcancelstate(int , int * )
  __asm("_" "pthread_setcancelstate" );
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use Task cancellation instead" "\")")))
int pthread_setcanceltype(int , int * )
  __asm("_" "pthread_setcanceltype" );
int pthread_setconcurrency(int);
int pthread_setschedparam(pthread_t, int, const struct sched_param *);
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use Task Local Values instead" "\")")))
int pthread_setspecific(pthread_key_t , const void * );
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use Task cancellation instead" "\")")))
void pthread_testcancel(void) __asm("_" "pthread_testcancel" );
int pthread_is_threaded_np(void);
int pthread_threadid_np(pthread_t ,__uint64_t* );
int pthread_getname_np(pthread_t,char*,size_t);
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Thread lifecycle is owned by Swift Concurrency runtime" "\")")))
int pthread_setname_np(const char*);
int pthread_main_np(void);
mach_port_t pthread_mach_thread_np(pthread_t);
size_t pthread_get_stacksize_np(pthread_t);
void* pthread_get_stackaddr_np(pthread_t);
int pthread_cond_signal_thread_np(pthread_cond_t *, pthread_t );
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use an asynchronous wait instead of a synchronous wait" "\")")))
int pthread_cond_timedwait_relative_np(pthread_cond_t *, pthread_mutex_t *,
  const struct timespec * );
int pthread_create_suspended_np(
  pthread_t * , const pthread_attr_t * ,
  void * (* )(void * ), void * );
int pthread_kill(pthread_t, int);
          pthread_t pthread_from_mach_thread_np(mach_port_t);
int pthread_sigmask(int, const sigset_t * , sigset_t * )
  __asm("_" "pthread_sigmask" );
__attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" "Use Task.yield(), or await a condition instead of spinning" "\")")))
void pthread_yield_np(void);
void pthread_jit_write_protect_np(int enabled);
int pthread_jit_write_protect_supported_np(void);
typedef int (*pthread_jit_write_callback_t)(void * ctx);
int pthread_jit_write_with_callback_np(
  pthread_jit_write_callback_t callback, void * ctx);
void pthread_jit_write_freeze_callbacks_np(void);
int
pthread_cpu_number_np(size_t *cpu_number_out);
#pragma clang assume_nonnull end
/* #define __QOS_CLASS_AVAILABLE (...) __API_AVAILABLE_GET_MACRO(__VA_ARGS__,__API_AVAILABLE8,__API_AVAILABLE7,__API_AVAILABLE6,__API_AVAILABLE5,__API_AVAILABLE4,__API_AVAILABLE3,__API_AVAILABLE2,__API_AVAILABLE1,__API_AVAILABLE0,0)(__VA_ARGS__) ### define is not number */
/* #define QOS_MIN_RELATIVE_PRIORITY (-15) ### define is not number */
/* #define pthread_cleanup_push (func,val) { struct __darwin_pthread_handler_rec __handler; pthread_t __self = pthread_self(); __handler.__routine = func; __handler.__arg = val; __handler.__next = __self->__cleanup_stack; __self->__cleanup_stack = &__handler; ### define is not number */
/* #define pthread_cleanup_pop (execute) __self->__cleanup_stack = __handler.__next; if (execute) (__handler.__routine)(__handler.__arg); } ### define is not number */
enum { PTHREAD_CREATE_JOINABLE = 1 };
enum { PTHREAD_CREATE_DETACHED = 2 };
enum { PTHREAD_INHERIT_SCHED = 1 };
enum { PTHREAD_EXPLICIT_SCHED = 2 };
enum { PTHREAD_CANCEL_ENABLE = 0x01 };
enum { PTHREAD_CANCEL_DISABLE = 0x00 };
enum { PTHREAD_CANCEL_DEFERRED = 0x02 };
enum { PTHREAD_CANCEL_ASYNCHRONOUS = 0x00 };
/* #define PTHREAD_CANCELED ((void *) 1) ### define is not number */
enum { PTHREAD_SCOPE_SYSTEM = 1 };
enum { PTHREAD_SCOPE_PROCESS = 2 };
enum { PTHREAD_PROCESS_SHARED = 1 };
enum { PTHREAD_PROCESS_PRIVATE = 2 };
enum { PTHREAD_PRIO_NONE = 0 };
enum { PTHREAD_PRIO_INHERIT = 1 };
enum { PTHREAD_PRIO_PROTECT = 2 };
enum { PTHREAD_MUTEX_NORMAL = 0 };
enum { PTHREAD_MUTEX_ERRORCHECK = 1 };
enum { PTHREAD_MUTEX_RECURSIVE = 2 };
enum { PTHREAD_MUTEX_DEFAULT = 0 };
enum { PTHREAD_MUTEX_POLICY_FAIRSHARE_NP = 1 };
enum { PTHREAD_MUTEX_POLICY_FIRSTFIT_NP = 3 };
/* #define PTHREAD_RWLOCK_INITIALIZER {_PTHREAD_RWLOCK_SIG_init, {0}} ### define is not number */
/* #define PTHREAD_MUTEX_INITIALIZER {_PTHREAD_MUTEX_SIG_init, {0}} ### define is not number */
/* #define PTHREAD_ERRORCHECK_MUTEX_INITIALIZER {_PTHREAD_ERRORCHECK_MUTEX_SIG_init, {0}} ### define is not number */
/* #define PTHREAD_RECURSIVE_MUTEX_INITIALIZER {_PTHREAD_RECURSIVE_MUTEX_SIG_init, {0}} ### define is not number */
/* #define _PTHREAD_SWIFT_IMPORTER_NULLABILITY_COMPAT () defined(SWIFT_CLASS_EXTRA) && (!defined(SWIFT_SDK_OVERLAY_PTHREAD_EPOCH) || (SWIFT_SDK_OVERLAY_PTHREAD_EPOCH < 1)) ### define is not number */
/* #define __PTHREAD_SWIFT_UNAVAILABLE_FROM_ASYNC (msg) __attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" msg "\")"))) ### define is not number */
/* #define PTHREAD_COND_INITIALIZER {_PTHREAD_COND_SIG_init, {0}} ### define is not number */
/* #define PTHREAD_ONCE_INIT {_PTHREAD_ONCE_SIG_init, {0}} ### define is not number */
/* #define PTHREAD_JIT_WRITE_ALLOW_CALLBACKS_NP (...) __attribute__((__used__, __section__("__DATA_CONST,__pth_jit_func"))) static const pthread_jit_write_callback_t __pthread_jit_write_callback_allowlist[] = { __VA_ARGS__, NULL } ### define is not number */
/* + END <pthread.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/pthread.h */
]]
