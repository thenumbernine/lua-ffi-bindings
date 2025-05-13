local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* + END <features.h> /usr/include/features.h */
/* + BEGIN <bits/types/__sigset_t.h> /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
/* #define _SIGSET_NWORDS (1024 / (8 * sizeof (unsigned long int))) ### define is not number */
/* + END <bits/types/__sigset_t.h> /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
]]
