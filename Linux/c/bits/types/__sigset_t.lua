local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
enum { ____sigset_t_defined = 1 };
/* #define _SIGSET_NWORDS (1024 / (8 * sizeof (unsigned long int))) ### string, not number "(1024 / (8 * sizeof (unsigned long int)))" */
typedef struct {
	unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
/* + END   /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
]]
