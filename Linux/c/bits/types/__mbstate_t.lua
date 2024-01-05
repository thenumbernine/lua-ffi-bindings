local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h */
typedef struct {
	int __count;
	union {
	unsigned int __wch;
	char __wchb[4];
} __value;
} __mbstate_t;
/* + END   /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h */
]]
