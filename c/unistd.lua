local ffi = require 'ffi'

ffi.cdef[[

int chdir(const char* path);
extern char* getcwd(char* buf, size_t size);

// in Windows in direct.h:
int _chdir(const char* path);
extern char* _getcwd(char* buf, size_t size);

struct timespec {
    time_t tv_sec;        /* seconds */
    long   tv_nsec;       /* nanoseconds */
};

unsigned int sleep(unsigned int seconds);
int usleep(useconds_t usec);
int nanosleep(const struct timespec *req, struct timespec *rem);
]]

-- I can't change ffi.C.getcwd to ffi.C._getcwd in the case of Windows
-- but I can at least return a table that changes names depending on the OS:

if ffi.os == 'Windows' then
	return {
		chdir = ffi.C._chdir,
		getcwd = ffi.C._getcwd,
	}
else
	return {
		chdir = ffi.C.chdir,
		getcwd = ffi.C.getcwd,
	}
end
