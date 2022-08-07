enum { _SYS_SELECT_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/select.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* END /usr/include/x86_64-1-gnu/bits/wordsize.h */
/* END /usr/include/x86_64-1-gnu/bits/select.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h */
enum { __sigset_t_defined = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
typedef struct { unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
/* END /usr/include/x86_64-1-gnu/bits/types/__sigset_t.h */
typedef __sigset_t sigset_t;
/* END /usr/include/x86_64-1-gnu/bits/types/sigset_t.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
enum { __time_t_defined = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
typedef __time_t time_t;
/* END /usr/include/x86_64-1-gnu/bits/types/time_t.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h */
enum { __timeval_defined = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
struct timeval { __time_t tv_sec;
__suseconds_t tv_usec;
};
/* END /usr/include/x86_64-1-gnu/bits/types/struct_timeval.h */
typedef __suseconds_t suseconds_t;
typedef long int __fd_mask;
typedef struct { __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
} fd_set;
enum { FD_SETSIZE = 1024 };
extern int select (int __nfds, fd_set * __readfds, fd_set * __writefds, fd_set * __exceptfds, struct timeval * __timeout);