local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <semaphore.h> /usr/include/semaphore.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <sys/types.h> /usr/include/x86_64-linux-gnu/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> /usr/include/x86_64-linux-gnu/sys/types.h */
/* ++ BEGIN <bits/semaphore.h> /usr/include/x86_64-linux-gnu/bits/semaphore.h */
/* +++ BEGIN <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* +++ END <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.pthread' ffi.cdef[[
typedef union
{
  char __size[32];
  long int __align;
} sem_t;
/* ++ END <bits/semaphore.h> /usr/include/x86_64-linux-gnu/bits/semaphore.h */
extern int sem_init (sem_t *__sem, int __pshared, unsigned int __value)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sem_destroy (sem_t *__sem) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern sem_t *sem_open (const char *__name, int __oflag, ...)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sem_close (sem_t *__sem) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sem_unlink (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sem_wait (sem_t *__sem) __attribute__ ((__nonnull__ (1)));
extern int sem_timedwait (sem_t *__restrict __sem,
     const struct timespec *__restrict __abstime)
  __attribute__ ((__nonnull__ (1, 2)));
extern int sem_trywait (sem_t *__sem) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int sem_post (sem_t *__sem) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int sem_getvalue (sem_t *__restrict __sem, int *__restrict __sval)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

enum { __SIZEOF_SEM_T = 32 };
/* #define SEM_FAILED ((sem_t *) 0) ### define is not number */
/* + END <semaphore.h> /usr/include/semaphore.h */
]]

return ffi.C
