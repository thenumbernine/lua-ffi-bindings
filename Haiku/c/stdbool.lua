local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <stdbool.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/stdbool.h */
enum { _STDBOOL_H = 1 };
/* #define bool _Bool ### define is not number */
enum { __bool_true_false_are_defined = 1 };
/* + END <stdbool.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/stdbool.h */
]]
