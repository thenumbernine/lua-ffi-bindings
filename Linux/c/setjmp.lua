local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/setjmp.h */
/* ++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END   /usr/include/features.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/setjmp.h */
]] require 'ffi.req' 'c.bits.setjmp' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/setjmp.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct___jmp_buf_tag.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/setjmp.h */
]] require 'ffi.req' 'c.bits.setjmp' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/setjmp.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
]] require 'ffi.req' 'c.bits.types.__sigset_t' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
struct __jmp_buf_tag {
	__jmp_buf __jmpbuf;
	int __mask_was_saved;
	__sigset_t __saved_mask;
};
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/struct___jmp_buf_tag.h */
typedef struct __jmp_buf_tag jmp_buf[1];
extern int setjmp (jmp_buf __env) __attribute__ ((__nothrow__));
extern int __sigsetjmp (struct __jmp_buf_tag __env[1], int __savemask) __attribute__ ((__nothrow__));
extern int _setjmp (struct __jmp_buf_tag __env[1]) __attribute__ ((__nothrow__));
extern void longjmp (struct __jmp_buf_tag __env[1], int __val) __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
extern void _longjmp (struct __jmp_buf_tag __env[1], int __val) __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
typedef struct __jmp_buf_tag sigjmp_buf[1];
extern void siglongjmp (sigjmp_buf __env, int __val) __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
/* + END   /usr/include/setjmp.h */
]]
