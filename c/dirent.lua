local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/dirent.h */
enum { _DIRENT_H = 1 };
/* BEGIN /usr/include/features.h */
]] require 'ffi.c.features' ffi.cdef[[
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.c.bits.types' ffi.cdef[[
/* END /usr/include/x86_64-linux-gnu/bits/types.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/dirent.h */
struct dirent { __ino_t d_ino;
__off_t d_off;
unsigned short int d_reclen;
unsigned char d_type;
char d_name[256];
};
enum { d_fileno = 0 };
enum { _DIRENT_HAVE_D_RECLEN = 1 };
enum { _DIRENT_HAVE_D_OFF = 1 };
enum { _DIRENT_HAVE_D_TYPE = 1 };
enum { _DIRENT_MATCHES_DIRENT64 = 1 };
/* END /usr/include/x86_64-linux-gnu/bits/dirent.h */
enum { DT_UNKNOWN = 0,
DT_FIFO = 1,
DT_CHR = 2,
DT_DIR = 4,
DT_BLK = 6,
DT_REG = 8,
DT_LNK = 10,
DT_SOCK = 12,
DT_WHT = 14
};
typedef struct __dirstream DIR;
extern DIR *opendir (const char *__name) __attribute__ ((__nonnull__ (1)));
extern DIR *fdopendir (int __fd);
extern int closedir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
extern struct dirent *readdir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
extern int readdir_r (DIR * __dirp, struct dirent * __entry, struct dirent ** __result) __attribute__ ((__nonnull__ (1, 2, 3))) __attribute__ ((__deprecated__));
extern void rewinddir (DIR *__dirp) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
/* END /usr/include/x86_64-linux-gnu/bits/types.h */
extern void seekdir (DIR *__dirp, long int __pos) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int telldir (DIR *__dirp) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int dirfd (DIR *__dirp) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
/* BEGIN /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
enum { _BITS_POSIX1_LIM_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* redefining matching value: # define __WORDSIZE	64 */
/* redefining matching value: # define __WORDSIZE_TIME64_COMPAT32	1 */
/* redefining matching value: # define __SYSCALL_WORDSIZE		64 */
/* END /usr/include/x86_64-linux-gnu/bits/wordsize.h */
enum { _POSIX_AIO_LISTIO_MAX = 2 };
enum { _POSIX_AIO_MAX = 1 };
enum { _POSIX_ARG_MAX = 4096 };
enum { _POSIX_CHILD_MAX = 25 };
enum { _POSIX_DELAYTIMER_MAX = 32 };
enum { _POSIX_HOST_NAME_MAX = 255 };
enum { _POSIX_LINK_MAX = 8 };
enum { _POSIX_LOGIN_NAME_MAX = 9 };
enum { _POSIX_MAX_CANON = 255 };
enum { _POSIX_MAX_INPUT = 255 };
enum { _POSIX_MQ_OPEN_MAX = 8 };
enum { _POSIX_MQ_PRIO_MAX = 32 };
enum { _POSIX_NAME_MAX = 14 };
enum { _POSIX_NGROUPS_MAX = 8 };
enum { _POSIX_OPEN_MAX = 20 };
enum { _POSIX_PATH_MAX = 256 };
enum { _POSIX_PIPE_BUF = 512 };
enum { _POSIX_RE_DUP_MAX = 255 };
enum { _POSIX_RTSIG_MAX = 8 };
enum { _POSIX_SEM_NSEMS_MAX = 256 };
enum { _POSIX_SEM_VALUE_MAX = 32767 };
enum { _POSIX_SIGQUEUE_MAX = 32 };
enum { _POSIX_SSIZE_MAX = 32767 };
enum { _POSIX_STREAM_MAX = 8 };
enum { _POSIX_SYMLINK_MAX = 255 };
enum { _POSIX_SYMLOOP_MAX = 8 };
enum { _POSIX_TIMER_MAX = 32 };
enum { _POSIX_TTY_NAME_MAX = 9 };
enum { _POSIX_TZNAME_MAX = 6 };
enum { _POSIX_CLOCKRES_MIN = 20000000 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/local_lim.h */
enum { __undef_NR_OPEN = 1 };
enum { __undef_LINK_MAX = 1 };
enum { __undef_OPEN_MAX = 1 };
/* enum { __undef_ARG_MAX = 1 }; */
/* BEGIN /usr/include/linux/limits.h */
]] require 'ffi.c.limits' ffi.cdef[[
/* END /usr/include/1/limits.h */
enum { _POSIX_THREAD_KEYS_MAX = 128 };
enum { PTHREAD_KEYS_MAX = 1024 };
enum { _POSIX_THREAD_DESTRUCTOR_ITERATIONS = 4 };
enum { PTHREAD_DESTRUCTOR_ITERATIONS = 4 };
enum { _POSIX_THREAD_THREADS_MAX = 64 };
enum { AIO_PRIO_DELTA_MAX = 20 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/pthread_stack_min-dynamic.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/pthread_stack_min.h */
enum { PTHREAD_STACK_MIN = 16384 };
/* END /usr/include/x86_64-linux-gnu/bits/pthread_stack_min.h */
/* END /usr/include/x86_64-linux-gnu/bits/pthread_stack_min-dynamic.h */
enum { DELAYTIMER_MAX = 2147483647 };
enum { TTY_NAME_MAX = 32 };
enum { LOGIN_NAME_MAX = 256 };
enum { HOST_NAME_MAX = 64 };
enum { MQ_PRIO_MAX = 32768 };
enum { SEM_VALUE_MAX = 2147483647 };
/* END /usr/include/x86_64-linux-gnu/bits/local_lim.h */
enum { SSIZE_MAX = 0 };
/* END /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
enum { MAXNAMLEN = 255 };
enum { __need_size_t = 1 };
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h */
]] require 'ffi.c.stddef' ffi.cdef[[
/* END /usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h */
extern int scandir (const char * __dir, struct dirent *** __namelist, int (*__selector) (const struct dirent *), int (*__cmp) (const struct dirent **, const struct dirent **)) __attribute__ ((__nonnull__ (1, 2)));
extern int alphasort (const struct dirent **__e1, const struct dirent **__e2) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern __ssize_t getdirentries (int __fd, char * __buf, size_t __nbytes, __off_t * __basep) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));
/* BEGIN /usr/include/x86_64-linux-gnu/bits/dirent_ext.h */
/* END /usr/include/x86_64-linux-gnu/bits/dirent_ext.h */
/* END /usr/include/dirent.h */
]]
