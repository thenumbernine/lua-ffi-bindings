local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sched.h> /usr/include/sched.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
/* ++ BEGIN <bits/types/time_t.h> /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
]] require 'ffi.req' 'c.bits.types.time_t' ffi.cdef[[
/* ++ END <bits/types/time_t.h> /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
/* ++ BEGIN <bits/types/struct_timespec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]] require 'ffi.req' 'c.bits.types.struct_timespec' ffi.cdef[[
/* ++ END <bits/types/struct_timespec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
typedef __pid_t pid_t;
/* ++ BEGIN <bits/sched.h> /usr/include/x86_64-linux-gnu/bits/sched.h */
/* +++ BEGIN <bits/types/struct_sched_param.h> /usr/include/x86_64-linux-gnu/bits/types/struct_sched_param.h */
struct sched_param
{
  int sched_priority;
};
/* +++ END <bits/types/struct_sched_param.h> /usr/include/x86_64-linux-gnu/bits/types/struct_sched_param.h */
/* ++ END <bits/sched.h> /usr/include/x86_64-linux-gnu/bits/sched.h */
/* ++ BEGIN <bits/cpu-set.h> /usr/include/x86_64-linux-gnu/bits/cpu-set.h */
typedef unsigned long int __cpu_mask;
typedef struct
{
  __cpu_mask __bits[1024 / (8 * sizeof (__cpu_mask))];
} cpu_set_t;
extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp)
     __attribute__ ((__nothrow__ , __leaf__));
extern cpu_set_t *__sched_cpualloc (size_t __count) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void __sched_cpufree (cpu_set_t *__set) __attribute__ ((__nothrow__ , __leaf__));
/* ++ END <bits/cpu-set.h> /usr/include/x86_64-linux-gnu/bits/cpu-set.h */
extern int sched_setparam (__pid_t __pid, const struct sched_param *__param)
     __attribute__ ((__nothrow__ , __leaf__));
extern int sched_getparam (__pid_t __pid, struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_setscheduler (__pid_t __pid, int __policy,
          const struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_getscheduler (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_yield (void) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_get_priority_max (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_get_priority_min (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_rr_get_interval (__pid_t __pid, struct timespec *__t) __attribute__ ((__nothrow__ , __leaf__));
enum { SCHED_OTHER = 0 };
enum { SCHED_FIFO = 1 };
enum { SCHED_RR = 2 };
enum { _BITS_TYPES_STRUCT_SCHED_PARAM = 1 };
enum { __CPU_SETSIZE = 1024 };
/* #define __NCPUBITS (8 * sizeof (__cpu_mask)) ### define is not number */
/* #define __CPUELT (cpu) ((cpu) / __NCPUBITS) ### define is not number */
/* #define __CPUMASK (cpu) ((__cpu_mask) 1 << ((cpu) % __NCPUBITS)) ### define is not number */
/* #define __CPU_ZERO_S (setsize,cpusetp) do __builtin_memset (cpusetp, '\0', setsize); while (0) ### define is not number */
/* #define __CPU_SET_S (cpu,setsize,cpusetp) (__extension__ ({ size_t __cpu = (cpu); __cpu / 8 < (setsize) ? (((__cpu_mask *) ((cpusetp)->__bits))[__CPUELT (__cpu)] |= __CPUMASK (__cpu)) : 0; })) ### define is not number */
/* #define __CPU_CLR_S (cpu,setsize,cpusetp) (__extension__ ({ size_t __cpu = (cpu); __cpu / 8 < (setsize) ? (((__cpu_mask *) ((cpusetp)->__bits))[__CPUELT (__cpu)] &= ~__CPUMASK (__cpu)) : 0; })) ### define is not number */
/* #define __CPU_ISSET_S (cpu,setsize,cpusetp) (__extension__ ({ size_t __cpu = (cpu); __cpu / 8 < (setsize) ? ((((const __cpu_mask *) ((cpusetp)->__bits))[__CPUELT (__cpu)] & __CPUMASK (__cpu))) != 0 : 0; })) ### define is not number */
/* #define __CPU_COUNT_S (setsize,cpusetp) __sched_cpucount (setsize, cpusetp) ### define is not number */
/* #define __CPU_EQUAL_S (setsize,cpusetp1,cpusetp2) (__builtin_memcmp (cpusetp1, cpusetp2, setsize) == 0) ### define is not number */
/* #define __CPU_OP_S (setsize,destset,srcset1,srcset2,op) (__extension__ ({ cpu_set_t *__dest = (destset); const __cpu_mask *__arr1 = (srcset1)->__bits; const __cpu_mask *__arr2 = (srcset2)->__bits; size_t __imax = (setsize) / sizeof (__cpu_mask); size_t __i; for (__i = 0; __i < __imax; ++__i) ((__cpu_mask *) __dest->__bits)[__i] = __arr1[__i] op __arr2[__i]; __dest; })) ### define is not number */
/* #define __CPU_ALLOC_SIZE (count) ((((count) + __NCPUBITS - 1) / __NCPUBITS) * sizeof (__cpu_mask)) ### define is not number */
/* #define __CPU_ALLOC (count) __sched_cpualloc (count) ### define is not number */
/* #define __CPU_FREE (cpuset) __sched_cpufree (cpuset) ### define is not number */
/* #define sched_priority sched_priority ### define is not number */
/* #define __sched_priority sched_priority ### define is not number */
/* + END <sched.h> /usr/include/sched.h */
]]
