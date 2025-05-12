local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <bits/types/__sigset_t.h> /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
/* + END <bits/types/__sigset_t.h> /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
/* #define _SIGSET_NWORDS (1024 / (8 * sizeof (unsigned long int))) ### define is not number */
]]
