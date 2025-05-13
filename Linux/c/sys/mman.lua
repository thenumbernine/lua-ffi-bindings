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
enum { MAP_32BIT = 0x40 };
enum { MAP_ABOVE4G = 0x80 };
enum { SHADOW_STACK_SET_TOKEN = 0x1 };
enum { MAP_GROWSDOWN = 0x00100 };
enum { MAP_DENYWRITE = 0x00800 };
enum { MAP_EXECUTABLE = 0x01000 };
enum { MAP_LOCKED = 0x02000 };
enum { MAP_NORESERVE = 0x04000 };
enum { MAP_POPULATE = 0x08000 };
enum { MAP_NONBLOCK = 0x10000 };
enum { MAP_STACK = 0x20000 };
enum { MAP_HUGETLB = 0x40000 };
enum { MAP_SYNC = 0x80000 };
enum { MAP_FIXED_NOREPLACE = 0x100000 };
enum { PROT_READ = 0x1 };
enum { PROT_WRITE = 0x2 };
enum { PROT_EXEC = 0x4 };
enum { PROT_NONE = 0x0 };
enum { PROT_GROWSDOWN = 0x01000000 };
enum { PROT_GROWSUP = 0x02000000 };
enum { MAP_SHARED = 0x01 };
enum { MAP_PRIVATE = 0x02 };
enum { MAP_SHARED_VALIDATE = 0x03 };
enum { MAP_TYPE = 0x0f };
enum { MAP_FIXED = 0x10 };
enum { MAP_FILE = 0 };
enum { MAP_ANONYMOUS = 0x20 };
enum { MAP_ANON = 0x20 };
enum { MAP_HUGE_SHIFT = 26 };
enum { MAP_HUGE_MASK = 0x3f };
/* #define MAP_HUGE_16KB (14 << MAP_HUGE_SHIFT) ### define is not number */
/* #define MAP_HUGE_64KB (16 << MAP_HUGE_SHIFT) ### define is not number */
/* #define MAP_HUGE_512KB (19 << MAP_HUGE_SHIFT) ### define is not number */
/* #define MAP_HUGE_1MB (20 << MAP_HUGE_SHIFT) ### define is not number */
/* #define MAP_HUGE_2MB (21 << MAP_HUGE_SHIFT) ### define is not number */
/* #define MAP_HUGE_8MB (23 << MAP_HUGE_SHIFT) ### define is not number */
/* #define MAP_HUGE_16MB (24 << MAP_HUGE_SHIFT) ### define is not number */
/* #define MAP_HUGE_32MB (25 << MAP_HUGE_SHIFT) ### define is not number */
/* #define MAP_HUGE_256MB (28 << MAP_HUGE_SHIFT) ### define is not number */
/* #define MAP_HUGE_512MB (29 << MAP_HUGE_SHIFT) ### define is not number */
/* #define MAP_HUGE_1GB (30 << MAP_HUGE_SHIFT) ### define is not number */
/* #define MAP_HUGE_2GB (31 << MAP_HUGE_SHIFT) ### define is not number */
/* #define MAP_HUGE_16GB (34U << MAP_HUGE_SHIFT) ### define is not number */
enum { MS_ASYNC = 1 };
enum { MS_SYNC = 4 };
enum { MS_INVALIDATE = 2 };
enum { MADV_NORMAL = 0 };
enum { MADV_RANDOM = 1 };
enum { MADV_SEQUENTIAL = 2 };
enum { MADV_WILLNEED = 3 };
enum { MADV_DONTNEED = 4 };
enum { MADV_FREE = 8 };
enum { MADV_REMOVE = 9 };
enum { MADV_DONTFORK = 10 };
enum { MADV_DOFORK = 11 };
enum { MADV_MERGEABLE = 12 };
enum { MADV_UNMERGEABLE = 13 };
enum { MADV_HUGEPAGE = 14 };
enum { MADV_NOHUGEPAGE = 15 };
enum { MADV_DONTDUMP = 16 };
enum { MADV_DODUMP = 17 };
enum { MADV_WIPEONFORK = 18 };
enum { MADV_KEEPONFORK = 19 };
enum { MADV_COLD = 20 };
enum { MADV_PAGEOUT = 21 };
enum { MADV_POPULATE_READ = 22 };
enum { MADV_POPULATE_WRITE = 23 };
enum { MADV_DONTNEED_LOCKED = 24 };
enum { MADV_COLLAPSE = 25 };
enum { MADV_HWPOISON = 100 };
enum { POSIX_MADV_NORMAL = 0 };
enum { POSIX_MADV_RANDOM = 1 };
enum { POSIX_MADV_SEQUENTIAL = 2 };
enum { POSIX_MADV_WILLNEED = 3 };
enum { POSIX_MADV_DONTNEED = 4 };
enum { MCL_CURRENT = 1 };
enum { MCL_FUTURE = 2 };
enum { MCL_ONFAULT = 4 };
/* #define MAP_FAILED ((void *) -1) ### define is not number */
/* + END <sys/mman.h> /usr/include/x86_64-linux-gnu/sys/mman.h */
]]
