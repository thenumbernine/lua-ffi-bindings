local ffi = require 'ffi'
require 'ffi.req' 'c.linux.time'
require 'ffi.req' 'c.sys.types'
ffi.cdef[[
/* + BEGIN <sys/stat.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/stat.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <bits/timespec.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/timespec.h */
/* ++ END <bits/timespec.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/timespec.h */
/* ++ BEGIN <linux/stat.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/stat.h */
/* ++ END <linux/stat.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/stat.h */
struct stat { unsigned long long st_dev; unsigned char __pad0[4]; unsigned long __st_ino; unsigned int st_mode; nlink_t st_nlink; uid_t st_uid; gid_t st_gid; unsigned long long st_rdev; unsigned char __pad3[4]; long long st_size; unsigned long st_blksize; unsigned long long st_blocks; struct timespec st_atim; struct timespec st_mtim; struct timespec st_ctim; unsigned long long st_ino; };
struct stat64 { unsigned long long st_dev; unsigned char __pad0[4]; unsigned long __st_ino; unsigned int st_mode; nlink_t st_nlink; uid_t st_uid; gid_t st_gid; unsigned long long st_rdev; unsigned char __pad3[4]; long long st_size; unsigned long st_blksize; unsigned long long st_blocks; struct timespec st_atim; struct timespec st_mtim; struct timespec st_ctim; unsigned long long st_ino; };
int chmod(const char*  __path, mode_t __mode);
int fchmod(int __fd, mode_t __mode);
int fchmodat(int __dir_fd, const char*  __path, mode_t __mode, int __flags);
int mkdir(const char*  __path, mode_t __mode);
int mkdirat(int __dir_fd, const char*  __path, mode_t __mode);
int fstat(int __fd, struct stat*  __buf);
int fstat64(int __fd, struct stat64*  __buf);
int fstatat(int __dir_fd, const char*  __path, struct stat*  __buf, int __flags);
int fstatat64(int __dir_fd, const char*  __path, struct stat64*  __buf, int __flags);
int lstat(const char*  __path, struct stat*  __buf);
int lstat64(const char*  __path, struct stat64*  __buf);
int stat(const char*  __path, struct stat*  __buf);
int stat64(const char*  __path, struct stat64*  __buf);
int mknod(const char*  __path, mode_t __mode, dev_t __dev);
int mknodat(int __dir_fd, const char*  __path, mode_t __mode, dev_t __dev);
mode_t umask(mode_t __mask);
int mkfifo(const char*  __path, mode_t __mode);
int mkfifoat(int __dir_fd, const char*  __path, mode_t __mode) __attribute__((__availability__(android,strict,introduced=23 )));
int utimensat(int __dir_fd, const char*  __path, const struct timespec __times[ 2], int __flags);
int futimens(int __fd, const struct timespec __times[ 2]);
/* #define st_atime st_atim.tv_sec ### define is not number */
/* #define st_mtime st_mtim.tv_sec ### define is not number */
/* #define st_ctime st_ctim.tv_sec ### define is not number */
/* #define st_atimensec st_atim.tv_nsec ### define is not number */
/* #define st_mtimensec st_mtim.tv_nsec ### define is not number */
/* #define st_ctimensec st_ctim.tv_nsec ### define is not number */
/* #define st_atime_nsec st_atim.tv_nsec ### define is not number */
/* #define st_mtime_nsec st_mtim.tv_nsec ### define is not number */
/* #define st_ctime_nsec st_ctim.tv_nsec ### define is not number */
/* #define S_TYPEISMQ (__sb) 0 ### define is not number */
/* #define S_TYPEISSEM (__sb) 0 ### define is not number */
/* #define S_TYPEISSHM (__sb) 0 ### define is not number */
/* #define S_TYPEISTMO (__sb) 0 ### define is not number */
/* #define UTIME_NOW ((1L << 30) - 1L) ### define is not number */
/* #define UTIME_OMIT ((1L << 30) - 2L) ### define is not number */
/* + END <sys/stat.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/stat.h */
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
