local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <endian.h> /data/data/com.termux/files/usr/bin/../../usr/include/endian.h */
/* ++ BEGIN <sys/endian.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/endian.h */
/* +++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* +++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* +++ BEGIN <stdint.h> /data/data/com.termux/files/usr/lib/clang/21/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* +++ END <stdint.h> /data/data/com.termux/files/usr/lib/clang/21/include/stdint.h */
uint32_t htonl(uint32_t __x) __attribute__((__const__));
uint16_t htons(uint16_t __x) __attribute__((__const__));
uint32_t ntohl(uint32_t __x) __attribute__((__const__));
uint16_t ntohs(uint16_t __x) __attribute__((__const__));
/* ++ END <sys/endian.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/endian.h */
enum { _SYS_ENDIAN_H_ = 1 };
enum { _LITTLE_ENDIAN = 1234 };
enum { _BIG_ENDIAN = 4321 };
enum { _PDP_ENDIAN = 3412 };
enum { _BYTE_ORDER = 1234 };
enum { __LITTLE_ENDIAN_BITFIELD = 1 };
enum { __LITTLE_ENDIAN = 1234 };
enum { __BIG_ENDIAN = 4321 };
enum { __BYTE_ORDER = 1234 };
/* #define __swap16 __builtin_bswap16 ### define is not number */
/* #define __swap32 __builtin_bswap32 ### define is not number */
/* #define __swap64 (x) __BIONIC_CAST(static_cast,uint64_t,__builtin_bswap64(x)) ### define is not number */
/* #define htonl (x) __swap32(x) ### define is not number */
/* #define htons (x) __swap16(x) ### define is not number */
/* #define ntohl (x) __swap32(x) ### define is not number */
/* #define ntohs (x) __swap16(x) ### define is not number */
/* #define htonq (x) __swap64(x) ### define is not number */
/* #define ntohq (x) __swap64(x) ### define is not number */
enum { LITTLE_ENDIAN = 1234 };
enum { BIG_ENDIAN = 4321 };
enum { PDP_ENDIAN = 3412 };
enum { BYTE_ORDER = 1234 };
/* #define NTOHL (x) (x) = ntohl(__BIONIC_CAST(static_cast,u_int32_t,(x))) ### define is not number */
/* #define NTOHS (x) (x) = ntohs(__BIONIC_CAST(static_cast,u_int16_t,(x))) ### define is not number */
/* #define HTONL (x) (x) = htonl(__BIONIC_CAST(static_cast,u_int32_t,(x))) ### define is not number */
/* #define HTONS (x) (x) = htons(__BIONIC_CAST(static_cast,u_int16_t,(x))) ### define is not number */
/* #define htobe16 (x) __swap16(x) ### define is not number */
/* #define htobe32 (x) __swap32(x) ### define is not number */
/* #define htobe64 (x) __swap64(x) ### define is not number */
/* #define betoh16 (x) __swap16(x) ### define is not number */
/* #define betoh32 (x) __swap32(x) ### define is not number */
/* #define betoh64 (x) __swap64(x) ### define is not number */
/* #define htole16 (x) (x) ### define is not number */
/* #define htole32 (x) (x) ### define is not number */
/* #define htole64 (x) (x) ### define is not number */
/* #define letoh16 (x) (x) ### define is not number */
/* #define letoh32 (x) (x) ### define is not number */
/* #define letoh64 (x) (x) ### define is not number */
/* #define be16toh (x) htobe16(x) ### define is not number */
/* #define be32toh (x) htobe32(x) ### define is not number */
/* #define be64toh (x) htobe64(x) ### define is not number */
/* #define le16toh (x) htole16(x) ### define is not number */
/* #define le32toh (x) htole32(x) ### define is not number */
/* #define le64toh (x) htole64(x) ### define is not number */
/* + END <endian.h> /data/data/com.termux/files/usr/bin/../../usr/include/endian.h */
]]
