local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/select.h> /usr/include/x86_64-linux-gnu/sys/select.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN <bits/select.h> /usr/include/x86_64-linux-gnu/bits/select.h */
/* ++ END <bits/select.h> /usr/include/x86_64-linux-gnu/bits/select.h */
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
/* #define __FD_ZERO (s) do { unsigned int __i; fd_set *__arr = (s); for (__i = 0; __i < sizeof (fd_set) / sizeof (__fd_mask); ++__i) __FDS_BITS (__arr)[__i] = 0; } while (0) ### define is not number */
/* #define __FD_SET (d,s) ((void) (__FDS_BITS (s)[__FD_ELT(d)] |= __FD_MASK(d))) ### define is not number */
/* #define __FD_CLR (d,s) ((void) (__FDS_BITS (s)[__FD_ELT(d)] &= ~__FD_MASK(d))) ### define is not number */
/* #define __FD_ISSET (d,s) ((__FDS_BITS (s)[__FD_ELT (d)] & __FD_MASK (d)) != 0) ### define is not number */
/* #define __NFDBITS (8 * (int) sizeof (__fd_mask)) ### define is not number */
/* #define __FD_ELT (d) ((d) / __NFDBITS) ### define is not number */
/* #define __FD_MASK (d) ((__fd_mask) (1UL << ((d) % __NFDBITS))) ### define is not number */
/* #define __FDS_BITS (set) ((set)->__fds_bits) ### define is not number */
enum { FD_SETSIZE = 1024 };
/* #define NFDBITS (8 * (int) sizeof (__fd_mask)) ### define is not number */
/* #define FD_SET (fd,fdsetp) __FD_SET (fd, fdsetp) ### define is not number */
/* #define FD_CLR (fd,fdsetp) __FD_CLR (fd, fdsetp) ### define is not number */
/* #define FD_ISSET (fd,fdsetp) __FD_ISSET (fd, fdsetp) ### define is not number */
/* #define FD_ZERO (fdsetp) __FD_ZERO (fdsetp) ### define is not number */
/* + END <sys/select.h> /usr/include/x86_64-linux-gnu/sys/select.h */
]]
