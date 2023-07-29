local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
enum { _BITS_POSIX1_LIM_H = 1 };
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.c.bits.wordsize' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
enum { _POSIX_AIO_LISTIO_MAX = 2 };
enum { _POSIX_AIO_MAX = 1 };
enum { _POSIX_ARG_MAX = 4096 };
enum { _POSIX_CHILD_MAX = 6 };
enum { _POSIX_DELAYTIMER_MAX = 32 };
enum { _POSIX_HOST_NAME_MAX = 255 };
enum { _POSIX_LINK_MAX = 8 };
enum { _POSIX_LOGIN_NAME_MAX = 9 };
enum { _POSIX_MAX_CANON = 255 };
enum { _POSIX_MAX_INPUT = 255 };
enum { _POSIX_MQ_OPEN_MAX = 8 };
enum { _POSIX_MQ_PRIO_MAX = 32 };
enum { _POSIX_NAME_MAX = 14 };
enum { _POSIX_NGROUPS_MAX = 0 };
enum { _POSIX_OPEN_MAX = 16 };
enum { _POSIX_FD_SETSIZE = 16 };
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
enum { _POSIX_TZNAME_MAX = 3 };
enum { _POSIX_QLIMIT = 1 };
enum { _POSIX_HIWAT = 512 };
enum { _POSIX_UIO_MAXIOV = 16 };
enum { _POSIX_CLOCKRES_MIN = 20000000 };
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/local_lim.h */
enum { __undef_NR_OPEN = 1 };
enum { __undef_LINK_MAX = 1 };
enum { __undef_OPEN_MAX = 1 };
enum { __undef_ARG_MAX = 1 };
/* +++ BEGIN /usr/include/linux/limits.h */
]] require 'ffi.c.linux.limits' ffi.cdef[[
/* +++ END   /usr/include/linux/limits.h */
enum { _POSIX_THREAD_KEYS_MAX = 128 };
enum { PTHREAD_KEYS_MAX = 1024 };
enum { _POSIX_THREAD_DESTRUCTOR_ITERATIONS = 4 };
enum { PTHREAD_DESTRUCTOR_ITERATIONS = 4 };
enum { _POSIX_THREAD_THREADS_MAX = 64 };
enum { AIO_PRIO_DELTA_MAX = 20 };
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/pthread_stack_min-dynamic.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/pthread_stack_min.h */
enum { PTHREAD_STACK_MIN = 16384 };
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/pthread_stack_min.h */
/* +++ END   /usr/include/x86_64-linux-gnu/bits/pthread_stack_min-dynamic.h */
enum { DELAYTIMER_MAX = 2147483647 };
enum { TTY_NAME_MAX = 32 };
enum { LOGIN_NAME_MAX = 256 };
enum { HOST_NAME_MAX = 64 };
enum { MQ_PRIO_MAX = 32768 };
enum { SEM_VALUE_MAX = 2147483647 };
/* ++ END   /usr/include/x86_64-linux-gnu/bits/local_lim.h */
enum { SSIZE_MAX = 0 };
/* + END   /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
]]
