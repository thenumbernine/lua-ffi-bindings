local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <fcntl.h> /boot/system/develop/headers/posix/fcntl.h */
/* ++ BEGIN <sys/types.h> ./Haiku/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> ./Haiku/sys/types.h */
/* ++ BEGIN <sys/stat.h> /boot/system/develop/headers/posix/sys/stat.h */
]] require 'ffi.req' 'c.sys.stat' ffi.cdef[[
/* ++ END <sys/stat.h> /boot/system/develop/headers/posix/sys/stat.h */
/* ++ BEGIN <unistd.h> /boot/system/develop/headers/bsd/unistd.h */
]] require 'ffi.req' 'c.unistd' ffi.cdef[[
/* ++ END <unistd.h> /boot/system/develop/headers/bsd/unistd.h */
struct flock {
 short l_type;
 short l_whence;
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
};
extern int creat(const char *path, mode_t mode);
extern int open(const char *path, int openMode, ...);
extern int openat(int fd, const char *path, int openMode, ...);
extern int fcntl(int fd, int op, ...);
extern int posix_fadvise(int fd, off_t offset, off_t len, int advice);
extern int posix_fallocate(int fd, off_t offset, off_t len);
enum { _FCNTL_H = 1 };
enum { F_DUPFD = 0x0001 };
enum { F_GETFD = 0x0002 };
enum { F_SETFD = 0x0004 };
enum { F_GETFL = 0x0008 };
enum { F_SETFL = 0x0010 };
enum { F_GETLK = 0x0020 };
enum { F_SETLK = 0x0080 };
enum { F_SETLKW = 0x0100 };
enum { F_DUPFD_CLOEXEC = 0x0200 };
enum { F_DUPFD_CLOFORK = 0x0400 };
enum { F_RDLCK = 0x0040 };
enum { F_UNLCK = 0x0200 };
enum { F_WRLCK = 0x0400 };
enum { FD_CLOEXEC = 1 };
enum { FD_CLOFORK = 2 };
enum { O_RDONLY = 0x0000 };
enum { O_WRONLY = 0x0001 };
enum { O_RDWR = 0x0002 };
enum { O_ACCMODE = 0x0003 };
enum { O_RWMASK = 0x0003 };
enum { O_EXCL = 0x0100 };
enum { O_CREAT = 0x0200 };
enum { O_TRUNC = 0x0400 };
enum { O_NOCTTY = 0x1000 };
enum { O_NOTRAVERSE = 0x2000 };
enum { O_CLOEXEC = 0x00000040 };
enum { O_NONBLOCK = 0x00000080 };
enum { O_NDELAY = 0x00000080 };
enum { O_APPEND = 0x00000800 };
enum { O_SYNC = 0x00010000 };
enum { O_RSYNC = 0x00020000 };
enum { O_DSYNC = 0x00040000 };
enum { O_NOFOLLOW = 0x00080000 };
enum { O_DIRECT = 0x00100000 };
enum { O_NOCACHE = 0x00100000 };
enum { O_DIRECTORY = 0x00200000 };
enum { O_CLOFORK = 0x00400000 };
/* #define AT_FDCWD (-100) ### define is not number */
enum { AT_SYMLINK_NOFOLLOW = 0x01 };
enum { AT_SYMLINK_FOLLOW = 0x02 };
enum { AT_REMOVEDIR = 0x04 };
enum { AT_EACCESS = 0x08 };
enum { POSIX_FADV_NORMAL = 0 };
enum { POSIX_FADV_SEQUENTIAL = 1 };
enum { POSIX_FADV_RANDOM = 2 };
enum { POSIX_FADV_WILLNEED = 3 };
enum { POSIX_FADV_DONTNEED = 4 };
enum { POSIX_FADV_NOREUSE = 5 };
/* + END <fcntl.h> /boot/system/develop/headers/posix/fcntl.h */
]]
