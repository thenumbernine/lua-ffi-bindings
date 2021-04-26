-- sys/time.h
local template = require 'template'
local ffi = require 'ffi'
ffi.cdef(template([[
<?
if ffi.os == 'Windows' then
	if ffi.abi'64bit' then
?>
typedef __int64 time_t;
<?
	else
?>
typedef __int32 time_t;
<?
	end
else
?>
typedef size_t time_t;
<?
end
?>

typedef int suseconds_t;

struct timeval {
	time_t tv_sec;			/* seconds since Jan. 1, 1970 */
	suseconds_t tv_usec;	/* and microseconds */
};

struct timezone {
	int	tz_minuteswest;		/* of Greenwich */
	int	tz_dsttime;			/* type of dst correction to apply */
};

int gettimeofday(struct timeval * tp, void * tzp);
int settimeofday(const struct timeval *tp, const struct timezone *tzp);

]], {
	ffi = ffi,
}))
