local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/mman.h> /usr/include/x86_64-linux-gnu/sys/mman.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
typedef __off_t off_t;
typedef __mode_t mode_t;
/* ++ BEGIN <bits/mman.h> /usr/include/x86_64-linux-gnu/bits/mman.h */
/* +++ BEGIN <bits/mman-map-flags-generic.h> /usr/include/x86_64-linux-gnu/bits/mman-map-flags-generic.h */
/* +++ END <bits/mman-map-flags-generic.h> /usr/include/x86_64-linux-gnu/bits/mman-map-flags-generic.h */
/* +++ BEGIN <bits/mman-linux.h> /usr/include/x86_64-linux-gnu/bits/mman-linux.h */
/* ++++ BEGIN <bits/mman-shared.h> /usr/include/x86_64-linux-gnu/bits/mman-shared.h */
/* ++++ END <bits/mman-shared.h> /usr/include/x86_64-linux-gnu/bits/mman-shared.h */
/* +++ END <bits/mman-linux.h> /usr/include/x86_64-linux-gnu/bits/mman-linux.h */
/* ++ END <bits/mman.h> /usr/include/x86_64-linux-gnu/bits/mman.h */
extern void *mmap (void *__addr, size_t __len, int __prot,
     int __flags, int __fd, __off_t __offset) __attribute__ ((__nothrow__ , __leaf__));
extern int munmap (void *__addr, size_t __len) __attribute__ ((__nothrow__ , __leaf__));
extern int mprotect (void *__addr, size_t __len, int __prot) __attribute__ ((__nothrow__ , __leaf__));
extern int msync (void *__addr, size_t __len, int __flags);
extern int madvise (void *__addr, size_t __len, int __advice) __attribute__ ((__nothrow__ , __leaf__));
extern int posix_madvise (void *__addr, size_t __len, int __advice) __attribute__ ((__nothrow__ , __leaf__));
extern int mlock (const void *__addr, size_t __len) __attribute__ ((__nothrow__ , __leaf__));
extern int munlock (const void *__addr, size_t __len) __attribute__ ((__nothrow__ , __leaf__));
extern int mlockall (int __flags) __attribute__ ((__nothrow__ , __leaf__));
extern int munlockall (void) __attribute__ ((__nothrow__ , __leaf__));
extern int mincore (void *__start, size_t __len, unsigned char *__vec)
     __attribute__ ((__nothrow__ , __leaf__));
extern int shm_open (const char *__name, int __oflag, mode_t __mode);
extern int shm_unlink (const char *__name);
/* ++ BEGIN <bits/mman_ext.h> /usr/include/x86_64-linux-gnu/bits/mman_ext.h */
/* ++ END <bits/mman_ext.h> /usr/include/x86_64-linux-gnu/bits/mman_ext.h */
enum { _SYS_MMAN_H = 1 };
/* #define MAP_FAILED ((void *) -1) ### define is not number */
/* + END <sys/mman.h> /usr/include/x86_64-linux-gnu/sys/mman.h */
]]
