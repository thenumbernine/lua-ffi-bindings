local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/_types/_fd_def.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_def.h */
/* ++ BEGIN <machine/types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h */
]] require 'ffi.req' 'c.machine.types' ffi.cdef[[
/* ++ END <machine/types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* ++ BEGIN <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* ++ END <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
typedef struct fd_set {
 __int32_t fds_bits[((((1024) % ((sizeof(__int32_t) * 8))) == 0) ? ((1024) / ((sizeof(__int32_t) * 8))) : (((1024) / ((sizeof(__int32_t) * 8))) + 1))];
} fd_set;
int __darwin_check_fd_set_overflow(int, const void *, int) __attribute__((availability(macos,introduced=11.0))) __attribute__((availability(ios,introduced=14.0))) __attribute__((availability(tvos,introduced=14.0))) __attribute__((availability(watchos,introduced=7.0)));
inline __attribute__ ((__always_inline__)) int
__darwin_check_fd_set(int _a, const void *_b)
{
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunguarded-availability-new"
 if ((uintptr_t)&__darwin_check_fd_set_overflow != (uintptr_t) 0) {
  return __darwin_check_fd_set_overflow(_a, _b, 0);
 } else {
  return 1;
 }
#pragma clang diagnostic pop
}
inline __attribute__ ((__always_inline__)) int
__darwin_fd_isset(int _fd, const struct fd_set *_p)
{
 if (__darwin_check_fd_set(_fd, (const void *) _p)) {
  return _p->fds_bits[(unsigned long)_fd / (sizeof(__int32_t) * 8)] & ((__int32_t)(((unsigned long)1) << ((unsigned long)_fd % (sizeof(__int32_t) * 8))));
 }
 return 0;
}
inline __attribute__ ((__always_inline__)) void
__darwin_fd_set(int _fd, struct fd_set *const _p)
{
 if (__darwin_check_fd_set(_fd, (const void *) _p)) {
  (_p->fds_bits[(unsigned long)_fd / (sizeof(__int32_t) * 8)] |= ((__int32_t)(((unsigned long)1) << ((unsigned long)_fd % (sizeof(__int32_t) * 8)))));
 }
}
inline __attribute__ ((__always_inline__)) void
__darwin_fd_clr(int _fd, struct fd_set *const _p)
{
 if (__darwin_check_fd_set(_fd, (const void *) _p)) {
  (_p->fds_bits[(unsigned long)_fd / (sizeof(__int32_t) * 8)] &= ~((__int32_t)(((unsigned long)1) << ((unsigned long)_fd % (sizeof(__int32_t) * 8)))));
 }
}
/* + END <sys/_types/_fd_def.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_def.h */
enum { _FD_SET = 1 };
enum { __DARWIN_FD_SETSIZE = 1024 };
enum { __DARWIN_NBBY = 8 };
/* #define __DARWIN_NFDBITS (sizeof(__int32_t) * __DARWIN_NBBY) ### define is not number */
/* #define __DARWIN_howmany (x,y) ((((x) % (y)) == 0) ? ((x) / (y)) : (((x) / (y)) + 1)) ### define is not number */
/* #define __DARWIN_FD_SET (n,p) __darwin_fd_set((n), (p)) ### define is not number */
/* #define __DARWIN_FD_CLR (n,p) __darwin_fd_clr((n), (p)) ### define is not number */
/* #define __DARWIN_FD_ISSET (n,p) __darwin_fd_isset((n), (p)) ### define is not number */
/* #define __DARWIN_FD_ZERO (p) __builtin_bzero(p, sizeof(*(p))) ### define is not number */
/* #define __DARWIN_FD_COPY (f,t) bcopy(f, t, sizeof(*(f))) ### define is not number */
]]
