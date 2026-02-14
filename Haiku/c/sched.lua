local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sched.h> /boot/system/develop/headers/gnu/sched.h */
/* ++ BEGIN <sched.h> /boot/system/develop/headers/posix/sched.h */
struct sched_param {
 int sched_priority;
};
extern int sched_yield(void);
extern int sched_get_priority_min(int);
extern int sched_get_priority_max(int);
/* ++ END <sched.h> /boot/system/develop/headers/posix/sched.h */
/* ++ BEGIN <features.h> /boot/system/develop/headers/bsd/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /boot/system/develop/headers/bsd/features.h */
/* ++ BEGIN <stdint.h> /boot/system/develop/headers/posix/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++ END <stdint.h> /boot/system/develop/headers/posix/stdint.h */
/* ++ BEGIN <sys/types.h> ./Haiku/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> ./Haiku/sys/types.h */
typedef __haiku_uint32 cpuset_mask;
typedef struct _cpuset {
 cpuset_mask bits[(((1024) + (((sizeof(cpuset_mask) * 8)) - 1)) / ((sizeof(cpuset_mask) * 8)))];
} cpuset_t;
typedef cpuset_t cpu_set_t;
/* ++ BEGIN <string.h> /boot/system/develop/headers/bsd/string.h */
]] require 'ffi.req' 'c.string' ffi.cdef[[
/* ++ END <string.h> /boot/system/develop/headers/bsd/string.h */
static inline unsigned int
__cpu_count(cpuset_t *set)
{
 unsigned int count = 0;
 unsigned int i;
 for (i = 0; i < (((1024) + (((sizeof(cpuset_mask) * 8)) - 1)) / ((sizeof(cpuset_mask) * 8))); i++) {
  cpuset_mask mask = set->bits[i];
  count += __builtin_popcount(mask);
 }
 return count;
}
extern int sched_getcpu(void);
extern int sched_setaffinity(pid_t id, size_t cpusetsize, const cpuset_t* mask);
extern int sched_getaffinity(pid_t id, size_t cpusetsize, cpuset_t* mask);
enum { _GNU_SCHED_H_ = 1 };
enum { _SCHED_H_ = 1 };
enum { SCHED_FIFO = 1 };
enum { SCHED_RR = 2 };
enum { SCHED_SPORADIC = 3 };
enum { SCHED_OTHER = 4 };
enum { CPU_SETSIZE = 1024 };
/* #define _howmany (x,y) (((x) + ((y) - 1)) / (y)) ### define is not number */
/* #define NCPUSETBITS (sizeof(cpuset_mask) * 8) ### define is not number */
/* #define _CPUSET_BITSINDEX (cpu) ((cpu) / NCPUSETBITS) ### define is not number */
/* #define _CPUSET_BIT (cpu) (1L << ((cpu) % NCPUSETBITS)) ### define is not number */
/* #define CPU_ZERO (set) memset((set), 0, sizeof(cpuset_t)) ### define is not number */
/* #define CPU_SET (cpu,set) ((set)->bits[_CPUSET_BITSINDEX(cpu)] |= _CPUSET_BIT(cpu)) ### define is not number */
/* #define CPU_CLR (cpu,set) ((set)->bits[_CPUSET_BITSINDEX(cpu)] &= ~_CPUSET_BIT(cpu)) ### define is not number */
/* #define CPU_ISSET (cpu,set) ((set)->bits[_CPUSET_BITSINDEX(cpu)] & _CPUSET_BIT(cpu)) ### define is not number */
/* #define CPU_COPY (source,target) (*(target) = *(source)) ### define is not number */
/* #define CPU_COUNT (set) __cpu_count(set) ### define is not number */
/* + END <sched.h> /boot/system/develop/headers/gnu/sched.h */
]]
