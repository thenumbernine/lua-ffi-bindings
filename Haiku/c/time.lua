local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <time.h> ./Haiku/time.h */
/* ++ BEGIN <locale_t.h> /boot/system/develop/headers/posix/locale_t.h */
]] require 'ffi.req' 'c.locale_t' ffi.cdef[[
/* ++ END <locale_t.h> /boot/system/develop/headers/posix/locale_t.h */
/* ++ BEGIN <sys/types.h> ./Haiku/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> ./Haiku/sys/types.h */
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
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
 int tm_gmtoff;
 char *tm_zone;
};
extern char *tzname[2];
extern int daylight;
extern long timezone;
extern clock_t clock(void);
extern double difftime(time_t time1, time_t time2);
extern time_t mktime(struct tm *tm);
extern time_t time(time_t *timer);
extern char *asctime(const struct tm *tm);
extern char *asctime_r(const struct tm *timep, char *buffer);
extern char *ctime(const time_t *timer);
extern char *ctime_r(const time_t *timer, char *buffer);
extern struct tm *gmtime(const time_t *timer);
extern struct tm *gmtime_r(const time_t *timer, struct tm *tm);
extern struct tm *localtime(const time_t *timer);
extern struct tm *localtime_r(const time_t *timer, struct tm *tm);
extern int nanosleep(const struct timespec *, struct timespec *);
extern size_t strftime(char *buffer, size_t maxSize, const char *format,
      const struct tm *tm);
extern size_t strftime_l(char *buffer, size_t maxSize, const char *format,
      const struct tm *tm, locale_t locale);
extern char *strptime(const char *buf, const char *format, struct tm *tm);
int clock_getres(clockid_t clockID, struct timespec* resolution);
int clock_gettime(clockid_t clockID, struct timespec* _time);
int clock_settime(clockid_t clockID, const struct timespec* _time);
int clock_nanosleep(clockid_t clockID, int flags,
   const struct timespec* _time, struct timespec* remainingTime);
int clock_getcpuclockid(pid_t pid, clockid_t* _clockID);
int timer_create(clockid_t clockID, struct sigevent* event,
   timer_t* timerID);
int timer_delete(timer_t timerID);
int timer_gettime(timer_t timerID, struct itimerspec* value);
int timer_settime(timer_t timerID, int flags,
   const struct itimerspec* value, struct itimerspec* oldValue);
int timer_getoverrun(timer_t timerID);
int timespec_get(struct timespec *ts, int base);
extern void tzset(void);
extern int stime(const time_t *t);
enum { _TIME_H_ = 1 };
enum { CLOCKS_PER_SEC = 1000000 };
enum { CLK_TCK = 1000000 };
enum { TIME_UTC = 1 };
enum { MAX_TIMESTR = 70 };
/* #define CLOCK_MONOTONIC ((clockid_t)0) ### define is not number */
/* #define CLOCK_REALTIME ((clockid_t)-1) ### define is not number */
/* #define CLOCK_PROCESS_CPUTIME_ID ((clockid_t)-2) ### define is not number */
/* #define CLOCK_THREAD_CPUTIME_ID ((clockid_t)-3) ### define is not number */
enum { TIMER_ABSTIME = 1 };
/* + END <time.h> ./Haiku/time.h */
]]
