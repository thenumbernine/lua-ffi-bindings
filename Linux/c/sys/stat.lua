local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/stat.h> /usr/include/x86_64-linux-gnu/sys/stat.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN <bits/types/struct_timespec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]] require 'ffi.req' 'c.bits.types.struct_timespec' ffi.cdef[[
/* ++ END <bits/types/struct_timespec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __ino_t ino_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __off_t off_t;
typedef __uid_t uid_t;
/* ++ BEGIN <bits/stat.h> /usr/include/x86_64-linux-gnu/bits/stat.h */
]] require 'ffi.req' 'c.bits.stat' ffi.cdef[[
/* ++ END <bits/stat.h> /usr/include/x86_64-linux-gnu/bits/stat.h */
extern int stat (const char *__restrict __file,
   struct stat *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int fstat (int __fd, struct stat *__buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int fstatat (int __fd, const char *__restrict __file,
      struct stat *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern int lstat (const char *__restrict __file,
    struct stat *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int chmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int lchmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int fchmod (int __fd, __mode_t __mode) __attribute__ ((__nothrow__ , __leaf__));
extern int fchmodat (int __fd, const char *__file, __mode_t __mode,
       int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;
extern __mode_t umask (__mode_t __mask) __attribute__ ((__nothrow__ , __leaf__));
extern int mkdir (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int mkdirat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int mknod (const char *__path, __mode_t __mode, __dev_t __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int mknodat (int __fd, const char *__path, __mode_t __mode,
      __dev_t __dev) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int mkfifo (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int mkfifoat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int utimensat (int __fd, const char *__path,
        const struct timespec __times[2],
        int __flags)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int futimens (int __fd, const struct timespec __times[2]) __attribute__ ((__nothrow__ , __leaf__));
enum { S_IFMT = 0170000 };
enum { S_IFDIR = 0040000 };
enum { S_IFCHR = 0020000 };
enum { S_IFBLK = 0060000 };
enum { S_IFREG = 0100000 };
enum { S_IFIFO = 0010000 };
enum { S_IFLNK = 0120000 };
enum { S_IFSOCK = 0140000 };
/* #define __S_ISTYPE (mode,mask) (((mode) & __S_IFMT) == (mask)) ### define is not number */
/* #define S_ISDIR (mode) __S_ISTYPE((mode), __S_IFDIR) ### define is not number */
/* #define S_ISCHR (mode) __S_ISTYPE((mode), __S_IFCHR) ### define is not number */
/* #define S_ISBLK (mode) __S_ISTYPE((mode), __S_IFBLK) ### define is not number */
/* #define S_ISREG (mode) __S_ISTYPE((mode), __S_IFREG) ### define is not number */
/* #define S_ISFIFO (mode) __S_ISTYPE((mode), __S_IFIFO) ### define is not number */
/* #define S_ISLNK (mode) __S_ISTYPE((mode), __S_IFLNK) ### define is not number */
/* #define S_ISSOCK (mode) __S_ISTYPE((mode), __S_IFSOCK) ### define is not number */
/* #define S_TYPEISMQ (buf) __S_TYPEISMQ(buf) ### define is not number */
/* #define S_TYPEISSEM (buf) __S_TYPEISSEM(buf) ### define is not number */
/* #define S_TYPEISSHM (buf) __S_TYPEISSHM(buf) ### define is not number */
enum { S_ISUID = 04000 };
enum { S_ISGID = 02000 };
enum { S_ISVTX = 01000 };
enum { S_IRUSR = 0400 };
enum { S_IWUSR = 0200 };
enum { S_IXUSR = 0100 };
/* #define S_IRWXU (__S_IREAD|__S_IWRITE|__S_IEXEC) ### define is not number */
enum { S_IREAD = 0400 };
enum { S_IWRITE = 0200 };
enum { S_IEXEC = 0100 };
/* #define S_IRGRP (S_IRUSR >> 3) ### define is not number */
/* #define S_IWGRP (S_IWUSR >> 3) ### define is not number */
/* #define S_IXGRP (S_IXUSR >> 3) ### define is not number */
/* #define S_IRWXG (S_IRWXU >> 3) ### define is not number */
/* #define S_IROTH (S_IRGRP >> 3) ### define is not number */
/* #define S_IWOTH (S_IWGRP >> 3) ### define is not number */
/* #define S_IXOTH (S_IXGRP >> 3) ### define is not number */
/* #define S_IRWXO (S_IRWXG >> 3) ### define is not number */
/* #define ACCESSPERMS (S_IRWXU|S_IRWXG|S_IRWXO) ### define is not number */
/* #define ALLPERMS (S_ISUID|S_ISGID|S_ISVTX|S_IRWXU|S_IRWXG|S_IRWXO) ### define is not number */
/* #define DEFFILEMODE (S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH) ### define is not number */
enum { S_BLKSIZE = 512 };
/* + END <sys/stat.h> /usr/include/x86_64-linux-gnu/sys/stat.h */
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
