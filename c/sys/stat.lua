local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/x86_64-linux-gnu/sys/stat.h */
enum { _SYS_STAT_H = 1 };
/* BEGIN /usr/include/features.h */
]] require 'ffi.c.features' ffi.cdef[[
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.c.bits.types' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]] require 'ffi.c.bits.types.struct_timespec' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types/struct_timespec.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
/* END /usr/include/x86_64-1-gnu/bits/types/time_t.h */
typedef __dev_t dev_t;
enum { __dev_t_defined = 1 };
typedef __gid_t gid_t;
enum { __gid_t_defined = 1 };
typedef __ino_t ino_t;
enum { __ino_t_defined = 1 };
typedef __mode_t mode_t;
enum { __mode_t_defined = 1 };
typedef __nlink_t nlink_t;
enum { __nlink_t_defined = 1 };
typedef __off_t off_t;
enum { __off_t_defined = 1 };
typedef __uid_t uid_t;
enum { __uid_t_defined = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/stat.h */
enum { _BITS_STAT_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/struct_stat.h */
enum { _BITS_STRUCT_STAT_H = 1 };
struct stat { __dev_t st_dev;
__ino_t st_ino;
__nlink_t st_nlink;
__mode_t st_mode;
__uid_t st_uid;
__gid_t st_gid;
int __pad0;
__dev_t st_rdev;
__off_t st_size;
__blksize_t st_blksize;
__blkcnt_t st_blocks;
struct timespec st_atim;
struct timespec st_mtim;
struct timespec st_ctim;
/* #  define st_atime st_atim.tv_sec ### string, not number "st_atim.tv_sec" */
/* #  define st_mtime st_mtim.tv_sec ### string, not number "st_mtim.tv_sec" */
/* #  define st_ctime st_ctim.tv_sec ### string, not number "st_ctim.tv_sec" */
__syscall_slong_t __glibc_reserved[3];
};
enum { _STATBUF_ST_BLKSIZE = 1 };
enum { _STATBUF_ST_RDEV = 1 };
enum { _STATBUF_ST_NSEC = 1 };
/* END /usr/include/x86_64-1-gnu/bits/struct_stat.h */
enum { __S_IFMT = 170000 };
enum { __S_IFDIR = 40000 };
enum { __S_IFCHR = 20000 };
enum { __S_IFBLK = 60000 };
enum { __S_IFREG = 100000 };
enum { __S_IFIFO = 10000 };
enum { __S_IFLNK = 120000 };
enum { __S_IFSOCK = 140000 };
enum { __S_ISUID = 4000 };
enum { __S_ISGID = 2000 };
enum { __S_ISVTX = 1000 };
enum { __S_IREAD = 400 };
enum { __S_IWRITE = 200 };
enum { __S_IEXEC = 100 };
enum { UTIME_NOW = 1073741823 };
enum { UTIME_OMIT = 1073741822 };
/* END /usr/include/x86_64-1-gnu/bits/stat.h */
enum { S_IFMT = 170000 };
enum { S_IFDIR = 40000 };
enum { S_IFCHR = 20000 };
enum { S_IFBLK = 60000 };
enum { S_IFREG = 100000 };
enum { S_IFIFO = 10000 };
enum { S_IFLNK = 120000 };
enum { S_IFSOCK = 140000 };
enum { S_ISUID = 4000 };
enum { S_ISGID = 2000 };
enum { S_ISVTX = 1000 };
enum { S_IRUSR = 400 };
enum { S_IWUSR = 200 };
enum { S_IXUSR = 100 };
enum { S_IRWXU = 508 };
enum { S_IREAD = 400 };
enum { S_IWRITE = 200 };
enum { S_IEXEC = 100 };
enum { S_IRGRP = 50 };
enum { S_IWGRP = 25 };
enum { S_IXGRP = 12 };
enum { S_IRWXG = 63 };
enum { S_IROTH = 6 };
enum { S_IWOTH = 3 };
enum { S_IXOTH = 1 };
enum { S_IRWXO = 7 };
enum { ACCESSPERMS = 511 };
enum { ALLPERMS = 4095 };
enum { DEFFILEMODE = 511 };
enum { S_BLKSIZE = 512 };
extern int stat (const char * __file, struct stat * __buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int fstat (int __fd, struct stat *__buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int fstatat (int __fd, const char * __file, struct stat * __buf, int __flag) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern int lstat (const char * __file, struct stat * __buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int chmod (const char *__file, __mode_t __mode) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int lchmod (const char *__file, __mode_t __mode) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int fchmod (int __fd, __mode_t __mode) __attribute__ ((__nothrow__ , __leaf__));
extern int fchmodat (int __fd, const char *__file, __mode_t __mode, int __flag) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern __mode_t umask (__mode_t __mask) __attribute__ ((__nothrow__ , __leaf__));
extern int mkdir (const char *__path, __mode_t __mode) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int mkdirat (int __fd, const char *__path, __mode_t __mode) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int mknod (const char *__path, __mode_t __mode, __dev_t __dev) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int mknodat (int __fd, const char *__path, __mode_t __mode, __dev_t __dev) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int mkfifo (const char *__path, __mode_t __mode) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int mkfifoat (int __fd, const char *__path, __mode_t __mode) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int utimensat (int __fd, const char *__path, const struct timespec __times[2], int __flags) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int futimens (int __fd, const struct timespec __times[2]) __attribute__ ((__nothrow__ , __leaf__));
/* END /usr/include/x86_64-1-gnu/sys/stat.h */
]]
