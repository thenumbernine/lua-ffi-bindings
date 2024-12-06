local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/fcntl.h */
/* ++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END   /usr/include/features.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/fcntl.h */
enum { F_GETLK64 = 5 };
enum { F_SETLK64 = 6 };
enum { F_SETLKW64 = 7 };
struct flock {
	short int l_type;
	short int l_whence;
	__off_t l_start;
	__off_t l_len;
	__pid_t l_pid;
};
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/fcntl-linux.h */
enum { O_ACCMODE = 3 };
enum { O_RDONLY = 0 };
enum { O_WRONLY = 1 };
enum { O_RDWR = 2 };
enum { O_CREAT = 64 };
enum { O_EXCL = 128 };
enum { O_NOCTTY = 256 };
enum { O_TRUNC = 512 };
enum { O_APPEND = 1024 };
enum { O_NONBLOCK = 2048 };
enum { O_NDELAY = 2048 };
enum { O_SYNC = 1052672 };
enum { O_FSYNC = 1052672 };
enum { O_ASYNC = 8192 };
enum { F_GETLK = 5 };
enum { F_SETLK = 6 };
enum { F_SETLKW = 7 };
enum { O_DIRECTORY = 65536 };
enum { O_NOFOLLOW = 131072 };
enum { O_CLOEXEC = 524288 };
enum { O_DSYNC = 4096 };
enum { O_RSYNC = 1052672 };
enum { F_DUPFD = 0 };
enum { F_GETFD = 1 };
enum { F_SETFD = 2 };
enum { F_GETFL = 3 };
enum { F_SETFL = 4 };
enum { F_SETOWN = 8 };
enum { F_GETOWN = 9 };
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
enum { FAPPEND = 1024 };
enum { FFSYNC = 1052672 };
enum { FASYNC = 8192 };
enum { FNONBLOCK = 2048 };
enum { FNDELAY = 2048 };
enum { POSIX_FADV_NORMAL = 0 };
enum { POSIX_FADV_RANDOM = 1 };
enum { POSIX_FADV_SEQUENTIAL = 2 };
enum { POSIX_FADV_WILLNEED = 3 };
enum { POSIX_FADV_DONTNEED = 4 };
enum { POSIX_FADV_NOREUSE = 5 };
/* +++ END   /usr/include/x86_64-linux-gnu/bits/fcntl-linux.h */
/* ++ END   /usr/include/x86_64-linux-gnu/bits/fcntl.h */
typedef __mode_t mode_t;
typedef __off_t off_t;
typedef __pid_t pid_t;
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]] require 'ffi.req' 'c.bits.types.struct_timespec' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/stat.h */
]] require 'ffi.req' 'c.bits.stat' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/stat.h */

/* Big chunk that's just copied between <fctnl.h> and <sys/stat.h> */
/* enum { S_IFMT = 61440 }; */
/* enum { S_IFDIR = 16384 }; */
/* enum { S_IFCHR = 8192 }; */
/* enum { S_IFBLK = 24576 }; */
/* enum { S_IFREG = 32768 }; */
/* enum { S_IFIFO = 4096 }; */
/* enum { S_IFLNK = 40960 }; */
/* enum { S_IFSOCK = 49152 }; */
/* enum { S_ISUID = 2048 }; */
/* enum { S_ISGID = 1024 }; */
/* enum { S_ISVTX = 512 }; */
/* enum { S_IRUSR = 256 }; */
/* enum { S_IWUSR = 128 }; */
/* enum { S_IXUSR = 64 }; */
/* enum { S_IRWXU = 448 }; */
/* enum { S_IRGRP = 32 }; */
/* enum { S_IWGRP = 16 }; */
/* enum { S_IXGRP = 8 }; */
/* enum { S_IRWXG = 56 }; */
/* enum { S_IROTH = 4 }; */
/* enum { S_IWOTH = 2 }; */
/* enum { S_IXOTH = 1 }; */
/* enum { S_IRWXO = 7 }; */
]] require 'ffi.req' 'c.sys.stat' ffi.cdef[[

/* And the part from unistd */
/* enum { R_OK = 4 }; */
/* enum { W_OK = 2 }; */
/* enum { X_OK = 1 }; */
/* enum { F_OK = 0 }; */
/* enum { F_ULOCK = 0 }; */
/* enum { F_LOCK = 1 }; */
/* enum { F_TLOCK = 2 }; */
/* enum { F_TEST = 3 }; */
]] require 'ffi.req' 'c.unistd' ffi.cdef[[

]] require 'ffi.req' 'c.bits.types.SEEK' ffi.cdef[[
enum { AT_FDCWD = -100 };
enum { AT_SYMLINK_NOFOLLOW = 256 };
enum { AT_REMOVEDIR = 512 };
enum { AT_SYMLINK_FOLLOW = 1024 };
enum { AT_EACCESS = 512 };
extern int fcntl (int __fd, int __cmd, ...);
extern int open (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
extern int openat (int __fd, const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (2)));
extern int creat (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
extern int lockf (int __fd, int __cmd, off_t __len);
extern int posix_fadvise (int __fd, off_t __offset, off_t __len, int __advise) __attribute__ ((__nothrow__ , __leaf__));
extern int posix_fallocate (int __fd, off_t __offset, off_t __len);
/* + END   /usr/include/fcntl.h */
]]
