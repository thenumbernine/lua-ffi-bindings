local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/time.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/time.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
/* ++ BEGIN <linux/time.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/time.h */
]] require 'ffi.req' 'c.linux.time' ffi.cdef[[
/* ++ END <linux/time.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/time.h */
/* ++ BEGIN <sys/select.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/select.h */
]] require 'ffi.req' 'c.sys.select' ffi.cdef[[
/* ++ END <sys/select.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/select.h */
int gettimeofday(struct timeval*  __tv, struct timezone*  __tz);
int settimeofday(const struct timeval*  __tv, const struct timezone*  __tz);
int getitimer(int __which, struct itimerval*  __current_value);
int setitimer(int __which, const struct itimerval*  __new_value, struct itimerval*  __old_value);
int utimes(const char*  __path, const struct timeval __times[ 2]);
enum { _SYS_TIME_H_ = 1 };
/* #define timerclear (a) ((a)->tv_sec = (a)->tv_usec = 0) ### define is not number */
/* #define timerisset (a) ((a)->tv_sec != 0 || (a)->tv_usec != 0) ### define is not number */
/* #define timercmp (a,b,op) ((a)->tv_sec == (b)->tv_sec ? (a)->tv_usec op (b)->tv_usec : (a)->tv_sec op (b)->tv_sec) ### define is not number */
/* #define timeradd (a,b,res) do { (res)->tv_sec = (a)->tv_sec + (b)->tv_sec; (res)->tv_usec = (a)->tv_usec + (b)->tv_usec; if ((res)->tv_usec >= 1000000) { (res)->tv_usec -= 1000000; (res)->tv_sec += 1; } } while (0) ### define is not number */
/* #define timersub (a,b,res) do { (res)->tv_sec = (a)->tv_sec - (b)->tv_sec; (res)->tv_usec = (a)->tv_usec - (b)->tv_usec; if ((res)->tv_usec < 0) { (res)->tv_usec += 1000000; (res)->tv_sec -= 1; } } while (0) ### define is not number */
/* #define TIMEVAL_TO_TIMESPEC (tv,ts) { (ts)->tv_sec = (tv)->tv_sec; (ts)->tv_nsec = (tv)->tv_usec * 1000; } ### define is not number */
/* #define TIMESPEC_TO_TIMEVAL (tv,ts) { (tv)->tv_sec = (ts)->tv_sec; (tv)->tv_usec = (ts)->tv_nsec / 1000; } ### define is not number */
/* + END <sys/time.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/time.h */
]]
