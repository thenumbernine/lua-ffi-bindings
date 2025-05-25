local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* + END <features.h> /usr/include/features.h */
/* + BEGIN <bits/pthread_stack_min-dynamic.h> /usr/include/x86_64-linux-gnu/bits/pthread_stack_min-dynamic.h */
/* ++ BEGIN <bits/pthread_stack_min.h> /usr/include/x86_64-linux-gnu/bits/pthread_stack_min.h */
/* ++ END <bits/pthread_stack_min.h> /usr/include/x86_64-linux-gnu/bits/pthread_stack_min.h */
enum { PTHREAD_STACK_MIN = 16384 };
/* + END <bits/pthread_stack_min-dynamic.h> /usr/include/x86_64-linux-gnu/bits/pthread_stack_min-dynamic.h */
]]
