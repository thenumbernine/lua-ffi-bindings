local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <setjmp.h> /data/data/com.termux/files/usr/bin/../../usr/include/setjmp.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
typedef long sigjmp_buf[64 + 1];
typedef long jmp_buf[64];
int _setjmp(jmp_buf __env) __attribute__((__returns_twice__));
__attribute__((__noreturn__)) void _longjmp(jmp_buf __env, int __value);
int setjmp(jmp_buf __env) __attribute__((__returns_twice__));
__attribute__((__noreturn__)) void longjmp(jmp_buf __env, int __value);
int sigsetjmp(sigjmp_buf __env, int __save_signal_mask) __attribute__((__returns_twice__));
__attribute__((__noreturn__)) void siglongjmp(sigjmp_buf __env, int __value);
/* #define setjmp (__env) setjmp(__env) ### define is not number */
/* + END <setjmp.h> /data/data/com.termux/files/usr/bin/../../usr/include/setjmp.h */
]]
