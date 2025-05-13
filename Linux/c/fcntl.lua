local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <fcntl.h> /usr/include/fcntl.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
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
/* +++ BEGIN <bits/fcntl-linux.h> /usr/include/x86_64-linux-gnu/bits/fcntl-linux.h */
/* +++ END <bits/fcntl-linux.h> /usr/include/x86_64-linux-gnu/bits/fcntl-linux.h */
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
enum { F_GETLK64 = 5 };
enum { F_SETLK64 = 6 };
enum { F_SETLKW64 = 7 };
enum { O_ACCMODE = 0003 };
enum { O_RDONLY = 00 };
enum { O_WRONLY = 01 };
enum { O_RDWR = 02 };
enum { O_CREAT = 0100 };
enum { O_EXCL = 0200 };
enum { O_NOCTTY = 0400 };
enum { O_TRUNC = 01000 };
enum { O_APPEND = 02000 };
enum { O_NONBLOCK = 04000 };
/* #define O_NDELAY O_NONBLOCK ### define is not number */
enum { O_SYNC = 04010000 };
/* #define O_FSYNC O_SYNC ### define is not number */
enum { O_ASYNC = 020000 };
enum { __O_DIRECTORY = 0200000 };
enum { __O_NOFOLLOW = 0400000 };
enum { __O_CLOEXEC = 02000000 };
enum { __O_DIRECT = 040000 };
enum { __O_NOATIME = 01000000 };
enum { __O_PATH = 010000000 };
enum { __O_DSYNC = 010000 };
/* #define __O_TMPFILE (020000000 | __O_DIRECTORY) ### define is not number */
/* #define F_GETLK F_GETLK64 ### define is not number */
/* #define F_SETLK F_SETLK64 ### define is not number */
/* #define F_SETLKW F_SETLKW64 ### define is not number */
/* #define O_DIRECTORY __O_DIRECTORY ### define is not number */
/* #define O_NOFOLLOW __O_NOFOLLOW ### define is not number */
/* #define O_CLOEXEC __O_CLOEXEC ### define is not number */
/* #define O_DSYNC __O_DSYNC ### define is not number */
/* #define O_RSYNC O_SYNC ### define is not number */
enum { F_DUPFD = 0 };
enum { F_GETFD = 1 };
enum { F_SETFD = 2 };
enum { F_GETFL = 3 };
enum { F_SETFL = 4 };
enum { __F_SETOWN = 8 };
enum { __F_GETOWN = 9 };
/* #define F_SETOWN __F_SETOWN ### define is not number */
/* #define F_GETOWN __F_GETOWN ### define is not number */
enum { __F_SETSIG = 10 };
enum { __F_GETSIG = 11 };
enum { __F_SETOWN_EX = 15 };
enum { __F_GETOWN_EX = 16 };
enum { F_DUPFD_CLOEXEC = 1030 };
enum { FD_CLOEXEC = 1 };
enum { F_RDLCK = 0 };
enum { F_WRLCK = 1 };
enum { F_UNLCK = 2 };
enum { F_EXLCK = 4 };
enum { F_SHLCK = 8 };
enum { LOCK_SH = 1 };
enum { LOCK_EX = 2 };
enum { LOCK_NB = 4 };
enum { LOCK_UN = 8 };
/* #define FAPPEND O_APPEND ### define is not number */
/* #define FFSYNC O_FSYNC ### define is not number */
/* #define FASYNC O_ASYNC ### define is not number */
/* #define FNONBLOCK O_NONBLOCK ### define is not number */
/* #define FNDELAY O_NDELAY ### define is not number */
enum { __POSIX_FADV_DONTNEED = 4 };
enum { __POSIX_FADV_NOREUSE = 5 };
enum { POSIX_FADV_NORMAL = 0 };
enum { POSIX_FADV_RANDOM = 1 };
enum { POSIX_FADV_SEQUENTIAL = 2 };
enum { POSIX_FADV_WILLNEED = 3 };
/* #define POSIX_FADV_DONTNEED __POSIX_FADV_DONTNEED ### define is not number */
/* #define POSIX_FADV_NOREUSE __POSIX_FADV_NOREUSE ### define is not number */
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
/* + END <fcntl.h> /usr/include/fcntl.h */
]]
return ffi.C
