-- sys/time.h

local ffi = require 'ffi'
ffi.cdef[[

typedef long time_t;		//how it is on my system ...
typedef int suseconds_t;

struct timeval {
		 time_t       tv_sec;   /* seconds since Jan. 1, 1970 */
		 suseconds_t  tv_usec;  /* and microseconds */
};

struct timezone {
		 int     tz_minuteswest; /* of Greenwich */
		 int     tz_dsttime;     /* type of dst correction to apply */
};

int gettimeofday(struct timeval * tp, void * tzp);
int settimeofday(const struct timeval *tp, const struct timezone *tzp);

]]