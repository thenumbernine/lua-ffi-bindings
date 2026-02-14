local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <setjmp.h> /boot/system/develop/headers/posix/setjmp.h */
/* ++ BEGIN <config/HaikuConfig.h> /boot/system/develop/headers/config/HaikuConfig.h */
]] require 'ffi.req' 'c.config.HaikuConfig' ffi.cdef[[
/* ++ END <config/HaikuConfig.h> /boot/system/develop/headers/config/HaikuConfig.h */
/* ++ BEGIN <signal.h> /boot/system/develop/headers/bsd/signal.h */
]] require 'ffi.req' 'c.signal' ffi.cdef[[
/* ++ END <signal.h> /boot/system/develop/headers/bsd/signal.h */
/* ++ BEGIN <arch/x86_64/arch_setjmp.h> /boot/system/develop/headers/posix/arch/x86_64/arch_setjmp.h */
typedef unsigned long __jmp_buf[8];
/* ++ END <arch/x86_64/arch_setjmp.h> /boot/system/develop/headers/posix/arch/x86_64/arch_setjmp.h */
typedef struct __jmp_buf_tag {
 __jmp_buf regs;
 sigset_t inverted_signal_mask;
} jmp_buf[1];
typedef jmp_buf sigjmp_buf;
extern int _setjmp(jmp_buf jumpBuffer);
extern int setjmp(jmp_buf jumpBuffer);
extern int sigsetjmp(jmp_buf jumpBuffer, int saveMask);
extern void _longjmp(jmp_buf jumpBuffer, int value)
 __attribute__ ((noreturn));
extern void longjmp(jmp_buf jumpBuffer, int value)
 __attribute__ ((noreturn));
extern void siglongjmp(sigjmp_buf jumpBuffer, int value)
 __attribute__ ((noreturn));
enum { _SETJMP_H_ = 1 };
enum { _ARCH_SETJMP_H_ = 1 };
/* + END <setjmp.h> /boot/system/develop/headers/posix/setjmp.h */
]]
