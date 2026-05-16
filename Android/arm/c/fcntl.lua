local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <fcntl.h> /data/data/com.termux/files/usr/bin/../../usr/include/fcntl.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
/* ++ BEGIN <linux/fadvise.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/fadvise.h */
/* ++ END <linux/fadvise.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/fadvise.h */
/* ++ BEGIN <linux/falloc.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/falloc.h */
/* ++ END <linux/falloc.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/falloc.h */
/* ++ BEGIN <linux/fcntl.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/fcntl.h */
/* +++ BEGIN <asm/fcntl.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/fcntl.h */
/* +++ END <asm/fcntl.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/fcntl.h */
/* +++ BEGIN <linux/openat2.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/openat2.h */
struct open_how {
  __u64 flags;
  __u64 mode;
  __u64 resolve;
};
/* +++ END <linux/openat2.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/openat2.h */
/* ++ END <linux/fcntl.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/fcntl.h */
/* ++ BEGIN <linux/stat.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/stat.h */
struct statx_timestamp {
  __s64 tv_sec;
  __u32 tv_nsec;
  __s32 __reserved;
};
struct statx {
  __u32 stx_mask;
  __u32 stx_blksize;
  __u64 stx_attributes;
  __u32 stx_nlink;
  __u32 stx_uid;
  __u32 stx_gid;
  __u16 stx_mode;
  __u16 __spare0[1];
  __u64 stx_ino;
  __u64 stx_size;
  __u64 stx_blocks;
  __u64 stx_attributes_mask;
  struct statx_timestamp stx_atime;
  struct statx_timestamp stx_btime;
  struct statx_timestamp stx_ctime;
  struct statx_timestamp stx_mtime;
  __u32 stx_rdev_major;
  __u32 stx_rdev_minor;
  __u32 stx_dev_major;
  __u32 stx_dev_minor;
  __u64 stx_mnt_id;
  __u32 stx_dio_mem_align;
  __u32 stx_dio_offset_align;
  __u64 stx_subvol;
  __u32 stx_atomic_write_unit_min;
  __u32 stx_atomic_write_unit_max;
  __u32 stx_atomic_write_segments_max;
  __u32 __spare1[1];
  __u64 __spare3[9];
};
/* ++ END <linux/stat.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/stat.h */
/* ++ BEGIN <linux/uio.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/uio.h */
struct iovec {
  void * iov_base;
  __kernel_size_t iov_len;
};
struct dmabuf_cmsg {
  __u64 frag_offset;
  __u32 frag_size;
  __u32 frag_token;
  __u32 dmabuf_id;
  __u32 flags;
};
struct dmabuf_token {
  __u32 token_start;
  __u32 token_count;
};
/* ++ END <linux/uio.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/uio.h */
/* ++ BEGIN <bits/fcntl.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/fcntl.h */
int fcntl(int __fd, int __op, ...);
/* ++ END <bits/fcntl.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/fcntl.h */
/* ++ BEGIN <bits/seek_constants.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/seek_constants.h */
/* ++ END <bits/seek_constants.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/seek_constants.h */
int creat(const char*  __path, mode_t __mode);
int creat64(const char*  __path, mode_t __mode);
int openat(int __dir_fd, const char*  __path, int __flags, ...);
int openat64(int __dir_fd, const char*  __path, int __flags, ...);
int open(const char*  __path, int __flags, ...);
int open64(const char*  __path, int __flags, ...);
ssize_t splice(int __in_fd, off64_t*  __in_offset, int __out_fd, off64_t*  __out_offset, size_t __length, unsigned int __flags);
ssize_t tee(int __in_fd, int __out_fd, size_t __length, unsigned int __flags);
ssize_t vmsplice(int __fd, const struct iovec*  __iov, size_t __count, unsigned int __flags);
int fallocate(int __fd, int __mode, off_t __offset, off_t __length) ;
int fallocate64(int __fd, int __mode, off64_t __offset, off64_t __length);
int posix_fadvise(int __fd, off_t __offset, off_t __length, int __advice) ;
int posix_fadvise64(int __fd, off64_t __offset, off64_t __length, int __advice);
int posix_fallocate(int __fd, off_t __offset, off_t __length) ;
int posix_fallocate64(int __fd, off64_t __offset, off64_t __length);
enum { _FCNTL_H = 1 };
enum { FADVISE_H_INCLUDED = 1 };
enum { POSIX_FADV_NORMAL = 0 };
enum { POSIX_FADV_RANDOM = 1 };
enum { POSIX_FADV_SEQUENTIAL = 2 };
enum { POSIX_FADV_WILLNEED = 3 };
enum { POSIX_FADV_DONTNEED = 4 };
enum { POSIX_FADV_NOREUSE = 5 };
enum { _UAPI_FALLOC_H_ = 1 };
enum { FALLOC_FL_ALLOCATE_RANGE = 0x00 };
enum { FALLOC_FL_KEEP_SIZE = 0x01 };
enum { FALLOC_FL_PUNCH_HOLE = 0x02 };
enum { FALLOC_FL_NO_HIDE_STALE = 0x04 };
enum { FALLOC_FL_COLLAPSE_RANGE = 0x08 };
enum { FALLOC_FL_ZERO_RANGE = 0x10 };
enum { FALLOC_FL_INSERT_RANGE = 0x20 };
enum { FALLOC_FL_UNSHARE_RANGE = 0x40 };
enum { _UAPI_LINUX_FCNTL_H = 1 };
enum { _UAPI_LINUX_OPENAT2_H = 1 };
enum { RESOLVE_NO_XDEV = 0x01 };
enum { RESOLVE_NO_MAGICLINKS = 0x02 };
enum { RESOLVE_NO_SYMLINKS = 0x04 };
enum { RESOLVE_BENEATH = 0x08 };
enum { RESOLVE_IN_ROOT = 0x10 };
enum { RESOLVE_CACHED = 0x20 };
/* #define F_SETLEASE (F_LINUX_SPECIFIC_BASE + 0) ### define is not number */
/* #define F_GETLEASE (F_LINUX_SPECIFIC_BASE + 1) ### define is not number */
/* #define F_NOTIFY (F_LINUX_SPECIFIC_BASE + 2) ### define is not number */
/* #define F_DUPFD_QUERY (F_LINUX_SPECIFIC_BASE + 3) ### define is not number */
/* #define F_CREATED_QUERY (F_LINUX_SPECIFIC_BASE + 4) ### define is not number */
/* #define F_CANCELLK (F_LINUX_SPECIFIC_BASE + 5) ### define is not number */
/* #define F_DUPFD_CLOEXEC (F_LINUX_SPECIFIC_BASE + 6) ### define is not number */
/* #define F_SETPIPE_SZ (F_LINUX_SPECIFIC_BASE + 7) ### define is not number */
/* #define F_GETPIPE_SZ (F_LINUX_SPECIFIC_BASE + 8) ### define is not number */
/* #define F_ADD_SEALS (F_LINUX_SPECIFIC_BASE + 9) ### define is not number */
/* #define F_GET_SEALS (F_LINUX_SPECIFIC_BASE + 10) ### define is not number */
enum { F_SEAL_SEAL = 0x0001 };
enum { F_SEAL_SHRINK = 0x0002 };
enum { F_SEAL_GROW = 0x0004 };
enum { F_SEAL_WRITE = 0x0008 };
enum { F_SEAL_FUTURE_WRITE = 0x0010 };
enum { F_SEAL_EXEC = 0x0020 };
/* #define F_GET_RW_HINT (F_LINUX_SPECIFIC_BASE + 11) ### define is not number */
/* #define F_SET_RW_HINT (F_LINUX_SPECIFIC_BASE + 12) ### define is not number */
/* #define F_GET_FILE_RW_HINT (F_LINUX_SPECIFIC_BASE + 13) ### define is not number */
/* #define F_SET_FILE_RW_HINT (F_LINUX_SPECIFIC_BASE + 14) ### define is not number */
enum { RWH_WRITE_LIFE_NOT_SET = 0 };
enum { RWH_WRITE_LIFE_NONE = 1 };
enum { RWH_WRITE_LIFE_SHORT = 2 };
enum { RWH_WRITE_LIFE_MEDIUM = 3 };
enum { RWH_WRITE_LIFE_LONG = 4 };
enum { RWH_WRITE_LIFE_EXTREME = 5 };
enum { RWF_WRITE_LIFE_NOT_SET = 0 };
enum { DN_ACCESS = 0x00000001 };
enum { DN_MODIFY = 0x00000002 };
enum { DN_CREATE = 0x00000004 };
enum { DN_DELETE = 0x00000008 };
enum { DN_RENAME = 0x00000010 };
enum { DN_ATTRIB = 0x00000020 };
enum { DN_MULTISHOT = 0x80000000 };
/* #define AT_FDCWD - 100 ### define is not number */
enum { AT_SYMLINK_NOFOLLOW = 0x100 };
enum { AT_SYMLINK_FOLLOW = 0x400 };
enum { AT_NO_AUTOMOUNT = 0x800 };
enum { AT_EMPTY_PATH = 0x1000 };
enum { AT_STATX_SYNC_TYPE = 0x6000 };
enum { AT_STATX_SYNC_AS_STAT = 0x0000 };
enum { AT_STATX_FORCE_SYNC = 0x2000 };
enum { AT_STATX_DONT_SYNC = 0x4000 };
enum { AT_RECURSIVE = 0x8000 };
enum { AT_RENAME_NOREPLACE = 0x0001 };
enum { AT_RENAME_EXCHANGE = 0x0002 };
enum { AT_RENAME_WHITEOUT = 0x0004 };
enum { AT_EACCESS = 0 };
enum { AT_REMOVEDIR = 0x200 };
enum { AT_HANDLE_FID = 0x200 };
enum { AT_HANDLE_MNT_ID_UNIQUE = 0x001 };
enum { _UAPI_LINUX_STAT_H = 1 };
enum { S_IFMT = 00170000 };
enum { S_IFSOCK = 0140000 };
enum { S_IFLNK = 0120000 };
enum { S_IFREG = 0100000 };
enum { S_IFBLK = 0060000 };
enum { S_IFDIR = 0040000 };
enum { S_IFCHR = 0020000 };
enum { S_IFIFO = 0010000 };
enum { S_ISUID = 0004000 };
enum { S_ISGID = 0002000 };
enum { S_ISVTX = 0001000 };
/* #define S_ISLNK (m) (((m) & S_IFMT) == S_IFLNK) ### define is not number */
/* #define S_ISREG (m) (((m) & S_IFMT) == S_IFREG) ### define is not number */
/* #define S_ISDIR (m) (((m) & S_IFMT) == S_IFDIR) ### define is not number */
/* #define S_ISCHR (m) (((m) & S_IFMT) == S_IFCHR) ### define is not number */
/* #define S_ISBLK (m) (((m) & S_IFMT) == S_IFBLK) ### define is not number */
/* #define S_ISFIFO (m) (((m) & S_IFMT) == S_IFIFO) ### define is not number */
/* #define S_ISSOCK (m) (((m) & S_IFMT) == S_IFSOCK) ### define is not number */
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
enum { STATX_TYPE = 0x00000001 };
enum { STATX_MODE = 0x00000002 };
enum { STATX_NLINK = 0x00000004 };
enum { STATX_UID = 0x00000008 };
enum { STATX_GID = 0x00000010 };
enum { STATX_ATIME = 0x00000020 };
enum { STATX_MTIME = 0x00000040 };
enum { STATX_CTIME = 0x00000080 };
enum { STATX_INO = 0x00000100 };
enum { STATX_SIZE = 0x00000200 };
enum { STATX_BLOCKS = 0x00000400 };
enum { STATX_BASIC_STATS = 0x000007ff };
enum { STATX_BTIME = 0x00000800 };
enum { STATX_MNT_ID = 0x00001000 };
enum { STATX_DIOALIGN = 0x00002000 };
enum { STATX_MNT_ID_UNIQUE = 0x00004000 };
enum { STATX_SUBVOL = 0x00008000 };
enum { STATX_WRITE_ATOMIC = 0x00010000 };
enum { STATX__RESERVED = 0x80000000 };
enum { STATX_ALL = 0x00000fff };
enum { STATX_ATTR_COMPRESSED = 0x00000004 };
enum { STATX_ATTR_IMMUTABLE = 0x00000010 };
enum { STATX_ATTR_APPEND = 0x00000020 };
enum { STATX_ATTR_NODUMP = 0x00000040 };
enum { STATX_ATTR_ENCRYPTED = 0x00000800 };
enum { STATX_ATTR_AUTOMOUNT = 0x00001000 };
enum { STATX_ATTR_MOUNT_ROOT = 0x00002000 };
enum { STATX_ATTR_VERITY = 0x00100000 };
enum { STATX_ATTR_DAX = 0x00200000 };
enum { STATX_ATTR_WRITE_ATOMIC = 0x00400000 };
enum { _UAPI__LINUX_UIO_H = 1 };
enum { UIO_FASTIOV = 8 };
enum { UIO_MAXIOV = 1024 };
]] require 'ffi.req' 'c.SEEK' ffi.cdef[[
enum { O_ASYNC = 00020000 };
/* #define O_RSYNC (__O_SYNC | O_DSYNC) ### define is not number */
enum { SPLICE_F_MOVE = 1 };
enum { SPLICE_F_NONBLOCK = 2 };
enum { SPLICE_F_MORE = 4 };
enum { SPLICE_F_GIFT = 8 };
enum { SYNC_FILE_RANGE_WAIT_BEFORE = 1 };
enum { SYNC_FILE_RANGE_WRITE = 2 };
enum { SYNC_FILE_RANGE_WAIT_AFTER = 4 };
/* + END <fcntl.h> /data/data/com.termux/files/usr/bin/../../usr/include/fcntl.h */
]]
return ffi.C
