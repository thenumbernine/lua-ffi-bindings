local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/dirent.h */
enum { _DIRENT_H = 1 };
/* BEGIN /usr/include/features.h */
]] require 'ffi.c.features' ffi.cdef[[
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.c.bits.types' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/dirent.h */
struct dirent { __ino_t d_ino;
__off_t d_off;
unsigned short int d_reclen;
unsigned char d_type;
char d_name[256];
};
enum { d_fileno = 0 };
enum { _DIRENT_HAVE_D_RECLEN = 1 };
enum { _DIRENT_HAVE_D_OFF = 1 };
enum { _DIRENT_HAVE_D_TYPE = 1 };
enum { _DIRENT_MATCHES_DIRENT64 = 1 };
/* END /usr/include/x86_64-1-gnu/bits/dirent.h */
typedef struct __dirstream DIR;
extern DIR *opendir (const char *__name) __attribute__ ((__nonnull__ (1)));
extern int closedir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
extern struct dirent *readdir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
extern void rewinddir (DIR *__dirp) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
/* BEGIN /usr/include/x86_64-linux-gnu/bits/dirent_ext.h */
/* END /usr/include/x86_64-1-gnu/bits/dirent_ext.h */
/* END /usr/include/dirent.h */
]]
