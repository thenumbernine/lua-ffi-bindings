local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <dirent.h> /usr/include/dirent.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN <bits/dirent.h> /usr/include/x86_64-linux-gnu/bits/dirent.h */
struct dirent
  {
    __ino_t d_ino;
    __off_t d_off;
    unsigned short int d_reclen;
    unsigned char d_type;
    char d_name[256];
  };
/* ++ END <bits/dirent.h> /usr/include/x86_64-linux-gnu/bits/dirent.h */
enum
  {
    DT_UNKNOWN = 0,
    DT_FIFO = 1,
    DT_CHR = 2,
    DT_DIR = 4,
    DT_BLK = 6,
    DT_REG = 8,
    DT_LNK = 10,
    DT_SOCK = 12,
    DT_WHT = 14
  };
typedef struct __dirstream DIR;
extern int closedir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
extern DIR *opendir (const char *__name) __attribute__ ((__nonnull__ (1)))
 __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (closedir, 1)));
extern DIR *fdopendir (int __fd)
 __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (closedir, 1)));
extern struct dirent *readdir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
extern int readdir_r (DIR *__restrict __dirp,
        struct dirent *__restrict __entry,
        struct dirent **__restrict __result)
     __attribute__ ((__nonnull__ (1, 2, 3))) __attribute__ ((__deprecated__));
extern void rewinddir (DIR *__dirp) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void seekdir (DIR *__dirp, long int __pos) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int telldir (DIR *__dirp) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int dirfd (DIR *__dirp) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
/* ++ BEGIN <bits/posix1_lim.h> /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
]] require 'ffi.req' 'c.bits.posix1_lim' ffi.cdef[[
/* ++ END <bits/posix1_lim.h> /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
/* ++ BEGIN <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
extern int scandir (const char *__restrict __dir,
      struct dirent ***__restrict __namelist,
      int (*__selector) (const struct dirent *),
      int (*__cmp) (const struct dirent **,
      const struct dirent **))
     __attribute__ ((__nonnull__ (1, 2)));
extern int alphasort (const struct dirent **__e1,
        const struct dirent **__e2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern __ssize_t getdirentries (int __fd, char *__restrict __buf,
    size_t __nbytes,
    __off_t *__restrict __basep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));
/* ++ BEGIN <bits/dirent_ext.h> /usr/include/x86_64-linux-gnu/bits/dirent_ext.h */
/* ++ END <bits/dirent_ext.h> /usr/include/x86_64-linux-gnu/bits/dirent_ext.h */
/* #define d_fileno d_ino ### define is not number */
enum { _DIRENT_HAVE_D_RECLEN = 1 };
enum { _DIRENT_HAVE_D_OFF = 1 };
enum { _DIRENT_HAVE_D_TYPE = 1 };
enum { _DIRENT_MATCHES_DIRENT64 = 1 };
/* #define _D_EXACT_NAMLEN (d) (strlen ((d)->d_name)) ### define is not number */
/* #define _D_ALLOC_NAMLEN (d) (((char *) (d) + (d)->d_reclen) - &(d)->d_name[0]) ### define is not number */
/* #define DT_UNKNOWN DT_UNKNOWN ### define is not number */
/* #define DT_FIFO DT_FIFO ### define is not number */
/* #define DT_CHR DT_CHR ### define is not number */
/* #define DT_DIR DT_DIR ### define is not number */
/* #define DT_BLK DT_BLK ### define is not number */
/* #define DT_REG DT_REG ### define is not number */
/* #define DT_LNK DT_LNK ### define is not number */
/* #define DT_SOCK DT_SOCK ### define is not number */
/* #define DT_WHT DT_WHT ### define is not number */
/* #define IFTODT (mode) (((mode) & 0170000) >> 12) ### define is not number */
/* #define DTTOIF (dirtype) ((dirtype) << 12) ### define is not number */
enum { MAXNAMLEN = 255 };
/* + END <dirent.h> /usr/include/dirent.h */
]]
