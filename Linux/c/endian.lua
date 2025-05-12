local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <endian.h> /usr/include/endian.h */
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
/* + END <endian.h> /usr/include/endian.h */
enum { _ENDIAN_H = 1 };
/* #define LITTLE_ENDIAN __LITTLE_ENDIAN ### define is not number */
/* #define BIG_ENDIAN __BIG_ENDIAN ### define is not number */
/* #define PDP_ENDIAN __PDP_ENDIAN ### define is not number */
/* #define BYTE_ORDER __BYTE_ORDER ### define is not number */
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
]]
