local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <fcntl.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/fcntl.h */
/* ++ BEGIN <sys/fcntl.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h */
/* +++ BEGIN <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
]] require 'ffi.req' 'c.sys._types' ffi.cdef[[
/* +++ END <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ BEGIN <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++ END <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* +++ BEGIN <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
]] require 'ffi.req' 'c.sys._types._size_t' ffi.cdef[[
/* +++ END <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++ BEGIN <sys/_types/_mode_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
]] require 'ffi.req' 'c.sys._types._mode_t' ffi.cdef[[
/* +++ END <sys/_types/_mode_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
/* +++ BEGIN <sys/_types/_off_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h */
]] require 'ffi.req' 'c.sys._types._off_t' ffi.cdef[[
/* +++ END <sys/_types/_off_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h */
/* +++ BEGIN <sys/_types/_pid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
]] require 'ffi.req' 'c.sys._types._pid_t' ffi.cdef[[
/* +++ END <sys/_types/_pid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
/* +++ BEGIN <sys/_types/_o_sync.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_o_sync.h */
/* +++ END <sys/_types/_o_sync.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_o_sync.h */
/* +++ BEGIN <sys/_types/_o_dsync.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_o_dsync.h */
/* +++ END <sys/_types/_o_dsync.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_o_dsync.h */
/* +++ BEGIN <sys/_types/_seek_set.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_seek_set.h */
/* +++ END <sys/_types/_seek_set.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_seek_set.h */
/* +++ BEGIN <sys/_types/_s_ifmt.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_s_ifmt.h */
/* +++ END <sys/_types/_s_ifmt.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_s_ifmt.h */
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
/* +++ BEGIN <sys/_types/_timespec.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h */
]] require 'ffi.req' 'c.sys._types._timespec' ffi.cdef[[
/* +++ END <sys/_types/_timespec.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h */
struct flocktimeout {
 struct flock fl;
 struct timespec timeout;
};
struct radvisory {
 off_t ra_offset;
 int ra_count;
};
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
typedef struct fgetsigsinfo {
 off_t fg_file_start;
 int fg_info_request;
 int fg_sig_is_platform;
} fgetsigsinfo_t;
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
typedef struct fattributiontag {
 unsigned int ft_flags;
 unsigned long long ft_hash;
 char ft_attribution_name[255];
} fattributiontag_t;
struct log2phys {
 unsigned int l2p_flags __attribute__((packed,aligned(4)));
 off_t l2p_contigbytes __attribute__((packed,aligned(4)));
 off_t l2p_devoffset __attribute__((packed,aligned(4)));
};
/* +++ BEGIN <sys/_types/_filesec_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_filesec_t.h */
]] require 'ffi.req' 'c.sys._types._filesec_t' ffi.cdef[[
/* +++ END <sys/_types/_filesec_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_filesec_t.h */
typedef enum {
 FILESEC_OWNER = 1,
 FILESEC_GROUP = 2,
 FILESEC_UUID = 3,
 FILESEC_MODE = 4,
 FILESEC_ACL = 5,
 FILESEC_GRPUUID = 6,
 FILESEC_ACL_RAW = 100,
 FILESEC_ACL_ALLOCSIZE = 101
} filesec_property_t;
int open(const char *, int, ...) __asm( "open" );
int openat(int, const char *, int, ...) __asm( "openat" ) __attribute__((availability(macosx,introduced=10.10)));
int creat(const char *, mode_t) __asm( "creat" );
int fcntl(int, int, ...) __asm( "fcntl" );
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
int filesec_unset_property(filesec_t, filesec_property_t) __attribute__((availability(macosx,introduced=10.6)));
/* ++ END <sys/fcntl.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h */
enum { O_RDONLY = 0x0000 };
enum { O_WRONLY = 0x0001 };
enum { O_RDWR = 0x0002 };
enum { O_ACCMODE = 0x0003 };
enum { FREAD = 0x00000001 };
enum { FWRITE = 0x00000002 };
enum { O_NONBLOCK = 0x00000004 };
enum { O_APPEND = 0x00000008 };
enum { O_SYNC = 0x0080 };
enum { O_SHLOCK = 0x00000010 };
enum { O_EXLOCK = 0x00000020 };
enum { O_ASYNC = 0x00000040 };
enum { O_FSYNC = 0x0080 };
enum { O_NOFOLLOW = 0x00000100 };
enum { O_CREAT = 0x00000200 };
enum { O_TRUNC = 0x00000400 };
enum { O_EXCL = 0x00000800 };
enum { O_EVTONLY = 0x00008000 };
enum { O_NOCTTY = 0x00020000 };
enum { O_DIRECTORY = 0x00100000 };
enum { O_SYMLINK = 0x00200000 };
enum { O_DSYNC = 0x400000 };
enum { O_CLOEXEC = 0x01000000 };
enum { O_NOFOLLOW_ANY = 0x20000000 };
enum { O_EXEC = 0x40000000 };
/* #define O_SEARCH (O_EXEC | O_DIRECTORY) ### define is not number */
enum { AT_FDCWD = -2 };
enum { AT_EACCESS = 0x0010 };
enum { AT_SYMLINK_NOFOLLOW = 0x0020 };
enum { AT_SYMLINK_FOLLOW = 0x0040 };
enum { AT_REMOVEDIR = 0x0080 };
enum { AT_REALDEV = 0x0200 };
enum { AT_FDONLY = 0x0400 };
enum { AT_SYMLINK_NOFOLLOW_ANY = 0x0800 };
enum { O_DP_GETRAWENCRYPTED = 0x0001 };
enum { O_DP_GETRAWUNENCRYPTED = 0x0002 };
enum { O_DP_AUTHENTICATE = 0x0004 };
enum { AUTH_OPEN_NOAUTHFD = -1 };
enum { FAPPEND = 0x00000008 };
enum { FASYNC = 0x00000040 };
enum { FFSYNC = 0x0080 };
enum { FFDSYNC = 0x400000 };
enum { FNONBLOCK = 0x00000004 };
enum { FNDELAY = 0x00000004 };
enum { O_NDELAY = 0x00000004 };
enum { CPF_OVERWRITE = 0x0001 };
enum { CPF_IGNORE_MODE = 0x0002 };
/* #define CPF_MASK (CPF_OVERWRITE|CPF_IGNORE_MODE) ### define is not number */
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
/* #define F_SETLEASE_ARG (t,oc) ((t) | ((oc) << 2)) ### define is not number */
enum { F_TRANSFEREXTENTS = 110 };
enum { F_ATTRIBUTION_TAG = 111 };
enum { F_ADDSIGS_MAIN_BINARY = 113 };
enum { FCNTL_FS_SPECIFIC_BASE = 0x00010000 };
enum { F_DUPFD_CLOEXEC = 67 };
enum { FD_CLOEXEC = 1 };
enum { F_RDLCK = 1 };
enum { F_UNLCK = 2 };
enum { F_WRLCK = 3 };
]] require 'ffi.req' 'c.bits.types.SEEK' ffi.cdef[[
]] require 'ffi.req' 'c.sys.stat' ffi.cdef[[
enum { F_ALLOCATECONTIG = 0x00000002 };
enum { F_ALLOCATEALL = 0x00000004 };
enum { F_ALLOCATEPERSIST = 0x00000008 };
enum { F_PEOFPOSMODE = 3 };
enum { F_VOLPOSMODE = 4 };
enum { USER_FSIGNATURES_CDHASH_LEN = 20 };
enum { GETSIGSINFO_PLATFORM_BINARY = 1 };
enum { LOCK_SH = 0x01 };
enum { LOCK_EX = 0x02 };
enum { LOCK_NB = 0x04 };
enum { LOCK_UN = 0x08 };
enum { ATTRIBUTION_NAME_MAX = 255 };
enum { F_CREATE_TAG = 0x00000001 };
enum { F_DELETE_TAG = 0x00000002 };
enum { F_QUERY_TAG = 0x00000004 };
enum { O_POPUP = 0x80000000 };
enum { O_ALERT = 0x20000000 };
/* #define FILESEC_GUID FILESEC_UUID ### define is not number */
/* #define _FILESEC_UNSET_PROPERTY ((void *)0) ### define is not number */
/* #define _FILESEC_REMOVE_ACL ((void *)1) ### define is not number */
/* + END <fcntl.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/fcntl.h */
]]
return ffi.C
