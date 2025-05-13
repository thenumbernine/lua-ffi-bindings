local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/time.h> /usr/include/x86_64-linux-gnu/sys/time.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN <bits/types/time_t.h> /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
]] require 'ffi.req' 'c.bits.types.time_t' ffi.cdef[[
/* ++ END <bits/types/time_t.h> /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
/* ++ BEGIN <bits/types/struct_timeval.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h */
]] require 'ffi.req' 'c.bits.types.struct_timeval' ffi.cdef[[
/* ++ END <bits/types/struct_timeval.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h */
typedef __suseconds_t suseconds_t;
/* ++ BEGIN <sys/select.h> /usr/include/x86_64-linux-gnu/sys/select.h */
]] require 'ffi.req' 'c.sys.select' ffi.cdef[[
/* ++ END <sys/select.h> /usr/include/x86_64-linux-gnu/sys/select.h */
struct timezone
  {
    int tz_minuteswest;
    int tz_dsttime;
  };
extern int gettimeofday (struct timeval *__restrict __tv,
    void *__restrict __tz) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int settimeofday (const struct timeval *__tv,
    const struct timezone *__tz)
     __attribute__ ((__nothrow__ , __leaf__));
extern int adjtime (const struct timeval *__delta,
      struct timeval *__olddelta) __attribute__ ((__nothrow__ , __leaf__));
enum __itimer_which
  {
    ITIMER_REAL = 0,
    ITIMER_VIRTUAL = 1,
    ITIMER_PROF = 2
  };
struct itimerval
  {
    struct timeval it_interval;
    struct timeval it_value;
  };
typedef int __itimer_which_t;
extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__ , __leaf__));
extern int setitimer (__itimer_which_t __which,
        const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__ , __leaf__));
extern int utimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int lutimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int futimes (int __fd, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ , __leaf__));
/* #define ITIMER_REAL ITIMER_REAL ### define is not number */
/* #define ITIMER_VIRTUAL ITIMER_VIRTUAL ### define is not number */
/* #define ITIMER_PROF ITIMER_PROF ### define is not number */
/* #define timerisset (tvp) ((tvp)->tv_sec || (tvp)->tv_usec) ### define is not number */
/* #define timerclear (tvp) ((tvp)->tv_sec = (tvp)->tv_usec = 0) ### define is not number */
/* #define timercmp (a,b,CMP) (((a)->tv_sec == (b)->tv_sec) ? ((a)->tv_usec CMP (b)->tv_usec) : ((a)->tv_sec CMP (b)->tv_sec)) ### define is not number */
/* #define timeradd (a,b,result) do { (result)->tv_sec = (a)->tv_sec + (b)->tv_sec; (result)->tv_usec = (a)->tv_usec + (b)->tv_usec; if ((result)->tv_usec >= 1000000) { ++(result)->tv_sec; (result)->tv_usec -= 1000000; } } while (0) ### define is not number */
/* #define timersub (a,b,result) do { (result)->tv_sec = (a)->tv_sec - (b)->tv_sec; (result)->tv_usec = (a)->tv_usec - (b)->tv_usec; if ((result)->tv_usec < 0) { --(result)->tv_sec; (result)->tv_usec += 1000000; } } while (0) ### define is not number */
/* + END <sys/time.h> /usr/include/x86_64-linux-gnu/sys/time.h */
]]
