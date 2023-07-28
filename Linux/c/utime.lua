local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/utime.h */
enum { _UTIME_H = 1 };
/* BEGIN /usr/include/features.h */
]] require 'ffi.c.features' ffi.cdef[[
/* END   /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.c.bits.types' ffi.cdef[[
/* END   /usr/include/x86_64-linux-gnu/bits/types.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
]] require 'ffi.c.bits.types.time_t' ffi.cdef[[
/* END   /usr/include/x86_64-linux-gnu/bits/types/time_t.h */
struct utimbuf {
	__time_t actime;
	__time_t modtime;
};
extern int utime (const char *__file, const struct utimbuf *__file_times) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
/* END   /usr/include/utime.h */
]]
