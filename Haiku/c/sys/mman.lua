local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/mman.h> /boot/system/develop/headers/posix/sys/mman.h */
/* ++ BEGIN <sys/cdefs.h> /boot/system/develop/headers/bsd/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /boot/system/develop/headers/bsd/sys/cdefs.h */
/* ++ BEGIN <sys/types.h> ./Haiku/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> ./Haiku/sys/types.h */
void* mmap(void* address, size_t length, int protection, int flags,
   int fd, off_t offset);
int munmap(void* address, size_t length);
int mprotect(void* address, size_t length, int protection);
int msync(void* address, size_t length, int flags);
int madvise(void* address, size_t length, int advice);
int posix_madvise(void* address, size_t length, int advice);
int mlock(const void* address, size_t length);
int munlock(const void* address, size_t length);
int shm_open(const char* name, int openMode, mode_t permissions);
int shm_unlink(const char* name);
enum { _SYS_MMAN_H = 1 };
enum { PROT_READ = 0x01 };
enum { PROT_WRITE = 0x02 };
enum { PROT_EXEC = 0x04 };
enum { PROT_NONE = 0x00 };
enum { MAP_FILE = 0x00 };
enum { MAP_SHARED = 0x01 };
enum { MAP_PRIVATE = 0x02 };
enum { MAP_FIXED = 0x04 };
enum { MAP_ANONYMOUS = 0x08 };
enum { MAP_ANON = 0x08 };
enum { MAP_NORESERVE = 0x10 };
/* #define MAP_FAILED ((void*)-1) ### define is not number */
enum { MS_ASYNC = 0x01 };
enum { MS_SYNC = 0x02 };
enum { MS_INVALIDATE = 0x04 };
enum { MADV_NORMAL = 1 };
enum { MADV_SEQUENTIAL = 2 };
enum { MADV_RANDOM = 3 };
enum { MADV_WILLNEED = 4 };
enum { MADV_DONTNEED = 5 };
enum { MADV_FREE = 6 };
enum { POSIX_MADV_NORMAL = 1 };
enum { POSIX_MADV_SEQUENTIAL = 2 };
enum { POSIX_MADV_RANDOM = 3 };
enum { POSIX_MADV_WILLNEED = 4 };
enum { POSIX_MADV_DONTNEED = 5 };
/* + END <sys/mman.h> /boot/system/develop/headers/posix/sys/mman.h */
]]
