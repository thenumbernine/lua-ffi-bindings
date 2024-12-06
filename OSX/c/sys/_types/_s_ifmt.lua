local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_s_ifmt.h */
enum { S_IFMT = 61440 };
enum { S_IFIFO = 4096 };
enum { S_IFCHR = 8192 };
enum { S_IFDIR = 16384 };
enum { S_IFBLK = 24576 };
enum { S_IFREG = 32768 };
enum { S_IFLNK = 40960 };
enum { S_IFSOCK = 49152 };
enum { S_IFWHT = 57344 };
enum { S_IRWXU = 448 };
enum { S_IRUSR = 256 };
enum { S_IWUSR = 128 };
enum { S_IXUSR = 64 };
enum { S_IRWXG = 56 };
enum { S_IRGRP = 32 };
enum { S_IWGRP = 16 };
enum { S_IXGRP = 8 };
enum { S_IRWXO = 7 };
enum { S_IROTH = 4 };
enum { S_IWOTH = 2 };
enum { S_IXOTH = 1 };
enum { S_ISUID = 2048 };
enum { S_ISGID = 1024 };
enum { S_ISVTX = 512 };
enum { S_ISTXT = 512 };
enum { S_IREAD = 256 };
enum { S_IWRITE = 128 };
enum { S_IEXEC = 64 };
/* + END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_s_ifmt.h */
]]
