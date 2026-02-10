local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/signal.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
/* ++ BEGIN <asm/sigcontext.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/sigcontext.h */
struct sigcontext {
  unsigned long trap_no;
  unsigned long error_code;
  unsigned long oldmask;
  unsigned long arm_r0;
  unsigned long arm_r1;
  unsigned long arm_r2;
  unsigned long arm_r3;
  unsigned long arm_r4;
  unsigned long arm_r5;
  unsigned long arm_r6;
  unsigned long arm_r7;
  unsigned long arm_r8;
  unsigned long arm_r9;
  unsigned long arm_r10;
  unsigned long arm_fp;
  unsigned long arm_ip;
  unsigned long arm_sp;
  unsigned long arm_lr;
  unsigned long arm_pc;
  unsigned long arm_cpsr;
  unsigned long fault_address;
};
/* ++ END <asm/sigcontext.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/sigcontext.h */
/* ++ BEGIN <bits/signal_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/signal_types.h */
/* +++ BEGIN <limits.h> /data/data/com.termux/files/usr/lib/clang/21/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* +++ END <limits.h> /data/data/com.termux/files/usr/lib/clang/21/include/limits.h */
/* +++ BEGIN <linux/signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/signal.h */
/* ++++ BEGIN <asm/signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/signal.h */
struct siginfo;
typedef unsigned long sigset_t;
/* +++++ BEGIN <asm-generic/signal-defs.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/signal-defs.h */
typedef void __signalfn_t(int);
typedef __signalfn_t * __sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t * __sigrestore_t;
/* +++++ END <asm-generic/signal-defs.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/signal-defs.h */
struct __kernel_sigaction {
  union {
    __sighandler_t _sa_handler;
    void(* _sa_sigaction) (int, struct siginfo *, void *);
  } _u;
  sigset_t sa_mask;
  unsigned long sa_flags;
  void(* sa_restorer) (void);
};
typedef struct sigaltstack {
  void * ss_sp;
  int ss_flags;
  __kernel_size_t ss_size;
} stack_t;
/* ++++ END <asm/signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/signal.h */
/* ++++ BEGIN <asm/siginfo.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/siginfo.h */
/* +++++ BEGIN <asm-generic/siginfo.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/siginfo.h */
typedef union sigval {
  int sival_int;
  void * sival_ptr;
} sigval_t;
union __sifields {
  struct {
    __kernel_pid_t _pid;
    __kernel_uid32_t _uid;
  } _kill;
  struct {
    __kernel_timer_t _tid;
    int _overrun;
    sigval_t _sigval;
    int _sys_private;
  } _timer;
  struct {
    __kernel_pid_t _pid;
    __kernel_uid32_t _uid;
    sigval_t _sigval;
  } _rt;
  struct {
    __kernel_pid_t _pid;
    __kernel_uid32_t _uid;
    int _status;
    __kernel_clock_t _utime;
    __kernel_clock_t _stime;
  } _sigchld;
  struct {
    void * _addr;
    union {
      int _trapno;
      short _addr_lsb;
      struct {
        char _dummy_bnd[(__alignof__(void *) < sizeof(short) ? sizeof(short) : __alignof__(void *))];
        void * _lower;
        void * _upper;
      } _addr_bnd;
      struct {
        char _dummy_pkey[(__alignof__(void *) < sizeof(short) ? sizeof(short) : __alignof__(void *))];
        __u32 _pkey;
      } _addr_pkey;
      struct {
        unsigned long _data;
        __u32 _type;
        __u32 _flags;
      } _perf;
    };
  } _sigfault;
  struct {
    long _band;
    int _fd;
  } _sigpoll;
  struct {
    void * _call_addr;
    int _syscall;
    unsigned int _arch;
  } _sigsys;
};
typedef struct siginfo {
  union {
    struct { int si_signo; int si_errno; int si_code; union __sifields _sifields; };
    int _si_pad[128 / sizeof(int)];
  };
} siginfo_t;
typedef struct sigevent {
  sigval_t sigev_value;
  int sigev_signo;
  int sigev_notify;
  union {
    int _pad[((64 - (sizeof(int) * 2 + sizeof(sigval_t))) / sizeof(int))];
    int _tid;
    struct {
      void(* _function) (sigval_t);
      void * _attribute;
    } _sigev_thread;
  } _sigev_un;
} sigevent_t;
/* +++++ END <asm-generic/siginfo.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/siginfo.h */
/* ++++ END <asm/siginfo.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/siginfo.h */
/* +++ END <linux/signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/signal.h */
typedef int sig_atomic_t;
typedef __sighandler_t sig_t;
typedef __sighandler_t sighandler_t;
typedef struct { unsigned long __bits[64/(8*sizeof(long))]; } sigset64_t;
struct sigaction {
  union {
    sighandler_t sa_handler;
    void (*sa_sigaction)(int, struct siginfo*, void*);
  };
  sigset_t sa_mask;
  int sa_flags;
  void (*sa_restorer)(void);
};
struct sigaction64 {
  union {
    sighandler_t sa_handler;
    void (*sa_sigaction)(int, struct siginfo*, void*);
  };
  int sa_flags;
  void (*sa_restorer)(void);
  sigset64_t sa_mask;
};
/* ++ END <bits/signal_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/signal_types.h */
/* ++ BEGIN <bits/timespec.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/timespec.h */
/* ++ END <bits/timespec.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/timespec.h */
/* ++ BEGIN <sys/ucontext.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/ucontext.h */
/* +++ BEGIN <signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/signal.h */
/* +++ END <signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/signal.h */
/* +++ BEGIN <sys/user.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/user.h */
/* ++++ BEGIN <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++++ END <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
/* ++++ BEGIN <bits/page_size.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/page_size.h */
/* ++++ END <bits/page_size.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/page_size.h */
struct user_fpregs {
  struct fp_reg {
    unsigned int sign1:1;
    unsigned int unused:15;
    unsigned int sign2:1;
    unsigned int exponent:14;
    unsigned int j:1;
    unsigned int mantissa1:31;
    unsigned int mantissa0:32;
  } fpregs[8];
  unsigned int fpsr:32;
  unsigned int fpcr:32;
  unsigned char ftype[8];
  unsigned int init_flag;
};
struct user_regs {
  unsigned long uregs[18];
};
struct user_vfp {
  unsigned long long fpregs[32];
  unsigned long fpscr;
};
struct user_vfp_exc {
  unsigned long fpexc;
  unsigned long fpinst;
  unsigned long fpinst2;
};
struct user {
  struct user_regs regs;
  int u_fpvalid;
  unsigned long int u_tsize;
  unsigned long int u_dsize;
  unsigned long int u_ssize;
  unsigned long start_code;
  unsigned long start_stack;
  long int signal;
  int reserved;
  struct user_regs* u_ar0;
  unsigned long magic;
  char u_comm[32];
  int u_debugreg[8];
  struct user_fpregs u_fp;
  struct user_fpregs* u_fp0;
};
/* +++ END <sys/user.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/user.h */
enum {
  REG_R0 = 0,
  REG_R1,
  REG_R2,
  REG_R3,
  REG_R4,
  REG_R5,
  REG_R6,
  REG_R7,
  REG_R8,
  REG_R9,
  REG_R10,
  REG_R11,
  REG_R12,
  REG_R13,
  REG_R14,
  REG_R15,
};
typedef int greg_t;
typedef greg_t gregset_t[18];
typedef struct user_fpregs fpregset_t;
typedef struct sigcontext mcontext_t;
typedef struct ucontext {
  unsigned long uc_flags;
  struct ucontext* uc_link;
  stack_t uc_stack;
  mcontext_t uc_mcontext;
  union {
    struct {
      sigset_t uc_sigmask;
      uint32_t __padding_rt_sigset;
    };
    sigset64_t uc_sigmask64;
  };
  char __padding[120];
  unsigned long uc_regspace[128] __attribute__((__aligned__(8)));
} ucontext_t;
/* ++ END <sys/ucontext.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/ucontext.h */
int __libc_current_sigrtmin(void);
int __libc_current_sigrtmax(void);
extern const char*  const sys_siglist[65];
extern const char*  const sys_signame[65];
int sigaction(int __signal, const struct sigaction*  __new_action, struct sigaction*  __old_action);
int sigaction64(int __signal, const struct sigaction64*  __new_action, struct sigaction64*  __old_action) __attribute__((__availability__(android,strict,introduced=28 )));
int siginterrupt(int __signal, int __flag);
sighandler_t  signal(int __signal, sighandler_t  __handler);
int sigaddset(sigset_t*  __set, int __signal);
int sigaddset64(sigset64_t*  __set, int __signal) __attribute__((__availability__(android,strict,introduced=28 )));
int sigdelset(sigset_t*  __set, int __signal);
int sigdelset64(sigset64_t*  __set, int __signal) __attribute__((__availability__(android,strict,introduced=28 )));
int sigemptyset(sigset_t*  __set);
int sigemptyset64(sigset64_t*  __set) __attribute__((__availability__(android,strict,introduced=28 )));
int sigfillset(sigset_t*  __set);
int sigfillset64(sigset64_t*  __set) __attribute__((__availability__(android,strict,introduced=28 )));
int sigismember(const sigset_t*  __set, int __signal);
int sigismember64(const sigset64_t*  __set, int __signal) __attribute__((__availability__(android,strict,introduced=28 )));
int sigpending(sigset_t*  __set);
int sigpending64(sigset64_t*  __set) __attribute__((__availability__(android,strict,introduced=28 )));
int sigprocmask(int __how, const sigset_t*  __new_set, sigset_t*  __old_set);
int sigprocmask64(int __how, const sigset64_t*  __new_set, sigset64_t*  __old_set) __attribute__((__availability__(android,strict,introduced=28 )));
int sigsuspend(const sigset_t*  __mask);
int sigsuspend64(const sigset64_t*  __mask) __attribute__((__availability__(android,strict,introduced=28 )));
int sigwait(const sigset_t*  __set, int*  __signal);
int sigwait64(const sigset64_t*  __set, int*  __signal) __attribute__((__availability__(android,strict,introduced=28 )));
int sighold(int __signal)
  __attribute__((__deprecated__("use sigprocmask() or pthread_sigmask() instead")))
  __attribute__((__availability__(android,strict,introduced=26 )));
