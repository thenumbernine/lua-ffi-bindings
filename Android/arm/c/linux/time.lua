local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <linux/time.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/time.h */
/* ++ BEGIN <bits/timespec.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/timespec.h */
/* +++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* +++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* +++ BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++ END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
struct timespec {
  time_t tv_sec;
  long tv_nsec;
};
/* ++ END <bits/timespec.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/timespec.h */
/* ++ BEGIN <linux/time_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/time_types.h */
/* +++ BEGIN <linux/time.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/time.h */
/* +++ END <linux/time.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/time.h */
struct __kernel_timespec {
  __kernel_time64_t tv_sec;
  long long tv_nsec;
};
struct __kernel_itimerspec {
  struct __kernel_timespec it_interval;
  struct __kernel_timespec it_value;
};
struct __kernel_old_timespec {
  __kernel_old_time_t tv_sec;
  long tv_nsec;
};
struct __kernel_sock_timeval {
  __s64 tv_sec;
  __s64 tv_usec;
};
/* ++ END <linux/time_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/time_types.h */
struct timeval {
  __kernel_old_time_t tv_sec;
  __kernel_suseconds_t tv_usec;
};
struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};
struct itimerval {
  struct timeval it_interval;
  struct timeval it_value;
};
struct timezone {
  int tz_minuteswest;
  int tz_dsttime;
};
enum { _UAPI_LINUX_TIME_H = 1 };
enum { _STRUCT_TIMESPEC = 1 };
enum { _UAPI_LINUX_TIME_TYPES_H = 1 };
enum { ITIMER_REAL = 0 };
enum { ITIMER_VIRTUAL = 1 };
enum { ITIMER_PROF = 2 };
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
enum { CLOCK_SGI_CYCLE = 10 };
enum { CLOCK_TAI = 11 };
enum { MAX_CLOCKS = 16 };
/* #define CLOCKS_MASK (CLOCK_REALTIME | CLOCK_MONOTONIC) ### define is not number */
enum { CLOCKS_MONO = 1 };
enum { TIMER_ABSTIME = 0x01 };
/* + END <linux/time.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/time.h */
]]
