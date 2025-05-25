local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* + END <features.h> /usr/include/features.h */
/* + BEGIN <bits/types/FILE.h> /usr/include/x86_64-linux-gnu/bits/types/FILE.h */
struct _IO_FILE;
typedef struct _IO_FILE FILE;
/* + END <bits/types/FILE.h> /usr/include/x86_64-linux-gnu/bits/types/FILE.h */
]]
