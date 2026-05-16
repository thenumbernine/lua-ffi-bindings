local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/select.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/select.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
/* ++ BEGIN <linux/time.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/time.h */
]] require 'ffi.req' 'c.linux.time' ffi.cdef[[
/* ++ END <linux/time.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/time.h */
/* ++ BEGIN <signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/signal.h */
]] require 'ffi.req' 'c.signal' ffi.cdef[[
/* ++ END <signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/signal.h */
typedef unsigned long fd_mask;
typedef struct {
  fd_mask fds_bits[1024/(8 * sizeof(fd_mask))];
} fd_set;
void __FD_CLR_chk(int, fd_set*  , size_t);
void __FD_SET_chk(int, fd_set* , size_t);
int __FD_ISSET_chk(int, const fd_set* , size_t);
int select(int __max_fd_plus_one, fd_set*  __read_fds, fd_set*  __write_fds, fd_set*  __exception_fds, struct timeval*  __timeout);
int pselect(int __max_fd_plus_one, fd_set*  __read_fds, fd_set*  __write_fds, fd_set*  __exception_fds, const struct timespec*  __timeout, const sigset_t*  __mask);
int pselect64(int __max_fd_plus_one, fd_set*  __read_fds, fd_set*  __write_fds, fd_set*  __exception_fds, const struct timespec*  __timeout, const sigset64_t*  __mask) __attribute__((__availability__(android,strict,introduced=28 )));
enum { FD_SETSIZE = 1024 };
/* #define NFDBITS (8 * sizeof(fd_mask)) ### define is not number */
/* #define __FDELT (fd) ((fd) / NFDBITS) ### define is not number */
/* #define __FDMASK (fd) (1UL << ((fd) % NFDBITS)) ### define is not number */
/* #define __FDS_BITS (type,set) (__BIONIC_CAST(static_cast, type, set)->fds_bits) ### define is not number */
/* #define __FD_CLR (fd,set) (__FDS_BITS(fd_set*, set)[__FDELT(fd)] &= ~__FDMASK(fd)) ### define is not number */
/* #define __FD_SET (fd,set) (__FDS_BITS(fd_set*, set)[__FDELT(fd)] |= __FDMASK(fd)) ### define is not number */
/* #define __FD_ISSET (fd,set) ((__FDS_BITS(const fd_set*, set)[__FDELT(fd)] & __FDMASK(fd)) != 0) ### define is not number */
/* #define FD_ZERO (set) __builtin_memset(set, 0, sizeof(*__BIONIC_CAST(static_cast, const fd_set*, set))) ### define is not number */
/* #define FD_CLR (fd,set) __FD_CLR_chk(fd, set, __bos(set)) ### define is not number */
/* #define FD_SET (fd,set) __FD_SET_chk(fd, set, __bos(set)) ### define is not number */
/* #define FD_ISSET (fd,set) __FD_ISSET_chk(fd, set, __bos(set)) ### define is not number */
/* + END <sys/select.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/select.h */
]]
