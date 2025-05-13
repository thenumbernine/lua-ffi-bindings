local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <dirent.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dirent.h */
/* ++ BEGIN <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* ++ END <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
/* ++ BEGIN <sys/dirent.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/dirent.h */
/* +++ BEGIN <sys/_types/_ino_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ino_t.h */
]] require 'ffi.req' 'c.sys._types._ino_t' ffi.cdef[[
/* +++ END <sys/_types/_ino_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ino_t.h */
#pragma pack(4)
#pragma pack()
struct dirent { __uint64_t d_ino; __uint64_t d_seekoff; __uint16_t d_reclen; __uint16_t d_namlen; __uint8_t d_type; char d_name[1024]; };
/* ++ END <sys/dirent.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/dirent.h */
/* ++ BEGIN <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* ++ END <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
struct _telldir;
typedef struct {
 int __dd_fd;
 long __dd_loc;
 long __dd_size;
 char *__dd_buf;
 int __dd_len;
 long __dd_seek;
 __attribute__((__unused__)) long __padding;
 int __dd_flags;
 __darwin_pthread_mutex_t __dd_lock;
 struct _telldir *__dd_td;
} DIR;
int closedir(DIR *) __asm( "closedir" );
DIR *opendir(const char *) __asm( "opendir$INODE64" );
struct dirent *readdir(DIR *) __asm( "readdir$INODE64");
int readdir_r(DIR *, struct dirent *, struct dirent **) __asm( "readdir_r$INODE64");
void rewinddir(DIR *) __asm( "rewinddir$INODE64" );
void seekdir(DIR *, long) __asm( "seekdir$INODE64" );
long telldir(DIR *) __asm( "telldir$INODE64" );
__attribute__((availability(macosx,introduced=10.10)))
DIR *fdopendir(int) __asm( "fdopendir$INODE64" );
int alphasort(const struct dirent **, const struct dirent **) __asm( "alphasort$INODE64");
int dirfd(DIR *dirp) __attribute__((availability(macosx,introduced=10.8)));
int scandir(const char *, struct dirent ***,
    int (*)(const struct dirent *), int (*)(const struct dirent **, const struct dirent **)) __asm( "scandir$INODE64");
int getdirentries(int, char *, int, long *)
      __asm("_getdirentries_is_not_available_when_64_bit_inodes_are_in_effect")
;
DIR *__opendir2(const char *, int) __asm( "__opendir2$INODE64" );
enum { __DARWIN_MAXNAMLEN = 255 };
enum { __DARWIN_MAXPATHLEN = 1024 };
/* #define __DARWIN_STRUCT_DIRENTRY { __uint64_t d_ino; __uint64_t d_seekoff; __uint16_t d_reclen; __uint16_t d_namlen; __uint8_t d_type; char d_name[__DARWIN_MAXPATHLEN]; } ### define is not number */
/* #define d_fileno d_ino ### define is not number */
enum { MAXNAMLEN = 255 };
enum { DT_UNKNOWN = 0 };
enum { DT_FIFO = 1 };
enum { DT_CHR = 2 };
enum { DT_DIR = 4 };
enum { DT_BLK = 6 };
enum { DT_REG = 8 };
enum { DT_LNK = 10 };
enum { DT_SOCK = 12 };
enum { DT_WHT = 14 };
/* #define IFTODT (mode) (((mode) & 0170000) >> 12) ### define is not number */
/* #define DTTOIF (dirtype) ((dirtype) << 12) ### define is not number */
enum { DIRBLKSIZ = 1024 };
enum { DTF_HIDEW = 0x0001 };
enum { DTF_NODUP = 0x0002 };
enum { DTF_REWIND = 0x0004 };
enum { __DTF_READALL = 0x0008 };
enum { __DTF_SKIPREAD = 0x0010 };
enum { __DTF_ATEND = 0x0020 };
/* + END <dirent.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dirent.h */
]]
