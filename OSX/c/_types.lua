local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
/* ++ BEGIN <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
]] require 'ffi.req' 'c.sys._types' ffi.cdef[[
/* ++ END <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef int __darwin_nl_item;
typedef int __darwin_wctrans_t;
typedef __uint32_t __darwin_wctype_t;
/* #define __strfmonlike (fmtarg,firstvararg) __attribute__((__format__ (__strfmon__, fmtarg, firstvararg))) ### define is not number */
/* #define __strftimelike (fmtarg) __attribute__((__format__ (__strftime__, fmtarg, 0))) ### define is not number */
enum { __DARWIN_WCHAR_MAX = 2147483647 };
/* #define __DARWIN_WCHAR_MIN (-0x7fffffff - 1) ### define is not number */
/* #define __DARWIN_WEOF ((__darwin_wint_t)-1) ### define is not number */
enum { _FORTIFY_SOURCE = 2 };
/* + END <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
]]
