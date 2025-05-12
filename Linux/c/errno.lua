local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <errno.h> /usr/include/errno.h */
extern int *__errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
/* + END <errno.h> /usr/include/errno.h */
enum { _ERRNO_H = 1 };
/* #define errno (*__errno_location ()) ### define is not number */
]]
return setmetatable({
	errno = function()
		return ffi.C.__errno_location()[0]
	end,
}, {
	__index = ffi.C,
})
