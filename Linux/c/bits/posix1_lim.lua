local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* + END <features.h> /usr/include/features.h */
/* + BEGIN <bits/posix1_lim.h> /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
/* ++ BEGIN <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* ++ END <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* ++ BEGIN <bits/local_lim.h> /usr/include/x86_64-linux-gnu/bits/local_lim.h */
/* +++ BEGIN <linux/limits.h> /usr/include/linux/limits.h */
/* +++ END <linux/limits.h> /usr/include/linux/limits.h */
/* +++ BEGIN <bits/pthread_stack_min-dynamic.h> /usr/include/x86_64-linux-gnu/bits/pthread_stack_min-dynamic.h */
]] require 'ffi.req' 'c.bits.pthread_stack_min-dynamic' ffi.cdef[[
/* +++ END <bits/pthread_stack_min-dynamic.h> /usr/include/x86_64-linux-gnu/bits/pthread_stack_min-dynamic.h */
/* ++ END <bits/local_lim.h> /usr/include/x86_64-linux-gnu/bits/local_lim.h */
enum { _BITS_POSIX1_LIM_H = 1 };
enum { _POSIX_AIO_LISTIO_MAX = 2 };
enum { _POSIX_AIO_MAX = 1 };
enum { _POSIX_ARG_MAX = 4096 };
enum { _POSIX_CHILD_MAX = 25 };
enum { _POSIX_DELAYTIMER_MAX = 32 };
enum { _POSIX_HOST_NAME_MAX = 255 };
enum { _POSIX_LINK_MAX = 8 };
enum { _POSIX_LOGIN_NAME_MAX = 9 };
enum { _POSIX_MAX_CANON = 255 };
enum { _POSIX_MAX_INPUT = 255 };
enum { _POSIX_MQ_OPEN_MAX = 8 };
enum { _POSIX_MQ_PRIO_MAX = 32 };
enum { _POSIX_NAME_MAX = 14 };
enum { _POSIX_NGROUPS_MAX = 8 };
enum { _POSIX_OPEN_MAX = 20 };
enum { _POSIX_PATH_MAX = 256 };
enum { _POSIX_PIPE_BUF = 512 };
enum { _POSIX_RE_DUP_MAX = 255 };
enum { _POSIX_RTSIG_MAX = 8 };
enum { _POSIX_SEM_NSEMS_MAX = 256 };
enum { _POSIX_SEM_VALUE_MAX = 32767 };
enum { _POSIX_SIGQUEUE_MAX = 32 };
enum { _POSIX_SSIZE_MAX = 32767 };
enum { _POSIX_STREAM_MAX = 8 };
enum { _POSIX_SYMLINK_MAX = 255 };
enum { _POSIX_SYMLOOP_MAX = 8 };
enum { _POSIX_TIMER_MAX = 32 };
enum { _POSIX_TTY_NAME_MAX = 9 };
enum { _POSIX_TZNAME_MAX = 6 };
enum { _POSIX_CLOCKRES_MIN = 20000000 };
/* #define SSIZE_MAX LONG_MAX ### define is not number */
/* + END <bits/posix1_lim.h> /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
]]
