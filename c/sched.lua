local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/sched.h */
enum { _SCHED_H = 1 };
/* BEGIN /usr/include/features.h */
]] require 'ffi.c.features' ffi.cdef[[
/* END   /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.c.bits.types' ffi.cdef[[
/* END   /usr/include/x86_64-linux-gnu/bits/types.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/12/include/stddef.h */
]] require 'ffi.c.stddef' ffi.cdef[[
/* END   /usr/lib/gcc/x86_64-linux-gnu/12/include/stddef.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
]] require 'ffi.c.bits.types.time_t' ffi.cdef[[
/* END   /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]] require 'ffi.c.bits.types.struct_timespec' ffi.cdef[[
/* END   /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]] require 'ffi.c.bits.types.pid_t' ffi.cdef[[
/* BEGIN /usr/include/x86_64-linux-gnu/bits/sched.h */
enum { _BITS_SCHED_H = 1 };
enum { SCHED_OTHER = 0 };
enum { SCHED_FIFO = 1 };
enum { SCHED_RR = 2 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_sched_param.h */
enum { _BITS_TYPES_STRUCT_SCHED_PARAM = 1 };
struct sched_param { int sched_priority;
};
/* END   /usr/include/x86_64-linux-gnu/bits/types/struct_sched_param.h */
/* END   /usr/include/x86_64-linux-gnu/bits/sched.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/cpu-set.h */
enum { _BITS_CPU_SET_H = 1 };
enum { __CPU_SETSIZE = 1024 };
/* #define __NCPUBITS	(8 * sizeof (__cpu_mask)) ### string, not number "(8 * sizeof (__cpu_mask))" */
typedef unsigned long int __cpu_mask;
typedef struct { __cpu_mask __bits[1024 / (8 * sizeof (__cpu_mask))];
} cpu_set_t;
extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp) __attribute__ ((__nothrow__ , __leaf__));
extern cpu_set_t *__sched_cpualloc (size_t __count) __attribute__ ((__nothrow__ , __leaf__));
extern void __sched_cpufree (cpu_set_t *__set) __attribute__ ((__nothrow__ , __leaf__));
/* END   /usr/include/x86_64-linux-gnu/bits/cpu-set.h */
enum { sched_priority = 0 };
enum { __sched_priority = 0 };
extern int sched_setparam (__pid_t __pid, const struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_getparam (__pid_t __pid, struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_setscheduler (__pid_t __pid, int __policy, const struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_getscheduler (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_yield (void) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_get_priority_max (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_get_priority_min (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_rr_get_interval (__pid_t __pid, struct timespec *__t) __attribute__ ((__nothrow__ , __leaf__));
/* END   /usr/include/sched.h */
]]
