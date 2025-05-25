local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <endian.h> /usr/include/endian.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <bits/endian.h> /usr/include/x86_64-linux-gnu/bits/endian.h */
]] require 'ffi.req' 'c.bits.endian' ffi.cdef[[
/* ++ END <bits/endian.h> /usr/include/x86_64-linux-gnu/bits/endian.h */
/* ++ BEGIN <bits/byteswap.h> /usr/include/x86_64-linux-gnu/bits/byteswap.h */
/* +++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* +++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
static __inline __uint16_t
__bswap_16 (__uint16_t __bsx)
{
  return __builtin_bswap16 (__bsx);
}
static __inline __uint32_t
__bswap_32 (__uint32_t __bsx)
{
  return __builtin_bswap32 (__bsx);
}
__extension__ static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return __builtin_bswap64 (__bsx);
}
/* ++ END <bits/byteswap.h> /usr/include/x86_64-linux-gnu/bits/byteswap.h */
/* ++ BEGIN <bits/uintn-identity.h> /usr/include/x86_64-linux-gnu/bits/uintn-identity.h */
static __inline __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}
static __inline __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}
static __inline __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
/* ++ END <bits/uintn-identity.h> /usr/include/x86_64-linux-gnu/bits/uintn-identity.h */
enum { LITTLE_ENDIAN = 1234 };
enum { BIG_ENDIAN = 4321 };
enum { PDP_ENDIAN = 3412 };
enum { BYTE_ORDER = 1234 };
/* #define __bswap_constant_16 (x) ((__uint16_t) ((((x) >> 8) & 0xff) | (((x) & 0xff) << 8))) ### define is not number */
/* #define __bswap_constant_32 (x) ((((x) & 0xff000000u) >> 24) | (((x) & 0x00ff0000u) >> 8) | (((x) & 0x0000ff00u) << 8) | (((x) & 0x000000ffu) << 24)) ### define is not number */
/* #define __bswap_constant_64 (x) ((((x) & 0xff00000000000000ull) >> 56) | (((x) & 0x00ff000000000000ull) >> 40) | (((x) & 0x0000ff0000000000ull) >> 24) | (((x) & 0x000000ff00000000ull) >> 8) | (((x) & 0x00000000ff000000ull) << 8) | (((x) & 0x0000000000ff0000ull) << 24) | (((x) & 0x000000000000ff00ull) << 40) | (((x) & 0x00000000000000ffull) << 56)) ### define is not number */
/* #define htobe16 (x) __bswap_16 (x) ### define is not number */
/* #define htole16 (x) __uint16_identity (x) ### define is not number */
/* #define be16toh (x) __bswap_16 (x) ### define is not number */
/* #define le16toh (x) __uint16_identity (x) ### define is not number */
/* #define htobe32 (x) __bswap_32 (x) ### define is not number */
/* #define htole32 (x) __uint32_identity (x) ### define is not number */
/* #define be32toh (x) __bswap_32 (x) ### define is not number */
/* #define le32toh (x) __uint32_identity (x) ### define is not number */
/* #define htobe64 (x) __bswap_64 (x) ### define is not number */
/* #define htole64 (x) __uint64_identity (x) ### define is not number */
/* #define be64toh (x) __bswap_64 (x) ### define is not number */
/* #define le64toh (x) __uint64_identity (x) ### define is not number */
/* + END <endian.h> /usr/include/endian.h */
]]
