local ffi = require 'ffi'

ffi.cdef[[

int chdir(const char* path);
extern char* getcwd(char* buf, size_t size);

]]
