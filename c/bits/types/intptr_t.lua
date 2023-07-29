local ffi = require 'ffi'
-- this isn't a linux file, it's just common code in a few other files, and I don't think the ffi cdef can handle ifdefs ...
ffi.cdef[[
//stdint.h has this:
//typedef long int intptr_t;
//unistd.h has this:
typedef __intptr_t intptr_t;
// and c/bits/types.lua has __intptr_t
// which is in both before their def of this file.
enum { __intptr_t_defined = 1 };
]]
