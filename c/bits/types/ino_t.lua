-- this isn't a linux file, it's just common code in a few other files, and I don't think the ffi cdef can handle ifdefs ...
local ffi = require 'ffi'
ffi.cdef[[
typedef __ino_t ino_t;
enum { __ino_t_defined = 1 };
]]
