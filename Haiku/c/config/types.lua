local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <config/types.h> /boot/system/develop/headers/config/types.h */
/* ++ BEGIN <config/HaikuConfig.h> /boot/system/develop/headers/config/HaikuConfig.h */
]] require 'ffi.req' 'c.config.HaikuConfig' ffi.cdef[[
/* ++ END <config/HaikuConfig.h> /boot/system/develop/headers/config/HaikuConfig.h */
typedef signed char __haiku_std_int8;
typedef unsigned char __haiku_std_uint8;
typedef signed short __haiku_std_int16;
typedef unsigned short __haiku_std_uint16;
typedef signed int __haiku_std_int32;
typedef unsigned int __haiku_std_uint32;
typedef signed long __haiku_std_int64;
typedef unsigned long __haiku_std_uint64;
typedef __haiku_std_int8 __haiku_int8;
typedef __haiku_std_uint8 __haiku_uint8;
typedef __haiku_std_int16 __haiku_int16;
typedef __haiku_std_uint16 __haiku_uint16;
typedef __haiku_std_int32 __haiku_int32;
typedef __haiku_std_uint32 __haiku_uint32;
typedef __haiku_std_int64 __haiku_int64;
typedef __haiku_std_uint64 __haiku_uint64;
typedef signed long int __haiku_saddr_t;
typedef unsigned long int __haiku_addr_t;
 typedef __haiku_int64 __haiku_phys_saddr_t;
 typedef __haiku_uint64 __haiku_phys_addr_t;
 typedef __haiku_addr_t __haiku_generic_addr_t;
enum { _CONFIG_TYPES_H = 1 };
/* #define __HAIKU_SADDR_MAX (9223372036854775807LL) ### define is not number */
/* #define __HAIKU_ADDR_MAX (18446744073709551615ULL) ### define is not number */
/* #define __HAIKU_SADDR_MIN (-__HAIKU_SADDR_MAX-1) ### define is not number */
/* #define __HAIKU_PHYS_SADDR_MAX (9223372036854775807LL) ### define is not number */
/* #define __HAIKU_PHYS_ADDR_MAX (18446744073709551615ULL) ### define is not number */
/* #define __HAIKU_PHYS_SADDR_MIN (-__HAIKU_SADDR_MAX-1) ### define is not number */
/* #define __HAIKU_STD_PRI_PREFIX_32 "" ### define is not number */
/* #define __HAIKU_STD_PRI_PREFIX_64 "l" ### define is not number */
/* #define __HAIKU_PRI_PREFIX_32 "" ### define is not number */
/* #define __HAIKU_PRI_PREFIX_64 "l" ### define is not number */
/* #define __HAIKU_PRI_PREFIX_ADDR "l" ### define is not number */
/* #define __HAIKU_PRI_PREFIX_PHYS_ADDR "l" ### define is not number */
/* #define __HAIKU_GENERIC_ADDR_MAX (18446744073709551615ULL) ### define is not number */
/* #define __HAIKU_PRI_PREFIX_GENERIC_ADDR "l" ### define is not number */
/* + END <config/types.h> /boot/system/develop/headers/config/types.h */
]]
