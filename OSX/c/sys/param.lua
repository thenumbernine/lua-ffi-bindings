local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/param.h */
enum { BSD = 199506 };
enum { BSD4_3 = 1 };
enum { BSD4_4 = 1 };
enum { NeXTBSD = 1995064 };
enum { NeXTBSD4_0 = 0 };
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
/* redefining matching value: #define USE_CLANG_TYPES 0 */
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef unsigned int __darwin_fsblkcnt_t;
typedef unsigned int __darwin_fsfilcnt_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint32_t __darwin_id_t;
typedef __uint64_t __darwin_ino64_t;
typedef __darwin_ino64_t __darwin_ino_t;
typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_pid_t;
typedef __uint32_t __darwin_sigset_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
typedef __uint32_t __darwin_useconds_t;
typedef unsigned char __darwin_uuid_t[16];
typedef char __darwin_uuid_string_t[37];
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_types' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
enum { USE_CLANG_STDDEF = 0 };
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* #define NULL  __DARWIN_NULL ### string, not number "__DARWIN_NULL" */
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/syslimits.h */
]] require 'ffi.req' 'c.sys.syslimits' ffi.cdef[[
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/syslimits.h */
enum { MAXCOMLEN = 16 };
enum { MAXINTERP = 64 };
enum { MAXLOGNAME = 255 };
enum { MAXUPRC = 266 };
enum { NCARGS = 1048576 };
enum { NGROUPS = 16 };
enum { NOFILE = 256 };
enum { NOGROUP = 65535 };
enum { MAXHOSTNAMELEN = 256 };
enum { MAXDOMNAMELEN = 256 };
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/param.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/param.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_param.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
]] require 'ffi.req' 'c.i386._types' ffi.cdef[[
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_param.h */
/* #define ALIGNBYTES      __DARWIN_ALIGNBYTES ### string, not number "__DARWIN_ALIGNBYTES" */
enum { NBPG = 4096 };
enum { PGOFSET = 4095 };
enum { PGSHIFT = 12 };
enum { DEV_BSIZE = 512 };
enum { DEV_BSHIFT = 9 };
enum { BLKDEV_IOSIZE = 2048 };
enum { MAXPHYS = 131072 };
enum { CLSIZE = 1 };
enum { CLSIZELOG2 = 0 };
enum { MSIZESHIFT = 8 };
enum { MSIZE = 256 };
enum { MCLSHIFT = 11 };
enum { MCLBYTES = 2048 };
enum { MBIGCLSHIFT = 12 };
enum { MBIGCLBYTES = 4096 };
enum { M16KCLSHIFT = 14 };
enum { M16KCLBYTES = 16384 };
enum { MCLOFSET = 2047 };
enum { NMBCLUSTERS = 512 };
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/param.h */
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/param.h */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* ++ END   /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/limits.h */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h */
]] require 'ffi.req' 'c.sys.signal' ffi.cdef[[
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h */
enum { PSWP = 0 };
enum { PVM = 4 };
enum { PINOD = 8 };
enum { PRIBIO = 16 };
enum { PVFS = 20 };
enum { PZERO = 22 };
enum { PSOCK = 24 };
enum { PWAIT = 32 };
enum { PLOCK = 36 };
enum { PPAUSE = 40 };
enum { PUSER = 50 };
enum { MAXPRI = 127 };
enum { PRIMASK = 255 };
enum { PCATCH = 256 };
enum { PTTYBLOCK = 512 };
enum { PDROP = 1024 };
enum { PSPIN = 2048 };
/* #define NBPW    sizeof(int) ### string, not number "sizeof(int)" */
enum { CMASK = 18 };
/* #define NODEV   (dev_t)(-1) ### string, not number "(dev_t)(-1)" */
enum { CLBYTES = 4096 };
enum { CLOFSET = 4095 };
enum { CLOFF = 4095 };
enum { CLSHIFT = 12 };
enum { CBLOCK = 64 };
enum { CBQSIZE = 8 };
/* #define CBSIZE  (CBLOCK - sizeof(struct cblock *) - CBQSIZE) ### string, not number "(CBLOCK - sizeof(struct cblock *) - CBQSIZE)" */
enum { CROUND = 63 };
enum { MAXBSIZE = 1048576 };
enum { MAXPHYSIO = 131072 };
enum { MAXFRAG = 8 };
enum { MAXPHYSIO_WIRED = 16777216 };
enum { MAXPATHLEN = 1024 };
enum { MAXSYMLINKS = 32 };
enum { FSHIFT = 11 };
enum { FSCALE = 2048 };
/* + END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/param.h */
]]
