local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/stat.h> /boot/system/develop/headers/posix/sys/stat.h */
/* ++ BEGIN <sys/types.h> ./Haiku/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> ./Haiku/sys/types.h */
/* ++ BEGIN <time.h> ./Haiku/time.h */
]] require 'ffi.req' 'c.time' ffi.cdef[[
/* ++ END <time.h> ./Haiku/time.h */
struct stat {
 dev_t st_dev;
 ino_t st_ino;
 mode_t st_mode;
 nlink_t st_nlink;
 uid_t st_uid;
 gid_t st_gid;
 off_t st_size;
 dev_t st_rdev;
 blksize_t st_blksize;
 struct timespec st_atim;
 struct timespec st_mtim;
 struct timespec st_ctim;
 struct timespec st_crtim;
 __haiku_uint32 st_type;
 blkcnt_t st_blocks;
};
extern int chmod(const char *path, mode_t mode);
extern int fchmod(int fd, mode_t mode);
extern int fchmodat(int fd, const char *path, mode_t mode, int flag);
extern int stat(const char *path, struct stat *st);
extern int fstat(int fd, struct stat *st);
extern int lstat(const char *path, struct stat *st);
extern int fstatat(int fd, const char *path, struct stat *st, int flag);
extern int mkdir(const char *path, mode_t mode);
extern int mkdirat(int fd, const char *path, mode_t mode);
extern int mkfifo(const char *path, mode_t mode);
extern int mkfifoat(int fd, const char *path, mode_t mode);
extern int mknod(const char *name, mode_t mode, dev_t dev);
extern int mknodat(int fd, const char *name, mode_t mode, dev_t dev);
extern mode_t umask(mode_t cmask);
extern int utimensat(int fd, const char *path,
     const struct timespec times[2], int flag);
extern int futimens(int fd, const struct timespec times[2]);
enum { _SYS_STAT_H_ = 1 };
/* #define st_atime st_atim.tv_sec ### define is not number */
/* #define st_mtime st_mtim.tv_sec ### define is not number */
/* #define st_ctime st_ctim.tv_sec ### define is not number */
/* #define st_crtime st_crtim.tv_sec ### define is not number */
enum { S_ATTR_DIR = 01000000000 };
enum { S_ATTR = 02000000000 };
enum { S_INDEX_DIR = 04000000000 };
enum { S_STR_INDEX = 00100000000 };
enum { S_INT_INDEX = 00200000000 };
enum { S_UINT_INDEX = 00400000000 };
enum { S_LONG_LONG_INDEX = 00010000000 };
enum { S_ULONG_LONG_INDEX = 00020000000 };
enum { S_FLOAT_INDEX = 00040000000 };
enum { S_DOUBLE_INDEX = 00001000000 };
enum { S_ALLOW_DUPS = 00002000000 };
enum { S_LINK_SELF_HEALING = 00001000000 };
enum { S_LINK_AUTO_DELETE = 00002000000 };
enum { S_IFMT = 00000170000 };
enum { S_IFSOCK = 00000140000 };
enum { S_IFLNK = 00000120000 };
enum { S_IFREG = 00000100000 };
enum { S_IFBLK = 00000060000 };
enum { S_IFDIR = 00000040000 };
enum { S_IFCHR = 00000020000 };
enum { S_IFIFO = 00000010000 };
/* #define S_ISREG (mode) (((mode) & S_IFMT) == S_IFREG) ### define is not number */
/* #define S_ISLNK (mode) (((mode) & S_IFMT) == S_IFLNK) ### define is not number */
/* #define S_ISBLK (mode) (((mode) & S_IFMT) == S_IFBLK) ### define is not number */
/* #define S_ISDIR (mode) (((mode) & S_IFMT) == S_IFDIR) ### define is not number */
/* #define S_ISCHR (mode) (((mode) & S_IFMT) == S_IFCHR) ### define is not number */
/* #define S_ISFIFO (mode) (((mode) & S_IFMT) == S_IFIFO) ### define is not number */
/* #define S_ISSOCK (mode) (((mode) & S_IFMT) == S_IFSOCK) ### define is not number */
/* #define S_ISINDEX (mode) (((mode) & S_INDEX_DIR) == S_INDEX_DIR) ### define is not number */
enum { S_IUMSK = 07777 };
enum { S_ISUID = 04000 };
enum { S_ISGID = 02000 };
enum { S_ISVTX = 01000 };
enum { S_IRWXU = 00700 };
enum { S_IRUSR = 00400 };
enum { S_IWUSR = 00200 };
enum { S_IXUSR = 00100 };
enum { S_IRWXG = 00070 };
enum { S_IRGRP = 00040 };
enum { S_IWGRP = 00020 };
enum { S_IXGRP = 00010 };
enum { S_IRWXO = 00007 };
enum { S_IROTH = 00004 };
enum { S_IWOTH = 00002 };
enum { S_IXOTH = 00001 };
enum { S_IREAD = 00400 };
enum { S_IWRITE = 00200 };
enum { S_IEXEC = 00100 };
/* #define ACCESSPERMS (S_IRWXU | S_IRWXG | S_IRWXO) ### define is not number */
/* #define ALLPERMS (S_ISUID | S_ISGID | S_ISVTX | S_IRWXU | S_IRWXG | S_IRWXO) ### define is not number */
/* #define DEFFILEMODE (S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH) ### define is not number */
enum { UTIME_NOW = 1000000000 };
enum { UTIME_OMIT = 1000000001 };
/* + END <sys/stat.h> /boot/system/develop/headers/posix/sys/stat.h */
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
