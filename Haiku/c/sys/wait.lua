local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/wait.h> /boot/system/develop/headers/bsd/sys/wait.h */
/* ++ BEGIN <sys/wait.h> /boot/system/develop/headers/posix/sys/wait.h */
/* +++ BEGIN <features.h> /boot/system/develop/headers/bsd/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* +++ END <features.h> /boot/system/develop/headers/bsd/features.h */
/* +++ BEGIN <sys/types.h> ./Haiku/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++ END <sys/types.h> ./Haiku/sys/types.h */
/* +++ BEGIN <signal.h> /boot/system/develop/headers/bsd/signal.h */
]] require 'ffi.req' 'c.signal' ffi.cdef[[
/* +++ END <signal.h> /boot/system/develop/headers/bsd/signal.h */
typedef enum {
 P_ALL,
 P_PID,
 P_PGID
} idtype_t;
extern pid_t wait(int *_status);
extern pid_t waitpid(pid_t pid, int *_status, int options);
extern int waitid(idtype_t idType, id_t id, siginfo_t *info, int options);
/* ++ END <sys/wait.h> /boot/system/develop/headers/posix/sys/wait.h */
/* ++ BEGIN <sys/resource.h> /boot/system/develop/headers/posix/sys/resource.h */
/* +++ BEGIN <sys/cdefs.h> /boot/system/develop/headers/bsd/sys/cdefs.h */
/* ++++ BEGIN <sys/cdefs.h> /boot/system/develop/headers/posix/sys/cdefs.h */
/* ++++ END <sys/cdefs.h> /boot/system/develop/headers/posix/sys/cdefs.h */
/* +++ END <sys/cdefs.h> /boot/system/develop/headers/bsd/sys/cdefs.h */
/* +++ BEGIN <sys/time.h> ./Haiku/sys/time.h */
]] require 'ffi.req' 'c.sys.time' ffi.cdef[[
/* +++ END <sys/time.h> ./Haiku/sys/time.h */
typedef __haiku_addr_t rlim_t;
struct rlimit {
 rlim_t rlim_cur;
 rlim_t rlim_max;
};
struct rusage {
 struct timeval ru_utime;
 struct timeval ru_stime;
 long ru_maxrss;
 long ru_ixrss;
 long ru_idrss;
 long ru_isrss;
 long ru_minflt;
 long ru_majflt;
 long ru_nswap;
 long ru_inblock;
 long ru_oublock;
 long ru_msgsnd;
 long ru_msgrcv;
 long ru_nsignals;
 long ru_nvcsw;
 long ru_nivcsw;
};
extern int getrusage(int who, struct rusage *rusage);
extern int getrlimit(int resource, struct rlimit * rlp);
extern int setrlimit(int resource, const struct rlimit * rlp);
extern int getpriority(int which, id_t who);
extern int setpriority(int which, id_t who, int priority);
/* ++ END <sys/resource.h> /boot/system/develop/headers/posix/sys/resource.h */
pid_t wait3(int *status, int options, struct rusage *rusage);
pid_t wait4(pid_t pid, int *status, int options, struct rusage *rusage);
enum { _BSD_SYS_WAIT_H_ = 1 };
enum { _SYS_WAIT_H = 1 };
enum { WNOHANG = 0x01 };
enum { WUNTRACED = 0x02 };
enum { WCONTINUED = 0x04 };
enum { WEXITED = 0x08 };
enum { WSTOPPED = 0x10 };
enum { WNOWAIT = 0x20 };
/* #define WIFEXITED (value) (((value) & ~0xff) == 0) ### define is not number */
/* #define WEXITSTATUS (value) ((value) & 0xff) ### define is not number */
/* #define WIFSIGNALED (value) ((((value) >> 8) & 0xff) != 0) ### define is not number */
/* #define WTERMSIG (value) (((value) >> 8) & 0xff) ### define is not number */
/* #define WIFSTOPPED (value) ((((value) >> 16) & 0xff) != 0) ### define is not number */
/* #define WSTOPSIG (value) (((value) >> 16) & 0xff) ### define is not number */
/* #define WCOREDUMP (value) ((value) & 0x10000) ### define is not number */
/* #define WIFCONTINUED (value) ((value) & 0x20000) ### define is not number */
/* #define WIFCORED (value) WCOREDUMP(value) ### define is not number */
enum { _SYS_RESOURCE_H = 1 };
enum { _BSD_SYS_CDEFS_H_ = 1 };
enum { _SYS_CDEFS_H = 1 };
enum { __THROW = 1 };
/* #define __P (s) s ### define is not number */
/* #define __CONCAT (x,y) x ## y ### define is not number */
/* #define __STRING (x) #x ### define is not number */
enum { __BEGIN_DECLS = 1 };
enum { __END_DECLS = 1 };
enum { __dead = 1 };
enum { __dead2 = 1 };
/* #define __weak_reference (sym,alias) __asm__(".weak " #alias); __asm__(".equ " #alias ", " #sym) ### define is not number */
/* #define __FBSDID (x)  ### define is not number */
enum { __unused = 1 };
/* #define __printflike (a,b) __attribute__ ((format (__printf__, (a), (b)))) ### define is not number */
/* #define __printf0like (a,b)  ### define is not number */
enum { RLIMIT_CORE = 0 };
enum { RLIMIT_CPU = 1 };
enum { RLIMIT_DATA = 2 };
enum { RLIMIT_FSIZE = 3 };
enum { RLIMIT_NOFILE = 4 };
enum { RLIMIT_STACK = 5 };
enum { RLIMIT_AS = 6 };
enum { RLIMIT_NOVMON = 7 };
enum { RLIM_NLIMITS = 8 };
/* #define RLIM_INFINITY (0xffffffffUL) ### define is not number */
/* #define RLIM_SAVED_MAX (0xffffffffUL) ### define is not number */
/* #define RLIM_SAVED_CUR (0xffffffffUL) ### define is not number */
enum { RUSAGE_SELF = 0 };
enum { RUSAGE_CHILDREN = -1 };
enum { PRIO_PROCESS = 0 };
enum { PRIO_PGRP = 1 };
enum { PRIO_USER = 2 };
/* + END <sys/wait.h> /boot/system/develop/headers/bsd/sys/wait.h */
]]
