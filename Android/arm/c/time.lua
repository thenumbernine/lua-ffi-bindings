local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <time.h> /data/data/com.termux/files/usr/bin/../../usr/include/time.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <sys/time.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/time.h */
]] require 'ffi.req' 'c.sys.time' ffi.cdef[[
/* ++ END <sys/time.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/time.h */
/* ++ BEGIN <xlocale.h> /data/data/com.termux/files/usr/bin/../../usr/include/xlocale.h */
]] require 'ffi.req' 'c.xlocale' ffi.cdef[[
/* ++ END <xlocale.h> /data/data/com.termux/files/usr/bin/../../usr/include/xlocale.h */
extern char*  tzname[];
extern int daylight;
extern long int timezone;
struct sigevent;
struct tm {
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
  const char*  tm_zone;
};
time_t time(time_t*  __t);
int nanosleep(const struct timespec*  __duration, struct timespec*  __remainder);
char*  asctime(const struct tm*  __tm);
char*  asctime_r(const struct tm*  __tm, char*  __buf);
double difftime(time_t __lhs, time_t __rhs);
time_t mktime(struct tm*  __tm);
struct tm*  localtime(const time_t*  __t);
struct tm*  localtime_r(const time_t*  __t, struct tm*  __tm);
time_t timelocal(struct tm*  __tm);
struct tm*  gmtime(const time_t*  __t);
struct tm*  gmtime_r(const time_t*  __t, struct tm*  __tm);
time_t timegm(struct tm*  __tm);
char*  strptime(const char*  __s, const char*  __fmt, struct tm*  __tm) __attribute__((__format__(strftime, 2, 0)));
char*  strptime_l(const char*  __s, const char*  __fmt, struct tm*  __tm, locale_t  __l) __attribute__((__format__(strftime, 2, 0))) __asm__("strptime");
size_t strftime(char*  __buf, size_t __n, const char*  __fmt, const struct tm*  __tm) __attribute__((__format__(strftime, 3, 0)));
size_t strftime_l(char*  __buf, size_t __n, const char*  __fmt, const struct tm*  __tm, locale_t  __l) __attribute__((__format__(strftime, 3, 0)));
char*  ctime(const time_t*  __t);
char*  ctime_r(const time_t*  __t, char*  __buf);
void tzset(void);
clock_t clock(void);
int clock_getcpuclockid(pid_t __pid, clockid_t*  __clock) __attribute__((__availability__(android,strict,introduced=23 )));
int clock_getres(clockid_t __clock, struct timespec*  __resolution);
int clock_gettime(clockid_t __clock, struct timespec*  __ts);
int clock_nanosleep(clockid_t __clock, int __flags, const struct timespec*  __time, struct timespec*  __remainder);
int clock_settime(clockid_t __clock, const struct timespec*  __ts);
int timer_create(clockid_t __clock, struct sigevent*  __event, timer_t  *  __timer_ptr);
int timer_delete(timer_t  __timer);
int timer_settime(timer_t  __timer, int __flags, const struct itimerspec*  __new_value, struct itimerspec*  __old_value);
int timer_gettime(timer_t  _timer, struct itimerspec*  __ts);
int timer_getoverrun(timer_t  __timer);
int timespec_get(struct timespec*  __ts, int __base) __attribute__((__availability__(android,strict,introduced=29 )));
enum { CLOCKS_PER_SEC = 1000000 };
/* #define TM_ZONE tm_zone ### define is not number */
/* #define TIME_UTC (CLOCK_REALTIME+1) ### define is not number */
/* #define TIME_MONOTONIC (CLOCK_MONOTONIC+1) ### define is not number */
/* #define TIME_ACTIVE (CLOCK_PROCESS_CPUTIME_ID+1) ### define is not number */
/* #define TIME_THREAD_ACTIVE (CLOCK_THREAD_CPUTIME_ID+1) ### define is not number */
/* + END <time.h> /data/data/com.termux/files/usr/bin/../../usr/include/time.h */
]]
