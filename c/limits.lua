local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/limits.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/syslimits.h */
/* BEGIN /usr/include/limits.h */
enum { _LIBC_LIMITS_H_ = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
]] require 'ffi.c.bits.libc-header-start' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/libc-header-start.h */
enum { MB_LEN_MAX = 16 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
enum { _BITS_POSIX1_LIM_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* END /usr/include/x86_64-1-gnu/bits/wordsize.h */
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
/* BEGIN /usr/include/x86_64-linux-gnu/bits/local_lim.h */
/* BEGIN /usr/include/linux/limits.h */
enum { NR_OPEN = 1024 };
enum { NGROUPS_MAX = 65536 };
enum { ARG_MAX = 131072 };
enum { LINK_MAX = 127 };
enum { MAX_CANON = 255 };
enum { MAX_INPUT = 255 };
enum { NAME_MAX = 255 };
enum { PATH_MAX = 4096 };
enum { PIPE_BUF = 4096 };
enum { XATTR_NAME_MAX = 255 };
enum { XATTR_SIZE_MAX = 65536 };
enum { XATTR_LIST_MAX = 65536 };
enum { RTSIG_MAX = 32 };
/* END /usr/include/1/limits.h */
enum { _POSIX_THREAD_KEYS_MAX = 128 };
enum { PTHREAD_KEYS_MAX = 1024 };
enum { _POSIX_THREAD_DESTRUCTOR_ITERATIONS = 4 };
enum { PTHREAD_DESTRUCTOR_ITERATIONS = 4 };
enum { _POSIX_THREAD_THREADS_MAX = 64 };
enum { AIO_PRIO_DELTA_MAX = 20 };
enum { PTHREAD_STACK_MIN = 16384 };
enum { DELAYTIMER_MAX = 2147483647 };
enum { TTY_NAME_MAX = 32 };
enum { LOGIN_NAME_MAX = 256 };
enum { HOST_NAME_MAX = 64 };
enum { MQ_PRIO_MAX = 32768 };
/* END /usr/include/x86_64-1-gnu/bits/local_lim.h */
/* END /usr/include/x86_64-1-gnu/bits/posix1_lim.h */
/* END /usr/include/limits.h */
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/syslimits.h */
enum { CHAR_BIT = 8 };
enum { SCHAR_MAX = 0x7f };
enum { CHAR_MAX = 0x7f };
enum { SHRT_MAX = 0x7fff };
enum { INT_MAX = 0x7fffffff };
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/limits.h */
]]
