local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <errno.h> /usr/include/errno.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <bits/errno.h> /usr/include/x86_64-linux-gnu/bits/errno.h */
/* +++ BEGIN <linux/errno.h> /usr/include/linux/errno.h */
/* ++++ BEGIN <asm/errno.h> /usr/include/x86_64-linux-gnu/asm/errno.h */
/* +++++ BEGIN <asm-generic/errno.h> /usr/include/asm-generic/errno.h */
/* ++++++ BEGIN <asm-generic/errno-base.h> /usr/include/asm-generic/errno-base.h */
/* ++++++ END <asm-generic/errno-base.h> /usr/include/asm-generic/errno-base.h */
/* +++++ END <asm-generic/errno.h> /usr/include/asm-generic/errno.h */
/* ++++ END <asm/errno.h> /usr/include/x86_64-linux-gnu/asm/errno.h */
/* +++ END <linux/errno.h> /usr/include/linux/errno.h */
/* ++ END <bits/errno.h> /usr/include/x86_64-linux-gnu/bits/errno.h */
extern int *__errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
enum { _ERRNO_H = 1 };
/* #define errno (*__errno_location ()) ### define is not number */
/* + END <errno.h> /usr/include/errno.h */
]]
return setmetatable({
	errno = function()
		return ffi.C.__errno_location()[0]
	end,
}, {
	__index = ffi.C,
})
