local ffi = require 'ffi'

-- comments

--[[
/* #define errno (*_errno()) ### string, not number "(*_errno())" */
--]]

-- typedefs

require 'ffi.req' 'c.corecrt'

local wrapper
wrapper = require 'ffi.libwrapper'{
	defs = {

		-- enums

		EPERM = 1,
		ENOENT = 2,
		ESRCH = 3,
		EINTR = 4,
		EIO = 5,
		ENXIO = 6,
		E2BIG = 7,
		ENOEXEC = 8,
		EBADF = 9,
		ECHILD = 10,
		EAGAIN = 11,
		ENOMEM = 12,
		EACCES = 13,
		EFAULT = 14,
		EBUSY = 16,
		EEXIST = 17,
		EXDEV = 18,
		ENODEV = 19,
		ENOTDIR = 20,
		EISDIR = 21,
		ENFILE = 23,
		EMFILE = 24,
		ENOTTY = 25,
		EFBIG = 27,
		ENOSPC = 28,
		ESPIPE = 29,
		EROFS = 30,
		EMLINK = 31,
		EPIPE = 32,
		EDOM = 33,
		EDEADLK = 36,
		ENAMETOOLONG = 38,
		ENOLCK = 39,
		ENOSYS = 40,
		ENOTEMPTY = 41,
		EINVAL = 22,
		ERANGE = 34,
		EILSEQ = 42,
		STRUNCATE = 80,
		EDEADLOCK = 36,
		EADDRINUSE = 100,
		EADDRNOTAVAIL = 101,
		EAFNOSUPPORT = 102,
		EALREADY = 103,
		EBADMSG = 104,
		ECANCELED = 105,
		ECONNABORTED = 106,
		ECONNREFUSED = 107,
		ECONNRESET = 108,
		EDESTADDRREQ = 109,
		EHOSTUNREACH = 110,
		EIDRM = 111,
		EINPROGRESS = 112,
		EISCONN = 113,
		ELOOP = 114,
		EMSGSIZE = 115,
		ENETDOWN = 116,
		ENETRESET = 117,
		ENETUNREACH = 118,
		ENOBUFS = 119,
		ENODATA = 120,
		ENOLINK = 121,
		ENOMSG = 122,
		ENOPROTOOPT = 123,
		ENOSR = 124,
		ENOSTR = 125,
		ENOTCONN = 126,
		ENOTRECOVERABLE = 127,
		ENOTSOCK = 128,
		ENOTSUP = 129,
		EOPNOTSUPP = 130,
		EOTHER = 131,
		EOVERFLOW = 132,
		EOWNERDEAD = 133,
		EPROTO = 134,
		EPROTONOSUPPORT = 135,
		EPROTOTYPE = 136,
		ETIME = 137,
		ETIMEDOUT = 138,
		ETXTBSY = 139,
		EWOULDBLOCK = 140,

		-- functions

		_errno = [[int* __cdecl _errno();]],
		_set_errno = [[errno_t __cdecl _set_errno( int _Value);]],
		_get_errno = [[errno_t __cdecl _get_errno( int* _Value);]],
		__doserrno = [[unsigned long* __cdecl __doserrno();]],
		_set_doserrno = [[errno_t __cdecl _set_doserrno( unsigned long _Value);]],
		_get_doserrno = [[errno_t __cdecl _get_doserrno( unsigned long * _Value);]],

		errno = function()
			return function()
				return wrapper._errno()[0]
			end
		end,
		str = function()
			require 'ffi.req' 'c.string'	-- strerror
			return function()
				local sp = ffi.C.strerror(wrapper.errno())
				if sp == nil then return '(null)' end
				return ffi.string(sp)
			end
		end,
	},
}
return wrapper
