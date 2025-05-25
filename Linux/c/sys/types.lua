local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/types.h> /usr/include/x86_64-linux-gnu/sys/types.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
typedef __loff_t loff_t;
typedef __ino_t ino_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __off_t off_t;
typedef __pid_t pid_t;
typedef __id_t id_t;
typedef __ssize_t ssize_t;
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
typedef __key_t key_t;
/* ++ BEGIN <bits/types/clock_t.h> /usr/include/x86_64-linux-gnu/bits/types/clock_t.h */
]] require 'ffi.req' 'c.bits.types.clock_t' ffi.cdef[[
/* ++ END <bits/types/clock_t.h> /usr/include/x86_64-linux-gnu/bits/types/clock_t.h */
/* ++ BEGIN <bits/types/clockid_t.h> /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h */
]] require 'ffi.req' 'c.bits.types.clockid_t' ffi.cdef[[
/* ++ END <bits/types/clockid_t.h> /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h */
/* ++ BEGIN <bits/types/time_t.h> /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
]] require 'ffi.req' 'c.bits.types.time_t' ffi.cdef[[
/* ++ END <bits/types/time_t.h> /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
/* ++ BEGIN <bits/types/timer_t.h> /usr/include/x86_64-linux-gnu/bits/types/timer_t.h */
]] require 'ffi.req' 'c.bits.types.timer_t' ffi.cdef[[
/* ++ END <bits/types/timer_t.h> /usr/include/x86_64-linux-gnu/bits/types/timer_t.h */
/* ++ BEGIN <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
/* ++ BEGIN <bits/stdint-intn.h> /usr/include/x86_64-linux-gnu/bits/stdint-intn.h */
]] require 'ffi.req' 'c.bits.stdint-intn' ffi.cdef[[
/* ++ END <bits/stdint-intn.h> /usr/include/x86_64-linux-gnu/bits/stdint-intn.h */
typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;
typedef int register_t __attribute__ ((__mode__ (__word__)));
/* ++ BEGIN <endian.h> /usr/include/endian.h */
]] require 'ffi.req' 'c.endian' ffi.cdef[[
/* ++ END <endian.h> /usr/include/endian.h */
/* ++ BEGIN <sys/select.h> /usr/include/x86_64-linux-gnu/sys/select.h */
]] require 'ffi.req' 'c.sys.select' ffi.cdef[[
/* ++ END <sys/select.h> /usr/include/x86_64-linux-gnu/sys/select.h */
typedef __blksize_t blksize_t;
typedef __blkcnt_t blkcnt_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;
/* ++ BEGIN <bits/pthreadtypes.h> /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h */
]] require 'ffi.req' 'c.bits.pthreadtypes' ffi.cdef[[
/* ++ END <bits/pthreadtypes.h> /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h */
enum { __BIT_TYPES_DEFINED__ = 1 };
/* + END <sys/types.h> /usr/include/x86_64-linux-gnu/sys/types.h */
]]
