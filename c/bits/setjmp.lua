local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/x86_64-linux-gnu/bits/setjmp.h */
enum { _BITS_SETJMP_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* redefining matching value: # define __WORDSIZE	64 */
/* redefining matching value: # define __WORDSIZE_TIME64_COMPAT32	1 */
/* redefining matching value: # define __SYSCALL_WORDSIZE		64 */
/* END /usr/include/x86_64-linux-gnu/bits/wordsize.h */
typedef long int __jmp_buf[8];
/* END /usr/include/x86_64-linux-gnu/bits/setjmp.h */
]]
