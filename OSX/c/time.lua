local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <time.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h */
/* ++ BEGIN <_time.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_time.h */
/* +++ BEGIN <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* +++ END <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
/* +++ BEGIN <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++ END <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* +++ BEGIN <sys/_types/_clock_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_clock_t.h */
]] require 'ffi.req' 'c.sys._types._clock_t' ffi.cdef[[
/* +++ END <sys/_types/_clock_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_clock_t.h */
/* +++ BEGIN <sys/_types/_null.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
/* +++ END <sys/_types/_null.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
/* +++ BEGIN <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
]] require 'ffi.req' 'c.sys._types._size_t' ffi.cdef[[
/* +++ END <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++ BEGIN <sys/_types/_time_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h */
]] require 'ffi.req' 'c.sys._types._time_t' ffi.cdef[[
/* +++ END <sys/_types/_time_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h */
/* +++ BEGIN <sys/_types/_timespec.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h */
]] require 'ffi.req' 'c.sys._types._timespec' ffi.cdef[[
/* +++ END <sys/_types/_timespec.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h */
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
 long tm_gmtoff;
 char *tm_zone;
};
extern char *tzname[];
extern int getdate_err;
extern long timezone __asm("_" "timezone" );
extern int daylight;
char *asctime(const struct tm *);
clock_t clock(void) __asm("_" "clock" );
char *ctime(const time_t *);
double difftime(time_t, time_t);
struct tm *getdate(const char *);
struct tm *gmtime(const time_t *);
struct tm *localtime(const time_t *);
time_t mktime(struct tm *) __asm("_" "mktime" );
size_t strftime(char * restrict, size_t, const char * restrict, const struct tm * restrict) __asm("_" "strftime" );
char *strptime(const char * restrict, const char * restrict, struct tm * restrict) __asm("_" "strptime" );
time_t time(time_t *);
void tzset(void);
char *asctime_r(const struct tm * restrict, char * restrict);
char *ctime_r(const time_t *, char *);
struct tm *gmtime_r(const time_t * restrict, struct tm * restrict);
struct tm *localtime_r(const time_t * restrict, struct tm * restrict);
time_t posix2time(time_t);
void tzsetwall(void);
time_t time2posix(time_t);
time_t timelocal(struct tm * const);
time_t timegm(struct tm * const);
int nanosleep(const struct timespec *__rqtp, struct timespec *__rmtp) __asm("_" "nanosleep" );
typedef enum {
_CLOCK_REALTIME     = 0,
_CLOCK_MONOTONIC     = 6,
_CLOCK_MONOTONIC_RAW     = 4,
_CLOCK_MONOTONIC_RAW_APPROX     = 5,
_CLOCK_UPTIME_RAW     = 8,
_CLOCK_UPTIME_RAW_APPROX     = 9,
_CLOCK_PROCESS_CPUTIME_ID     = 12,
_CLOCK_THREAD_CPUTIME_ID     = 16
} clockid_t;
int clock_getres(clockid_t __clock_id, struct timespec *__res);
int clock_gettime(clockid_t __clock_id, struct timespec *__tp);
__uint64_t clock_gettime_nsec_np(clockid_t __clock_id);
int clock_settime(clockid_t __clock_id, const struct timespec *__tp);
int timespec_get(struct timespec *ts, int base);
/* ++ END <_time.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_time.h */
/* #define NULL ((void *)0) ### define is not number */
/* #define CLOCKS_PER_SEC ((clock_t)1000000) ### define is not number */
/* #define CLOCK_REALTIME _CLOCK_REALTIME ### define is not number */
/* #define CLOCK_MONOTONIC _CLOCK_MONOTONIC ### define is not number */
/* #define CLOCK_MONOTONIC_RAW _CLOCK_MONOTONIC_RAW ### define is not number */
/* #define CLOCK_MONOTONIC_RAW_APPROX _CLOCK_MONOTONIC_RAW_APPROX ### define is not number */
/* #define CLOCK_UPTIME_RAW _CLOCK_UPTIME_RAW ### define is not number */
/* #define CLOCK_UPTIME_RAW_APPROX _CLOCK_UPTIME_RAW_APPROX ### define is not number */
/* #define CLOCK_PROCESS_CPUTIME_ID _CLOCK_PROCESS_CPUTIME_ID ### define is not number */
/* #define CLOCK_THREAD_CPUTIME_ID _CLOCK_THREAD_CPUTIME_ID ### define is not number */
enum { TIME_UTC = 1 };
/* + END <time.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h */
]]
