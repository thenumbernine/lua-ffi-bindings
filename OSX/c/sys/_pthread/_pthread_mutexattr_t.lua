local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/_pthread/_pthread_mutexattr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_mutexattr_t.h */
/* ++ BEGIN <sys/_pthread/_pthread_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_types' ffi.cdef[[
/* ++ END <sys/_pthread/_pthread_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
typedef __darwin_pthread_mutexattr_t pthread_mutexattr_t;
/* + END <sys/_pthread/_pthread_mutexattr_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_mutexattr_t.h */
]]
