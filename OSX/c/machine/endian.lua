local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <machine/endian.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/endian.h */
/* ++ BEGIN "i386/endian.h" /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/endian.h */
/* +++ BEGIN <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
]] require 'ffi.req' 'c.sys.cdefs' ffi.cdef[[
/* +++ END <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN <sys/_endian.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h */
/* ++++ BEGIN <machine/_endian.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_endian.h */
/* +++++ BEGIN <i386/_endian.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_endian.h */
/* ++++++ BEGIN <sys/__endian.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/__endian.h */
/* ++++++ END <sys/__endian.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/__endian.h */
/* +++++ END <i386/_endian.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_endian.h */
/* ++++ END <machine/_endian.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_endian.h */
/* ++++ BEGIN <libkern/_OSByteOrder.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/_OSByteOrder.h */
/* +++++ BEGIN <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
]] require 'ffi.req' 'c.sys._types' ffi.cdef[[
/* +++++ END <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++++ BEGIN <libkern/i386/_OSByteOrder.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h */
static inline
__uint16_t
_OSSwapInt16(
 __uint16_t _data
 )
{
 return (__uint16_t)((_data << 8) | (_data >> 8));
}
static inline
__uint32_t
_OSSwapInt32(
 __uint32_t _data
 )
{
 return __builtin_bswap32(_data);
}
static inline
__uint64_t
_OSSwapInt64(
 __uint64_t _data
 )
{
 return __builtin_bswap64(_data);
}
/* +++++ END <libkern/i386/_OSByteOrder.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h */
/* ++++ END <libkern/_OSByteOrder.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/_OSByteOrder.h */
/* +++ END <sys/_endian.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h */
/* ++ END "i386/endian.h" /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/endian.h */
enum { _QUAD_HIGHWORD = 1 };
enum { _QUAD_LOWWORD = 0 };
enum { __DARWIN_LITTLE_ENDIAN = 1234 };
enum { __DARWIN_BIG_ENDIAN = 4321 };
enum { __DARWIN_PDP_ENDIAN = 3412 };
enum { LITTLE_ENDIAN = 1234 };
enum { BIG_ENDIAN = 4321 };
enum { PDP_ENDIAN = 3412 };
enum { __DARWIN_BYTE_ORDER = 1234 };
enum { BYTE_ORDER = 1234 };
/* #define __DARWIN_OSSwapConstInt16 (x) ((__uint16_t)((((__uint16_t)(x) & 0xff00U) >> 8) | (((__uint16_t)(x) & 0x00ffU) << 8))) ### define is not number */
/* #define __DARWIN_OSSwapConstInt32 (x) ((__uint32_t)((((__uint32_t)(x) & 0xff000000U) >> 24) | (((__uint32_t)(x) & 0x00ff0000U) >> 8) | (((__uint32_t)(x) & 0x0000ff00U) << 8) | (((__uint32_t)(x) & 0x000000ffU) << 24))) ### define is not number */
/* #define __DARWIN_OSSwapConstInt64 (x) ((__uint64_t)((((__uint64_t)(x) & 0xff00000000000000ULL) >> 56) | (((__uint64_t)(x) & 0x00ff000000000000ULL) >> 40) | (((__uint64_t)(x) & 0x0000ff0000000000ULL) >> 24) | (((__uint64_t)(x) & 0x000000ff00000000ULL) >> 8) | (((__uint64_t)(x) & 0x00000000ff000000ULL) << 8) | (((__uint64_t)(x) & 0x0000000000ff0000ULL) << 24) | (((__uint64_t)(x) & 0x000000000000ff00ULL) << 40) | (((__uint64_t)(x) & 0x00000000000000ffULL) << 56))) ### define is not number */
/* #define __DARWIN_OS_INLINE static inline ### define is not number */
/* #define __DARWIN_OSSwapInt16 (x) ((__uint16_t)(__builtin_constant_p(x) ? __DARWIN_OSSwapConstInt16(x) : _OSSwapInt16(x))) ### define is not number */
/* #define __DARWIN_OSSwapInt32 (x) (__builtin_constant_p(x) ? __DARWIN_OSSwapConstInt32(x) : _OSSwapInt32(x)) ### define is not number */
/* #define __DARWIN_OSSwapInt64 (x) (__builtin_constant_p(x) ? __DARWIN_OSSwapConstInt64(x) : _OSSwapInt64(x)) ### define is not number */
/* #define ntohs (x) __DARWIN_OSSwapInt16(x) ### define is not number */
/* #define htons (x) __DARWIN_OSSwapInt16(x) ### define is not number */
/* #define ntohl (x) __DARWIN_OSSwapInt32(x) ### define is not number */
/* #define htonl (x) __DARWIN_OSSwapInt32(x) ### define is not number */
/* #define ntohll (x) __DARWIN_OSSwapInt64(x) ### define is not number */
/* #define htonll (x) __DARWIN_OSSwapInt64(x) ### define is not number */
/* #define NTOHL (x) (x) = ntohl((__uint32_t)x) ### define is not number */
/* #define NTOHS (x) (x) = ntohs((__uint16_t)x) ### define is not number */
/* #define NTOHLL (x) (x) = ntohll((__uint64_t)x) ### define is not number */
/* #define HTONL (x) (x) = htonl((__uint32_t)x) ### define is not number */
/* #define HTONS (x) (x) = htons((__uint16_t)x) ### define is not number */
/* #define HTONLL (x) (x) = htonll((__uint64_t)x) ### define is not number */
/* + END <machine/endian.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/endian.h */
]]
