local ffi = require 'ffi'
ffi.cdef[[
int ioctl(int fildes, unsigned long request, ...);
]]