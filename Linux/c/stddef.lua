local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
/* #define NULL ((void *)0) ### string, not number "((void *)0)" */
typedef struct {
	long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
	long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
/* + END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
]]
