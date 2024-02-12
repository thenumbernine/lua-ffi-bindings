local ffi = require 'ffi'
ffi.cdef[[
/* WARNING: redefining SIGIO from 0 to 29 (originally SIGPOLL) */
/* WARNING: redefining SIGCLD from 0 to 17 (originally SIGCHLD) */
/* + BEGIN /usr/include/x86_64-linux-gnu/sys/param.h */
/* ++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/sys/types.h */
/* ++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* ++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
/* ++ BEGIN /usr/include/endian.h */
/* ++ END   /usr/include/endian.h */
/* ++ BEGIN /usr/include/signal.h */
]] require 'ffi.req' 'c.signal' ffi.cdef[[
/* ++ END   /usr/include/signal.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/param.h */
/* +++ BEGIN /usr/include/linux/limits.h */
]] require 'ffi.req' 'c.linux.limits' ffi.cdef[[
/* +++ END   /usr/include/linux/limits.h */
/* +++ BEGIN /usr/include/linux/param.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/asm/param.h */
/* +++++ BEGIN /usr/include/asm-generic/param.h */
enum { HZ = 100 };
enum { EXEC_PAGESIZE = 4096 };
enum { NOGROUP = -1 };
enum { MAXHOSTNAMELEN = 64 };
/* +++++ END   /usr/include/asm-generic/param.h */
/* ++++ END   /usr/include/x86_64-linux-gnu/asm/param.h */
/* +++ END   /usr/include/linux/param.h */
enum { MAXSYMLINKS = 20 };
enum { NOFILE = 256 };
enum { NCARGS = 131072 };
/* ++ END   /usr/include/x86_64-linux-gnu/bits/param.h */
enum { NBBY = 8 };
enum { NGROUPS = 65536 };
enum { CANBSIZ = 255 };
enum { MAXPATHLEN = 4096 };
enum { NODEV = -1 };
enum { DEV_BSIZE = 512 };
/* + END   /usr/include/x86_64-linux-gnu/sys/param.h */
]]
