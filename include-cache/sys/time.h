enum { _SYS_TIME_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
/* END /usr/include/x86_64-1-gnu/bits/types/time_t.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h */
/* END /usr/include/x86_64-1-gnu/bits/types/struct_timeval.h */
/* BEGIN /usr/include/x86_64-linux-gnu/sys/select.h */
/* END /usr/include/x86_64-1-gnu/sys/select.h */
extern int gettimeofday (struct timeval * __tv, void * __tz) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
enum __itimer_which { ITIMER_REAL = 0, ITIMER_VIRTUAL = 1, ITIMER_PROF = 2 };
struct itimerval { struct timeval it_interval;
struct timeval it_value;
};
typedef int __itimer_which_t;
extern int getitimer (__itimer_which_t __which, struct itimerval *__value) __attribute__ ((__nothrow__ , __leaf__));
extern int setitimer (__itimer_which_t __which, const struct itimerval * __new, struct itimerval * __old) __attribute__ ((__nothrow__ , __leaf__));
extern int utimes (const char *__file, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;