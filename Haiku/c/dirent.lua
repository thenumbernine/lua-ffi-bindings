local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <dirent.h> /boot/system/develop/headers/posix/dirent.h */
/* ++ BEGIN <sys/types.h> ./Haiku/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> ./Haiku/sys/types.h */
typedef struct dirent {
 dev_t d_dev;
 dev_t d_pdev;
 ino_t d_ino;
 ino_t d_pino;
 unsigned short d_reclen;
 char d_name[];
} dirent_t;
typedef struct __DIR DIR;
DIR* fdopendir(int fd);
DIR* opendir(const char* dirName);
struct dirent* readdir(DIR* dir);
int readdir_r(DIR* dir, struct dirent* entry,
     struct dirent** _result);
int closedir(DIR* dir);
void rewinddir(DIR* dir);
void seekdir(DIR* dir, long int position);
long int telldir(DIR* dir);
int dirfd(DIR* dir);
int alphasort(const struct dirent** entry1,
     const struct dirent** entry2);
int scandir(const char* dir, struct dirent*** _entryArray,
     int (*selectFunc)(const struct dirent*),
     int (*compareFunc)(const struct dirent** entry1,
      const struct dirent** entry2));
enum { _DIRENT_H = 1 };
enum { MAXNAMLEN = 256 };
/* + END <dirent.h> /boot/system/develop/headers/posix/dirent.h */
]]
