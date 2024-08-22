local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sched.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/pthread/pthread_impl.h */
enum { SCHED_OTHER = 1 };
enum { SCHED_FIFO = 4 };
enum { SCHED_RR = 2 };
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/pthread/pthread_impl.h */
struct sched_param { int sched_priority; char __opaque[4]; };
extern int sched_yield(void);
extern int sched_get_priority_min(int);
extern int sched_get_priority_max(int);
/* + END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sched.h */
]]
