local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <_ctermid.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_ctermid.h */
/* ++ BEGIN <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
]] require 'ffi.req' 'c.sys.cdefs' ffi.cdef[[
/* ++ END <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
char *ctermid(char *);
/* + END <_ctermid.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_ctermid.h */
]]