int sigignore(int __signal)
  __attribute__((__deprecated__("use sigaction() instead"))) __attribute__((__availability__(android,strict,introduced=26 )));
int sigpause(int __signal)
  __attribute__((__deprecated__("use sigsuspend() instead"))) __attribute__((__availability__(android,strict,introduced=26 )));
int sigrelse(int __signal)
  __attribute__((__deprecated__("use sigprocmask() or pthread_sigmask() instead")))
  __attribute__((__availability__(android,strict,introduced=26 )));
sighandler_t  sigset(int __signal, sighandler_t  __handler)
  __attribute__((__deprecated__("use sigaction() instead"))) __attribute__((__availability__(android,strict,introduced=26 )));
int raise(int __signal);
int kill(pid_t __pid, int __signal);
int killpg(int __pgrp, int __signal);
int tgkill(int __tgid, int __tid, int __signal);
int sigaltstack(const stack_t*  __new_signal_stack, stack_t*  __old_signal_stack);
void psiginfo(const siginfo_t*  __info, const char*  __msg);
void psignal(int __signal, const char*  __msg);
int pthread_kill(pthread_t __pthread, int __signal);
int pthread_sigmask(int __how, const sigset_t*  __new_set, sigset_t*  __old_set);
int pthread_sigmask64(int __how, const sigset64_t*  __new_set, sigset64_t*  __old_set) __attribute__((__availability__(android,strict,introduced=28 )));
int sigqueue(pid_t __pid, int __signal, const union sigval __value) __attribute__((__availability__(android,strict,introduced=23 )));
int sigtimedwait(const sigset_t*  __set, siginfo_t*  __info, const struct timespec*  __timeout) __attribute__((__availability__(android,strict,introduced=23 )));
int sigtimedwait64(const sigset64_t*  __set, siginfo_t*  __info, const struct timespec*  __timeout) __attribute__((__availability__(android,strict,introduced=28 )));
int sigwaitinfo(const sigset_t*  __set, siginfo_t*  __info) __attribute__((__availability__(android,strict,introduced=23 )));
int sigwaitinfo64(const sigset64_t*  __set, siginfo_t*  __info) __attribute__((__availability__(android,strict,introduced=28 )));
enum { _SIGNAL_H_ = 1 };
enum { _ASMARM_SIGCONTEXT_H = 1 };
enum { _UAPI_LINUX_SIGNAL_H = 1 };
enum { _UAPI_ASMARM_SIGNAL_H = 1 };
enum { _KERNEL_NSIG = 32 };
enum { SIGHUP = 1 };
enum { SIGINT = 2 };
enum { SIGQUIT = 3 };
enum { SIGILL = 4 };
enum { SIGTRAP = 5 };
enum { SIGABRT = 6 };
enum { SIGIOT = 6 };
enum { SIGBUS = 7 };
enum { SIGFPE = 8 };
enum { SIGKILL = 9 };
enum { SIGUSR1 = 10 };
enum { SIGSEGV = 11 };
enum { SIGUSR2 = 12 };
enum { SIGPIPE = 13 };
enum { SIGALRM = 14 };
enum { SIGTERM = 15 };
enum { SIGSTKFLT = 16 };
enum { SIGCHLD = 17 };
enum { SIGCONT = 18 };
enum { SIGSTOP = 19 };
enum { SIGTSTP = 20 };
enum { SIGTTIN = 21 };
enum { SIGTTOU = 22 };
enum { SIGURG = 23 };
enum { SIGXCPU = 24 };
enum { SIGXFSZ = 25 };
enum { SIGVTALRM = 26 };
enum { SIGPROF = 27 };
enum { SIGWINCH = 28 };
enum { SIGIO = 29 };
enum { SIGPOLL = 29 };
enum { SIGPWR = 30 };
enum { SIGSYS = 31 };
enum { SIGUNUSED = 31 };
enum { __SIGRTMIN = 32 };
enum { __SIGRTMAX = 64 };
enum { SIGSWI = 32 };
enum { SA_THIRTYTWO = 0x02000000 };
enum { SA_RESTORER = 0x04000000 };
enum { MINSIGSTKSZ = 2048 };
enum { SIGSTKSZ = 8192 };
enum { __ASM_GENERIC_SIGNAL_DEFS_H = 1 };
enum { SA_NOCLDSTOP = 0x00000001 };
enum { SA_NOCLDWAIT = 0x00000002 };
enum { SA_SIGINFO = 0x00000004 };
enum { SA_UNSUPPORTED = 0x00000400 };
enum { SA_EXPOSE_TAGBITS = 0x00000800 };
enum { SA_ONSTACK = 0x08000000 };
enum { SA_RESTART = 0x10000000 };
enum { SA_NODEFER = 0x40000000 };
enum { SA_RESETHAND = 0x80000000 };
enum { SA_NOMASK = 0x40000000 };
enum { SA_ONESHOT = 0x80000000 };
enum { SIG_BLOCK = 0 };
enum { SIG_UNBLOCK = 1 };
enum { SIG_SETMASK = 2 };
/* #define SIG_DFL (( __sighandler_t) 0) ### define is not number */
/* #define SIG_IGN (( __sighandler_t) 1) ### define is not number */
/* #define SIG_ERR (( __sighandler_t) - 1) ### define is not number */
enum { _UAPI_ASM_GENERIC_SIGINFO_H = 1 };
enum { SI_MAX_SIZE = 128 };
/* #define __ARCH_SI_BAND_T long ### define is not number */
/* #define __ARCH_SI_CLOCK_T __kernel_clock_t ### define is not number */
enum { __ARCH_SI_ATTRIBUTES = 1 };
/* #define __ADDR_BND_PKEY_PAD (__alignof__(void *) < sizeof(short) ? sizeof(short) : __alignof__(void *)) ### define is not number */
/* #define __SIGINFO struct { int si_signo; int si_errno; int si_code; union __sifields _sifields; } ### define is not number */
/* #define si_pid _sifields._kill._pid ### define is not number */
/* #define si_uid _sifields._kill._uid ### define is not number */
/* #define si_tid _sifields._timer._tid ### define is not number */
/* #define si_overrun _sifields._timer._overrun ### define is not number */
/* #define si_sys_private _sifields._timer._sys_private ### define is not number */
/* #define si_status _sifields._sigchld._status ### define is not number */
/* #define si_utime _sifields._sigchld._utime ### define is not number */
/* #define si_stime _sifields._sigchld._stime ### define is not number */
/* #define si_value _sifields._rt._sigval ### define is not number */
/* #define si_int _sifields._rt._sigval.sival_int ### define is not number */
/* #define si_ptr _sifields._rt._sigval.sival_ptr ### define is not number */
/* #define si_addr _sifields._sigfault._addr ### define is not number */
/* #define si_trapno _sifields._sigfault._trapno ### define is not number */
/* #define si_addr_lsb _sifields._sigfault._addr_lsb ### define is not number */
/* #define si_lower _sifields._sigfault._addr_bnd._lower ### define is not number */
/* #define si_upper _sifields._sigfault._addr_bnd._upper ### define is not number */
/* #define si_pkey _sifields._sigfault._addr_pkey._pkey ### define is not number */
/* #define si_perf_data _sifields._sigfault._perf._data ### define is not number */
/* #define si_perf_type _sifields._sigfault._perf._type ### define is not number */
/* #define si_perf_flags _sifields._sigfault._perf._flags ### define is not number */
/* #define si_band _sifields._sigpoll._band ### define is not number */
/* #define si_fd _sifields._sigpoll._fd ### define is not number */
/* #define si_call_addr _sifields._sigsys._call_addr ### define is not number */
/* #define si_syscall _sifields._sigsys._syscall ### define is not number */
/* #define si_arch _sifields._sigsys._arch ### define is not number */
enum { SI_USER = 0 };
enum { SI_KERNEL = 0x80 };
/* #define SI_QUEUE - 1 ### define is not number */
/* #define SI_TIMER - 2 ### define is not number */
/* #define SI_MESGQ - 3 ### define is not number */
/* #define SI_ASYNCIO - 4 ### define is not number */
/* #define SI_SIGIO - 5 ### define is not number */
/* #define SI_TKILL - 6 ### define is not number */
/* #define SI_DETHREAD - 7 ### define is not number */
/* #define SI_ASYNCNL - 60 ### define is not number */
/* #define SI_FROMUSER (siptr) ((siptr)->si_code <= 0) ### define is not number */
/* #define SI_FROMKERNEL (siptr) ((siptr)->si_code > 0) ### define is not number */
enum { ILL_ILLOPC = 1 };
enum { ILL_ILLOPN = 2 };
enum { ILL_ILLADR = 3 };
enum { ILL_ILLTRP = 4 };
enum { ILL_PRVOPC = 5 };
enum { ILL_PRVREG = 6 };
enum { ILL_COPROC = 7 };
enum { ILL_BADSTK = 8 };
enum { ILL_BADIADDR = 9 };
enum { __ILL_BREAK = 10 };
enum { __ILL_BNDMOD = 11 };
enum { NSIGILL = 11 };
enum { FPE_INTDIV = 1 };
enum { FPE_INTOVF = 2 };
enum { FPE_FLTDIV = 3 };
enum { FPE_FLTOVF = 4 };
enum { FPE_FLTUND = 5 };
enum { FPE_FLTRES = 6 };
enum { FPE_FLTINV = 7 };
enum { FPE_FLTSUB = 8 };
enum { __FPE_DECOVF = 9 };
enum { __FPE_DECDIV = 10 };
enum { __FPE_DECERR = 11 };
enum { __FPE_INVASC = 12 };
enum { __FPE_INVDEC = 13 };
enum { FPE_FLTUNK = 14 };
enum { FPE_CONDTRAP = 15 };
enum { NSIGFPE = 15 };
enum { SEGV_MAPERR = 1 };
enum { SEGV_ACCERR = 2 };
enum { SEGV_BNDERR = 3 };
enum { SEGV_PKUERR = 4 };
enum { SEGV_ACCADI = 5 };
enum { SEGV_ADIDERR = 6 };
enum { SEGV_ADIPERR = 7 };
enum { SEGV_MTEAERR = 8 };
enum { SEGV_MTESERR = 9 };
enum { SEGV_CPERR = 10 };
enum { NSIGSEGV = 10 };
enum { BUS_ADRALN = 1 };
enum { BUS_ADRERR = 2 };
enum { BUS_OBJERR = 3 };
enum { BUS_MCEERR_AR = 4 };
enum { BUS_MCEERR_AO = 5 };
enum { NSIGBUS = 5 };
enum { TRAP_BRKPT = 1 };
enum { TRAP_TRACE = 2 };
enum { TRAP_BRANCH = 3 };
enum { TRAP_HWBKPT = 4 };
enum { TRAP_UNK = 5 };
enum { TRAP_PERF = 6 };
enum { NSIGTRAP = 6 };
/* #define TRAP_PERF_FLAG_ASYNC (1u << 0) ### define is not number */
enum { CLD_EXITED = 1 };
enum { CLD_KILLED = 2 };
enum { CLD_DUMPED = 3 };
enum { CLD_TRAPPED = 4 };
enum { CLD_STOPPED = 5 };
enum { CLD_CONTINUED = 6 };
enum { NSIGCHLD = 6 };
enum { POLL_IN = 1 };
enum { POLL_OUT = 2 };
enum { POLL_MSG = 3 };
enum { POLL_ERR = 4 };
enum { POLL_PRI = 5 };
enum { POLL_HUP = 6 };
enum { NSIGPOLL = 6 };
enum { SYS_SECCOMP = 1 };
enum { SYS_USER_DISPATCH = 2 };
enum { NSIGSYS = 2 };
enum { EMT_TAGOVF = 1 };
enum { NSIGEMT = 1 };
enum { SIGEV_SIGNAL = 0 };
enum { SIGEV_NONE = 1 };
enum { SIGEV_THREAD = 2 };
enum { SIGEV_THREAD_ID = 4 };
/* #define __ARCH_SIGEV_PREAMBLE_SIZE (sizeof(int) * 2 + sizeof(sigval_t)) ### define is not number */
enum { SIGEV_MAX_SIZE = 64 };
/* #define SIGEV_PAD_SIZE ((SIGEV_MAX_SIZE - __ARCH_SIGEV_PREAMBLE_SIZE) / sizeof(int)) ### define is not number */
/* #define sigev_notify_function _sigev_un._sigev_thread._function ### define is not number */
/* #define sigev_notify_attributes _sigev_un._sigev_thread._attribute ### define is not number */
/* #define sigev_notify_thread_id _sigev_un._tid ### define is not number */
enum { SS_ONSTACK = 1 };
enum { SS_DISABLE = 2 };
/* #define SS_AUTODISARM (1U << 31) ### define is not number */
/* #define SS_FLAG_BITS (1U << 31) ### define is not number */
enum { NSIG = 65 };
enum { _NSIG = 65 };
enum { _KERNEL__NSIG = 64 };
]] require 'ffi.req' 'c.PAGE_SIZE' ffi.cdef[[
/* #define PAGE_MASK (~(PAGE_SIZE - 1)) ### define is not number */
/* #define REG_R0 REG_R0 ### define is not number */
/* #define REG_R1 REG_R1 ### define is not number */
/* #define REG_R2 REG_R2 ### define is not number */
/* #define REG_R3 REG_R3 ### define is not number */
/* #define REG_R4 REG_R4 ### define is not number */
/* #define REG_R5 REG_R5 ### define is not number */
/* #define REG_R6 REG_R6 ### define is not number */
/* #define REG_R7 REG_R7 ### define is not number */
/* #define REG_R8 REG_R8 ### define is not number */
/* #define REG_R9 REG_R9 ### define is not number */
/* #define REG_R10 REG_R10 ### define is not number */
/* #define REG_R11 REG_R11 ### define is not number */
/* #define REG_R12 REG_R12 ### define is not number */
/* #define REG_R13 REG_R13 ### define is not number */
/* #define REG_R14 REG_R14 ### define is not number */
/* #define REG_R15 REG_R15 ### define is not number */
enum { NGREG = 18 };
enum { __BIONIC_HAVE_UCONTEXT_T = 1 };
/* #define SIG_HOLD __BIONIC_CAST(reinterpret_cast, sighandler_t, 2) ### define is not number */
/* #define SIGRTMIN (__libc_current_sigrtmin()) ### define is not number */
/* #define SIGRTMAX (__libc_current_sigrtmax()) ### define is not number */
/* #define si_timerid _sifields._timer._tid ### define is not number */
enum { SIG2STR_MAX = 32 };
/* + END <signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/signal.h */
]]
