local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
typedef struct {
	unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
/* + END   /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
]]
