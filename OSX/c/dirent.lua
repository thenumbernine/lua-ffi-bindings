local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/dirent.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/dirent.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ino_t.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_ino_t ino_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ino_t.h */
/* #pragma pack(4) */
/* #pragma pack() */
struct dirent {
	__uint64_t d_ino;
	__uint64_t d_seekoff;
	__uint16_t d_reclen;
	__uint16_t d_namlen;
	__uint8_t d_type;
	char d_name[1024];
};
enum { d_fileno = 0 };
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
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/dirent.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_types' ffi.cdef[[
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
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
enum { DIRBLKSIZ = 1024 };
enum { DTF_HIDEW = 1 };
enum { DTF_NODUP = 2 };
enum { DTF_REWIND = 4 };
int closedir(DIR *);
DIR *opendir(const char *);
struct dirent *readdir(DIR *);
int readdir_r(DIR *, struct dirent *, struct dirent **);
void rewinddir(DIR *);
void seekdir(DIR *, long);
long telldir(DIR *);
DIR *fdopendir(int);
int alphasort(const struct dirent **, const struct dirent **);
int dirfd(DIR *dirp);
int scandir(const char *, struct dirent ***, int (*)(const struct dirent *), int (*)(const struct dirent **, const struct dirent **));
int getdirentries(int, char *, int, long *);
DIR *__opendir2(const char *, int);
/* + END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/dirent.h */
]]
-- get around name mangling
ffi.cdef[[
int _closedir(DIR *);
DIR *_opendir_ino64(const char *);
struct dirent *_readdir_ino64(DIR *);
]]
local lib = ffi.C
return setmetatable({
	--[[ ordinary = no dif
	-- but here we are working around the _asm bs of osx
	--]]
	-- [[
	opendir = lib._opendir_ino64,
	closedir = lib._closedir,
	readdir = lib._readdir_ino64,
	--]]
}, {
	__index = lib,
})
