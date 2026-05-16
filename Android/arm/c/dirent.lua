local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <dirent.h> /data/data/com.termux/files/usr/bin/../../usr/include/dirent.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <stdint.h> /data/data/com.termux/files/usr/lib/clang/21/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++ END <stdint.h> /data/data/com.termux/files/usr/lib/clang/21/include/stdint.h */
/* ++ BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
struct dirent { uint64_t d_ino; off64_t d_off; unsigned short d_reclen; unsigned char d_type; char d_name[256]; };
struct dirent64 { uint64_t d_ino; off64_t d_off; unsigned short d_reclen; unsigned char d_type; char d_name[256]; };
typedef struct DIR DIR;
DIR*  opendir(const char*  __path);
DIR*  fdopendir(int __dir_fd);
struct dirent*  readdir(DIR*  __dir);
struct dirent64*  readdir64(DIR*  __dir);
int readdir_r(DIR*  __dir, struct dirent*  __entry, struct dirent*  *  __buffer) __attribute__((__deprecated__("readdir_r is deprecated; use readdir instead")));
int readdir64_r(DIR*  __dir, struct dirent64*  __entry, struct dirent64*  *  __buffer) __attribute__((__deprecated__("readdir64_r is deprecated; use readdir64 instead")));
int closedir(DIR*  __dir);
void rewinddir(DIR*  __dir);
void seekdir(DIR*  __dir, long __location) __attribute__((__availability__(android,strict,introduced=23 )));
long telldir(DIR*  __dir) __attribute__((__availability__(android,strict,introduced=23 )));
int dirfd(DIR*  __dir);
int alphasort(const struct dirent*  *  __lhs, const struct dirent*  *  __rhs);
int alphasort64(const struct dirent64*  *  __lhs, const struct dirent64*  *  __rhs);
int scandir(const char*  __path, struct dirent*  *  *  __name_list, int (*  __filter)(const struct dirent* ), int (*  __comparator)(const struct dirent*  * , const struct dirent*  * ));
int scandir64(const char*  __path, struct dirent64*  *  *  __name_list, int (*  __filter)(const struct dirent64* ), int (*  __comparator)(const struct dirent64*  * , const struct dirent64*  * ));
enum { DT_UNKNOWN = 0 };
enum { DT_FIFO = 1 };
enum { DT_CHR = 2 };
enum { DT_DIR = 4 };
enum { DT_BLK = 6 };
enum { DT_REG = 8 };
enum { DT_LNK = 10 };
enum { DT_SOCK = 12 };
enum { DT_WHT = 14 };
/* #define IFTODT (x) ((x)>>12 & 0xF) ### define is not number */
/* #define DTTOIF (x) ((x)<<12) ### define is not number */
enum { _DIRENT_HAVE_D_RECLEN = 1 };
enum { _DIRENT_HAVE_D_OFF = 1 };
enum { _DIRENT_HAVE_D_TYPE = 1 };
/* #define d_fileno d_ino ### define is not number */
/* + END <dirent.h> /data/data/com.termux/files/usr/bin/../../usr/include/dirent.h */
]]
