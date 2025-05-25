local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* + END <features.h> /usr/include/features.h */
/* + BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* + END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
/* + BEGIN <bits/types/struct_timespec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]] require 'ffi.req' 'c.bits.types.struct_timespec' ffi.cdef[[
/* + END <bits/types/struct_timespec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
/* + BEGIN <bits/stat.h> /usr/include/x86_64-linux-gnu/bits/stat.h */
/* ++ BEGIN <bits/struct_stat.h> /usr/include/x86_64-linux-gnu/bits/struct_stat.h */
struct stat
  {
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
    __syscall_slong_t __glibc_reserved[3];
  };
/* ++ END <bits/struct_stat.h> /usr/include/x86_64-linux-gnu/bits/struct_stat.h */
/* #define st_atime st_atim.tv_sec ### define is not number */
/* #define st_mtime st_mtim.tv_sec ### define is not number */
/* #define st_ctime st_ctim.tv_sec ### define is not number */
enum { _STATBUF_ST_BLKSIZE = 1 };
enum { _STATBUF_ST_RDEV = 1 };
enum { _STATBUF_ST_NSEC = 1 };
enum { __S_IFMT = 0170000 };
enum { __S_IFDIR = 0040000 };
enum { __S_IFCHR = 0020000 };
enum { __S_IFBLK = 0060000 };
enum { __S_IFREG = 0100000 };
enum { __S_IFIFO = 0010000 };
enum { __S_IFLNK = 0120000 };
enum { __S_IFSOCK = 0140000 };
/* #define __S_TYPEISMQ (buf) ((buf)->st_mode - (buf)->st_mode) ### define is not number */
/* #define __S_TYPEISSEM (buf) ((buf)->st_mode - (buf)->st_mode) ### define is not number */
/* #define __S_TYPEISSHM (buf) ((buf)->st_mode - (buf)->st_mode) ### define is not number */
enum { __S_ISUID = 04000 };
enum { __S_ISGID = 02000 };
enum { __S_ISVTX = 01000 };
enum { __S_IREAD = 0400 };
enum { __S_IWRITE = 0200 };
enum { __S_IEXEC = 0100 };
/* #define UTIME_NOW ((1l << 30) - 1l) ### define is not number */
/* #define UTIME_OMIT ((1l << 30) - 2l) ### define is not number */
/* + END <bits/stat.h> /usr/include/x86_64-linux-gnu/bits/stat.h */
]]
