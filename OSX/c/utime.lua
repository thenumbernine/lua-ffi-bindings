local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/utime.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
typedef signed char int8_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
typedef short int16_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
typedef int int32_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
typedef long long int64_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h */
typedef unsigned char u_int8_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h */
typedef unsigned short u_int16_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h */
typedef unsigned int u_int32_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h */
typedef unsigned long long u_int64_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h */
typedef int64_t register_t;
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
typedef __darwin_intptr_t intptr_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
typedef unsigned long uintptr_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
typedef u_int64_t user_addr_t;
typedef u_int64_t user_size_t;
typedef int64_t user_ssize_t;
typedef int64_t user_long_t;
typedef u_int64_t user_ulong_t;
typedef int64_t user_time_t;
typedef int64_t user_off_t;
/* #define USER_ADDR_NULL  ((user_addr_t) 0) ### string, not number "((user_addr_t) 0)" */
typedef u_int64_t syscall_arg_t;
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
typedef __darwin_time_t time_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h */
struct utimbuf {
	time_t actime;
	time_t modtime;
};
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
int utime(const char *, const struct utimbuf *);
/* + END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/utime.h */
]]
return setmetatable({
	struct_utimbuf = 'struct utimbuf',
}, {
	__index = ffi.C,
})
