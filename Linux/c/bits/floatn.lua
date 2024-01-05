local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/bits/floatn.h */
/* ++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END   /usr/include/features.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/floatn-common.h */
/* +++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* +++ END   /usr/include/features.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/long-double.h */
/* +++ END   /usr/include/x86_64-linux-gnu/bits/long-double.h */
/* ++ END   /usr/include/x86_64-linux-gnu/bits/floatn-common.h */
/* + END   /usr/include/x86_64-linux-gnu/bits/floatn.h */
]]
