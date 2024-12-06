local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/sys/types.h */
/* ++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END   /usr/include/features.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
typedef __loff_t loff_t;
]] require 'ffi.req' 'c.bits.types.ino_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.dev_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.gid_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.mode_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.nlink_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.uid_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.off_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.pid_t' ffi.cdef[[
typedef __id_t id_t;
]] require 'ffi.req' 'c.bits.types.ssize_t' ffi.cdef[[
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
typedef __key_t key_t;
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/clock_t.h */
]] require 'ffi.req' 'c.bits.types.clock_t' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/clock_t.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h */
]] require 'ffi.req' 'c.bits.types.clockid_t' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
]] require 'ffi.req' 'c.bits.types.time_t' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/timer_t.h */
]] require 'ffi.req' 'c.bits.types.timer_t' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/timer_t.h */
/* ++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END   /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/stdint-intn.h */
]] require 'ffi.req' 'c.bits.stdint-intn' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/stdint-intn.h */
typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;
typedef int register_t __attribute__ ((__mode__ (__word__)));
/* ++ BEGIN /usr/include/endian.h */
/* +++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* +++ END   /usr/include/features.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/endian.h */
]] require 'ffi.req' 'c.bits.endian' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/endian.h */
enum { LITTLE_ENDIAN = 1234 };
enum { BIG_ENDIAN = 4321 };
enum { PDP_ENDIAN = 3412 };
enum { BYTE_ORDER = 1234 };
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/byteswap.h */
/* ++++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++++ END   /usr/include/features.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
static __inline __uint16_t __bswap_16 (__uint16_t __bsx) {
	return __builtin_bswap16 (__bsx);
} static __inline __uint32_t __bswap_32 (__uint32_t __bsx) {
	return __builtin_bswap32 (__bsx);
} __extension__ static __inline __uint64_t __bswap_64 (__uint64_t __bsx) {
	return __builtin_bswap64 (__bsx);
}
/* +++ END   /usr/include/x86_64-linux-gnu/bits/byteswap.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/uintn-identity.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
static __inline __uint16_t __uint16_identity (__uint16_t __x) {
	return __x;
} static __inline __uint32_t __uint32_identity (__uint32_t __x) {
	return __x;
} static __inline __uint64_t __uint64_identity (__uint64_t __x) {
	return __x;
}
/* +++ END   /usr/include/x86_64-linux-gnu/bits/uintn-identity.h */
/* ++ END   /usr/include/endian.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/sys/select.h */
]] require 'ffi.req' 'c.sys.select' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/sys/select.h */
typedef __blksize_t blksize_t;
typedef __blkcnt_t blkcnt_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h */
]] require 'ffi.req' 'c.bits.pthreadtypes' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h */
/* + END   /usr/include/x86_64-linux-gnu/sys/types.h */
]]
