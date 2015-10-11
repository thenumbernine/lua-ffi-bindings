local ffi = require 'ffi'

ffi.cdef[[

enum { _JBLEN = 10 + 16 + 2 };
typedef int jmp_buf[_JBLEN];

int setjmp(jmp_buf);
void longjmp(jmp_buf, int);

]]
