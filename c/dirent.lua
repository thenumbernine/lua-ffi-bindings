local ffi = require 'ffi'

-- io.h
ffi.cdef[[

enum {
	FILENAME_MAX = 260	//mingw's version
}
int _mkdir(const char *);
]]

-- dirent.h
ffi.cdef[[

typedef void DIR;
struct dirent {
	long d_ino;
	unsigned short d_reclen;
	unsigned short d_namlen;
	char d_name[FILENAME_MAX];
};

DIR* opendir (const char*);
struct dirent* readdir (DIR*);
int closedir (DIR*);

]]
