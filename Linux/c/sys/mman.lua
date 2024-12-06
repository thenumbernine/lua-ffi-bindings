local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/sys/mman.h */
/* ++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END   /usr/include/features.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END   /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
typedef __off_t off_t;
typedef __mode_t mode_t;
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/mman.h */
enum { MAP_32BIT = 64 };
enum { MAP_ABOVE4G = 128 };
enum { SHADOW_STACK_SET_TOKEN = 1 };
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/mman-map-flags-generic.h */
enum { MAP_GROWSDOWN = 256 };
enum { MAP_DENYWRITE = 2048 };
enum { MAP_EXECUTABLE = 4096 };
enum { MAP_LOCKED = 8192 };
enum { MAP_NORESERVE = 16384 };
enum { MAP_POPULATE = 32768 };
enum { MAP_NONBLOCK = 65536 };
enum { MAP_STACK = 131072 };
enum { MAP_HUGETLB = 262144 };
enum { MAP_SYNC = 524288 };
enum { MAP_FIXED_NOREPLACE = 1048576 };
/* +++ END   /usr/include/x86_64-linux-gnu/bits/mman-map-flags-generic.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/mman-linux.h */
enum { PROT_READ = 1 };
enum { PROT_WRITE = 2 };
enum { PROT_EXEC = 4 };
enum { PROT_NONE = 0 };
enum { PROT_GROWSDOWN = 16777216 };
enum { PROT_GROWSUP = 33554432 };
enum { MAP_SHARED = 1 };
enum { MAP_PRIVATE = 2 };
enum { MAP_SHARED_VALIDATE = 3 };
enum { MAP_TYPE = 15 };
enum { MAP_FIXED = 16 };
enum { MAP_FILE = 0 };
enum { MAP_ANONYMOUS = 32 };
enum { MAP_ANON = 32 };
enum { MAP_HUGE_SHIFT = 26 };
enum { MAP_HUGE_MASK = 63 };
enum { MAP_HUGE_16KB = 939524096 };
enum { MAP_HUGE_64KB = 1073741824 };
enum { MAP_HUGE_512KB = 1275068416 };
enum { MAP_HUGE_1MB = 1342177280 };
enum { MAP_HUGE_2MB = 1409286144 };
enum { MAP_HUGE_8MB = 1543503872 };
enum { MAP_HUGE_16MB = 1610612736 };
enum { MAP_HUGE_32MB = 1677721600 };
enum { MAP_HUGE_256MB = 1879048192 };
enum { MAP_HUGE_512MB = 1946157056 };
enum { MAP_HUGE_1GB = 2013265920 };
enum { MAP_HUGE_2GB = 2080374784 };
enum { MAP_HUGE_16GB = -2013265920 };
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
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/mman-shared.h */
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/mman-shared.h */
/* +++ END   /usr/include/x86_64-linux-gnu/bits/mman-linux.h */
/* ++ END   /usr/include/x86_64-linux-gnu/bits/mman.h */
/* #define MAP_FAILED	((void *) -1) ### string, not number "((void *) -1)" */
extern void *mmap (void *__addr, size_t __len, int __prot, int __flags, int __fd, __off_t __offset) __attribute__ ((__nothrow__ , __leaf__));
extern int munmap (void *__addr, size_t __len) __attribute__ ((__nothrow__ , __leaf__));
extern int mprotect (void *__addr, size_t __len, int __prot) __attribute__ ((__nothrow__ , __leaf__));
extern int msync (void *__addr, size_t __len, int __flags);
extern int madvise (void *__addr, size_t __len, int __advice) __attribute__ ((__nothrow__ , __leaf__));
extern int posix_madvise (void *__addr, size_t __len, int __advice) __attribute__ ((__nothrow__ , __leaf__));
extern int mlock (const void *__addr, size_t __len) __attribute__ ((__nothrow__ , __leaf__));
extern int munlock (const void *__addr, size_t __len) __attribute__ ((__nothrow__ , __leaf__));
extern int mlockall (int __flags) __attribute__ ((__nothrow__ , __leaf__));
extern int munlockall (void) __attribute__ ((__nothrow__ , __leaf__));
extern int mincore (void *__start, size_t __len, unsigned char *__vec) __attribute__ ((__nothrow__ , __leaf__));
extern int shm_open (const char *__name, int __oflag, mode_t __mode);
extern int shm_unlink (const char *__name);
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/mman_ext.h */
/* ++ END   /usr/include/x86_64-linux-gnu/bits/mman_ext.h */
/* + END   /usr/include/x86_64-linux-gnu/sys/mman.h */
]]
