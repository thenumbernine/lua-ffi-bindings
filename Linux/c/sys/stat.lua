local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/sys/stat.h */
/* ++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END   /usr/include/features.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]] require 'ffi.req' 'c.bits.types.struct_timespec' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
]] require 'ffi.req' 'c.bits.types.time_t' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
]] require 'ffi.req' 'c.bits.types.dev_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.gid_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.ino_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.mode_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.nlink_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.off_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.uid_t' ffi.cdef[[
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/stat.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/struct_stat.h */
struct stat {
	__dev_t st_dev;
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
/* +++ END   /usr/include/x86_64-linux-gnu/bits/struct_stat.h */
enum { UTIME_NOW = 1073741823 };
enum { UTIME_OMIT = 1073741822 };
/* ++ END   /usr/include/x86_64-linux-gnu/bits/stat.h */
enum { S_IFMT = 61440 };
enum { S_IFDIR = 16384 };
enum { S_IFCHR = 8192 };
enum { S_IFBLK = 24576 };
enum { S_IFREG = 32768 };
enum { S_IFIFO = 4096 };
enum { S_IFLNK = 40960 };
enum { S_IFSOCK = 49152 };
enum { S_ISUID = 2048 };
enum { S_ISGID = 1024 };
enum { S_ISVTX = 512 };
enum { S_IRUSR = 256 };
enum { S_IWUSR = 128 };
enum { S_IXUSR = 64 };
enum { S_IRWXU = 448 };
enum { S_IREAD = 256 };
enum { S_IWRITE = 128 };
enum { S_IEXEC = 64 };
enum { S_IRGRP = 32 };
enum { S_IWGRP = 16 };
enum { S_IXGRP = 8 };
enum { S_IRWXG = 56 };
enum { S_IROTH = 4 };
enum { S_IWOTH = 2 };
enum { S_IXOTH = 1 };
enum { S_IRWXO = 7 };
enum { ACCESSPERMS = 511 };
enum { ALLPERMS = 4032 };
enum { DEFFILEMODE = 438 };
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
/* + END   /usr/include/x86_64-linux-gnu/sys/stat.h */
]]
local lib = ffi.C
local statlib = setmetatable({
	struct_stat = 'struct stat',
}, {
	__index = lib,
})
-- allow nils instead of errors if we access fields not present (for the sake of lfs_ffi)
ffi.metatype(statlib.struct_stat, {
	__index = function(t,k)
		return nil
	end,
})
return statlib
