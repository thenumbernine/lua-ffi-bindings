local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* + END <features.h> /usr/include/features.h */
/* + BEGIN <bits/pthreadtypes.h> /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h */
/* ++ BEGIN <bits/thread-shared-types.h> /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h */
/* +++ BEGIN <bits/pthreadtypes-arch.h> /usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h */
/* ++++ BEGIN <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* ++++ END <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* +++ END <bits/pthreadtypes-arch.h> /usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h */
/* +++ BEGIN <bits/atomic_wide_counter.h> /usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h */
typedef union
{
  __extension__ unsigned long long int __value64;
  struct
  {
    unsigned int __low;
    unsigned int __high;
  } __value32;
} __atomic_wide_counter;
/* +++ END <bits/atomic_wide_counter.h> /usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h */
typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
/* +++ BEGIN <bits/struct_mutex.h> /usr/include/x86_64-linux-gnu/bits/struct_mutex.h */
struct __pthread_mutex_s
{
  int __lock;
  unsigned int __count;
  int __owner;
  unsigned int __nusers;
  int __kind;
  short __spins;
  short __elision;
  __pthread_list_t __list;
};
/* +++ END <bits/struct_mutex.h> /usr/include/x86_64-linux-gnu/bits/struct_mutex.h */
/* +++ BEGIN <bits/struct_rwlock.h> /usr/include/x86_64-linux-gnu/bits/struct_rwlock.h */
struct __pthread_rwlock_arch_t
{
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
/* +++ END <bits/struct_rwlock.h> /usr/include/x86_64-linux-gnu/bits/struct_rwlock.h */
struct __pthread_cond_s
{
  __atomic_wide_counter __wseq;
  __atomic_wide_counter __g1_start;
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};
typedef unsigned int __tss_t;
typedef unsigned long int __thrd_t;
typedef struct
{
  int __data ;
} __once_flag;
/* ++ END <bits/thread-shared-types.h> /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h */
typedef unsigned long int pthread_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef int pthread_once_t;
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
typedef union pthread_attr_t pthread_attr_t;
typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;
typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;
typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;
typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;
typedef volatile int pthread_spinlock_t;
typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
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
enum { __PTHREAD_MUTEX_HAVE_PREV = 1 };
/* #define __PTHREAD_MUTEX_INITIALIZER (__kind) 0, 0, 0, 0, __kind, 0, 0, { 0, 0 } ### define is not number */
/* #define __PTHREAD_RWLOCK_ELISION_EXTRA 0, { 0, 0, 0, 0, 0, 0, 0 } ### define is not number */
/* #define __PTHREAD_RWLOCK_INITIALIZER (__flags) 0, 0, 0, 0, 0, 0, 0, 0, __PTHREAD_RWLOCK_ELISION_EXTRA, 0, __flags ### define is not number */
/* #define __ONCE_FLAG_INIT { 0 } ### define is not number */
/* + END <bits/pthreadtypes.h> /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h */
]]
