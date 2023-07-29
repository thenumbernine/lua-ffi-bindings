local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/lib/gcc/x86_64-linux-gnu/12/include/stdbool.h */
enum { _STDBOOL_H = 1 };
/* manually commented out: enum { bool = 0 }; */
/* manually commented out: enum { true = 1 }; */
/* manually commented out: enum { false = 0 }; */
enum { __bool_true_false_are_defined = 1 };
/* + END   /usr/lib/gcc/x86_64-linux-gnu/12/include/stdbool.h */
]]
