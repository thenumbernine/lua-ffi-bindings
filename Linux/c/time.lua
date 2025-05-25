local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <time.h> /usr/include/time.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
/* ++ BEGIN <bits/time.h> /usr/include/x86_64-linux-gnu/bits/time.h */
/* +++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* +++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ END <bits/time.h> /usr/include/x86_64-linux-gnu/bits/time.h */
/* ++ BEGIN <bits/types/clock_t.h> /usr/include/x86_64-linux-gnu/bits/types/clock_t.h */
]] require 'ffi.req' 'c.bits.types.clock_t' ffi.cdef[[
/* ++ END <bits/types/clock_t.h> /usr/include/x86_64-linux-gnu/bits/types/clock_t.h */
/* ++ BEGIN <bits/types/time_t.h> /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
]] require 'ffi.req' 'c.bits.types.time_t' ffi.cdef[[
/* ++ END <bits/types/time_t.h> /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
/* ++ BEGIN <bits/types/struct_tm.h> /usr/include/x86_64-linux-gnu/bits/types/struct_tm.h */
struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;
  long int tm_gmtoff;
  const char *tm_zone;
};
/* ++ END <bits/types/struct_tm.h> /usr/include/x86_64-linux-gnu/bits/types/struct_tm.h */
/* ++ BEGIN <bits/types/struct_timespec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]] require 'ffi.req' 'c.bits.types.struct_timespec' ffi.cdef[[
/* ++ END <bits/types/struct_timespec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
/* ++ BEGIN <bits/types/clockid_t.h> /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h */
]] require 'ffi.req' 'c.bits.types.clockid_t' ffi.cdef[[
/* ++ END <bits/types/clockid_t.h> /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h */
/* ++ BEGIN <bits/types/timer_t.h> /usr/include/x86_64-linux-gnu/bits/types/timer_t.h */
]] require 'ffi.req' 'c.bits.types.timer_t' ffi.cdef[[
/* ++ END <bits/types/timer_t.h> /usr/include/x86_64-linux-gnu/bits/types/timer_t.h */
/* ++ BEGIN <bits/types/struct_itimerspec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_itimerspec.h */
struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };
/* ++ END <bits/types/struct_itimerspec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_itimerspec.h */
struct sigevent;
typedef __pid_t pid_t;
/* ++ BEGIN <bits/types/locale_t.h> /usr/include/x86_64-linux-gnu/bits/types/locale_t.h */
]] require 'ffi.req' 'c.bits.types.locale_t' ffi.cdef[[
/* ++ END <bits/types/locale_t.h> /usr/include/x86_64-linux-gnu/bits/types/locale_t.h */
extern clock_t clock (void) __attribute__ ((__nothrow__ , __leaf__));
extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern double difftime (time_t __time1, time_t __time0);
extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));
extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp)
   __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3, 4)));
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));
extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));
extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));
extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));
extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));
extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));
extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;
extern char *tzname[2];
extern void tzset (void) __attribute__ ((__nothrow__ , __leaf__));
extern int daylight;
extern long int timezone;
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));
extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));
extern int dysize (int __year) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);
extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__ , __leaf__));
extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);
extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__ , __leaf__));
extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__ , __leaf__));
extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));
extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__ , __leaf__));
extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__ , __leaf__));
extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));
extern int timespec_get (struct timespec *__ts, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
/* #define CLOCKS_PER_SEC ((__clock_t) 1000000) ### define is not number */
enum { CLOCK_REALTIME = 0 };
enum { CLOCK_MONOTONIC = 1 };
enum { CLOCK_PROCESS_CPUTIME_ID = 2 };
enum { CLOCK_THREAD_CPUTIME_ID = 3 };
enum { CLOCK_MONOTONIC_RAW = 4 };
enum { CLOCK_REALTIME_COARSE = 5 };
enum { CLOCK_MONOTONIC_COARSE = 6 };
enum { CLOCK_BOOTTIME = 7 };
enum { CLOCK_REALTIME_ALARM = 8 };
enum { CLOCK_BOOTTIME_ALARM = 9 };
enum { CLOCK_TAI = 11 };
enum { TIMER_ABSTIME = 1 };
enum { TIME_UTC = 1 };
/* #define __isleap (year) ((year) % 4 == 0 && ((year) % 100 != 0 || (year) % 400 == 0)) ### define is not number */
/* + END <time.h> /usr/include/time.h */
]]
