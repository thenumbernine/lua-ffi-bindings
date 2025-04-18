local ffi = require 'ffi'

-- comments

--[[
/* #define errno (*__error()) ### string, not number "(*__error())" */
--]]

-- typedefs

require 'ffi.req' 'c.sys._types._errno_t'

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
		EDEADLK = 11,
		ENOMEM = 12,
		EACCES = 13,
		EFAULT = 14,
		ENOTBLK = 15,
		EBUSY = 16,
		EEXIST = 17,
		EXDEV = 18,
		ENODEV = 19,
		ENOTDIR = 20,
		EISDIR = 21,
		EINVAL = 22,
		ENFILE = 23,
		EMFILE = 24,
		ENOTTY = 25,
		ETXTBSY = 26,
		EFBIG = 27,
		ENOSPC = 28,
		ESPIPE = 29,
		EROFS = 30,
		EMLINK = 31,
		EPIPE = 32,
		EDOM = 33,
		ERANGE = 34,
		EAGAIN = 35,
		EWOULDBLOCK = 35,
		EINPROGRESS = 36,
		EALREADY = 37,
		ENOTSOCK = 38,
		EDESTADDRREQ = 39,
		EMSGSIZE = 40,
		EPROTOTYPE = 41,
		ENOPROTOOPT = 42,
		EPROTONOSUPPORT = 43,
		ESOCKTNOSUPPORT = 44,
		ENOTSUP = 45,
		EPFNOSUPPORT = 46,
		EAFNOSUPPORT = 47,
		EADDRINUSE = 48,
		EADDRNOTAVAIL = 49,
		ENETDOWN = 50,
		ENETUNREACH = 51,
		ENETRESET = 52,
		ECONNABORTED = 53,
		ECONNRESET = 54,
		ENOBUFS = 55,
		EISCONN = 56,
		ENOTCONN = 57,
		ESHUTDOWN = 58,
		ETOOMANYREFS = 59,
		ETIMEDOUT = 60,
		ECONNREFUSED = 61,
		ELOOP = 62,
		ENAMETOOLONG = 63,
		EHOSTDOWN = 64,
		EHOSTUNREACH = 65,
		ENOTEMPTY = 66,
		EPROCLIM = 67,
		EUSERS = 68,
		EDQUOT = 69,
		ESTALE = 70,
		EREMOTE = 71,
		EBADRPC = 72,
		ERPCMISMATCH = 73,
		EPROGUNAVAIL = 74,
		EPROGMISMATCH = 75,
		EPROCUNAVAIL = 76,
		ENOLCK = 77,
		ENOSYS = 78,
		EFTYPE = 79,
		EAUTH = 80,
		ENEEDAUTH = 81,
		EPWROFF = 82,
		EDEVERR = 83,
		EOVERFLOW = 84,
		EBADEXEC = 85,
		EBADARCH = 86,
		ESHLIBVERS = 87,
		EBADMACHO = 88,
		ECANCELED = 89,
		EIDRM = 90,
		ENOMSG = 91,
		EILSEQ = 92,
		ENOATTR = 93,
		EBADMSG = 94,
		EMULTIHOP = 95,
		ENODATA = 96,
		ENOLINK = 97,
		ENOSR = 98,
		ENOSTR = 99,
		EPROTO = 100,
		ETIME = 101,
		EOPNOTSUPP = 102,
		ENOPOLICY = 103,
		ENOTRECOVERABLE = 104,
		EOWNERDEAD = 105,
		EQFULL = 106,
		ELAST = 106,

		-- functions

		__error = [[int * __error();]],

		str = function()
			-- upon errno.str() load, require c.string
			-- not before to prevent require loops
			require 'ffi.req' 'c.string'	-- strerror
			return function()
				local sp = ffi.C.strerror(wrapper.errno())
				if sp == nil then return '(null)' end
				return ffi.string(sp)
			end
		end,
	},
}

function wrapper.errno()
	return wrapper.__error()[0]
end

return wrapper
