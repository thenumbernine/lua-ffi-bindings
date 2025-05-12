local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <bits/types/sigset_t.h> /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h */
/* ++ BEGIN <bits/types/__sigset_t.h> /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
]] require 'ffi.req' 'c.bits.types.__sigset_t' ffi.cdef[[
/* ++ END <bits/types/__sigset_t.h> /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
typedef __sigset_t sigset_t;
/* + END <bits/types/sigset_t.h> /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h */
]]
