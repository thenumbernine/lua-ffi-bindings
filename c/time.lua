require 'ffi.c.sys.time'
local ffi = require 'ffi'
ffi.cdef[[

typedef unsigned long clock_t;

struct tm {
	int tm_sec;			/* seconds after the minute [0-60] */
	int tm_min;			/* minutes after the hour [0-59] */
	int tm_hour;		/* hours since midnight [0-23] */
	int tm_mday;		/* day of the month [1-31] */
	int tm_mon;			/* months since January [0-11] */
	int tm_year;		/* years since 1900 */
	int tm_wday;		/* days since Sunday [0-6] */
	int tm_yday;		/* days since January 1 [0-365] */
	int tm_isdst;		/* Daylight Savings Time flag */

/* TODO these are only in some OS's --- which ones? */
	
	long	tm_gmtoff;	/* offset from CUT in seconds */
	char	*tm_zone;	/* timezone abbreviation */
};

struct tm *localtime(const time_t *);

char *asctime(const struct tm *);
clock_t clock(void);
char *ctime(const time_t *);
double difftime(time_t, time_t);
struct tm *getdate(const char *);
struct tm *gmtime(const time_t *);
struct tm *localtime(const time_t *);
time_t mktime(struct tm *);
size_t strftime(char * __restrict, size_t, const char * __restrict, const struct tm * __restrict);
char *strptime(const char * __restrict, const char * __restrict, struct tm * __restrict);
time_t time(time_t *);

]]
