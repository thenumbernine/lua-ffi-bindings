local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <config/HaikuConfig.h> /boot/system/develop/headers/config/HaikuConfig.h */
enum { _CONFIG_HAIKU_CONFIG_H = 1 };
/* #define __HAIKU_ARCH x86_64 ### define is not number */
/* #define __HAIKU_ARCH_ABI "x86_64" ### define is not number */
enum { __HAIKU_ARCH_X86_64 = 1 };
enum { __HAIKU_ARCH_BITS = 64 };
enum { __HAIKU_ARCH_64_BIT = 1 };
enum { __HAIKU_ARCH_PHYSICAL_BITS = 64 };
enum { __HAIKU_ARCH_PHYSICAL_64_BIT = 1 };
enum { __HAIKU_LITTLE_ENDIAN = 1 };
/* #define __HAIKU_ARCH_HEADER (header) <arch/__HAIKU_ARCH/header> ### define is not number */
/* #define __HAIKU_SUBDIR_ARCH_HEADER (subdir,header) <subdir/arch/__HAIKU_ARCH/header> ### define is not number */
/* + END <config/HaikuConfig.h> /boot/system/develop/headers/config/HaikuConfig.h */
]]
