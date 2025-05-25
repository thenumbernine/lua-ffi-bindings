local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h */
/* ++ BEGIN <sys/appleapiopts.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* ++ END <sys/appleapiopts.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* ++ BEGIN <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
]] require 'ffi.req' 'c.sys.cdefs' ffi.cdef[[
/* ++ END <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++ BEGIN <machine/types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h */
]] require 'ffi.req' 'c.machine.types' ffi.cdef[[
/* ++ END <machine/types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* ++ BEGIN <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
]] require 'ffi.req' 'c.sys._types' ffi.cdef[[
/* ++ END <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++ BEGIN <machine/endian.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/endian.h */
]] require 'ffi.req' 'c.machine.endian' ffi.cdef[[
/* ++ END <machine/endian.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/endian.h */
/* ++ BEGIN <sys/_types/_u_char.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_char.h */
typedef unsigned char u_char;
/* ++ END <sys/_types/_u_char.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_char.h */
/* ++ BEGIN <sys/_types/_u_short.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_short.h */
typedef unsigned short u_short;
/* ++ END <sys/_types/_u_short.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_short.h */
/* ++ BEGIN <sys/_types/_u_int.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int.h */
typedef unsigned int u_int;
/* ++ END <sys/_types/_u_int.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int.h */
typedef unsigned long u_long;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef u_int64_t u_quad_t;
typedef int64_t quad_t;
typedef quad_t * qaddr_t;
/* ++ BEGIN <sys/_types/_caddr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_caddr_t.h */
typedef char * caddr_t;
/* ++ END <sys/_types/_caddr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_caddr_t.h */
typedef int32_t daddr_t;
/* ++ BEGIN <sys/_types/_dev_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h */
]] require 'ffi.req' 'c.sys._types._dev_t' ffi.cdef[[
/* ++ END <sys/_types/_dev_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h */
typedef u_int32_t fixpt_t;
/* ++ BEGIN <sys/_types/_blkcnt_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blkcnt_t.h */
]] require 'ffi.req' 'c.sys._types._blkcnt_t' ffi.cdef[[
/* ++ END <sys/_types/_blkcnt_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blkcnt_t.h */
/* ++ BEGIN <sys/_types/_blksize_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blksize_t.h */
]] require 'ffi.req' 'c.sys._types._blksize_t' ffi.cdef[[
/* ++ END <sys/_types/_blksize_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blksize_t.h */
/* ++ BEGIN <sys/_types/_gid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h */
]] require 'ffi.req' 'c.sys._types._gid_t' ffi.cdef[[
/* ++ END <sys/_types/_gid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h */
/* ++ BEGIN <sys/_types/_in_addr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_in_addr_t.h */
typedef __uint32_t in_addr_t;
/* ++ END <sys/_types/_in_addr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_in_addr_t.h */
/* ++ BEGIN <sys/_types/_in_port_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_in_port_t.h */
typedef __uint16_t in_port_t;
/* ++ END <sys/_types/_in_port_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_in_port_t.h */
/* ++ BEGIN <sys/_types/_ino_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ino_t.h */
]] require 'ffi.req' 'c.sys._types._ino_t' ffi.cdef[[
/* ++ END <sys/_types/_ino_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ino_t.h */
/* ++ BEGIN <sys/_types/_ino64_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ino64_t.h */
]] require 'ffi.req' 'c.sys._types._ino64_t' ffi.cdef[[
/* ++ END <sys/_types/_ino64_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ino64_t.h */
/* ++ BEGIN <sys/_types/_key_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_key_t.h */
typedef __int32_t key_t;
/* ++ END <sys/_types/_key_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_key_t.h */
/* ++ BEGIN <sys/_types/_mode_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
]] require 'ffi.req' 'c.sys._types._mode_t' ffi.cdef[[
/* ++ END <sys/_types/_mode_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
/* ++ BEGIN <sys/_types/_nlink_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_nlink_t.h */
]] require 'ffi.req' 'c.sys._types._nlink_t' ffi.cdef[[
/* ++ END <sys/_types/_nlink_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_nlink_t.h */
/* ++ BEGIN <sys/_types/_id_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_id_t.h */
]] require 'ffi.req' 'c.sys._types._id_t' ffi.cdef[[
/* ++ END <sys/_types/_id_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_id_t.h */
/* ++ BEGIN <sys/_types/_pid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
]] require 'ffi.req' 'c.sys._types._pid_t' ffi.cdef[[
/* ++ END <sys/_types/_pid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
/* ++ BEGIN <sys/_types/_off_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h */
]] require 'ffi.req' 'c.sys._types._off_t' ffi.cdef[[
/* ++ END <sys/_types/_off_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h */
typedef int32_t segsz_t;
typedef int32_t swblk_t;
/* ++ BEGIN <sys/_types/_uid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h */
]] require 'ffi.req' 'c.sys._types._uid_t' ffi.cdef[[
/* ++ END <sys/_types/_uid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h */
/* ++ BEGIN <sys/_types/_clock_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_clock_t.h */
]] require 'ffi.req' 'c.sys._types._clock_t' ffi.cdef[[
/* ++ END <sys/_types/_clock_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_clock_t.h */
/* ++ BEGIN <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
]] require 'ffi.req' 'c.sys._types._size_t' ffi.cdef[[
/* ++ END <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* ++ BEGIN <sys/_types/_ssize_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h */
]] require 'ffi.req' 'c.sys._types._ssize_t' ffi.cdef[[
/* ++ END <sys/_types/_ssize_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h */
/* ++ BEGIN <sys/_types/_time_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h */
]] require 'ffi.req' 'c.sys._types._time_t' ffi.cdef[[
/* ++ END <sys/_types/_time_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h */
/* ++ BEGIN <sys/_types/_useconds_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_useconds_t.h */
]] require 'ffi.req' 'c.sys._types._useconds_t' ffi.cdef[[
/* ++ END <sys/_types/_useconds_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_useconds_t.h */
/* ++ BEGIN <sys/_types/_suseconds_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_suseconds_t.h */
]] require 'ffi.req' 'c.sys._types._suseconds_t' ffi.cdef[[
/* ++ END <sys/_types/_suseconds_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_suseconds_t.h */
/* ++ BEGIN <sys/_types/_rsize_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rsize_t.h */
]] require 'ffi.req' 'c.sys._types._rsize_t' ffi.cdef[[
/* ++ END <sys/_types/_rsize_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rsize_t.h */
/* ++ BEGIN <sys/_types/_errno_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_errno_t.h */
]] require 'ffi.req' 'c.sys._types._errno_t' ffi.cdef[[
/* ++ END <sys/_types/_errno_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_errno_t.h */
/* ++ BEGIN <sys/_types/_fd_def.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_def.h */
]] require 'ffi.req' 'c.sys._types._fd_def' ffi.cdef[[
/* ++ END <sys/_types/_fd_def.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_def.h */
typedef __int32_t fd_mask;
/* ++ BEGIN <sys/_types/_fd_setsize.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_setsize.h */
/* ++ END <sys/_types/_fd_setsize.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_setsize.h */
/* ++ BEGIN <sys/_types/_fd_set.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_set.h */
/* ++ END <sys/_types/_fd_set.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_set.h */
/* ++ BEGIN <sys/_types/_fd_clr.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_clr.h */
/* ++ END <sys/_types/_fd_clr.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_clr.h */
/* ++ BEGIN <sys/_types/_fd_zero.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_zero.h */
/* ++ END <sys/_types/_fd_zero.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_zero.h */
/* ++ BEGIN <sys/_types/_fd_isset.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_isset.h */
/* ++ END <sys/_types/_fd_isset.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_isset.h */
/* ++ BEGIN <sys/_types/_fd_copy.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_copy.h */
/* ++ END <sys/_types/_fd_copy.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_copy.h */
/* ++ BEGIN <sys/_pthread/_pthread_attr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_attr_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_attr_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_attr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_attr_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_cond_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_cond_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_cond_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_cond_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_cond_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_condattr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_condattr_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_condattr_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_condattr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_condattr_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_mutex_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_mutex_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_mutex_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_mutex_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_mutex_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_mutexattr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_mutexattr_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_mutexattr_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_mutexattr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_mutexattr_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_once_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_once_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_once_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_once_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_once_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_rwlock_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_rwlock_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_rwlock_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_rwlock_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_rwlock_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_rwlockattr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_rwlockattr_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_rwlockattr_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_rwlockattr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_rwlockattr_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_key_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_key_t.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_key_t' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_key_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_key_t.h */
/* ++ BEGIN <sys/_types/_fsblkcnt_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fsblkcnt_t.h */
typedef __darwin_fsblkcnt_t fsblkcnt_t;
/* ++ END <sys/_types/_fsblkcnt_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fsblkcnt_t.h */
/* ++ BEGIN <sys/_types/_fsfilcnt_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fsfilcnt_t.h */
typedef __darwin_fsfilcnt_t fsfilcnt_t;
/* ++ END <sys/_types/_fsfilcnt_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fsfilcnt_t.h */
enum { _U_CHAR = 1 };
enum { _U_SHORT = 1 };
enum { _U_INT = 1 };
enum { _U_LONG = 1 };
enum { __DARWIN_UINT = 1 };
/* #define major (x) ((int32_t)(((u_int32_t)(x) >> 24) & 0xff)) ### define is not number */
/* #define minor (x) ((int32_t)((x) & 0xffffff)) ### define is not number */
/* #define makedev (x,y) ((dev_t)(((x) << 24) | (y))) ### define is not number */
enum { NBBY = 8 };
/* #define NFDBITS (sizeof(__int32_t) * __DARWIN_NBBY) ### define is not number */
/* #define howmany (x,y) __DARWIN_howmany(x, y) ### define is not number */
/* #define FD_SET (n,p) __DARWIN_FD_SET(n, p) ### define is not number */
/* #define FD_CLR (n,p) __DARWIN_FD_CLR(n, p) ### define is not number */
/* #define FD_ZERO (p) __DARWIN_FD_ZERO(p) ### define is not number */
/* #define FD_ISSET (n,p) __DARWIN_FD_ISSET(n, p) ### define is not number */
/* #define FD_COPY (f,t) __DARWIN_FD_COPY(f, t) ### define is not number */
/* + END <sys/types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h */
]]
