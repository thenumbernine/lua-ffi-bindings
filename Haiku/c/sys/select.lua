local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/select.h> /boot/system/develop/headers/posix/sys/select.h */
/* ++ BEGIN <config/types.h> /boot/system/develop/headers/config/types.h */
]] require 'ffi.req' 'c.config.types' ffi.cdef[[
/* ++ END <config/types.h> /boot/system/develop/headers/config/types.h */
/* ++ BEGIN <sys/time.h> ./Haiku/sys/time.h */
]] require 'ffi.req' 'c.sys.time' ffi.cdef[[
/* ++ END <sys/time.h> ./Haiku/sys/time.h */
/* ++ BEGIN <signal.h> /boot/system/develop/headers/bsd/signal.h */
]] require 'ffi.req' 'c.signal' ffi.cdef[[
/* ++ END <signal.h> /boot/system/develop/headers/bsd/signal.h */
/* ++ BEGIN <string.h> /boot/system/develop/headers/bsd/string.h */
]] require 'ffi.req' 'c.string' ffi.cdef[[
/* ++ END <string.h> /boot/system/develop/headers/bsd/string.h */
typedef __haiku_uint32 fd_mask;
typedef struct fd_set {
 fd_mask bits[((1024) + (((sizeof(fd_mask) * 8)) - 1)) / ((sizeof(fd_mask) * 8))];
} fd_set;
extern int pselect(int numBits, struct fd_set *readBits, struct fd_set *writeBits,
   struct fd_set *errorBits, const struct timespec *timeout, const sigset_t *sigMask);
extern int select(int numBits, struct fd_set *readBits, struct fd_set *writeBits,
   struct fd_set *errorBits, struct timeval *timeout);
enum { _SYS_SELECT_H = 1 };
enum { FD_SETSIZE = 1024 };
/* #define NFDBITS (sizeof(fd_mask) * 8) ### define is not number */
/* #define _FD_BITSINDEX (fd) ((fd) / NFDBITS) ### define is not number */
/* #define _FD_BIT (fd) (1L << ((fd) % NFDBITS)) ### define is not number */
/* #define FD_ZERO (set) memset((set), 0, sizeof(fd_set)) ### define is not number */
/* #define FD_SET (fd,set) ((set)->bits[_FD_BITSINDEX(fd)] |= _FD_BIT(fd)) ### define is not number */
/* #define FD_CLR (fd,set) ((set)->bits[_FD_BITSINDEX(fd)] &= ~_FD_BIT(fd)) ### define is not number */
/* #define FD_ISSET (fd,set) ((set)->bits[_FD_BITSINDEX(fd)] & _FD_BIT(fd)) ### define is not number */
/* #define FD_COPY (source,target) (*(target) = *(source)) ### define is not number */
/* + END <sys/select.h> /boot/system/develop/headers/posix/sys/select.h */
]]
