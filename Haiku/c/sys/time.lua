local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/time.h> ./Haiku/sys/time.h */
/* ++ BEGIN "posix_sys_time.h" ./Haiku/posix_sys_time.h */
/* +++ BEGIN <sys/types.h> ./Haiku/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++ END <sys/types.h> ./Haiku/sys/types.h */
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
struct timezone {
 int tz_minuteswest;
 int tz_dsttime;
};
struct itimerval {
 struct timeval it_interval;
 struct timeval it_value;
};
extern int getitimer(int which, struct itimerval *value);
extern int setitimer(int which, const struct itimerval *value, struct itimerval *oldValue);
extern int gettimeofday(struct timeval *tv, void *tz);
extern int utimes(const char *path, const struct timeval times[2]);
/* ++ END "posix_sys_time.h" ./Haiku/posix_sys_time.h */
/* ++ BEGIN <features.h> /boot/system/develop/headers/bsd/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /boot/system/develop/headers/bsd/features.h */
int lutimes(const char *path, const struct timeval times[2]);
enum { _BSD_SYS_TIME_H_ = 1 };
enum { _SYS_TIME_H = 1 };
enum { ITIMER_REAL = 1 };
enum { ITIMER_VIRTUAL = 2 };
enum { ITIMER_PROF = 3 };
/* #define timeradd (a,b,res) do { (res)->tv_sec = (a)->tv_sec + (b)->tv_sec; (res)->tv_usec = (a)->tv_usec + (b)->tv_usec; if ((res)->tv_usec >= 1000000) { (res)->tv_usec -= 1000000; (res)->tv_sec++; } } while (0) ### define is not number */
/* #define timersub (a,b,res) do { (res)->tv_sec = (a)->tv_sec - (b)->tv_sec; (res)->tv_usec = (a)->tv_usec - (b)->tv_usec; if ((res)->tv_usec < 0) { (res)->tv_usec += 1000000; (res)->tv_sec--; } } while (0) ### define is not number */
/* #define timerclear (a) ((a)->tv_sec = (a)->tv_usec = 0) ### define is not number */
/* #define timerisset (a) ((a)->tv_sec != 0 || (a)->tv_usec != 0) ### define is not number */
/* #define timercmp (a,b,cmp) ((a)->tv_sec == (b)->tv_sec ? (a)->tv_usec cmp (b)->tv_usec : (a)->tv_sec cmp (b)->tv_sec) ### define is not number */
/* #define timespecadd (a,b,res) do { (res)->tv_sec = (a)->tv_sec + (b)->tv_sec; (res)->tv_nsec = (a)->tv_nsec + (b)->tv_nsec; if ((res)->tv_nsec >= 1000000000L) { (res)->tv_nsec -= 1000000000L; (res)->tv_sec++; } } while (0) ### define is not number */
/* #define timespecsub (a,b,res) do { (res)->tv_sec = (a)->tv_sec - (b)->tv_sec; (res)->tv_nsec = (a)->tv_nsec - (b)->tv_nsec; if ((res)->tv_nsec < 0) { (res)->tv_nsec += 1000000000L; (res)->tv_sec--; } } while (0) ### define is not number */
/* #define timespecclear (a) ((a)->tv_sec = (a)->tv_nsec = 0) ### define is not number */
/* #define timespecisset (a) ((a)->tv_sec != 0 || (a)->tv_nsec != 0) ### define is not number */
/* #define timespeccmp (a,b,cmp) (((a)->tv_sec == (b)->tv_sec) ? ((a)->tv_nsec cmp (b)->tv_nsec) : ((a)->tv_sec cmp (b)->tv_sec)) ### define is not number */
/* #define timespecvalid_interval (a) ((a)->tv_sec >= 0 && (a)->tv_nsec >= 0 && (&)->tv_nsec < 1000000000L) ### define is not number */
/* #define TIMEVAL_TO_TIMESPEC (tv,ts) do { (ts)->tv_sec = (tv)->tv_sec; (ts)->tv_nsec = (tv)->tv_usec * 1000; } while (0) ### define is not number */
/* #define TIMESPEC_TO_TIMEVAL (tv,ts) do { (tv)->tv_sec = (ts)->tv_sec; (tv)->tv_usec = (ts)->tv_nsec / 1000; } while (0) ### define is not number */
/* + END <sys/time.h> ./Haiku/sys/time.h */
]]
