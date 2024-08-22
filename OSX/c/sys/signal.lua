local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
enum { NSIG = 32 };
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/signal.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/signal.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
typedef int sig_atomic_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/signal.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/signal.h */
enum { SIGHUP = 1 };
enum { SIGINT = 2 };
enum { SIGQUIT = 3 };
enum { SIGILL = 4 };
enum { SIGTRAP = 5 };
enum { SIGABRT = 6 };
enum { SIGIOT = 6 };
enum { SIGEMT = 7 };
enum { SIGFPE = 8 };
enum { SIGKILL = 9 };
enum { SIGBUS = 10 };
enum { SIGSEGV = 11 };
enum { SIGSYS = 12 };
enum { SIGPIPE = 13 };
enum { SIGALRM = 14 };
enum { SIGTERM = 15 };
enum { SIGURG = 16 };
enum { SIGSTOP = 17 };
enum { SIGTSTP = 18 };
enum { SIGCONT = 19 };
enum { SIGCHLD = 20 };
enum { SIGTTIN = 21 };
enum { SIGTTOU = 22 };
enum { SIGIO = 23 };
enum { SIGXCPU = 24 };
enum { SIGXFSZ = 25 };
enum { SIGVTALRM = 26 };
enum { SIGPROF = 27 };
enum { SIGWINCH = 28 };
enum { SIGINFO = 29 };
enum { SIGUSR1 = 30 };
enum { SIGUSR2 = 31 };
/* #define SIG_DFL         (void (*)(int))0 ### string, not number "(void (*)(int))0" */
/* #define SIG_IGN         (void (*)(int))1 ### string, not number "(void (*)(int))1" */
/* #define SIG_HOLD        (void (*)(int))5 ### string, not number "(void (*)(int))5" */
/* #define SIG_ERR         ((void (*)(int))-1) ### string, not number "((void (*)(int))-1)" */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef unsigned int __darwin_fsblkcnt_t;
typedef unsigned int __darwin_fsfilcnt_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint32_t __darwin_id_t;
typedef __uint64_t __darwin_ino64_t;
typedef __darwin_ino64_t __darwin_ino_t;
typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_pid_t;
typedef __uint32_t __darwin_sigset_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
typedef __uint32_t __darwin_useconds_t;
typedef unsigned char __darwin_uuid_t[16];
typedef char __darwin_uuid_string_t[37];
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_types' ffi.cdef[[
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_mcontext.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/machine/_structs.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* +++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h */
/* ++++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
/* ++++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
/* ++++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
typedef signed char int8_t;
/* ++++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
/* ++++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
typedef short int16_t;
/* ++++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
/* ++++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
typedef int int32_t;
/* ++++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
/* ++++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
typedef long long int64_t;
/* ++++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
/* ++++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h */
typedef unsigned char u_int8_t;
/* ++++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h */
/* ++++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h */
typedef unsigned short u_int16_t;
/* ++++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h */
/* ++++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h */
typedef unsigned int u_int32_t;
/* ++++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h */
/* ++++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h */
typedef unsigned long long u_int64_t;
/* ++++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h */
typedef int64_t register_t;
/* ++++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* +++++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* +++++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
typedef __darwin_intptr_t intptr_t;
/* ++++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* ++++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
typedef unsigned long uintptr_t;
/* ++++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
typedef u_int64_t user_addr_t;
typedef u_int64_t user_size_t;
typedef int64_t user_ssize_t;
typedef int64_t user_long_t;
typedef u_int64_t user_ulong_t;
typedef int64_t user_time_t;
typedef int64_t user_off_t;
/* #define USER_ADDR_NULL  ((user_addr_t) 0) ### string, not number "((user_addr_t) 0)" */
typedef u_int64_t syscall_arg_t;
/* +++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h */
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
struct __darwin_i386_thread_state {
	unsigned int __eax;
	unsigned int __ebx;
	unsigned int __ecx;
	unsigned int __edx;
	unsigned int __edi;
	unsigned int __esi;
	unsigned int __ebp;
	unsigned int __esp;
	unsigned int __ss;
	unsigned int __eflags;
	unsigned int __eip;
	unsigned int __cs;
	unsigned int __ds;
	unsigned int __es;
	unsigned int __fs;
	unsigned int __gs;
};
struct __darwin_fp_control { unsigned short __invalid :1, __denorm :1, __zdiv :1, __ovrfl :1, __undfl :1, __precis :1, :2, __pc :2, 


__rc :2, 



:1, :3;
};
typedef struct __darwin_fp_control __darwin_fp_control_t;
struct __darwin_fp_status {
	unsigned short __invalid :1, __denorm :1, __zdiv :1, __ovrfl :1, __undfl :1, __precis :1, __stkflt :1, __errsumm :1, __c0 :1, __c1 :1, __c2 :1, __tos :3, __c3 :1, __busy :1;
};
typedef struct __darwin_fp_status __darwin_fp_status_t;
struct __darwin_mmst_reg {
	char __mmst_reg[10];
	char __mmst_rsrv[6];
};
struct __darwin_xmm_reg {
	char __xmm_reg[16];
};
struct __darwin_ymm_reg {
	char __ymm_reg[32];
};
struct __darwin_zmm_reg {
	char __zmm_reg[64];
};
struct __darwin_opmask_reg {
	char __opmask_reg[8];
};
enum { FP_STATE_BYTES = 512 };
struct __darwin_i386_float_state {
	int __fpu_reserved[2];
	struct __darwin_fp_control __fpu_fcw;
	struct __darwin_fp_status __fpu_fsw;
	__uint8_t __fpu_ftw;
	__uint8_t __fpu_rsrv1;
	__uint16_t __fpu_fop;
	__uint32_t __fpu_ip;
	__uint16_t __fpu_cs;
	__uint16_t __fpu_rsrv2;
	__uint32_t __fpu_dp;
	__uint16_t __fpu_ds;
	__uint16_t __fpu_rsrv3;
	__uint32_t __fpu_mxcsr;
	__uint32_t __fpu_mxcsrmask;
	struct __darwin_mmst_reg __fpu_stmm0;
	struct __darwin_mmst_reg __fpu_stmm1;
	struct __darwin_mmst_reg __fpu_stmm2;
	struct __darwin_mmst_reg __fpu_stmm3;
	struct __darwin_mmst_reg __fpu_stmm4;
	struct __darwin_mmst_reg __fpu_stmm5;
	struct __darwin_mmst_reg __fpu_stmm6;
	struct __darwin_mmst_reg __fpu_stmm7;
	struct __darwin_xmm_reg __fpu_xmm0;
	struct __darwin_xmm_reg __fpu_xmm1;
	struct __darwin_xmm_reg __fpu_xmm2;
	struct __darwin_xmm_reg __fpu_xmm3;
	struct __darwin_xmm_reg __fpu_xmm4;
	struct __darwin_xmm_reg __fpu_xmm5;
	struct __darwin_xmm_reg __fpu_xmm6;
	struct __darwin_xmm_reg __fpu_xmm7;
	char __fpu_rsrv4[14*16];
	int __fpu_reserved1;
};
struct __darwin_i386_avx_state {
	int __fpu_reserved[2];
	struct __darwin_fp_control __fpu_fcw;
	struct __darwin_fp_status __fpu_fsw;
	__uint8_t __fpu_ftw;
	__uint8_t __fpu_rsrv1;
	__uint16_t __fpu_fop;
	__uint32_t __fpu_ip;
	__uint16_t __fpu_cs;
	__uint16_t __fpu_rsrv2;
	__uint32_t __fpu_dp;
	__uint16_t __fpu_ds;
	__uint16_t __fpu_rsrv3;
	__uint32_t __fpu_mxcsr;
	__uint32_t __fpu_mxcsrmask;
	struct __darwin_mmst_reg __fpu_stmm0;
	struct __darwin_mmst_reg __fpu_stmm1;
	struct __darwin_mmst_reg __fpu_stmm2;
	struct __darwin_mmst_reg __fpu_stmm3;
	struct __darwin_mmst_reg __fpu_stmm4;
	struct __darwin_mmst_reg __fpu_stmm5;
	struct __darwin_mmst_reg __fpu_stmm6;
	struct __darwin_mmst_reg __fpu_stmm7;
	struct __darwin_xmm_reg __fpu_xmm0;
	struct __darwin_xmm_reg __fpu_xmm1;
	struct __darwin_xmm_reg __fpu_xmm2;
	struct __darwin_xmm_reg __fpu_xmm3;
	struct __darwin_xmm_reg __fpu_xmm4;
	struct __darwin_xmm_reg __fpu_xmm5;
	struct __darwin_xmm_reg __fpu_xmm6;
	struct __darwin_xmm_reg __fpu_xmm7;
	char __fpu_rsrv4[14*16];
	int __fpu_reserved1;
	char __avx_reserved1[64];
	struct __darwin_xmm_reg __fpu_ymmh0;
	struct __darwin_xmm_reg __fpu_ymmh1;
	struct __darwin_xmm_reg __fpu_ymmh2;
	struct __darwin_xmm_reg __fpu_ymmh3;
	struct __darwin_xmm_reg __fpu_ymmh4;
	struct __darwin_xmm_reg __fpu_ymmh5;
	struct __darwin_xmm_reg __fpu_ymmh6;
	struct __darwin_xmm_reg __fpu_ymmh7;
};
struct __darwin_i386_avx512_state {
	int __fpu_reserved[2];
	struct __darwin_fp_control __fpu_fcw;
	struct __darwin_fp_status __fpu_fsw;
	__uint8_t __fpu_ftw;
	__uint8_t __fpu_rsrv1;
	__uint16_t __fpu_fop;
	__uint32_t __fpu_ip;
	__uint16_t __fpu_cs;
	__uint16_t __fpu_rsrv2;
	__uint32_t __fpu_dp;
	__uint16_t __fpu_ds;
	__uint16_t __fpu_rsrv3;
	__uint32_t __fpu_mxcsr;
	__uint32_t __fpu_mxcsrmask;
	struct __darwin_mmst_reg __fpu_stmm0;
	struct __darwin_mmst_reg __fpu_stmm1;
	struct __darwin_mmst_reg __fpu_stmm2;
	struct __darwin_mmst_reg __fpu_stmm3;
	struct __darwin_mmst_reg __fpu_stmm4;
	struct __darwin_mmst_reg __fpu_stmm5;
	struct __darwin_mmst_reg __fpu_stmm6;
	struct __darwin_mmst_reg __fpu_stmm7;
	struct __darwin_xmm_reg __fpu_xmm0;
	struct __darwin_xmm_reg __fpu_xmm1;
	struct __darwin_xmm_reg __fpu_xmm2;
	struct __darwin_xmm_reg __fpu_xmm3;
	struct __darwin_xmm_reg __fpu_xmm4;
	struct __darwin_xmm_reg __fpu_xmm5;
	struct __darwin_xmm_reg __fpu_xmm6;
	struct __darwin_xmm_reg __fpu_xmm7;
	char __fpu_rsrv4[14*16];
	int __fpu_reserved1;
	char __avx_reserved1[64];
	struct __darwin_xmm_reg __fpu_ymmh0;
	struct __darwin_xmm_reg __fpu_ymmh1;
	struct __darwin_xmm_reg __fpu_ymmh2;
	struct __darwin_xmm_reg __fpu_ymmh3;
	struct __darwin_xmm_reg __fpu_ymmh4;
	struct __darwin_xmm_reg __fpu_ymmh5;
	struct __darwin_xmm_reg __fpu_ymmh6;
	struct __darwin_xmm_reg __fpu_ymmh7;
	struct __darwin_opmask_reg __fpu_k0;
	struct __darwin_opmask_reg __fpu_k1;
	struct __darwin_opmask_reg __fpu_k2;
	struct __darwin_opmask_reg __fpu_k3;
	struct __darwin_opmask_reg __fpu_k4;
	struct __darwin_opmask_reg __fpu_k5;
	struct __darwin_opmask_reg __fpu_k6;
	struct __darwin_opmask_reg __fpu_k7;
	struct __darwin_ymm_reg __fpu_zmmh0;
	struct __darwin_ymm_reg __fpu_zmmh1;
	struct __darwin_ymm_reg __fpu_zmmh2;
	struct __darwin_ymm_reg __fpu_zmmh3;
	struct __darwin_ymm_reg __fpu_zmmh4;
	struct __darwin_ymm_reg __fpu_zmmh5;
	struct __darwin_ymm_reg __fpu_zmmh6;
	struct __darwin_ymm_reg __fpu_zmmh7;
};
struct __darwin_i386_exception_state {
	__uint16_t __trapno;
	__uint16_t __cpu;
	__uint32_t __err;
	__uint32_t __faultvaddr;
};
struct __darwin_x86_debug_state32 {
	unsigned int __dr0;
	unsigned int __dr1;
	unsigned int __dr2;
	unsigned int __dr3;
	unsigned int __dr4;
	unsigned int __dr5;
	unsigned int __dr6;
	unsigned int __dr7;
};
struct __x86_instruction_state {
	int __insn_stream_valid_bytes;
	int __insn_offset;
	int __out_of_synch;
	__uint8_t __insn_bytes[(2448 - 64 - 4)];
	__uint8_t __insn_cacheline[64];
};
struct __last_branch_record {
	__uint64_t __from_ip;
	__uint64_t __to_ip;
	__uint32_t __mispredict : 1, __tsx_abort : 1, __in_tsx : 1, __cycle_count: 16, __reserved : 13;
};
struct __last_branch_state {
	int __lbr_count;
	__uint32_t __lbr_supported_tsx : 1, __lbr_supported_cycle_count : 1, __reserved : 30;
	struct __last_branch_record __lbrs[32];
};
struct __x86_pagein_state {
	int __pagein_error;
};
struct __darwin_x86_thread_state64 {
	__uint64_t __rax;
	__uint64_t __rbx;
	__uint64_t __rcx;
	__uint64_t __rdx;
	__uint64_t __rdi;
	__uint64_t __rsi;
	__uint64_t __rbp;
	__uint64_t __rsp;
	__uint64_t __r8;
	__uint64_t __r9;
	__uint64_t __r10;
	__uint64_t __r11;
	__uint64_t __r12;
	__uint64_t __r13;
	__uint64_t __r14;
	__uint64_t __r15;
	__uint64_t __rip;
	__uint64_t __rflags;
	__uint64_t __cs;
	__uint64_t __fs;
	__uint64_t __gs;
};
struct __darwin_x86_thread_full_state64 {
	struct __darwin_x86_thread_state64 __ss64;
	__uint64_t __ds;
	__uint64_t __es;
	__uint64_t __ss;
	__uint64_t __gsbase;
};
struct __darwin_x86_float_state64 {
	int __fpu_reserved[2];
	struct __darwin_fp_control __fpu_fcw;
	struct __darwin_fp_status __fpu_fsw;
	__uint8_t __fpu_ftw;
	__uint8_t __fpu_rsrv1;
	__uint16_t __fpu_fop;
	__uint32_t __fpu_ip;
	__uint16_t __fpu_cs;
	__uint16_t __fpu_rsrv2;
	__uint32_t __fpu_dp;
	__uint16_t __fpu_ds;
	__uint16_t __fpu_rsrv3;
	__uint32_t __fpu_mxcsr;
	__uint32_t __fpu_mxcsrmask;
	struct __darwin_mmst_reg __fpu_stmm0;
	struct __darwin_mmst_reg __fpu_stmm1;
	struct __darwin_mmst_reg __fpu_stmm2;
	struct __darwin_mmst_reg __fpu_stmm3;
	struct __darwin_mmst_reg __fpu_stmm4;
	struct __darwin_mmst_reg __fpu_stmm5;
	struct __darwin_mmst_reg __fpu_stmm6;
	struct __darwin_mmst_reg __fpu_stmm7;
	struct __darwin_xmm_reg __fpu_xmm0;
	struct __darwin_xmm_reg __fpu_xmm1;
	struct __darwin_xmm_reg __fpu_xmm2;
	struct __darwin_xmm_reg __fpu_xmm3;
	struct __darwin_xmm_reg __fpu_xmm4;
	struct __darwin_xmm_reg __fpu_xmm5;
	struct __darwin_xmm_reg __fpu_xmm6;
	struct __darwin_xmm_reg __fpu_xmm7;
	struct __darwin_xmm_reg __fpu_xmm8;
	struct __darwin_xmm_reg __fpu_xmm9;
	struct __darwin_xmm_reg __fpu_xmm10;
	struct __darwin_xmm_reg __fpu_xmm11;
	struct __darwin_xmm_reg __fpu_xmm12;
	struct __darwin_xmm_reg __fpu_xmm13;
	struct __darwin_xmm_reg __fpu_xmm14;
	struct __darwin_xmm_reg __fpu_xmm15;
	char __fpu_rsrv4[6*16];
	int __fpu_reserved1;
};
struct __darwin_x86_avx_state64 {
	int __fpu_reserved[2];
	struct __darwin_fp_control __fpu_fcw;
	struct __darwin_fp_status __fpu_fsw;
	__uint8_t __fpu_ftw;
	__uint8_t __fpu_rsrv1;
	__uint16_t __fpu_fop;
	__uint32_t __fpu_ip;
	__uint16_t __fpu_cs;
	__uint16_t __fpu_rsrv2;
	__uint32_t __fpu_dp;
	__uint16_t __fpu_ds;
	__uint16_t __fpu_rsrv3;
	__uint32_t __fpu_mxcsr;
	__uint32_t __fpu_mxcsrmask;
	struct __darwin_mmst_reg __fpu_stmm0;
	struct __darwin_mmst_reg __fpu_stmm1;
	struct __darwin_mmst_reg __fpu_stmm2;
	struct __darwin_mmst_reg __fpu_stmm3;
	struct __darwin_mmst_reg __fpu_stmm4;
	struct __darwin_mmst_reg __fpu_stmm5;
	struct __darwin_mmst_reg __fpu_stmm6;
	struct __darwin_mmst_reg __fpu_stmm7;
	struct __darwin_xmm_reg __fpu_xmm0;
	struct __darwin_xmm_reg __fpu_xmm1;
	struct __darwin_xmm_reg __fpu_xmm2;
	struct __darwin_xmm_reg __fpu_xmm3;
	struct __darwin_xmm_reg __fpu_xmm4;
	struct __darwin_xmm_reg __fpu_xmm5;
	struct __darwin_xmm_reg __fpu_xmm6;
	struct __darwin_xmm_reg __fpu_xmm7;
	struct __darwin_xmm_reg __fpu_xmm8;
	struct __darwin_xmm_reg __fpu_xmm9;
	struct __darwin_xmm_reg __fpu_xmm10;
	struct __darwin_xmm_reg __fpu_xmm11;
	struct __darwin_xmm_reg __fpu_xmm12;
	struct __darwin_xmm_reg __fpu_xmm13;
	struct __darwin_xmm_reg __fpu_xmm14;
	struct __darwin_xmm_reg __fpu_xmm15;
	char __fpu_rsrv4[6*16];
	int __fpu_reserved1;
	char __avx_reserved1[64];
	struct __darwin_xmm_reg __fpu_ymmh0;
	struct __darwin_xmm_reg __fpu_ymmh1;
	struct __darwin_xmm_reg __fpu_ymmh2;
	struct __darwin_xmm_reg __fpu_ymmh3;
	struct __darwin_xmm_reg __fpu_ymmh4;
	struct __darwin_xmm_reg __fpu_ymmh5;
	struct __darwin_xmm_reg __fpu_ymmh6;
	struct __darwin_xmm_reg __fpu_ymmh7;
	struct __darwin_xmm_reg __fpu_ymmh8;
	struct __darwin_xmm_reg __fpu_ymmh9;
	struct __darwin_xmm_reg __fpu_ymmh10;
	struct __darwin_xmm_reg __fpu_ymmh11;
	struct __darwin_xmm_reg __fpu_ymmh12;
	struct __darwin_xmm_reg __fpu_ymmh13;
	struct __darwin_xmm_reg __fpu_ymmh14;
	struct __darwin_xmm_reg __fpu_ymmh15;
};
struct __darwin_x86_avx512_state64 {
	int __fpu_reserved[2];
	struct __darwin_fp_control __fpu_fcw;
	struct __darwin_fp_status __fpu_fsw;
	__uint8_t __fpu_ftw;
	__uint8_t __fpu_rsrv1;
	__uint16_t __fpu_fop;
	__uint32_t __fpu_ip;
	__uint16_t __fpu_cs;
	__uint16_t __fpu_rsrv2;
	__uint32_t __fpu_dp;
	__uint16_t __fpu_ds;
	__uint16_t __fpu_rsrv3;
	__uint32_t __fpu_mxcsr;
	__uint32_t __fpu_mxcsrmask;
	struct __darwin_mmst_reg __fpu_stmm0;
	struct __darwin_mmst_reg __fpu_stmm1;
	struct __darwin_mmst_reg __fpu_stmm2;
	struct __darwin_mmst_reg __fpu_stmm3;
	struct __darwin_mmst_reg __fpu_stmm4;
	struct __darwin_mmst_reg __fpu_stmm5;
	struct __darwin_mmst_reg __fpu_stmm6;
	struct __darwin_mmst_reg __fpu_stmm7;
	struct __darwin_xmm_reg __fpu_xmm0;
	struct __darwin_xmm_reg __fpu_xmm1;
	struct __darwin_xmm_reg __fpu_xmm2;
	struct __darwin_xmm_reg __fpu_xmm3;
	struct __darwin_xmm_reg __fpu_xmm4;
	struct __darwin_xmm_reg __fpu_xmm5;
	struct __darwin_xmm_reg __fpu_xmm6;
	struct __darwin_xmm_reg __fpu_xmm7;
	struct __darwin_xmm_reg __fpu_xmm8;
	struct __darwin_xmm_reg __fpu_xmm9;
	struct __darwin_xmm_reg __fpu_xmm10;
	struct __darwin_xmm_reg __fpu_xmm11;
	struct __darwin_xmm_reg __fpu_xmm12;
	struct __darwin_xmm_reg __fpu_xmm13;
	struct __darwin_xmm_reg __fpu_xmm14;
	struct __darwin_xmm_reg __fpu_xmm15;
	char __fpu_rsrv4[6*16];
	int __fpu_reserved1;
	char __avx_reserved1[64];
	struct __darwin_xmm_reg __fpu_ymmh0;
	struct __darwin_xmm_reg __fpu_ymmh1;
	struct __darwin_xmm_reg __fpu_ymmh2;
	struct __darwin_xmm_reg __fpu_ymmh3;
	struct __darwin_xmm_reg __fpu_ymmh4;
	struct __darwin_xmm_reg __fpu_ymmh5;
	struct __darwin_xmm_reg __fpu_ymmh6;
	struct __darwin_xmm_reg __fpu_ymmh7;
	struct __darwin_xmm_reg __fpu_ymmh8;
	struct __darwin_xmm_reg __fpu_ymmh9;
	struct __darwin_xmm_reg __fpu_ymmh10;
	struct __darwin_xmm_reg __fpu_ymmh11;
	struct __darwin_xmm_reg __fpu_ymmh12;
	struct __darwin_xmm_reg __fpu_ymmh13;
	struct __darwin_xmm_reg __fpu_ymmh14;
	struct __darwin_xmm_reg __fpu_ymmh15;
	struct __darwin_opmask_reg __fpu_k0;
	struct __darwin_opmask_reg __fpu_k1;
	struct __darwin_opmask_reg __fpu_k2;
	struct __darwin_opmask_reg __fpu_k3;
	struct __darwin_opmask_reg __fpu_k4;
	struct __darwin_opmask_reg __fpu_k5;
	struct __darwin_opmask_reg __fpu_k6;
	struct __darwin_opmask_reg __fpu_k7;
	struct __darwin_ymm_reg __fpu_zmmh0;
	struct __darwin_ymm_reg __fpu_zmmh1;
	struct __darwin_ymm_reg __fpu_zmmh2;
	struct __darwin_ymm_reg __fpu_zmmh3;
	struct __darwin_ymm_reg __fpu_zmmh4;
	struct __darwin_ymm_reg __fpu_zmmh5;
	struct __darwin_ymm_reg __fpu_zmmh6;
	struct __darwin_ymm_reg __fpu_zmmh7;
	struct __darwin_ymm_reg __fpu_zmmh8;
	struct __darwin_ymm_reg __fpu_zmmh9;
	struct __darwin_ymm_reg __fpu_zmmh10;
	struct __darwin_ymm_reg __fpu_zmmh11;
	struct __darwin_ymm_reg __fpu_zmmh12;
	struct __darwin_ymm_reg __fpu_zmmh13;
	struct __darwin_ymm_reg __fpu_zmmh14;
	struct __darwin_ymm_reg __fpu_zmmh15;
	struct __darwin_zmm_reg __fpu_zmm16;
	struct __darwin_zmm_reg __fpu_zmm17;
	struct __darwin_zmm_reg __fpu_zmm18;
	struct __darwin_zmm_reg __fpu_zmm19;
	struct __darwin_zmm_reg __fpu_zmm20;
	struct __darwin_zmm_reg __fpu_zmm21;
	struct __darwin_zmm_reg __fpu_zmm22;
	struct __darwin_zmm_reg __fpu_zmm23;
	struct __darwin_zmm_reg __fpu_zmm24;
	struct __darwin_zmm_reg __fpu_zmm25;
	struct __darwin_zmm_reg __fpu_zmm26;
	struct __darwin_zmm_reg __fpu_zmm27;
	struct __darwin_zmm_reg __fpu_zmm28;
	struct __darwin_zmm_reg __fpu_zmm29;
	struct __darwin_zmm_reg __fpu_zmm30;
	struct __darwin_zmm_reg __fpu_zmm31;
};
struct __darwin_x86_exception_state64 {
	__uint16_t __trapno;
	__uint16_t __cpu;
	__uint32_t __err;
	__uint64_t __faultvaddr;
};
struct __darwin_x86_debug_state64 {
	__uint64_t __dr0;
	__uint64_t __dr1;
	__uint64_t __dr2;
	__uint64_t __dr3;
	__uint64_t __dr4;
	__uint64_t __dr5;
	__uint64_t __dr6;
	__uint64_t __dr7;
};
struct __darwin_x86_cpmu_state64 {
	__uint64_t __ctrs[16];
};
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/machine/_structs.h */
struct __darwin_mcontext32 {
	struct __darwin_i386_exception_state __es;
	struct __darwin_i386_thread_state __ss;
	struct __darwin_i386_float_state __fs;
};
struct __darwin_mcontext_avx32 {
	struct __darwin_i386_exception_state __es;
	struct __darwin_i386_thread_state __ss;
	struct __darwin_i386_avx_state __fs;
};
struct __darwin_mcontext_avx512_32 {
	struct __darwin_i386_exception_state __es;
	struct __darwin_i386_thread_state __ss;
	struct __darwin_i386_avx512_state __fs;
};
struct __darwin_mcontext64 {
	struct __darwin_x86_exception_state64 __es;
	struct __darwin_x86_thread_state64 __ss;
	struct __darwin_x86_float_state64 __fs;
};
struct __darwin_mcontext64_full {
	struct __darwin_x86_exception_state64 __es;
	struct __darwin_x86_thread_full_state64 __ss;
	struct __darwin_x86_float_state64 __fs;
};
struct __darwin_mcontext_avx64 {
	struct __darwin_x86_exception_state64 __es;
	struct __darwin_x86_thread_state64 __ss;
	struct __darwin_x86_avx_state64 __fs;
};
struct __darwin_mcontext_avx64_full {
	struct __darwin_x86_exception_state64 __es;
	struct __darwin_x86_thread_full_state64 __ss;
	struct __darwin_x86_avx_state64 __fs;
};
struct __darwin_mcontext_avx512_64 {
	struct __darwin_x86_exception_state64 __es;
	struct __darwin_x86_thread_state64 __ss;
	struct __darwin_x86_avx512_state64 __fs;
};
struct __darwin_mcontext_avx512_64_full {
	struct __darwin_x86_exception_state64 __es;
	struct __darwin_x86_thread_full_state64 __ss;
	struct __darwin_x86_avx512_state64 __fs;
};
typedef struct __darwin_mcontext64 *mcontext_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_mcontext.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_attr_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_types' ffi.cdef[[
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
typedef __darwin_pthread_attr_t pthread_attr_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_attr_t.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigaltstack.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
struct __darwin_sigaltstack {
	void *ss_sp;
	__darwin_size_t ss_size;
	int ss_flags;
};
typedef struct __darwin_sigaltstack stack_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigaltstack.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ucontext.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_mcontext.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_mcontext.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigaltstack.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigaltstack.h */
struct __darwin_ucontext {
	int uc_onstack;
	__darwin_sigset_t uc_sigmask;
	struct __darwin_sigaltstack uc_stack;
	struct __darwin_ucontext *uc_link;
	__darwin_size_t uc_mcsize;
	struct __darwin_mcontext64 *uc_mcontext;
};
typedef struct __darwin_ucontext ucontext_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ucontext.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_pid_t pid_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigset_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_sigset_t sigset_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigset_t.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
typedef __darwin_size_t size_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_uid_t uid_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h */
union sigval {
	int sival_int;
	void *sival_ptr;
};
enum { SIGEV_NONE = 0 };
enum { SIGEV_SIGNAL = 1 };
enum { SIGEV_THREAD = 3 };
struct sigevent {
	int sigev_notify;
	int sigev_signo;
	union sigval sigev_value;
	void (*sigev_notify_function)(union sigval);
	pthread_attr_t *sigev_notify_attributes;
};
typedef struct __siginfo {
	int si_signo;
	int si_errno;
	int si_code;
	pid_t si_pid;
	uid_t si_uid;
	int si_status;
	void *si_addr;
	union sigval si_value;
	long si_band;
	unsigned long __pad[7];
} siginfo_t;
enum { ILL_NOOP = 0 };
enum { ILL_ILLOPC = 1 };
enum { ILL_ILLTRP = 2 };
enum { ILL_PRVOPC = 3 };
enum { ILL_ILLOPN = 4 };
enum { ILL_ILLADR = 5 };
enum { ILL_PRVREG = 6 };
enum { ILL_COPROC = 7 };
enum { ILL_BADSTK = 8 };
enum { FPE_NOOP = 0 };
enum { FPE_FLTDIV = 1 };
enum { FPE_FLTOVF = 2 };
enum { FPE_FLTUND = 3 };
enum { FPE_FLTRES = 4 };
enum { FPE_FLTINV = 5 };
enum { FPE_FLTSUB = 6 };
enum { FPE_INTDIV = 7 };
enum { FPE_INTOVF = 8 };
enum { SEGV_NOOP = 0 };
enum { SEGV_MAPERR = 1 };
enum { SEGV_ACCERR = 2 };
enum { BUS_NOOP = 0 };
enum { BUS_ADRALN = 1 };
enum { BUS_ADRERR = 2 };
enum { BUS_OBJERR = 3 };
enum { TRAP_BRKPT = 1 };
enum { TRAP_TRACE = 2 };
enum { CLD_NOOP = 0 };
enum { CLD_EXITED = 1 };
enum { CLD_KILLED = 2 };
enum { CLD_DUMPED = 3 };
enum { CLD_TRAPPED = 4 };
enum { CLD_STOPPED = 5 };
enum { CLD_CONTINUED = 6 };
enum { POLL_IN = 1 };
enum { POLL_OUT = 2 };
enum { POLL_MSG = 3 };
enum { POLL_ERR = 4 };
enum { POLL_PRI = 5 };
enum { POLL_HUP = 6 };
union __sigaction_u {
	void (*__sa_handler)(int);
	void (*__sa_sigaction)(int, struct __siginfo *, void *);
};
struct __sigaction {
	union __sigaction_u __sigaction_u;
	void (*sa_tramp)(void *, int, int, siginfo_t *, void *);
	sigset_t sa_mask;
	int sa_flags;
};
struct sigaction {
	union __sigaction_u __sigaction_u;
	sigset_t sa_mask;
	int sa_flags;
};
/* #define sa_handler      __sigaction_u.__sa_handler ### string, not number "__sigaction_u.__sa_handler" */
/* #define sa_sigaction    __sigaction_u.__sa_sigaction ### string, not number "__sigaction_u.__sa_sigaction" */
enum { SA_ONSTACK = 1 };
enum { SA_RESTART = 2 };
enum { SA_RESETHAND = 4 };
enum { SA_NOCLDSTOP = 8 };
enum { SA_NODEFER = 16 };
enum { SA_NOCLDWAIT = 32 };
enum { SA_SIGINFO = 64 };
enum { SA_USERTRAMP = 256 };
enum { SA_64REGSET = 512 };
enum { SA_USERSPACE_MASK = 127 };
enum { SIG_BLOCK = 1 };
enum { SIG_UNBLOCK = 2 };
enum { SIG_SETMASK = 3 };
enum { SI_USER = 65537 };
enum { SI_QUEUE = 65538 };
enum { SI_TIMER = 65539 };
enum { SI_ASYNCIO = 65540 };
enum { SI_MESGQ = 65541 };
typedef void (*sig_t)(int);
enum { SS_ONSTACK = 1 };
enum { SS_DISABLE = 4 };
enum { MINSIGSTKSZ = 32768 };
enum { SIGSTKSZ = 131072 };
struct sigvec {
	void (*sv_handler)(int);
	int sv_mask;
	int sv_flags;
};
enum { SV_ONSTACK = 1 };
enum { SV_INTERRUPT = 2 };
enum { SV_RESETHAND = 4 };
enum { SV_NODEFER = 16 };
enum { SV_NOCLDSTOP = 8 };
enum { SV_SIGINFO = 64 };
enum { sv_onstack = 0 };
struct sigstack {
	char *ss_sp;
	int ss_onstack;
};
/* #define BADSIG          SIG_ERR ### string, not number "SIG_ERR" */
void(*signal(int, void (*)(int)))(int);
/* + END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h */
]]
