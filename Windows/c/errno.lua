local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/errno.h */
enum { _INC_ERRNO = 1 };
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
int* __cdecl _errno(void);
/* #define errno (*_errno()) ### string, not number "(*_errno())" */
errno_t __cdecl _set_errno( int _Value);
errno_t __cdecl _get_errno( int* _Value);
unsigned long* __cdecl __doserrno(void);
/* #define _doserrno (*__doserrno()) ### string, not number "(*__doserrno())" */
errno_t __cdecl _set_doserrno( unsigned long _Value);
errno_t __cdecl _get_doserrno( unsigned long * _Value);
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
enum { EAGAIN = 11 };
enum { ENOMEM = 12 };
enum { EACCES = 13 };
enum { EFAULT = 14 };
enum { EBUSY = 16 };
enum { EEXIST = 17 };
enum { EXDEV = 18 };
enum { ENODEV = 19 };
enum { ENOTDIR = 20 };
enum { EISDIR = 21 };
enum { ENFILE = 23 };
enum { EMFILE = 24 };
enum { ENOTTY = 25 };
enum { EFBIG = 27 };
enum { ENOSPC = 28 };
enum { ESPIPE = 29 };
enum { EROFS = 30 };
enum { EMLINK = 31 };
enum { EPIPE = 32 };
enum { EDOM = 33 };
enum { EDEADLK = 36 };
enum { ENAMETOOLONG = 38 };
enum { ENOLCK = 39 };
enum { ENOSYS = 40 };
enum { ENOTEMPTY = 41 };
enum { _SECURECRT_ERRCODE_VALUES_DEFINED = 1 };
enum { EINVAL = 22 };
enum { ERANGE = 34 };
enum { EILSEQ = 42 };
enum { STRUNCATE = 80 };
enum { EDEADLOCK = 36 };
enum { EADDRINUSE = 100 };
enum { EADDRNOTAVAIL = 101 };
enum { EAFNOSUPPORT = 102 };
enum { EALREADY = 103 };
enum { EBADMSG = 104 };
enum { ECANCELED = 105 };
enum { ECONNABORTED = 106 };
enum { ECONNREFUSED = 107 };
enum { ECONNRESET = 108 };
enum { EDESTADDRREQ = 109 };
enum { EHOSTUNREACH = 110 };
enum { EIDRM = 111 };
enum { EINPROGRESS = 112 };
enum { EISCONN = 113 };
enum { ELOOP = 114 };
enum { EMSGSIZE = 115 };
enum { ENETDOWN = 116 };
enum { ENETRESET = 117 };
enum { ENETUNREACH = 118 };
enum { ENOBUFS = 119 };
enum { ENODATA = 120 };
enum { ENOLINK = 121 };
enum { ENOMSG = 122 };
enum { ENOPROTOOPT = 123 };
enum { ENOSR = 124 };
enum { ENOSTR = 125 };
enum { ENOTCONN = 126 };
enum { ENOTRECOVERABLE = 127 };
enum { ENOTSOCK = 128 };
enum { ENOTSUP = 129 };
enum { EOPNOTSUPP = 130 };
enum { EOTHER = 131 };
enum { EOVERFLOW = 132 };
enum { EOWNERDEAD = 133 };
enum { EPROTO = 134 };
enum { EPROTONOSUPPORT = 135 };
enum { EPROTOTYPE = 136 };
enum { ETIME = 137 };
enum { ETIMEDOUT = 138 };
enum { ETXTBSY = 139 };
enum { EWOULDBLOCK = 140 };
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/errno.h */
]]
