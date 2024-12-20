local ffi = require 'ffi'
ffi.cdef[[
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/dirent.h */
struct dirent {
	__ino_t d_ino;
	__off_t d_off;
	unsigned short int d_reclen;
	unsigned char d_type;
	char d_name[256];
};
enum { d_fileno = 0 };
/* ++ END   /usr/include/x86_64-linux-gnu/bits/dirent.h */
]]
