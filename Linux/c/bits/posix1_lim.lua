local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/local_lim.h */
/* +++ BEGIN /usr/include/linux/limits.h */
]] require 'ffi.req' 'c.linux.limits' ffi.cdef[[
/* +++ END   /usr/include/linux/limits.h */
enum { PTHREAD_KEYS_MAX = 1024 };
enum { PTHREAD_DESTRUCTOR_ITERATIONS = 4 };
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
