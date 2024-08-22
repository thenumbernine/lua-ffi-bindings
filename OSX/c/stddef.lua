local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/usr/lib/clang/15.0.0/include/stddef.h */
typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
/* #  define NULL ((void*)0) ### string, not number "((void*)0)" */
/* ++ BEGIN /Library/Developer/CommandLineTools/usr/lib/clang/15.0.0/include/__stddef_max_align_t.h */
typedef long double max_align_t;
/* ++ END   /Library/Developer/CommandLineTools/usr/lib/clang/15.0.0/include/__stddef_max_align_t.h */
/* + END   /Library/Developer/CommandLineTools/usr/lib/clang/15.0.0/include/stddef.h */
]]
