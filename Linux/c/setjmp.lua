local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <setjmp.h> /usr/include/setjmp.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <bits/setjmp.h> /usr/include/x86_64-linux-gnu/bits/setjmp.h */
]] require 'ffi.req' 'c.bits.setjmp' ffi.cdef[[
/* ++ END <bits/setjmp.h> /usr/include/x86_64-linux-gnu/bits/setjmp.h */
/* ++ BEGIN <bits/types/struct___jmp_buf_tag.h> /usr/include/x86_64-linux-gnu/bits/types/struct___jmp_buf_tag.h */
]] require 'ffi.req' 'c.bits.types.struct___jmp_buf_tag' ffi.cdef[[
/* ++ END <bits/types/struct___jmp_buf_tag.h> /usr/include/x86_64-linux-gnu/bits/types/struct___jmp_buf_tag.h */
typedef struct __jmp_buf_tag jmp_buf[1];
extern int setjmp (jmp_buf __env) __attribute__ ((__nothrow__));
extern int __sigsetjmp (struct __jmp_buf_tag __env[1], int __savemask) __attribute__ ((__nothrow__));
extern int _setjmp (struct __jmp_buf_tag __env[1]) __attribute__ ((__nothrow__));
extern void longjmp (struct __jmp_buf_tag __env[1], int __val)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
extern void _longjmp (struct __jmp_buf_tag __env[1], int __val)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
typedef struct __jmp_buf_tag sigjmp_buf[1];
extern void siglongjmp (sigjmp_buf __env, int __val)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
/* #define setjmp (env) _setjmp (env) ### define is not number */
/* #define sigsetjmp (env,savemask) __sigsetjmp (env, savemask) ### define is not number */
/* + END <setjmp.h> /usr/include/setjmp.h */
]]
