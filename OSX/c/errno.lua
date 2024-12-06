local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/errno.h */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/errno.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_errno_t.h */
typedef int errno_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_errno_t.h */
extern int * __error(void);
/* #define errno (*__error()) ### string, not number "(*__error())" */
enum { EPERM = 1 };
enum { ENOENT = 2 };
enum { ESRCH = 3 };
enum { EINTR = 4 };
enum { EIO = 5 };
enum { ENXIO = 6 };
enum { E2BIG = 7 };
enum { ENOEXEC = 8 };
enum { EBADF = 9 };
enum { ECHILD = 10 };
enum { EDEADLK = 11 };
enum { ENOMEM = 12 };
enum { EACCES = 13 };
enum { EFAULT = 14 };
enum { ENOTBLK = 15 };
enum { EBUSY = 16 };
enum { EEXIST = 17 };
enum { EXDEV = 18 };
enum { ENODEV = 19 };
enum { ENOTDIR = 20 };
enum { EISDIR = 21 };
enum { EINVAL = 22 };
enum { ENFILE = 23 };
enum { EMFILE = 24 };
enum { ENOTTY = 25 };
enum { ETXTBSY = 26 };
enum { EFBIG = 27 };
enum { ENOSPC = 28 };
enum { ESPIPE = 29 };
enum { EROFS = 30 };
enum { EMLINK = 31 };
enum { EPIPE = 32 };
enum { EDOM = 33 };
enum { ERANGE = 34 };
enum { EAGAIN = 35 };
enum { EWOULDBLOCK = 35 };
enum { EINPROGRESS = 36 };
enum { EALREADY = 37 };
enum { ENOTSOCK = 38 };
enum { EDESTADDRREQ = 39 };
enum { EMSGSIZE = 40 };
enum { EPROTOTYPE = 41 };
enum { ENOPROTOOPT = 42 };
enum { EPROTONOSUPPORT = 43 };
enum { ESOCKTNOSUPPORT = 44 };
enum { ENOTSUP = 45 };
enum { EPFNOSUPPORT = 46 };
enum { EAFNOSUPPORT = 47 };
enum { EADDRINUSE = 48 };
enum { EADDRNOTAVAIL = 49 };
enum { ENETDOWN = 50 };
enum { ENETUNREACH = 51 };
enum { ENETRESET = 52 };
enum { ECONNABORTED = 53 };
enum { ECONNRESET = 54 };
enum { ENOBUFS = 55 };
enum { EISCONN = 56 };
enum { ENOTCONN = 57 };
enum { ESHUTDOWN = 58 };
enum { ETOOMANYREFS = 59 };
enum { ETIMEDOUT = 60 };
enum { ECONNREFUSED = 61 };
enum { ELOOP = 62 };
enum { ENAMETOOLONG = 63 };
enum { EHOSTDOWN = 64 };
enum { EHOSTUNREACH = 65 };
enum { ENOTEMPTY = 66 };
enum { EPROCLIM = 67 };
enum { EUSERS = 68 };
enum { EDQUOT = 69 };
enum { ESTALE = 70 };
enum { EREMOTE = 71 };
enum { EBADRPC = 72 };
enum { ERPCMISMATCH = 73 };
enum { EPROGUNAVAIL = 74 };
enum { EPROGMISMATCH = 75 };
enum { EPROCUNAVAIL = 76 };
enum { ENOLCK = 77 };
enum { ENOSYS = 78 };
enum { EFTYPE = 79 };
enum { EAUTH = 80 };
enum { ENEEDAUTH = 81 };
enum { EPWROFF = 82 };
enum { EDEVERR = 83 };
enum { EOVERFLOW = 84 };
enum { EBADEXEC = 85 };
enum { EBADARCH = 86 };
enum { ESHLIBVERS = 87 };
enum { EBADMACHO = 88 };
enum { ECANCELED = 89 };
enum { EIDRM = 90 };
enum { ENOMSG = 91 };
enum { EILSEQ = 92 };
enum { ENOATTR = 93 };
enum { EBADMSG = 94 };
enum { EMULTIHOP = 95 };
enum { ENODATA = 96 };
enum { ENOLINK = 97 };
enum { ENOSR = 98 };
enum { ENOSTR = 99 };
enum { EPROTO = 100 };
enum { ETIME = 101 };
enum { EOPNOTSUPP = 102 };
enum { ENOPOLICY = 103 };
enum { ENOTRECOVERABLE = 104 };
enum { EOWNERDEAD = 105 };
enum { EQFULL = 106 };
enum { ELAST = 106 };
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/errno.h */
/* + END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/errno.h */
]]
return setmetatable({
	errno = function()
		return ffi.C.__errno_location()[0]
	end,
}, {
	__index = ffi.C,
})
