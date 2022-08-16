local ffi = require 'ffi'
-- this isn't a linux file, it's just common code in a few other files, and I don't think the ffi cdef can handle ifdefs ...
ffi.cdef[[
typedef __pid_t pid_t;
enum { __pid_t_defined = 1 };
]]
