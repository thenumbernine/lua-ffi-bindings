local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/12/include/limits.h */
enum { _GCC_LIMITS_H_ = 1 };
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/12/include/syslimits.h */
enum { _GCC_NEXT_LIMITS_H = 1 };
/* BEGIN /usr/include/limits.h */
enum { _LIBC_LIMITS_H_ = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
]] require 'ffi.c.bits.libc-header-start' ffi.cdef[[
/* END   /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
enum { MB_LEN_MAX = 16 };
enum { LLONG_MIN = -1 };
/* #  define LLONG_MAX	__LONG_LONG_MAX__ ### string, number, replaceline "9.2233720368548e+18" */
/* #  define ULLONG_MAX	(LLONG_MAX * 2ULL + 1) ### string, not number "(LLONG_MAX * 2ULL + 1)" */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
enum { _BITS_POSIX1_LIM_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* redefining matching value: # define __WORDSIZE	64 */
/* redefining matching value: # define __WORDSIZE_TIME64_COMPAT32	1 */
/* redefining matching value: # define __SYSCALL_WORDSIZE		64 */
/* END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
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
/* BEGIN /usr/include/x86_64-linux-gnu/bits/local_lim.h */
enum { __undef_NR_OPEN = 1 };
enum { __undef_LINK_MAX = 1 };
enum { __undef_OPEN_MAX = 1 };
enum { __undef_ARG_MAX = 1 };
/* BEGIN /usr/include/linux/limits.h */
]] require 'ffi.c.linux.limits' ffi.cdef[[
/* END   /usr/include/linux/limits.h */
enum { _POSIX_THREAD_KEYS_MAX = 128 };
enum { PTHREAD_KEYS_MAX = 1024 };
enum { _POSIX_THREAD_DESTRUCTOR_ITERATIONS = 4 };
enum { PTHREAD_DESTRUCTOR_ITERATIONS = 4 };
enum { _POSIX_THREAD_THREADS_MAX = 64 };
enum { AIO_PRIO_DELTA_MAX = 20 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/pthread_stack_min-dynamic.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/pthread_stack_min.h */
enum { PTHREAD_STACK_MIN = 16384 };
/* END   /usr/include/x86_64-linux-gnu/bits/pthread_stack_min.h */
/* END   /usr/include/x86_64-linux-gnu/bits/pthread_stack_min-dynamic.h */
enum { DELAYTIMER_MAX = 2147483647 };
enum { TTY_NAME_MAX = 32 };
enum { LOGIN_NAME_MAX = 256 };
enum { HOST_NAME_MAX = 64 };
enum { MQ_PRIO_MAX = 32768 };
enum { SEM_VALUE_MAX = 2147483647 };
/* END   /usr/include/x86_64-linux-gnu/bits/local_lim.h */
enum { SSIZE_MAX = 0 };
/* END   /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/posix2_lim.h */
enum { _BITS_POSIX2_LIM_H = 1 };
enum { _POSIX2_BC_BASE_MAX = 99 };
enum { _POSIX2_BC_DIM_MAX = 2048 };
enum { _POSIX2_BC_SCALE_MAX = 99 };
enum { _POSIX2_BC_STRING_MAX = 1000 };
enum { _POSIX2_COLL_WEIGHTS_MAX = 2 };
enum { _POSIX2_EXPR_NEST_MAX = 32 };
enum { _POSIX2_LINE_MAX = 2048 };
enum { _POSIX2_RE_DUP_MAX = 255 };
enum { _POSIX2_CHARCLASS_NAME_MAX = 14 };
enum { BC_BASE_MAX = 99 };
enum { BC_DIM_MAX = 2048 };
enum { BC_SCALE_MAX = 99 };
enum { BC_STRING_MAX = 1000 };
enum { COLL_WEIGHTS_MAX = 255 };
enum { EXPR_NEST_MAX = 32 };
enum { LINE_MAX = 2048 };
enum { CHARCLASS_NAME_MAX = 2048 };
enum { RE_DUP_MAX = 32767 };
/* END   /usr/include/x86_64-linux-gnu/bits/posix2_lim.h */
/* END   /usr/include/limits.h */
/* END   /usr/lib/gcc/x86_64-linux-gnu/12/include/syslimits.h */
enum { _LIMITS_H___ = 1 };
enum { CHAR_BIT = 8 };
enum { SCHAR_MIN = -1 };
enum { SCHAR_MAX = 127 };
enum { UCHAR_MAX = 255 };
enum { CHAR_MIN = -128 };
enum { CHAR_MAX = 127 };
enum { SHRT_MIN = -1 };
enum { SHRT_MAX = 32767 };
enum { USHRT_MAX = 65535 };
enum { INT_MIN = -1 };
enum { INT_MAX = 2147483647 };
enum { UINT_MAX = 4294967295 };
enum { LONG_MIN = -1 };
/* #define LONG_MAX __LONG_MAX__ ### string, number, replaceline "9.2233720368548e+18" */
/* #define ULONG_MAX (LONG_MAX * 2UL + 1UL) ### string, number, replaceline "1.844674407371e+19" */
/* # define LLONG_MIN (-LLONG_MAX - 1LL) ### string, number, replaceline "-9.2233720368548e+18" */
/* redefining matching value: # define LLONG_MAX __LONG_LONG_MAX__ */
/* # define ULLONG_MAX (LLONG_MAX * 2ULL + 1ULL) ### string, not number "(LLONG_MAX * 2ULL + 1ULL)" */
/* END   /usr/lib/gcc/x86_64-linux-gnu/12/include/limits.h */
]]
