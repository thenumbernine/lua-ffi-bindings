local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/setjmp.h */
enum { _SETJMP_H = 1 };
/* BEGIN /usr/include/features.h */
]] require 'ffi.c.features' ffi.cdef[[
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/setjmp.h */
enum { _BITS_SETJMP_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* END /usr/include/x86_64-1-gnu/bits/wordsize.h */
typedef long int __jmp_buf[8];
/* END /usr/include/x86_64-1-gnu/bits/setjmp.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
typedef struct { unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
/* END /usr/include/x86_64-1-gnu/bits/types/__sigset_t.h */
struct __jmp_buf_tag { __jmp_buf __jmpbuf;
int __mask_was_saved;
__sigset_t __saved_mask;
};
typedef struct __jmp_buf_tag jmp_buf[1];
extern int setjmp (jmp_buf __env) __attribute__ ((__nothrow__));
extern int __sigsetjmp (struct __jmp_buf_tag __env[1], int __savemask) __attribute__ ((__nothrow__));
extern int _setjmp (struct __jmp_buf_tag __env[1]) __attribute__ ((__nothrow__));
extern void longjmp (struct __jmp_buf_tag __env[1], int __val) __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
extern void _longjmp (struct __jmp_buf_tag __env[1], int __val) __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
typedef struct __jmp_buf_tag sigjmp_buf[1];
extern void siglongjmp (sigjmp_buf __env, int __val) __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
/* END /usr/include/setjmp.h */
]]
