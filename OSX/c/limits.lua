local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <limits.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/limits.h */
/* ++ BEGIN <limits.h$include_next> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/limits.h */
/* +++ BEGIN <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
]] require 'ffi.req' 'c.sys.cdefs' ffi.cdef[[
/* +++ END <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN <machine/limits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/limits.h */
/* ++++ BEGIN <i386/limits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/limits.h */
/* +++++ BEGIN <i386/_limits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_limits.h */
/* +++++ END <i386/_limits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_limits.h */
/* ++++ END <i386/limits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/limits.h */
/* +++ END <machine/limits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/limits.h */
/* +++ BEGIN <sys/syslimits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/syslimits.h */
/* +++ END <sys/syslimits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/syslimits.h */
/* ++ END <limits.h$include_next> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/limits.h */
/* + END <limits.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/limits.h */
enum { __CLANG_LIMITS_H = 1 };
enum { _GCC_LIMITS_H_ = 1 };
/* #define SCHAR_MAX __SCHAR_MAX__ ### define is not number */
/* #define SHRT_MAX __SHRT_MAX__ ### define is not number */
/* #define INT_MAX __INT_MAX__ ### define is not number */
/* #define LONG_MAX __LONG_MAX__ ### define is not number */
/* #define SCHAR_MIN (-__SCHAR_MAX__-1) ### define is not number */
/* #define SHRT_MIN (-__SHRT_MAX__ -1) ### define is not number */
/* #define INT_MIN (-__INT_MAX__ -1) ### define is not number */
/* #define LONG_MIN (-__LONG_MAX__ -1L) ### define is not number */
/* #define UCHAR_MAX (__SCHAR_MAX__*2 +1) ### define is not number */
/* #define USHRT_MAX (__SHRT_MAX__ * 2 + 1) ### define is not number */
/* #define UINT_MAX (__INT_MAX__ *2U +1U) ### define is not number */
/* #define ULONG_MAX (__LONG_MAX__ *2UL+1UL) ### define is not number */
/* #define CHAR_BIT __CHAR_BIT__ ### define is not number */
/* #define CHAR_MIN SCHAR_MIN ### define is not number */
/* #define CHAR_MAX __SCHAR_MAX__ ### define is not number */
/* #define LLONG_MAX __LONG_LONG_MAX__ ### define is not number */
/* #define LLONG_MIN (-__LONG_LONG_MAX__-1LL) ### define is not number */
/* #define ULLONG_MAX (__LONG_LONG_MAX__*2ULL+1ULL) ### define is not number */
/* #define LONG_LONG_MAX __LONG_LONG_MAX__ ### define is not number */
/* #define LONG_LONG_MIN (-__LONG_LONG_MAX__-1LL) ### define is not number */
/* #define ULONG_LONG_MAX (__LONG_LONG_MAX__*2ULL+1ULL) ### define is not number */
]]

-- add in values that can't be ffi.cdef enum'd
local wrapper = setmetatable({}, {__index=ffi.C})
wrapper.LONG_MAX = 0x7FFFFFFFFFFFFFFFLL
wrapper.LONG_MIN = -wrapper.LONG_MAX - 1LL
wrapper.ULONG_MAX = 0xFFFFFFFFFFFFFFFFULL
wrapper.LLONG_MAX = wrapper.LONG_MAX
wrapper.LONG_LONG_MIN = wrapper.LONG_MIN
wrapper.LONG_LONG_MAX = wrapper.LONG_MAX
wrapper.LLONG_MIN = wrapper.LONG_MIN
return wrapper
