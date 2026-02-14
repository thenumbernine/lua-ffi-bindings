local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <utime.h> /boot/system/develop/headers/posix/utime.h */
/* ++ BEGIN <sys/types.h> ./Haiku/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> ./Haiku/sys/types.h */
struct utimbuf {
 time_t actime;
 time_t modtime;
};
extern
int utime(const char *path, const struct utimbuf *buffer);
enum { _UTIME_H_ = 1 };
/* + END <utime.h> /boot/system/develop/headers/posix/utime.h */
]]
return setmetatable({
	struct_utimbuf = 'struct utimbuf',
}, {
	__index = ffi.C,
})
