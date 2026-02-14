local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <signal.h> /boot/system/develop/headers/bsd/signal.h */
/* ++ BEGIN <signal.h> /boot/system/develop/headers/posix/signal.h */
/* +++ BEGIN <sys/types.h> ./Haiku/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++ END <sys/types.h> ./Haiku/sys/types.h */
typedef int sig_atomic_t;
typedef __haiku_uint64 sigset_t;
union sigval {
 int sival_int;
 void* sival_ptr;
};
struct sigevent {
 int sigev_notify;
 int sigev_signo;
 union sigval sigev_value;
 void (*sigev_notify_function)(union sigval);
 pthread_attr_t* sigev_notify_attributes;
};
typedef struct __siginfo_t {
 int si_signo;
 int si_code;
 int si_errno;
 pid_t si_pid;
 uid_t si_uid;
 void* si_addr;
 int si_status;
 long si_band;
 union sigval si_value;
} siginfo_t;
typedef void (*__sighandler_t)(int);
typedef void (*__siginfo_handler_t)(int, siginfo_t*, void*);
struct sigaction {
 union {
  __sighandler_t sa_handler;
  __siginfo_handler_t sa_sigaction;
 };
 sigset_t sa_mask;
 int sa_flags;
 void* sa_userdata;
};
typedef struct stack_t {
 void* ss_sp;
 size_t ss_size;
 int ss_flags;
} stack_t;
extern const char* const sys_siglist[(64 + 1)];
__sighandler_t signal(int _signal, __sighandler_t signalHandler);
int sigaction(int _signal, const struct sigaction* action,
   struct sigaction* oldAction);
__sighandler_t sigset(int _signal, __sighandler_t signalHandler);
int sigignore(int _signal);
int siginterrupt(int _signal, int flag);
int sigprocmask(int how, const sigset_t* set, sigset_t* oldSet);
int pthread_sigmask(int how, const sigset_t* set, sigset_t* oldSet);
int sighold(int _signal);
int sigrelse(int _signal);
int raise(int _signal);
int kill(pid_t pid, int _signal);
int killpg(pid_t processGroupID, int _signal);
int sigqueue(pid_t pid, int _signal, const union sigval userValue);
int pthread_kill(pthread_t thread, int _signal);
int sigpending(sigset_t* set);
int sigsuspend(const sigset_t* mask);
int sigpause(int _signal);
int sigwait(const sigset_t* set, int* _signal);
int sigwaitinfo(const sigset_t* set, siginfo_t* info);
int sigtimedwait(const sigset_t* set, siginfo_t* info,
           const struct timespec* timeout);
