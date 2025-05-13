local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/mman.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/mman.h */
/* ++ BEGIN <sys/appleapiopts.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* ++ END <sys/appleapiopts.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* ++ BEGIN <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
]] require 'ffi.req' 'c.sys.cdefs' ffi.cdef[[
/* ++ END <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++ BEGIN <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
]] require 'ffi.req' 'c.sys._types' ffi.cdef[[
/* ++ END <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++ BEGIN <sys/_types/_mode_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
]] require 'ffi.req' 'c.sys._types._mode_t' ffi.cdef[[
/* ++ END <sys/_types/_mode_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
/* ++ BEGIN <sys/_types/_off_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h */
]] require 'ffi.req' 'c.sys._types._off_t' ffi.cdef[[
/* ++ END <sys/_types/_off_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h */
/* ++ BEGIN <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
]] require 'ffi.req' 'c.sys._types._size_t' ffi.cdef[[
/* ++ END <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* ++ BEGIN <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* ++ END <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
int mlockall(int);
int munlockall(void);
int mlock(const void *, size_t);
void * mmap(void *, size_t, int, int, int, off_t) __asm("_" "mmap" );
int mprotect(void *, size_t, int) __asm("_" "mprotect" );
int msync(void *, size_t, int) __asm("_" "msync" );
int munlock(const void *, size_t);
int munmap(void *, size_t) __asm("_" "munmap" );
int shm_open(const char *, int, ...);
int shm_unlink(const char *);
int posix_madvise(void *, size_t, int);
int madvise(void *, size_t, int);
int mincore(const void *, size_t, char *);
int minherit(void *, size_t, int);
enum { PROT_NONE = 0x00 };
enum { PROT_READ = 0x01 };
enum { PROT_WRITE = 0x02 };
enum { PROT_EXEC = 0x04 };
enum { MAP_SHARED = 0x0001 };
enum { MAP_PRIVATE = 0x0002 };
enum { MAP_COPY = 0x0002 };
enum { MAP_FIXED = 0x0010 };
enum { MAP_RENAME = 0x0020 };
enum { MAP_NORESERVE = 0x0040 };
enum { MAP_RESERVED0080 = 0x0080 };
enum { MAP_NOEXTEND = 0x0100 };
enum { MAP_HASSEMAPHORE = 0x0200 };
enum { MAP_NOCACHE = 0x0400 };
enum { MAP_JIT = 0x0800 };
enum { MAP_FILE = 0x0000 };
enum { MAP_ANON = 0x1000 };
enum { MAP_ANONYMOUS = 0x1000 };
enum { MAP_RESILIENT_CODESIGN = 0x2000 };
enum { MAP_RESILIENT_MEDIA = 0x4000 };
enum { MAP_32BIT = 0x8000 };
enum { MAP_TRANSLATED_ALLOW_EXECUTE = 0x20000 };
enum { MAP_UNIX03 = 0x40000 };
enum { MAP_TPRO = 0x80000 };
enum { MCL_CURRENT = 0x0001 };
enum { MCL_FUTURE = 0x0002 };
/* #define MAP_FAILED ((void *)-1) ### define is not number */
enum { MS_ASYNC = 0x0001 };
enum { MS_INVALIDATE = 0x0002 };
enum { MS_SYNC = 0x0010 };
enum { MS_KILLPAGES = 0x0004 };
enum { MS_DEACTIVATE = 0x0008 };
enum { POSIX_MADV_NORMAL = 0 };
enum { POSIX_MADV_RANDOM = 1 };
enum { POSIX_MADV_SEQUENTIAL = 2 };
enum { POSIX_MADV_WILLNEED = 3 };
enum { POSIX_MADV_DONTNEED = 4 };
enum { MADV_NORMAL = 0 };
enum { MADV_RANDOM = 1 };
enum { MADV_SEQUENTIAL = 2 };
enum { MADV_WILLNEED = 3 };
enum { MADV_DONTNEED = 4 };
enum { MADV_FREE = 5 };
enum { MADV_ZERO_WIRED_PAGES = 6 };
enum { MADV_FREE_REUSABLE = 7 };
enum { MADV_FREE_REUSE = 8 };
enum { MADV_CAN_REUSE = 9 };
enum { MADV_PAGEOUT = 10 };
enum { MADV_ZERO = 11 };
enum { MINCORE_INCORE = 0x1 };
enum { MINCORE_REFERENCED = 0x2 };
enum { MINCORE_MODIFIED = 0x4 };
enum { MINCORE_REFERENCED_OTHER = 0x8 };
enum { MINCORE_MODIFIED_OTHER = 0x10 };
enum { MINCORE_PAGED_OUT = 0x20 };
enum { MINCORE_COPIED = 0x40 };
enum { MINCORE_ANONYMOUS = 0x80 };
enum { _MMAP = 1 };
/* + END <sys/mman.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/mman.h */
]]
