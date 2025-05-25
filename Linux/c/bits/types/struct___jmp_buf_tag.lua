local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <bits/types/struct___jmp_buf_tag.h> /usr/include/x86_64-linux-gnu/bits/types/struct___jmp_buf_tag.h */
/* ++ BEGIN <bits/setjmp.h> /usr/include/x86_64-linux-gnu/bits/setjmp.h */
]] require 'ffi.req' 'c.bits.setjmp' ffi.cdef[[
/* ++ END <bits/setjmp.h> /usr/include/x86_64-linux-gnu/bits/setjmp.h */
/* ++ BEGIN <bits/types/__sigset_t.h> /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
]] require 'ffi.req' 'c.bits.types.__sigset_t' ffi.cdef[[
/* ++ END <bits/types/__sigset_t.h> /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
struct __jmp_buf_tag
  {
    __jmp_buf __jmpbuf;
    int __mask_was_saved;
    __sigset_t __saved_mask;
  };
/* + END <bits/types/struct___jmp_buf_tag.h> /usr/include/x86_64-linux-gnu/bits/types/struct___jmp_buf_tag.h */
]]
