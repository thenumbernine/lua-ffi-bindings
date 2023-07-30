local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.36.32532/include/setjmp.h */
enum { _INC_SETJMP = 1 };
/* #pragma warning(push) */
/* #pragma warning(disable: _VCRUNTIME_DISABLED_WARNINGS) */
typedef struct _SETJMP_FLOAT128 {
	unsigned __int64 Part[2];
} SETJMP_FLOAT128;
enum { _JBLEN = 16 };
typedef SETJMP_FLOAT128 _JBTYPE;
typedef struct _JUMP_BUFFER {
	unsigned __int64 Frame;
	unsigned __int64 Rbx;
	unsigned __int64 Rsp;
	unsigned __int64 Rbp;
	unsigned __int64 Rsi;
	unsigned __int64 Rdi;
	unsigned __int64 R12;
	unsigned __int64 R13;
	unsigned __int64 R14;
	unsigned __int64 R15;
	unsigned __int64 Rip;
	unsigned long MxCsr;
	unsigned short FpCsr;
	unsigned short Spare;
	SETJMP_FLOAT128 Xmm6;
	SETJMP_FLOAT128 Xmm7;
	SETJMP_FLOAT128 Xmm8;
	SETJMP_FLOAT128 Xmm9;
	SETJMP_FLOAT128 Xmm10;
	SETJMP_FLOAT128 Xmm11;
	SETJMP_FLOAT128 Xmm12;
	SETJMP_FLOAT128 Xmm13;
	SETJMP_FLOAT128 Xmm14;
	SETJMP_FLOAT128 Xmm15;
} _JUMP_BUFFER;
enum { _JMP_BUF_DEFINED = 1 };
typedef _JBTYPE jmp_buf[16];
enum { setjmp = 0 };
int __cdecl _setjmp( jmp_buf _Buf );
void __cdecl longjmp( jmp_buf _Buf, int _Value );
/* #pragma warning(pop)  */
/* + END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.36.32532/include/setjmp.h */
]]
