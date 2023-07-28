-- this isn't a linux file, it's just common code in a few other files, and I don't think the ffi cdef can handle ifdefs ...
local ffi = require 'ffi'
ffi.cdef[[
typedef __dev_t dev_t;
enum { __dev_t_defined = 1 };
]]
