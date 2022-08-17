-- this isn't a linux file, it's just common code in a few other files, and I don't think the ffi cdef can handle ifdefs ...
local ffi = require 'ffi'
ffi.cdef[[
typedef __off_t off_t;
enum { __off_t_defined = 1 };
]]
