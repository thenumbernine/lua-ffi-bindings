local ffi = require 'ffi'
ffi.cdef[[
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
]]
