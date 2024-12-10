-- TODO generate this on Windows again
local ffi = require 'ffi'
flock_def = [[
struct flock {
	int64_t l_start;
	int64_t l_len;
	int32_t l_pid;
	short   l_type;
	short   l_whence;
};
enum { F_RDLCK = 1 };
enum { F_UNLCK = 2 };
enum { F_WRLCK = 3 };
enum { F_SETLK = 8 };
int fcntl(int fd, int cmd, ... /* arg */ );
]]
return ffi.C
