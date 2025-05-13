local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/stat.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/stat.h */
/* ++ BEGIN <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
]] require 'ffi.req' 'c.sys._types' ffi.cdef[[
/* ++ END <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++ BEGIN <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* ++ END <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* ++ BEGIN <sys/_types/_timespec.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h */
]] require 'ffi.req' 'c.sys._types._timespec' ffi.cdef[[
/* ++ END <sys/_types/_timespec.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h */
/* ++ BEGIN <sys/_types/_blkcnt_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blkcnt_t.h */
]] require 'ffi.req' 'c.sys._types._blkcnt_t' ffi.cdef[[
/* ++ END <sys/_types/_blkcnt_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blkcnt_t.h */
/* ++ BEGIN <sys/_types/_blksize_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blksize_t.h */
]] require 'ffi.req' 'c.sys._types._blksize_t' ffi.cdef[[
/* ++ END <sys/_types/_blksize_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blksize_t.h */
/* ++ BEGIN <sys/_types/_dev_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h */
]] require 'ffi.req' 'c.sys._types._dev_t' ffi.cdef[[
/* ++ END <sys/_types/_dev_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h */
/* ++ BEGIN <sys/_types/_ino_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ino_t.h */
]] require 'ffi.req' 'c.sys._types._ino_t' ffi.cdef[[
/* ++ END <sys/_types/_ino_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ino_t.h */
/* ++ BEGIN <sys/_types/_ino64_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ino64_t.h */
]] require 'ffi.req' 'c.sys._types._ino64_t' ffi.cdef[[
/* ++ END <sys/_types/_ino64_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ino64_t.h */
/* ++ BEGIN <sys/_types/_mode_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
]] require 'ffi.req' 'c.sys._types._mode_t' ffi.cdef[[
/* ++ END <sys/_types/_mode_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
/* ++ BEGIN <sys/_types/_nlink_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_nlink_t.h */
]] require 'ffi.req' 'c.sys._types._nlink_t' ffi.cdef[[
/* ++ END <sys/_types/_nlink_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_nlink_t.h */
/* ++ BEGIN <sys/_types/_uid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h */
]] require 'ffi.req' 'c.sys._types._uid_t' ffi.cdef[[
/* ++ END <sys/_types/_uid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h */
/* ++ BEGIN <sys/_types/_gid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h */
]] require 'ffi.req' 'c.sys._types._gid_t' ffi.cdef[[
/* ++ END <sys/_types/_gid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h */
/* ++ BEGIN <sys/_types/_off_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h */
]] require 'ffi.req' 'c.sys._types._off_t' ffi.cdef[[
/* ++ END <sys/_types/_off_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h */
/* ++ BEGIN <sys/_types/_time_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h */
]] require 'ffi.req' 'c.sys._types._time_t' ffi.cdef[[
/* ++ END <sys/_types/_time_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h */
struct ostat {
 __uint16_t st_dev;
 ino_t st_ino;
 mode_t st_mode;
 nlink_t st_nlink;
 __uint16_t st_uid;
 __uint16_t st_gid;
 __uint16_t st_rdev;
 __int32_t st_size;
 struct timespec st_atimespec;
 struct timespec st_mtimespec;
 struct timespec st_ctimespec;
 __int32_t st_blksize;
 __int32_t st_blocks;
 __uint32_t st_flags;
 __uint32_t st_gen;
};
struct stat { dev_t st_dev; mode_t st_mode; nlink_t st_nlink; __darwin_ino64_t st_ino; uid_t st_uid; gid_t st_gid; dev_t st_rdev; struct timespec st_atimespec; struct timespec st_mtimespec; struct timespec st_ctimespec; struct timespec st_birthtimespec; off_t st_size; blkcnt_t st_blocks; blksize_t st_blksize; __uint32_t st_flags; __uint32_t st_gen; __int32_t st_lspare; __int64_t st_qspare[2]; };
struct stat64 { dev_t st_dev; mode_t st_mode; nlink_t st_nlink; __darwin_ino64_t st_ino; uid_t st_uid; gid_t st_gid; dev_t st_rdev; struct timespec st_atimespec; struct timespec st_mtimespec; struct timespec st_ctimespec; struct timespec st_birthtimespec; off_t st_size; blkcnt_t st_blocks; blksize_t st_blksize; __uint32_t st_flags; __uint32_t st_gen; __int32_t st_lspare; __int64_t st_qspare[2]; };
/* ++ BEGIN <sys/_types/_s_ifmt.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_s_ifmt.h */
/* ++ END <sys/_types/_s_ifmt.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_s_ifmt.h */
int chmod(const char *, mode_t) __asm("_" "chmod" );
int fchmod(int, mode_t) __asm("_" "fchmod" );
int fstat(int, struct stat *) __asm("_" "fstat" "$INODE64");
int lstat(const char *, struct stat *) __asm("_" "lstat" "$INODE64");
int mkdir(const char *, mode_t);
int mkfifo(const char *, mode_t);
int stat(const char *, struct stat *) __asm("_" "stat" "$INODE64");
int mknod(const char *, mode_t, dev_t);
mode_t umask(mode_t);
int fchmodat(int, const char *, mode_t, int) __attribute__((availability(macosx,introduced=10.10)));
int fstatat(int, const char *, struct stat *, int) __asm("_" "fstatat" "$INODE64") __attribute__((availability(macosx,introduced=10.10)));
int mkdirat(int, const char *, mode_t) __attribute__((availability(macosx,introduced=10.10)));
int mkfifoat(int, const char *, mode_t) __attribute__((availability(macos,introduced=13.0))) __attribute__((availability(ios,introduced=16.0))) __attribute__((availability(tvos,introduced=16.0))) __attribute__((availability(watchos,introduced=9.0)));
int mknodat(int, const char *, mode_t, dev_t) __attribute__((availability(macos,introduced=13.0))) __attribute__((availability(ios,introduced=16.0))) __attribute__((availability(tvos,introduced=16.0))) __attribute__((availability(watchos,introduced=9.0)));
int futimens(int __fd, const struct timespec __times[2]) __attribute__((availability(macos,introduced=10.13))) __attribute__((availability(ios,introduced=11.0))) __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
int utimensat(int __fd, const char *__path, const struct timespec __times[2],
    int __flag) __attribute__((availability(macos,introduced=10.13))) __attribute__((availability(ios,introduced=11.0))) __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
/* ++ BEGIN <sys/_types/_filesec_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_filesec_t.h */
]] require 'ffi.req' 'c.sys._types._filesec_t' ffi.cdef[[
/* ++ END <sys/_types/_filesec_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_filesec_t.h */
int chflags(const char *, __uint32_t);
int chmodx_np(const char *, filesec_t);
int fchflags(int, __uint32_t);
int fchmodx_np(int, filesec_t);
int fstatx_np(int, struct stat *, filesec_t) __asm("_" "fstatx_np" "$INODE64");
int lchflags(const char *, __uint32_t) __attribute__((availability(macosx,introduced=10.5)));
int lchmod(const char *, mode_t) __attribute__((availability(macosx,introduced=10.5)));
int lstatx_np(const char *, struct stat *, filesec_t) __asm("_" "lstatx_np" "$INODE64");
int mkdirx_np(const char *, filesec_t);
int mkfifox_np(const char *, filesec_t);
int statx_np(const char *, struct stat *, filesec_t) __asm("_" "statx_np" "$INODE64");
int umaskx_np(filesec_t) __attribute__((availability(macosx,introduced=10.4,deprecated=10.6)));
int fstatx64_np(int, struct stat64 *, filesec_t) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6)));
int lstatx64_np(const char *, struct stat64 *, filesec_t) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6)));
int statx64_np(const char *, struct stat64 *, filesec_t) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6)));
int fstat64(int, struct stat64 *) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6)));
int lstat64(const char *, struct stat64 *) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6)));
int stat64(const char *, struct stat64 *) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6)));
/* #define __DARWIN_STRUCT_STAT64_TIMES struct timespec st_atimespec; struct timespec st_mtimespec; struct timespec st_ctimespec; struct timespec st_birthtimespec; ### define is not number */
/* #define __DARWIN_STRUCT_STAT64 { dev_t st_dev; mode_t st_mode; nlink_t st_nlink; __darwin_ino64_t st_ino; uid_t st_uid; gid_t st_gid; dev_t st_rdev; __DARWIN_STRUCT_STAT64_TIMES off_t st_size; blkcnt_t st_blocks; blksize_t st_blksize; __uint32_t st_flags; __uint32_t st_gen; __int32_t st_lspare; __int64_t st_qspare[2]; } ### define is not number */
/* #define st_atime st_atimespec.tv_sec ### define is not number */
/* #define st_mtime st_mtimespec.tv_sec ### define is not number */
/* #define st_ctime st_ctimespec.tv_sec ### define is not number */
/* #define st_birthtime st_birthtimespec.tv_sec ### define is not number */
enum { S_IFMT = 0170000 };
enum { S_IFIFO = 0010000 };
enum { S_IFCHR = 0020000 };
enum { S_IFDIR = 0040000 };
enum { S_IFBLK = 0060000 };
enum { S_IFREG = 0100000 };
enum { S_IFLNK = 0120000 };
enum { S_IFSOCK = 0140000 };
enum { S_IFWHT = 0160000 };
enum { S_IRWXU = 0000700 };
enum { S_IRUSR = 0000400 };
enum { S_IWUSR = 0000200 };
enum { S_IXUSR = 0000100 };
enum { S_IRWXG = 0000070 };
enum { S_IRGRP = 0000040 };
enum { S_IWGRP = 0000020 };
enum { S_IXGRP = 0000010 };
enum { S_IRWXO = 0000007 };
enum { S_IROTH = 0000004 };
enum { S_IWOTH = 0000002 };
enum { S_IXOTH = 0000001 };
enum { S_ISUID = 0004000 };
enum { S_ISGID = 0002000 };
enum { S_ISVTX = 0001000 };
enum { S_ISTXT = 0001000 };
enum { S_IREAD = 0000400 };
enum { S_IWRITE = 0000200 };
enum { S_IEXEC = 0000100 };
/* #define S_ISBLK (m) (((m) & S_IFMT) == S_IFBLK) ### define is not number */
/* #define S_ISCHR (m) (((m) & S_IFMT) == S_IFCHR) ### define is not number */
/* #define S_ISDIR (m) (((m) & S_IFMT) == S_IFDIR) ### define is not number */
/* #define S_ISFIFO (m) (((m) & S_IFMT) == S_IFIFO) ### define is not number */
/* #define S_ISREG (m) (((m) & S_IFMT) == S_IFREG) ### define is not number */
/* #define S_ISLNK (m) (((m) & S_IFMT) == S_IFLNK) ### define is not number */
/* #define S_ISSOCK (m) (((m) & S_IFMT) == S_IFSOCK) ### define is not number */
/* #define S_ISWHT (m) (((m) & S_IFMT) == S_IFWHT) ### define is not number */
/* #define S_TYPEISMQ (buf) (0) ### define is not number */
/* #define S_TYPEISSEM (buf) (0) ### define is not number */
/* #define S_TYPEISSHM (buf) (0) ### define is not number */
/* #define S_TYPEISTMO (buf) (0) ### define is not number */
/* #define ACCESSPERMS (S_IRWXU|S_IRWXG|S_IRWXO) ### define is not number */
/* #define ALLPERMS (S_ISUID|S_ISGID|S_ISTXT|S_IRWXU|S_IRWXG|S_IRWXO) ### define is not number */
/* #define DEFFILEMODE (S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH) ### define is not number */
enum { S_BLKSIZE = 512 };
enum { UF_SETTABLE = 0x0000ffff };
enum { UF_NODUMP = 0x00000001 };
enum { UF_IMMUTABLE = 0x00000002 };
enum { UF_APPEND = 0x00000004 };
enum { UF_OPAQUE = 0x00000008 };
enum { UF_COMPRESSED = 0x00000020 };
enum { UF_TRACKED = 0x00000040 };
enum { UF_DATAVAULT = 0x00000080 };
enum { UF_HIDDEN = 0x00008000 };
enum { SF_SUPPORTED = 0x009f0000 };
enum { SF_SETTABLE = 0x3fff0000 };
enum { SF_SYNTHETIC = 0xc0000000 };
enum { SF_ARCHIVED = 0x00010000 };
enum { SF_IMMUTABLE = 0x00020000 };
enum { SF_APPEND = 0x00040000 };
enum { SF_RESTRICTED = 0x00080000 };
enum { SF_NOUNLINK = 0x00100000 };
enum { SF_FIRMLINK = 0x00800000 };
enum { SF_DATALESS = 0x40000000 };
enum { EF_MAY_SHARE_BLOCKS = 0x00000001 };
enum { EF_NO_XATTRS = 0x00000002 };
enum { EF_IS_SYNC_ROOT = 0x00000004 };
enum { EF_IS_PURGEABLE = 0x00000008 };
enum { EF_IS_SPARSE = 0x00000010 };
enum { EF_IS_SYNTHETIC = 0x00000020 };
enum { EF_SHARES_ALL_BLOCKS = 0x00000040 };
enum { UTIME_NOW = -1 };
enum { UTIME_OMIT = -2 };
/* + END <sys/stat.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/stat.h */
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
