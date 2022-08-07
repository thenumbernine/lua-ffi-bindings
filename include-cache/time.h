enum { _TIME_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h */
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stddef.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/time.h */
enum { _BITS_TIME_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
extern long int __sysconf (int);
/* END /usr/include/x86_64-1-gnu/bits/time.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/clock_t.h */
enum { __clock_t_defined = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
typedef __clock_t clock_t;
/* END /usr/include/x86_64-1-gnu/bits/types/clock_t.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
/* END /usr/include/x86_64-1-gnu/bits/types/time_t.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_tm.h */
enum { __struct_tm_defined = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
struct tm { int tm_sec;
int tm_min;
int tm_hour;
int tm_mday;
int tm_mon;
int tm_year;
int tm_wday;
int tm_yday;
int tm_isdst;
long int __tm_gmtoff;
const char *__tm_zone;
};
/* END /usr/include/x86_64-1-gnu/bits/types/struct_tm.h */
extern clock_t clock (void) __attribute__ ((__nothrow__ , __leaf__));
extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern double difftime (time_t __time1, time_t __time0) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));
extern size_t strftime (char * __s, size_t __maxsize, const char * __format, const struct tm * __tp) __attribute__ ((__nothrow__ , __leaf__));
extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));
extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;