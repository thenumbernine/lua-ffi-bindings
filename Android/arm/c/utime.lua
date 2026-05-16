local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <utime.h> /data/data/com.termux/files/usr/bin/../../usr/include/utime.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
/* ++ BEGIN <linux/utime.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/utime.h */
struct utimbuf {
  __kernel_old_time_t actime;
  __kernel_old_time_t modtime;
};
/* ++ END <linux/utime.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/utime.h */
int utime(const char*  __filename, const struct utimbuf*  __times);
enum { _LINUX_UTIME_H = 1 };
/* + END <utime.h> /data/data/com.termux/files/usr/bin/../../usr/include/utime.h */
]]
return setmetatable({
	struct_utimbuf = 'struct utimbuf',
}, {
	__index = ffi.C,
})
