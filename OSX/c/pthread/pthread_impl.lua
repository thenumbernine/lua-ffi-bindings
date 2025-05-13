local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <pthread/pthread_impl.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/pthread/pthread_impl.h */
#pragma clang assume_nonnull begin
#pragma clang assume_nonnull end
enum { _PTHREAD_MUTEX_SIG_init = 0x32aaaba7 };
enum { _PTHREAD_ERRORCHECK_MUTEX_SIG_init = 0x32aaaba1 };
enum { _PTHREAD_RECURSIVE_MUTEX_SIG_init = 0x32aaaba2 };
enum { _PTHREAD_FIRSTFIT_MUTEX_SIG_init = 0x32aaaba3 };
enum { _PTHREAD_COND_SIG_init = 0x3cb0b1bb };
enum { _PTHREAD_ONCE_SIG_init = 0x30b1bcba };
enum { _PTHREAD_RWLOCK_SIG_init = 0x2da8b3b4 };
enum { SCHED_OTHER = 1 };
enum { SCHED_FIFO = 4 };
enum { SCHED_RR = 2 };
enum { __SCHED_PARAM_SIZE__ = 4 };
/* + END <pthread/pthread_impl.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/pthread/pthread_impl.h */
]]
