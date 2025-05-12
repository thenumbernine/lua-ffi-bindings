local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <bits/types/__mbstate_t.h> /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h */
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
/* + END <bits/types/__mbstate_t.h> /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h */
]]
