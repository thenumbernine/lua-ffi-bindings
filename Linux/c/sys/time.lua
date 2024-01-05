local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/sys/time.h */
/* ++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END   /usr/include/features.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
]] require 'ffi.req' 'c.bits.types.time_t' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h */
]] require 'ffi.req' 'c.bits.types.struct_timeval' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h */
]] require 'ffi.req' 'c.bits.types.suseconds_t' ffi.cdef[[
/* ++ BEGIN /usr/include/x86_64-linux-gnu/sys/select.h */
]] require 'ffi.req' 'c.sys.select' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/sys/select.h */
struct timezone {
	int tz_minuteswest;
	int tz_dsttime;
};
extern int gettimeofday (struct timeval * __tv, void * __tz) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int settimeofday (const struct timeval *__tv, const struct timezone *__tz) __attribute__ ((__nothrow__ , __leaf__));
extern int adjtime (const struct timeval *__delta, struct timeval *__olddelta) __attribute__ ((__nothrow__ , __leaf__));
enum __itimer_which { ITIMER_REAL = 0,/* enum { ITIMER_REAL = 0 }; */
ITIMER_VIRTUAL = 1,/* enum { ITIMER_VIRTUAL = 0 }; */
ITIMER_PROF = 2/* enum { ITIMER_PROF = 0 }; */
};
struct itimerval {
	struct timeval it_interval;
	struct timeval it_value;
};
typedef int __itimer_which_t;
extern int getitimer (__itimer_which_t __which, struct itimerval *__value) __attribute__ ((__nothrow__ , __leaf__));
extern int setitimer (__itimer_which_t __which, const struct itimerval * __new, struct itimerval * __old) __attribute__ ((__nothrow__ , __leaf__));
extern int utimes (const char *__file, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int lutimes (const char *__file, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int futimes (int __fd, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ , __leaf__));
/* + END   /usr/include/x86_64-linux-gnu/sys/time.h */
]]
