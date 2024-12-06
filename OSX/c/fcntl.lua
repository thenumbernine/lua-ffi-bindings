local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/fcntl.h */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
/* redefining matching value: #define USE_CLANG_TYPES 0 */
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef unsigned int __darwin_fsblkcnt_t;
typedef unsigned int __darwin_fsfilcnt_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint32_t __darwin_id_t;
typedef __uint64_t __darwin_ino64_t;
typedef __darwin_ino64_t __darwin_ino_t;
typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_pid_t;
typedef __uint32_t __darwin_sigset_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
typedef __uint32_t __darwin_useconds_t;
typedef unsigned char __darwin_uuid_t[16];
typedef char __darwin_uuid_string_t[37];
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_types' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
typedef __darwin_size_t size_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_mode_t mode_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_off_t off_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_pid_t pid_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
enum { O_RDONLY = 0 };
enum { O_WRONLY = 1 };
enum { O_RDWR = 2 };
enum { O_ACCMODE = 3 };
enum { FREAD = 1 };
enum { FWRITE = 2 };
enum { O_NONBLOCK = 4 };
enum { O_APPEND = 8 };
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_o_sync.h */
enum { O_SYNC = 128 };
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_o_sync.h */
enum { O_SHLOCK = 16 };
enum { O_EXLOCK = 32 };
enum { O_ASYNC = 64 };
enum { O_FSYNC = 128 };
enum { O_NOFOLLOW = 256 };
enum { O_CREAT = 512 };
enum { O_TRUNC = 1024 };
enum { O_EXCL = 2048 };
enum { O_EVTONLY = 32768 };
enum { O_NOCTTY = 131072 };
enum { O_DIRECTORY = 1048576 };
enum { O_SYMLINK = 2097152 };
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_o_dsync.h */
enum { O_DSYNC = 4194304 };
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_o_dsync.h */
enum { O_CLOEXEC = 16777216 };
enum { O_NOFOLLOW_ANY = 536870912 };
enum { O_EXEC = 1073741824 };
enum { O_SEARCH = 1074790400 };
enum { AT_FDCWD = -2 };
enum { AT_EACCESS = 16 };
enum { AT_SYMLINK_NOFOLLOW = 32 };
enum { AT_SYMLINK_FOLLOW = 64 };
enum { AT_REMOVEDIR = 128 };
enum { AT_REALDEV = 512 };
enum { AT_FDONLY = 1024 };
enum { AT_SYMLINK_NOFOLLOW_ANY = 2048 };
enum { O_DP_GETRAWENCRYPTED = 1 };
enum { O_DP_GETRAWUNENCRYPTED = 2 };
enum { O_DP_AUTHENTICATE = 4 };
enum { AUTH_OPEN_NOAUTHFD = -1 };
enum { FAPPEND = 8 };
enum { FASYNC = 64 };
enum { FFSYNC = 128 };
enum { FFDSYNC = 4194304 };
enum { FNONBLOCK = 4 };
enum { FNDELAY = 4 };
enum { O_NDELAY = 4 };
enum { CPF_OVERWRITE = 1 };
enum { CPF_IGNORE_MODE = 2 };
enum { CPF_MASK = 3 };
enum { F_DUPFD = 0 };
enum { F_GETFD = 1 };
enum { F_SETFD = 2 };
enum { F_GETFL = 3 };
enum { F_SETFL = 4 };
enum { F_GETOWN = 5 };
enum { F_SETOWN = 6 };
enum { F_GETLK = 7 };
enum { F_SETLK = 8 };
enum { F_SETLKW = 9 };
enum { F_SETLKWTIMEOUT = 10 };
enum { F_FLUSH_DATA = 40 };
enum { F_CHKCLEAN = 41 };
enum { F_PREALLOCATE = 42 };
enum { F_SETSIZE = 43 };
enum { F_RDADVISE = 44 };
enum { F_RDAHEAD = 45 };
enum { F_NOCACHE = 48 };
enum { F_LOG2PHYS = 49 };
enum { F_GETPATH = 50 };
enum { F_FULLFSYNC = 51 };
enum { F_PATHPKG_CHECK = 52 };
enum { F_FREEZE_FS = 53 };
enum { F_THAW_FS = 54 };
enum { F_GLOBAL_NOCACHE = 55 };
enum { F_ADDSIGS = 59 };
enum { F_ADDFILESIGS = 61 };
enum { F_NODIRECT = 62 };
enum { F_GETPROTECTIONCLASS = 63 };
enum { F_SETPROTECTIONCLASS = 64 };
enum { F_LOG2PHYS_EXT = 65 };
enum { F_GETLKPID = 66 };
enum { F_SETBACKINGSTORE = 70 };
enum { F_GETPATH_MTMINFO = 71 };
enum { F_GETCODEDIR = 72 };
enum { F_SETNOSIGPIPE = 73 };
enum { F_GETNOSIGPIPE = 74 };
enum { F_TRANSCODEKEY = 75 };
enum { F_SINGLE_WRITER = 76 };
enum { F_GETPROTECTIONLEVEL = 77 };
enum { F_FINDSIGS = 78 };
enum { F_ADDFILESIGS_FOR_DYLD_SIM = 83 };
enum { F_BARRIERFSYNC = 85 };
enum { F_OFD_SETLK = 90 };
enum { F_OFD_SETLKW = 91 };
enum { F_OFD_GETLK = 92 };
enum { F_OFD_SETLKWTIMEOUT = 93 };
enum { F_ADDFILESIGS_RETURN = 97 };
enum { F_CHECK_LV = 98 };
enum { F_PUNCHHOLE = 99 };
enum { F_TRIM_ACTIVE_FILE = 100 };
enum { F_SPECULATIVE_READ = 101 };
enum { F_GETPATH_NOFIRMLINK = 102 };
enum { F_ADDFILESIGS_INFO = 103 };
enum { F_ADDFILESUPPL = 104 };
enum { F_GETSIGSINFO = 105 };
enum { F_SETLEASE = 106 };
enum { F_GETLEASE = 107 };
enum { F_TRANSFEREXTENTS = 110 };
enum { F_ATTRIBUTION_TAG = 111 };
enum { F_ADDSIGS_MAIN_BINARY = 113 };
enum { FCNTL_FS_SPECIFIC_BASE = 65536 };
enum { F_DUPFD_CLOEXEC = 67 };
enum { FD_CLOEXEC = 1 };
enum { F_RDLCK = 1 };
enum { F_UNLCK = 2 };
enum { F_WRLCK = 3 };
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_seek_set.h */
]] require 'ffi.req' 'c.sys._types._seek_set' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_seek_set.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_s_ifmt.h */
]] require 'ffi.req' 'c.sys._types._s_ifmt' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_s_ifmt.h */
enum { F_ALLOCATECONTIG = 2 };
enum { F_ALLOCATEALL = 4 };
enum { F_ALLOCATEPERSIST = 8 };
enum { F_PEOFPOSMODE = 3 };
enum { F_VOLPOSMODE = 4 };
/*
	"attempt to redefine 'flock' at line 7" ...
	but why?
	`struct stat` and `stat()` also have matching names ...
	??? why can't `struct flock` and `flock()` have matching names ???
*/
/* struct flock { */
struct _flock {
	off_t l_start;
	off_t l_len;
	pid_t l_pid;
	short l_type;
	short l_whence;
};
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h */
]] require 'ffi.req' 'c.sys._types._timespec' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h */
struct flocktimeout {
	struct _flock fl;
	struct timespec timeout;
};
struct radvisory {
	off_t ra_offset;
	int ra_count;
};
enum { USER_FSIGNATURES_CDHASH_LEN = 20 };
typedef struct fsignatures {
	off_t fs_file_start;
	void *fs_blob_start;
	size_t fs_blob_size;
	size_t fs_fsignatures_size;
	char fs_cdhash[20];
	int fs_hash_type;
} fsignatures_t;
typedef struct fsupplement {
	off_t fs_file_start;
	off_t fs_blob_start;
	size_t fs_blob_size;
	int fs_orig_fd;
} fsupplement_t;
typedef struct fchecklv {
	off_t lv_file_start;
	size_t lv_error_message_size;
	void *lv_error_message;
} fchecklv_t;
enum { GETSIGSINFO_PLATFORM_BINARY = 1 };
typedef struct fgetsigsinfo {
	off_t fg_file_start;
	int fg_info_request;
	int fg_sig_is_platform;
} fgetsigsinfo_t;
enum { LOCK_SH = 1 };
enum { LOCK_EX = 2 };
enum { LOCK_NB = 4 };
enum { LOCK_UN = 8 };
typedef struct fstore {
	unsigned int fst_flags;
	int fst_posmode;
	off_t fst_offset;
	off_t fst_length;
	off_t fst_bytesalloc;
} fstore_t;
typedef struct fpunchhole {
	unsigned int fp_flags;
	unsigned int reserved;
	off_t fp_offset;
	off_t fp_length;
} fpunchhole_t;
typedef struct ftrimactivefile {
	off_t fta_offset;
	off_t fta_length;
} ftrimactivefile_t;
typedef struct fspecread {
	unsigned int fsr_flags;
	unsigned int reserved;
	off_t fsr_offset;
	off_t fsr_length;
} fspecread_t;
enum { ATTRIBUTION_NAME_MAX = 255 };
typedef struct fattributiontag {
	unsigned int ft_flags;
	unsigned long long ft_hash;
	char ft_attribution_name[255];
} fattributiontag_t;
enum { F_CREATE_TAG = 1 };
enum { F_DELETE_TAG = 2 };
enum { F_QUERY_TAG = 4 };
/* #pragma pack(4) */
struct log2phys {
	unsigned int l2p_flags;
	off_t l2p_contigbytes;
	off_t l2p_devoffset;
};
/* #pragma pack() */
enum { O_POPUP = 2147483648 };
enum { O_ALERT = 536870912 };
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_filesec_t.h */
struct _filesec;
typedef struct _filesec *filesec_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_filesec_t.h */
typedef enum { FILESEC_OWNER = 1, FILESEC_GROUP = 2, FILESEC_UUID = 3, FILESEC_MODE = 4, FILESEC_ACL = 5, FILESEC_GRPUUID = 6, FILESEC_ACL_RAW = 100, FILESEC_ACL_ALLOCSIZE = 101 } filesec_property_t;
enum { FILESEC_GUID = 0 };
int open(const char *, int, ...) __asm("open");
int openat(int, const char *, int, ...) __asm("openat");
int creat(const char *, mode_t) __asm("creat");
int fcntl(int, int, ...) __asm("fcntl");
int openx_np(const char *, int, filesec_t);
int open_dprotected_np( const char *, int, int, int, ...);
int openat_dprotected_np( int, const char *, int, int, int, ...);
int openat_authenticated_np(int, const char *, int, int);
int flock(int, int);
filesec_t filesec_init(void);
filesec_t filesec_dup(filesec_t);
void filesec_free(filesec_t);
int filesec_get_property(filesec_t, filesec_property_t, void *);
int filesec_query_property(filesec_t, filesec_property_t, int *);
int filesec_set_property(filesec_t, filesec_property_t, const void *);
int filesec_unset_property(filesec_t, filesec_property_t);
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h */
/* + END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/fcntl.h */
]]
return ffi.C
