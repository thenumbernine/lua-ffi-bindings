local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/_types/_suseconds_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_suseconds_t.h */
/* ++ BEGIN <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
]] require 'ffi.req' 'c.sys._types' ffi.cdef[[
/* ++ END <sys/_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_suseconds_t suseconds_t;
/* + END <sys/_types/_suseconds_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_suseconds_t.h */
]]
