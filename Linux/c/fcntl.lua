local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <fcntl.h> /usr/include/fcntl.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN <bits/fcntl.h> /usr/include/x86_64-linux-gnu/bits/fcntl.h */
struct flock
  {
    short int l_type;
    short int l_whence;
    __off_t l_start;
    __off_t l_len;
    __pid_t l_pid;
  };
/* ++ END <bits/fcntl.h> /usr/include/x86_64-linux-gnu/bits/fcntl.h */
typedef __mode_t mode_t;
typedef __off_t off_t;
typedef __pid_t pid_t;
/* ++ BEGIN <bits/types/struct_timespec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]] require 'ffi.req' 'c.bits.types.struct_timespec' ffi.cdef[[
/* ++ END <bits/types/struct_timespec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
/* ++ BEGIN <bits/stat.h> /usr/include/x86_64-linux-gnu/bits/stat.h */
]] require 'ffi.req' 'c.bits.stat' ffi.cdef[[
/* ++ END <bits/stat.h> /usr/include/x86_64-linux-gnu/bits/stat.h */
extern int fcntl (int __fd, int __cmd, ...);
extern int open (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
extern int openat (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
extern int creat (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
extern int lockf (int __fd, int __cmd, off_t __len);
extern int posix_fadvise (int __fd, off_t __offset, off_t __len,
     int __advise) __attribute__ ((__nothrow__ , __leaf__));
extern int posix_fallocate (int __fd, off_t __offset, off_t __len);
/* + END <fcntl.h> /usr/include/fcntl.h */
enum { _FCNTL_H = 1 };
/* #define __OPEN_NEEDS_MODE (oflag) (((oflag) & O_CREAT) != 0 || ((oflag) & __O_TMPFILE) == __O_TMPFILE) ### define is not number */
/* #define S_IFMT __S_IFMT ### define is not number */
/* #define S_IFDIR __S_IFDIR ### define is not number */
/* #define S_IFCHR __S_IFCHR ### define is not number */
/* #define S_IFBLK __S_IFBLK ### define is not number */
/* #define S_IFREG __S_IFREG ### define is not number */
/* #define S_IFIFO __S_IFIFO ### define is not number */
/* #define S_IFLNK __S_IFLNK ### define is not number */
/* #define S_IFSOCK __S_IFSOCK ### define is not number */
/* #define S_ISUID __S_ISUID ### define is not number */
/* #define S_ISGID __S_ISGID ### define is not number */
/* #define S_ISVTX __S_ISVTX ### define is not number */
/* #define S_IRUSR __S_IREAD ### define is not number */
/* #define S_IWUSR __S_IWRITE ### define is not number */
/* #define S_IXUSR __S_IEXEC ### define is not number */
/* #define S_IRWXU (__S_IREAD|__S_IWRITE|__S_IEXEC) ### define is not number */
/* #define S_IRGRP (S_IRUSR >> 3) ### define is not number */
/* #define S_IWGRP (S_IWUSR >> 3) ### define is not number */
/* #define S_IXGRP (S_IXUSR >> 3) ### define is not number */
/* #define S_IRWXG (S_IRWXU >> 3) ### define is not number */
/* #define S_IROTH (S_IRGRP >> 3) ### define is not number */
/* #define S_IWOTH (S_IWGRP >> 3) ### define is not number */
/* #define S_IXOTH (S_IXGRP >> 3) ### define is not number */
/* #define S_IRWXO (S_IRWXG >> 3) ### define is not number */
]] require 'ffi.req' 'c.bits.types.SEEK' ffi.cdef[[
enum { AT_FDCWD = -100 };
enum { AT_SYMLINK_NOFOLLOW = 0x100 };
enum { AT_REMOVEDIR = 0x200 };
enum { AT_SYMLINK_FOLLOW = 0x400 };
enum { AT_EACCESS = 0x200 };
]]
