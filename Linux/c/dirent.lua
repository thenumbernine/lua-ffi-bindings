local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/dirent.h */
/* ++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END   /usr/include/features.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/dirent.h */
]] require 'ffi.req' 'c.bits.dirent' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/dirent.h */
enum { DT_UNKNOWN = 0,/* enum { DT_UNKNOWN = 0 }; */
DT_FIFO = 1,/* enum { DT_FIFO = 0 }; */
DT_CHR = 2,/* enum { DT_CHR = 0 }; */
DT_DIR = 4,/* enum { DT_DIR = 0 }; */
DT_BLK = 6,/* enum { DT_BLK = 0 }; */
DT_REG = 8,/* enum { DT_REG = 0 }; */
DT_LNK = 10,/* enum { DT_LNK = 0 }; */
DT_SOCK = 12,/* enum { DT_SOCK = 0 }; */
DT_WHT = 14/* enum { DT_WHT = 0 }; */
};
typedef struct __dirstream DIR;
extern int closedir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
extern DIR *opendir (const char *__name) __attribute__ ((__nonnull__ (1))) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (closedir, 1)));
extern DIR *fdopendir (int __fd) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (closedir, 1)));
extern struct dirent *readdir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
extern int readdir_r (DIR * __dirp, struct dirent * __entry, struct dirent ** __result) __attribute__ ((__nonnull__ (1, 2, 3))) __attribute__ ((__deprecated__));
extern void rewinddir (DIR *__dirp) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
extern void seekdir (DIR *__dirp, long int __pos) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int telldir (DIR *__dirp) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int dirfd (DIR *__dirp) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
]] require 'ffi.req' 'c.bits.posix1_lim' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/posix1_lim.h */
enum { MAXNAMLEN = 255 };
/* ++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
extern int scandir (const char * __dir, struct dirent *** __namelist, int (*__selector) (const struct dirent *), int (*__cmp) (const struct dirent **, const struct dirent **)) __attribute__ ((__nonnull__ (1, 2)));
extern int alphasort (const struct dirent **__e1, const struct dirent **__e2) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern __ssize_t getdirentries (int __fd, char * __buf, size_t __nbytes, __off_t * __basep) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/dirent_ext.h */
/* ++ END   /usr/include/x86_64-linux-gnu/bits/dirent_ext.h */
/* + END   /usr/include/dirent.h */
]]
