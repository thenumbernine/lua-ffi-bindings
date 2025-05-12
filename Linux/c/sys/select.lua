local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/select.h> /usr/include/x86_64-linux-gnu/sys/select.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN <bits/types/sigset_t.h> /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h */
]] require 'ffi.req' 'c.bits.types.sigset_t' ffi.cdef[[
/* ++ END <bits/types/sigset_t.h> /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h */
/* ++ BEGIN <bits/types/time_t.h> /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
]] require 'ffi.req' 'c.bits.types.time_t' ffi.cdef[[
/* ++ END <bits/types/time_t.h> /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
/* ++ BEGIN <bits/types/struct_timeval.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h */
]] require 'ffi.req' 'c.bits.types.struct_timeval' ffi.cdef[[
/* ++ END <bits/types/struct_timeval.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h */
/* ++ BEGIN <bits/types/struct_timespec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]] require 'ffi.req' 'c.bits.types.struct_timespec' ffi.cdef[[
/* ++ END <bits/types/struct_timespec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
typedef __suseconds_t suseconds_t;
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
  } fd_set;
typedef __fd_mask fd_mask;
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
/* + END <sys/select.h> /usr/include/x86_64-linux-gnu/sys/select.h */
enum { _SYS_SELECT_H = 1 };
/* #define __NFDBITS (8 * (int) sizeof (__fd_mask)) ### define is not number */
/* #define __FD_ELT (d) ((d) / __NFDBITS) ### define is not number */
/* #define __FD_MASK (d) ((__fd_mask) (1UL << ((d) % __NFDBITS))) ### define is not number */
/* #define __FDS_BITS (set) ((set)->__fds_bits) ### define is not number */
/* #define FD_SETSIZE __FD_SETSIZE ### define is not number */
/* #define NFDBITS __NFDBITS ### define is not number */
/* #define FD_SET (fd,fdsetp) __FD_SET (fd, fdsetp) ### define is not number */
/* #define FD_CLR (fd,fdsetp) __FD_CLR (fd, fdsetp) ### define is not number */
/* #define FD_ISSET (fd,fdsetp) __FD_ISSET (fd, fdsetp) ### define is not number */
/* #define FD_ZERO (fdsetp) __FD_ZERO (fdsetp) ### define is not number */
]]
