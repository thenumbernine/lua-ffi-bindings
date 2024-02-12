local ffi = require 'ffi'
require 'ffi.req' 'c.sys.types'
ffi.cdef[[
/* ++ BEGIN /usr/include/signal.h */
/* +++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* +++ END   /usr/include/features.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/signum-generic.h */
enum { SIG_ERR = -1 };
/* #define	SIG_DFL	 ((__sighandler_t)  0) ### string, not number "((__sighandler_t)  0)" */
/* #define	SIG_IGN	 ((__sighandler_t)  1) ### string, not number "((__sighandler_t)  1)" */
enum { SIGINT = 2 };
enum { SIGILL = 4 };
enum { SIGABRT = 6 };
enum { SIGFPE = 8 };
enum { SIGSEGV = 11 };
enum { SIGTERM = 15 };
enum { SIGHUP = 1 };
enum { SIGQUIT = 3 };
enum { SIGTRAP = 5 };
enum { SIGKILL = 9 };
enum { SIGPIPE = 13 };
enum { SIGALRM = 14 };
/* manually commented out: enum { SIGIO = 0 }; */
enum { SIGIOT = 6 };
/* manually commented out: enum { SIGCLD = 0 }; */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/signum-arch.h */
enum { SIGSTKFLT = 16 };
enum { SIGPWR = 30 };
enum { SIGBUS = 7 };
enum { SIGSYS = 31 };
enum { SIGURG = 23 };
enum { SIGSTOP = 19 };
enum { SIGTSTP = 20 };
enum { SIGCONT = 18 };
enum { SIGCHLD = 17 };
enum { SIGTTIN = 21 };
enum { SIGTTOU = 22 };
enum { SIGPOLL = 29 };
enum { SIGXFSZ = 25 };
enum { SIGXCPU = 24 };
enum { SIGVTALRM = 26 };
enum { SIGPROF = 27 };
enum { SIGUSR1 = 10 };
enum { SIGUSR2 = 12 };
enum { SIGWINCH = 28 };
enum { SIGIO = 29 };
/* redefining matching value: #define SIGIOT		SIGABRT */
enum { SIGCLD = 17 };
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/signum-arch.h */
/* +++ END   /usr/include/x86_64-linux-gnu/bits/signum-generic.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/sig_atomic_t.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
typedef __sig_atomic_t sig_atomic_t;
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types/sig_atomic_t.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h */
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]] require 'ffi.req' 'c.bits.types.struct_timespec' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h */
union sigval {
	int sival_int;
	void *sival_ptr;
};
typedef union sigval __sigval_t;
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/siginfo-arch.h */
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/siginfo-arch.h */
typedef struct {
	int si_signo;
	int si_errno;
	int si_code;
	int __pad0;
	union {
	int _pad[((128 / sizeof (int)) - 4)];
	struct {
	__pid_t si_pid;
	__uid_t si_uid;
} _kill;
struct {
	int si_tid;
	int si_overrun;
	__sigval_t si_sigval;
} _timer;
struct {
	__pid_t si_pid;
	__uid_t si_uid;
	__sigval_t si_sigval;
} _rt;
struct {
	__pid_t si_pid;
	__uid_t si_uid;
	int si_status;
	__clock_t si_utime;
	__clock_t si_stime;
} _sigchld;
struct {
	void *si_addr;
	short int si_addr_lsb;
	union {
	struct { void *_lower;
	void *_upper;
} _addr_bnd;
__uint32_t _pkey;
} _bounds;
} _sigfault;
struct {
	long int si_band;
	int si_fd;
} _sigpoll;
struct {
	void *_call_addr;
	int _syscall;
	unsigned int _arch;
} _sigsys;
} _sifields;
} siginfo_t;
/* #define si_pid		_sifields._kill.si_pid ### string, not number "_sifields._kill.si_pid" */
/* #define si_uid		_sifields._kill.si_uid ### string, not number "_sifields._kill.si_uid" */
/* #define si_timerid	_sifields._timer.si_tid ### string, not number "_sifields._timer.si_tid" */
/* #define si_overrun	_sifields._timer.si_overrun ### string, not number "_sifields._timer.si_overrun" */
/* #define si_status	_sifields._sigchld.si_status ### string, not number "_sifields._sigchld.si_status" */
/* #define si_utime	_sifields._sigchld.si_utime ### string, not number "_sifields._sigchld.si_utime" */
/* #define si_stime	_sifields._sigchld.si_stime ### string, not number "_sifields._sigchld.si_stime" */
/* #define si_value	_sifields._rt.si_sigval ### string, not number "_sifields._rt.si_sigval" */
/* #define si_int		_sifields._rt.si_sigval.sival_int ### string, not number "_sifields._rt.si_sigval.sival_int" */
/* #define si_ptr		_sifields._rt.si_sigval.sival_ptr ### string, not number "_sifields._rt.si_sigval.sival_ptr" */
/* #define si_addr		_sifields._sigfault.si_addr ### string, not number "_sifields._sigfault.si_addr" */
/* #define si_addr_lsb	_sifields._sigfault.si_addr_lsb ### string, not number "_sifields._sigfault.si_addr_lsb" */
/* #define si_lower	_sifields._sigfault._bounds._addr_bnd._lower ### string, not number "_sifields._sigfault._bounds._addr_bnd._lower" */
/* #define si_upper	_sifields._sigfault._bounds._addr_bnd._upper ### string, not number "_sifields._sigfault._bounds._addr_bnd._upper" */
/* #define si_pkey		_sifields._sigfault._bounds._pkey ### string, not number "_sifields._sigfault._bounds._pkey" */
/* #define si_band		_sifields._sigpoll.si_band ### string, not number "_sifields._sigpoll.si_band" */
/* #define si_fd		_sifields._sigpoll.si_fd ### string, not number "_sifields._sigpoll.si_fd" */
/* # define si_call_addr	_sifields._sigsys._call_addr ### string, not number "_sifields._sigsys._call_addr" */
/* # define si_syscall	_sifields._sigsys._syscall ### string, not number "_sifields._sigsys._syscall" */
/* # define si_arch	_sifields._sigsys._arch ### string, not number "_sifields._sigsys._arch" */
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/siginfo-consts.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/siginfo-arch.h */
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/siginfo-arch.h */
enum { SI_ASYNCNL = -60, SI_DETHREAD = -7, SI_TKILL, SI_SIGIO, SI_ASYNCIO, SI_MESGQ, SI_TIMER, SI_QUEUE, SI_USER, SI_KERNEL = 0x80/* enum { SI_ASYNCNL = 0 }; */
/* manually commented out: enum { SI_DETHREAD = 0 }; */
/* manually commented out: enum { SI_TKILL = 0 }; */
/* manually commented out: enum { SI_SIGIO = 0 }; */
/* manually commented out: enum { SI_ASYNCIO = 0 }; */
/* manually commented out: enum { SI_MESGQ = 0 }; */
/* manually commented out: enum { SI_TIMER = 0 }; */
/* redefining matching value: #define SI_ASYNCIO	SI_ASYNCIO */
/* manually commented out: enum { SI_QUEUE = 0 }; */
/* manually commented out: enum { SI_USER = 0 }; */
/* manually commented out: enum { SI_KERNEL = 0 }; */
};
enum { ILL_ILLOPC = 1,/* enum { ILL_ILLOPC = 0 }; */
ILL_ILLOPN,/* enum { ILL_ILLOPN = 0 }; */
ILL_ILLADR,/* enum { ILL_ILLADR = 0 }; */
ILL_ILLTRP,/* enum { ILL_ILLTRP = 0 }; */
ILL_PRVOPC,/* enum { ILL_PRVOPC = 0 }; */
ILL_PRVREG,/* enum { ILL_PRVREG = 0 }; */
ILL_COPROC,/* enum { ILL_COPROC = 0 }; */
ILL_BADSTK,/* enum { ILL_BADSTK = 0 }; */
ILL_BADIADDR/* enum { ILL_BADIADDR = 0 }; */
};
enum { FPE_INTDIV = 1,/* enum { FPE_INTDIV = 0 }; */
FPE_INTOVF,/* enum { FPE_INTOVF = 0 }; */
FPE_FLTDIV,/* enum { FPE_FLTDIV = 0 }; */
FPE_FLTOVF,/* enum { FPE_FLTOVF = 0 }; */
FPE_FLTUND,/* enum { FPE_FLTUND = 0 }; */
FPE_FLTRES,/* enum { FPE_FLTRES = 0 }; */
FPE_FLTINV,/* enum { FPE_FLTINV = 0 }; */
FPE_FLTSUB,/* enum { FPE_FLTSUB = 0 }; */
FPE_FLTUNK = 14,/* enum { FPE_FLTUNK = 0 }; */
FPE_CONDTRAP/* enum { FPE_CONDTRAP = 0 }; */
};
enum { SEGV_MAPERR = 1,/* enum { SEGV_MAPERR = 0 }; */
SEGV_ACCERR,/* enum { SEGV_ACCERR = 0 }; */
SEGV_BNDERR,/* enum { SEGV_BNDERR = 0 }; */
SEGV_PKUERR,/* enum { SEGV_PKUERR = 0 }; */
SEGV_ACCADI,/* enum { SEGV_ACCADI = 0 }; */
SEGV_ADIDERR,/* enum { SEGV_ADIDERR = 0 }; */
SEGV_ADIPERR,/* enum { SEGV_ADIPERR = 0 }; */
SEGV_MTEAERR,/* enum { SEGV_MTEAERR = 0 }; */
SEGV_MTESERR/* enum { SEGV_MTESERR = 0 }; */
};
enum { BUS_ADRALN = 1,/* enum { BUS_ADRALN = 0 }; */
BUS_ADRERR,/* enum { BUS_ADRERR = 0 }; */
BUS_OBJERR,/* enum { BUS_OBJERR = 0 }; */
BUS_MCEERR_AR,/* enum { BUS_MCEERR_AR = 0 }; */
BUS_MCEERR_AO/* enum { BUS_MCEERR_AO = 0 }; */
};
enum { CLD_EXITED = 1,/* enum { CLD_EXITED = 0 }; */
CLD_KILLED,/* enum { CLD_KILLED = 0 }; */
CLD_DUMPED,/* enum { CLD_DUMPED = 0 }; */
CLD_TRAPPED,/* enum { CLD_TRAPPED = 0 }; */
CLD_STOPPED,/* enum { CLD_STOPPED = 0 }; */
CLD_CONTINUED/* enum { CLD_CONTINUED = 0 }; */
};
enum { POLL_IN = 1,/* enum { POLL_IN = 0 }; */
POLL_OUT,/* enum { POLL_OUT = 0 }; */
POLL_MSG,/* enum { POLL_MSG = 0 }; */
POLL_ERR,/* enum { POLL_ERR = 0 }; */
POLL_PRI,/* enum { POLL_PRI = 0 }; */
POLL_HUP/* enum { POLL_HUP = 0 }; */
};
/* +++ END   /usr/include/x86_64-linux-gnu/bits/siginfo-consts.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/sigval_t.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h */
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h */
typedef __sigval_t sigval_t;
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types/sigval_t.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/sigevent_t.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h */
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h */
typedef struct sigevent {
	__sigval_t sigev_value;
	int sigev_signo;
	int sigev_notify;
	union {
	int _pad[((64 / sizeof (int)) - 4)];
	__pid_t _tid;
	struct {
	void (*_function) (__sigval_t);
	pthread_attr_t *_attribute;
} _sigev_thread;
} _sigev_un;
} sigevent_t;
/* #define sigev_notify_function   _sigev_un._sigev_thread._function ### string, not number "_sigev_un._sigev_thread._function" */
/* #define sigev_notify_attributes _sigev_un._sigev_thread._attribute ### string, not number "_sigev_un._sigev_thread._attribute" */
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types/sigevent_t.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/sigevent-consts.h */
enum { SIGEV_SIGNAL = 0,/* enum { SIGEV_SIGNAL = 0 }; */
SIGEV_NONE,/* enum { SIGEV_NONE = 0 }; */
SIGEV_THREAD,/* enum { SIGEV_THREAD = 0 }; */
SIGEV_THREAD_ID = 4/* enum { SIGEV_THREAD_ID = 0 }; */
};
/* +++ END   /usr/include/x86_64-linux-gnu/bits/sigevent-consts.h */
typedef void (*__sighandler_t) (int);
extern __sighandler_t __sysv_signal (int __sig, __sighandler_t __handler) __attribute__ ((__nothrow__ , __leaf__));
extern __sighandler_t signal (int __sig, __sighandler_t __handler) __attribute__ ((__nothrow__ , __leaf__));
extern int kill (__pid_t __pid, int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern int killpg (__pid_t __pgrp, int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern int raise (int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern __sighandler_t ssignal (int __sig, __sighandler_t __handler) __attribute__ ((__nothrow__ , __leaf__));
extern int gsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern void psignal (int __sig, const char *__s);
extern void psiginfo (const siginfo_t *__pinfo, const char *__s);
extern int sigblock (int __mask) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int sigsetmask (int __mask) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int siggetmask (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
enum { NSIG = 65 };
typedef __sighandler_t sig_t;
extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigismember (const sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/sigaction.h */
struct sigaction {
	union { __sighandler_t sa_handler;
	void (*sa_sigaction) (int, siginfo_t *, void *);
} __sigaction_handler;
/* # define sa_handler	__sigaction_handler.sa_handler ### string, not number "__sigaction_handler.sa_handler" */
/* # define sa_sigaction	__sigaction_handler.sa_sigaction ### string, not number "__sigaction_handler.sa_sigaction" */
__sigset_t sa_mask;
int sa_flags;
void (*sa_restorer) (void);
};
enum { SA_NOCLDSTOP = 1 };
enum { SA_NOCLDWAIT = 2 };
enum { SA_SIGINFO = 4 };
enum { SA_ONSTACK = 134217728 };
enum { SA_RESTART = 268435456 };
enum { SA_NODEFER = 1073741824 };
enum { SA_RESETHAND = 2147483648 };
enum { SA_INTERRUPT = 536870912 };
enum { SA_NOMASK = 1073741824 };
enum { SA_ONESHOT = 2147483648 };
enum { SA_STACK = 134217728 };
enum { SIG_BLOCK = 0 };
enum { SIG_UNBLOCK = 1 };
enum { SIG_SETMASK = 2 };
/* +++ END   /usr/include/x86_64-linux-gnu/bits/sigaction.h */
extern int sigprocmask (int __how, const sigset_t * __set, sigset_t * __oset) __attribute__ ((__nothrow__ , __leaf__));
extern int sigsuspend (const sigset_t *__set) __attribute__ ((__nonnull__ (1)));
extern int sigaction (int __sig, const struct sigaction * __act, struct sigaction * __oact) __attribute__ ((__nothrow__ , __leaf__));
extern int sigpending (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigwait (const sigset_t * __set, int * __sig) __attribute__ ((__nonnull__ (1, 2)));
extern int sigwaitinfo (const sigset_t * __set, siginfo_t * __info) __attribute__ ((__nonnull__ (1)));
extern int sigtimedwait (const sigset_t * __set, siginfo_t * __info, const struct timespec * __timeout) __attribute__ ((__nonnull__ (1)));
extern int sigqueue (__pid_t __pid, int __sig, const union sigval __val) __attribute__ ((__nothrow__ , __leaf__));
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/sigcontext.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
enum { FP_XSTATE_MAGIC1 = 1179670611 };
enum { FP_XSTATE_MAGIC2 = 1179670597 };
/* #define FP_XSTATE_MAGIC2_SIZE	sizeof (FP_XSTATE_MAGIC2) ### string, not number "sizeof (FP_XSTATE_MAGIC2)" */
struct _fpx_sw_bytes {
	__uint32_t magic1;
	__uint32_t extended_size;
	__uint64_t xstate_bv;
	__uint32_t xstate_size;
	__uint32_t __glibc_reserved1[7];
};
struct _fpreg {
	unsigned short significand[4];
	unsigned short exponent;
};
struct _fpxreg {
	unsigned short significand[4];
	unsigned short exponent;
	unsigned short __glibc_reserved1[3];
};
struct _xmmreg {
	__uint32_t element[4];
};
struct _fpstate {
	__uint16_t cwd;
	__uint16_t swd;
	__uint16_t ftw;
	__uint16_t fop;
	__uint64_t rip;
	__uint64_t rdp;
	__uint32_t mxcsr;
	__uint32_t mxcr_mask;
	struct _fpxreg _st[8];
	struct _xmmreg _xmm[16];
	__uint32_t __glibc_reserved1[24];
};
struct sigcontext {
	__uint64_t r8;
	__uint64_t r9;
	__uint64_t r10;
	__uint64_t r11;
	__uint64_t r12;
	__uint64_t r13;
	__uint64_t r14;
	__uint64_t r15;
	__uint64_t rdi;
	__uint64_t rsi;
	__uint64_t rbp;
	__uint64_t rbx;
	__uint64_t rdx;
	__uint64_t rax;
	__uint64_t rcx;
	__uint64_t rsp;
	__uint64_t rip;
	__uint64_t eflags;
	unsigned short cs;
	unsigned short gs;
	unsigned short fs;
	unsigned short __pad0;
	__uint64_t err;
	__uint64_t trapno;
	__uint64_t oldmask;
	__uint64_t cr2;
	__extension__ union {
	struct _fpstate * fpstate;
	__uint64_t __fpstate_word;
};
__uint64_t __reserved1 [8];
};
struct _xsave_hdr {
	__uint64_t xstate_bv;
	__uint64_t __glibc_reserved1[2];
	__uint64_t __glibc_reserved2[5];
};
struct _ymmh_state {
	__uint32_t ymmh_space[64];
};
struct _xstate {
	struct _fpstate fpstate;
	struct _xsave_hdr xstate_hdr;
	struct _ymmh_state ymmh;
};
/* +++ END   /usr/include/x86_64-linux-gnu/bits/sigcontext.h */
extern int sigreturn (struct sigcontext *__scp) __attribute__ ((__nothrow__ , __leaf__));
/* +++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/stack_t.h */
/* ++++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
typedef struct {
	void *ss_sp;
	int ss_flags;
	size_t ss_size;
} stack_t;
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types/stack_t.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/sys/ucontext.h */
/* ++++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++++ END   /usr/include/features.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h */
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/stack_t.h */
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/types/stack_t.h */
__extension__ typedef long long int greg_t;
enum { NGREG = 23 };
typedef greg_t gregset_t[23];
struct _libc_fpxreg {
	unsigned short int significand [4];
	unsigned short int exponent;
	unsigned short int __glibc_reserved1[3];
};
struct _libc_xmmreg {
	__uint32_t element [4];
};
struct _libc_fpstate {
	__uint16_t cwd;
	__uint16_t swd;
	__uint16_t ftw;
	__uint16_t fop;
	__uint64_t rip;
	__uint64_t rdp;
	__uint32_t mxcsr;
	__uint32_t mxcr_mask;
	struct _libc_fpxreg _st[8];
	struct _libc_xmmreg _xmm[16];
	__uint32_t __glibc_reserved1[24];
};
typedef struct _libc_fpstate *fpregset_t;
typedef struct {
	gregset_t gregs;
	fpregset_t fpregs;
	__extension__ unsigned long long __reserved1 [8];
} mcontext_t;
typedef struct ucontext_t {
	unsigned long int uc_flags;
	struct ucontext_t *uc_link;
	stack_t uc_stack;
	mcontext_t uc_mcontext;
	sigset_t uc_sigmask;
	struct _libc_fpstate __fpregs_mem;
	__extension__ unsigned long long int __ssp[4];
} ucontext_t;
/* +++ END   /usr/include/x86_64-linux-gnu/sys/ucontext.h */
extern int siginterrupt (int __sig, int __interrupt) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__ ("Use sigaction with SA_RESTART instead")));
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/sigstack.h */
enum { MINSIGSTKSZ = 2048 };
enum { SIGSTKSZ = 8192 };
/* +++ END   /usr/include/x86_64-linux-gnu/bits/sigstack.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/sigstksz.h */
/* +++ END   /usr/include/x86_64-linux-gnu/bits/sigstksz.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/ss_flags.h */
enum { SS_ONSTACK = 1,/* enum { SS_ONSTACK = 0 }; */
SS_DISABLE/* enum { SS_DISABLE = 0 }; */
};
/* +++ END   /usr/include/x86_64-linux-gnu/bits/ss_flags.h */
extern int sigaltstack (const stack_t * __ss, stack_t * __oss) __attribute__ ((__nothrow__ , __leaf__));
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_sigstack.h */
struct sigstack {
	void *ss_sp;
	int ss_onstack;
};
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types/struct_sigstack.h */
extern int sigstack (struct sigstack *__ss, struct sigstack *__oss) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h */
/* +++ END   /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/sigthread.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
]] require 'ffi.req' 'c.bits.types.__sigset_t' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h */
extern int pthread_sigmask (int __how, const __sigset_t * __newmask, __sigset_t * __oldmask)__attribute__ ((__nothrow__ , __leaf__));
extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ , __leaf__));
/* +++ END   /usr/include/x86_64-linux-gnu/bits/sigthread.h */
extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ , __leaf__));
extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ , __leaf__));
/* #define SIGRTMIN        (__libc_current_sigrtmin ()) ### string, not number "(__libc_current_sigrtmin ())" */
/* #define SIGRTMAX        (__libc_current_sigrtmax ()) ### string, not number "(__libc_current_sigrtmax ())" */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/signal_ext.h */
/* +++ END   /usr/include/x86_64-linux-gnu/bits/signal_ext.h */
/* ++ END   /usr/include/signal.h */
]]
