local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_def.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
typedef __signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;
typedef long __darwin_intptr_t;
typedef unsigned int __darwin_natural_t;
typedef int __darwin_ct_rune_t;
typedef union {
	char __mbstate8[128];
	long long _mbstateL;
} __mbstate_t;
typedef __mbstate_t __darwin_mbstate_t;
typedef long int __darwin_ptrdiff_t;
typedef long unsigned int __darwin_size_t;
typedef __builtin_va_list __darwin_va_list;
typedef int __darwin_wchar_t;
typedef __darwin_wchar_t __darwin_rune_t;
typedef int __darwin_wint_t;
typedef unsigned long __darwin_clock_t;
typedef __uint32_t __darwin_socklen_t;
typedef long __darwin_ssize_t;
typedef long __darwin_time_t;
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
typedef signed char int8_t;
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
typedef short int16_t;
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
typedef int int32_t;
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
typedef long long int64_t;
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h */
typedef unsigned char u_int8_t;
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h */
typedef unsigned short u_int16_t;
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h */
typedef unsigned int u_int32_t;
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h */
typedef unsigned long long u_int64_t;
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h */
typedef int64_t register_t;
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
typedef __darwin_intptr_t intptr_t;
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
typedef unsigned long uintptr_t;
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
typedef u_int64_t user_addr_t;
typedef u_int64_t user_size_t;
typedef int64_t user_ssize_t;
typedef int64_t user_long_t;
typedef u_int64_t user_ulong_t;
typedef int64_t user_time_t;
typedef int64_t user_off_t;
/* #define USER_ADDR_NULL  ((user_addr_t) 0) ### string, not number "((user_addr_t) 0)" */
typedef u_int64_t syscall_arg_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
typedef struct fd_set {
	__int32_t fds_bits[ ((((1024) % ( (sizeof(__int32_t) * 8))) == 0) ? ((1024) / ( (sizeof(__int32_t) * 8))) : (((1024) / ( (sizeof(__int32_t) * 8))) + 1)) ];
} fd_set;
int __darwin_check_fd_set_overflow(int, const void *, int);
inline __attribute__ ((__always_inline__)) int __darwin_check_fd_set(int _a, const void *_b) {
/* #pragma clang diagnostic push */
/* #pragma clang diagnostic ignored "-Wunguarded-availability-new" */
	if ((uintptr_t)&__darwin_check_fd_set_overflow != (uintptr_t) 0) {
	return __darwin_check_fd_set_overflow(_a, _b, 0);
} else {
	return 1;
}
/* #pragma clang diagnostic pop */
} inline __attribute__ ((__always_inline__)) int __darwin_fd_isset(int _fd, const struct fd_set *_p) {
	if (__darwin_check_fd_set(_fd, (const void *) _p)) { return _p->fds_bits[(unsigned long)_fd / (sizeof(__int32_t) * 8)] & ((__int32_t)(((unsigned long)1) << ((unsigned long)_fd % (sizeof(__int32_t) * 8))));
} return 0;
} inline __attribute__ ((__always_inline__)) void __darwin_fd_set(int _fd, struct fd_set *const _p) {
	if (__darwin_check_fd_set(_fd, (const void *) _p)) { (_p->fds_bits[(unsigned long)_fd / (sizeof(__int32_t) * 8)] |= ((__int32_t)(((unsigned long)1) << ((unsigned long)_fd % (sizeof(__int32_t) * 8)))));
} } inline __attribute__ ((__always_inline__)) void __darwin_fd_clr(int _fd, struct fd_set *const _p) {
	if (__darwin_check_fd_set(_fd, (const void *) _p)) { (_p->fds_bits[(unsigned long)_fd / (sizeof(__int32_t) * 8)] &= ~((__int32_t)(((unsigned long)1) << ((unsigned long)_fd % (sizeof(__int32_t) * 8)))));
} }
/* + END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_def.h */
]]