int sigaltstack(const stack_t* stack, stack_t* oldStack);
int sigemptyset(sigset_t* set);
int sigfillset(sigset_t* set);
int sigaddset(sigset_t* set, int _signal);
int sigdelset(sigset_t* set, int _signal);
int sigismember(const sigset_t* set, int _signal);
void psiginfo(const siginfo_t* info, const char* message);
void psignal(int _signal, const char* message);
int __signal_get_sigrtmin();
int __signal_get_sigrtmax();
typedef struct vregs vregs;
/* +++ BEGIN <arch/x86_64/signal.h> /boot/system/develop/headers/posix/arch/x86_64/signal.h */
struct x86_64_fp_register {
 unsigned char value[10];
 unsigned char reserved[6];
};
struct x86_64_xmm_register {
 unsigned char value[16];
};
struct fpu_state {
 unsigned short control;
 unsigned short status;
 unsigned short tag;
 unsigned short opcode;
 unsigned long rip;
 unsigned long rdp;
 unsigned int mxcsr;
 unsigned int mxcsr_mask;
 union {
  struct x86_64_fp_register fp[8];
  struct x86_64_fp_register mmx[8];
 };
 struct x86_64_xmm_register xmm[16];
 unsigned char _reserved_416_463[48];
 unsigned long fault_address;
 unsigned long error_code;
 unsigned short cs;
 unsigned short ss;
 unsigned char trap_number;
 unsigned char _available_485_511[27];
};
struct xstate_hdr {
 unsigned long bv;
 unsigned long xcomp_bv;
 unsigned char _reserved[48];
};
struct savefpu {
 struct fpu_state fp_fxsave;
 struct xstate_hdr fp_xstate;
 struct x86_64_xmm_register fp_ymm[16];
};
struct vregs {
 unsigned long rax;
 unsigned long rbx;
 unsigned long rcx;
 unsigned long rdx;
 unsigned long rdi;
 unsigned long rsi;
 unsigned long rbp;
 unsigned long r8;
 unsigned long r9;
 unsigned long r10;
 unsigned long r11;
 unsigned long r12;
 unsigned long r13;
 unsigned long r14;
 unsigned long r15;
 unsigned long rsp;
 unsigned long rip;
 unsigned long rflags;
 struct savefpu fpu;
};
/* +++ END <arch/x86_64/signal.h> /boot/system/develop/headers/posix/arch/x86_64/signal.h */
typedef struct vregs mcontext_t;
typedef struct __ucontext_t {
 struct __ucontext_t* uc_link;
 sigset_t uc_sigmask;
 stack_t uc_stack;
 mcontext_t uc_mcontext;
} ucontext_t;
/* ++ END <signal.h> /boot/system/develop/headers/posix/signal.h */
/* ++ BEGIN <features.h> /boot/system/develop/headers/bsd/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /boot/system/develop/headers/bsd/features.h */
int sigsetmask(int mask);
int sigblock(int mask);
int pthread_sigqueue(pthread_t thread, int sig, const union sigval value);
enum { _BSD_SIGNAL_H_ = 1 };
enum { _SIGNAL_H_ = 1 };
/* #define SIG_DFL ((__sighandler_t)0) ### define is not number */
/* #define SIG_IGN ((__sighandler_t)1) ### define is not number */
/* #define SIG_ERR ((__sighandler_t)-1) ### define is not number */
/* #define SIG_HOLD ((__sighandler_t)3) ### define is not number */
enum { SIGEV_NONE = 0 };
enum { SIGEV_SIGNAL = 1 };
enum { SIGEV_THREAD = 2 };
enum { SA_NOCLDSTOP = 0x01 };
enum { SA_NOCLDWAIT = 0x02 };
enum { SA_RESETHAND = 0x04 };
enum { SA_NODEFER = 0x08 };
enum { SA_RESTART = 0x10 };
enum { SA_ONSTACK = 0x20 };
enum { SA_SIGINFO = 0x40 };
enum { SA_NOMASK = 0x08 };
enum { SA_STACK = 0x20 };
enum { SA_ONESHOT = 0x04 };
enum { SS_ONSTACK = 0x1 };
enum { SS_DISABLE = 0x2 };
enum { MINSIGSTKSZ = 8192 };
enum { SIGSTKSZ = 16384 };
enum { SIG_BLOCK = 1 };
enum { SIG_UNBLOCK = 2 };
enum { SIG_SETMASK = 3 };
enum { SIGHUP = 1 };
enum { SIGINT = 2 };
enum { SIGQUIT = 3 };
enum { SIGILL = 4 };
enum { SIGCHLD = 5 };
enum { SIGABRT = 6 };
enum { SIGPIPE = 7 };
enum { SIGFPE = 8 };
enum { SIGKILL = 9 };
enum { SIGSTOP = 10 };
enum { SIGSEGV = 11 };
enum { SIGCONT = 12 };
enum { SIGTSTP = 13 };
enum { SIGALRM = 14 };
enum { SIGTERM = 15 };
enum { SIGTTIN = 16 };
enum { SIGTTOU = 17 };
enum { SIGUSR1 = 18 };
enum { SIGUSR2 = 19 };
enum { SIGWINCH = 20 };
enum { SIGKILLTHR = 21 };
enum { SIGTRAP = 22 };
enum { SIGPOLL = 23 };
enum { SIGPROF = 24 };
enum { SIGSYS = 25 };
enum { SIGURG = 26 };
enum { SIGVTALRM = 27 };
enum { SIGXCPU = 28 };
enum { SIGXFSZ = 29 };
enum { SIGBUS = 30 };
enum { SIGRESERVED1 = 31 };
enum { SIGRESERVED2 = 32 };
/* #define SIGRTMIN (__signal_get_sigrtmin()) ### define is not number */
/* #define SIGRTMAX (__signal_get_sigrtmax()) ### define is not number */
enum { __MAX_SIGNO = 64 };
/* #define NSIG (__MAX_SIGNO + 1) ### define is not number */
enum { SI_USER = 0 };
enum { SI_QUEUE = 1 };
enum { SI_TIMER = 2 };
enum { SI_ASYNCIO = 3 };
enum { SI_MESGQ = 4 };
enum { ILL_ILLOPC = 10 };
enum { ILL_ILLOPN = 11 };
enum { ILL_ILLADR = 12 };
enum { ILL_ILLTRP = 13 };
enum { ILL_PRVOPC = 14 };
enum { ILL_PRVREG = 15 };
enum { ILL_COPROC = 16 };
enum { ILL_BADSTK = 17 };
enum { FPE_INTDIV = 20 };
enum { FPE_INTOVF = 21 };
enum { FPE_FLTDIV = 22 };
enum { FPE_FLTOVF = 23 };
enum { FPE_FLTUND = 24 };
enum { FPE_FLTRES = 25 };
enum { FPE_FLTINV = 26 };
enum { FPE_FLTSUB = 27 };
enum { SEGV_MAPERR = 30 };
enum { SEGV_ACCERR = 31 };
enum { BUS_ADRALN = 40 };
enum { BUS_ADRERR = 41 };
enum { BUS_OBJERR = 42 };
enum { TRAP_BRKPT = 50 };
enum { TRAP_TRACE = 51 };
enum { CLD_EXITED = 60 };
enum { CLD_KILLED = 61 };
enum { CLD_DUMPED = 62 };
enum { CLD_TRAPPED = 63 };
enum { CLD_STOPPED = 64 };
enum { CLD_CONTINUED = 65 };
enum { POLL_IN = 70 };
enum { POLL_OUT = 71 };
enum { POLL_MSG = 72 };
enum { POLL_ERR = 73 };
enum { POLL_PRI = 74 };
enum { POLL_HUP = 75 };
enum { _ARCH_X86_64_SIGNAL_H_ = 1 };
/* #define sigmask (sig) (1 << ((sig) - 1)) ### define is not number */
/* + END <signal.h> /boot/system/develop/headers/bsd/signal.h */
]]
