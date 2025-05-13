local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/time.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/time.h */
/* ++ BEGIN <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
]] require 'ffi.req' 'c.sys.cdefs' ffi.cdef[[
/* ++ END <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++ BEGIN <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
]] require 'ffi.req' 'c.sys._types' ffi.cdef[[
/* ++ END <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++ BEGIN <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* ++ END <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* ++ BEGIN <sys/_types/_fd_def.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_def.h */
]] require 'ffi.req' 'c.sys._types._fd_def' ffi.cdef[[
/* ++ END <sys/_types/_fd_def.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_def.h */
/* ++ BEGIN <sys/_types/_timespec.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h */
]] require 'ffi.req' 'c.sys._types._timespec' ffi.cdef[[
/* ++ END <sys/_types/_timespec.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h */
/* ++ BEGIN <sys/_types/_timeval.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval.h */
]] require 'ffi.req' 'c.sys._types._timeval' ffi.cdef[[
/* ++ END <sys/_types/_timeval.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval.h */
/* ++ BEGIN <sys/_types/_timeval64.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval64.h */
struct timeval64 {
 __int64_t tv_sec;
 __int64_t tv_usec;
};
/* ++ END <sys/_types/_timeval64.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval64.h */
/* ++ BEGIN <sys/_types/_time_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h */
]] require 'ffi.req' 'c.sys._types._time_t' ffi.cdef[[
/* ++ END <sys/_types/_time_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h */
/* ++ BEGIN <sys/_types/_suseconds_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_suseconds_t.h */
]] require 'ffi.req' 'c.sys._types._suseconds_t' ffi.cdef[[
/* ++ END <sys/_types/_suseconds_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_suseconds_t.h */
struct itimerval {
 struct timeval it_interval;
 struct timeval it_value;
};
/* ++ BEGIN <sys/_types/_fd_setsize.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_setsize.h */
/* ++ END <sys/_types/_fd_setsize.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_setsize.h */
/* ++ BEGIN <sys/_types/_fd_set.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_set.h */
/* ++ END <sys/_types/_fd_set.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_set.h */
/* ++ BEGIN <sys/_types/_fd_clr.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_clr.h */
/* ++ END <sys/_types/_fd_clr.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_clr.h */
/* ++ BEGIN <sys/_types/_fd_isset.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_isset.h */
/* ++ END <sys/_types/_fd_isset.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_isset.h */
/* ++ BEGIN <sys/_types/_fd_zero.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_zero.h */
/* ++ END <sys/_types/_fd_zero.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_zero.h */
/* ++ BEGIN <sys/_types/_fd_copy.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_copy.h */
/* ++ END <sys/_types/_fd_copy.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_copy.h */
struct timezone {
 int tz_minuteswest;
 int tz_dsttime;
};
struct clockinfo {
 int hz;
 int tick;
 int tickadj;
 int stathz;
 int profhz;
};
/* ++ BEGIN <time.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h */
]] require 'ffi.req' 'c.time' ffi.cdef[[
/* ++ END <time.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h */
int adjtime(const struct timeval *, struct timeval *);
int futimes(int, const struct timeval *);
int lutimes(const char *, const struct timeval *) __attribute__((availability(macosx,introduced=10.5)));
int settimeofday(const struct timeval *, const struct timezone *);
int getitimer(int, struct itimerval *);
int gettimeofday(struct timeval * restrict, void * restrict);
/* ++ BEGIN <sys/_select.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_select.h */
]] require 'ffi.req' 'c.sys._select' ffi.cdef[[
/* ++ END <sys/_select.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_select.h */
int setitimer(int, const struct itimerval * restrict,
    struct itimerval * restrict);
int utimes(const char *, const struct timeval *);
enum { _STRUCT_TIMEVAL64 = 1 };
enum { ITIMER_REAL = 0 };
enum { ITIMER_VIRTUAL = 1 };
enum { ITIMER_PROF = 2 };
enum { FD_SETSIZE = 1024 };
/* #define FD_SET (n,p) __DARWIN_FD_SET(n, p) ### define is not number */
/* #define FD_CLR (n,p) __DARWIN_FD_CLR(n, p) ### define is not number */
/* #define FD_ISSET (n,p) __DARWIN_FD_ISSET(n, p) ### define is not number */
/* #define FD_ZERO (p) __DARWIN_FD_ZERO(p) ### define is not number */
/* #define FD_COPY (f,t) __DARWIN_FD_COPY(f, t) ### define is not number */
/* #define TIMEVAL_TO_TIMESPEC (tv,ts) { (ts)->tv_sec = (tv)->tv_sec; (ts)->tv_nsec = (tv)->tv_usec * 1000; } ### define is not number */
/* #define TIMESPEC_TO_TIMEVAL (tv,ts) { (tv)->tv_sec = (ts)->tv_sec; (tv)->tv_usec = (__darwin_suseconds_t)((ts)->tv_nsec / 1000); } ### define is not number */
enum { DST_NONE = 0 };
enum { DST_USA = 1 };
enum { DST_AUST = 2 };
enum { DST_WET = 3 };
enum { DST_MET = 4 };
enum { DST_EET = 5 };
enum { DST_CAN = 6 };
/* #define timerclear (tvp) (tvp)->tv_sec = (tvp)->tv_usec = 0 ### define is not number */
/* #define timerisset (tvp) ((tvp)->tv_sec || (tvp)->tv_usec) ### define is not number */
/* #define timercmp (tvp,uvp,cmp) (((tvp)->tv_sec == (uvp)->tv_sec) ? ((tvp)->tv_usec cmp (uvp)->tv_usec) : ((tvp)->tv_sec cmp (uvp)->tv_sec)) ### define is not number */
/* #define timeradd (tvp,uvp,vvp) do { (vvp)->tv_sec = (tvp)->tv_sec + (uvp)->tv_sec; (vvp)->tv_usec = (tvp)->tv_usec + (uvp)->tv_usec; if ((vvp)->tv_usec >= 1000000) { (vvp)->tv_sec++; (vvp)->tv_usec -= 1000000; } } while (0) ### define is not number */
/* #define timersub (tvp,uvp,vvp) do { (vvp)->tv_sec = (tvp)->tv_sec - (uvp)->tv_sec; (vvp)->tv_usec = (tvp)->tv_usec - (uvp)->tv_usec; if ((vvp)->tv_usec < 0) { (vvp)->tv_sec--; (vvp)->tv_usec += 1000000; } } while (0) ### define is not number */
/* #define timevalcmp (l,r,cmp) timercmp(l, r, cmp) ### define is not number */
/* + END <sys/time.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/time.h */
]]
