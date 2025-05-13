local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <signal.h> /usr/include/signal.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN <bits/signum-generic.h> /usr/include/x86_64-linux-gnu/bits/signum-generic.h */
/* +++ BEGIN <bits/signum-arch.h> /usr/include/x86_64-linux-gnu/bits/signum-arch.h */
/* +++ END <bits/signum-arch.h> /usr/include/x86_64-linux-gnu/bits/signum-arch.h */
/* ++ END <bits/signum-generic.h> /usr/include/x86_64-linux-gnu/bits/signum-generic.h */
/* ++ BEGIN <bits/types/sig_atomic_t.h> /usr/include/x86_64-linux-gnu/bits/types/sig_atomic_t.h */
typedef __sig_atomic_t sig_atomic_t;
/* ++ END <bits/types/sig_atomic_t.h> /usr/include/x86_64-linux-gnu/bits/types/sig_atomic_t.h */
/* ++ BEGIN <bits/types/sigset_t.h> /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h */
]] require 'ffi.req' 'c.bits.types.sigset_t' ffi.cdef[[
/* ++ END <bits/types/sigset_t.h> /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h */
typedef __pid_t pid_t;
typedef __uid_t uid_t;
/* ++ BEGIN <bits/types/struct_timespec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
]] require 'ffi.req' 'c.bits.types.struct_timespec' ffi.cdef[[
/* ++ END <bits/types/struct_timespec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h */
/* ++ BEGIN <bits/types/siginfo_t.h> /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h */
/* +++ BEGIN <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* +++ END <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* +++ BEGIN <bits/types/__sigval_t.h> /usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h */
union sigval
{
  int sival_int;
  void *sival_ptr;
};
typedef union sigval __sigval_t;
/* +++ END <bits/types/__sigval_t.h> /usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h */
/* +++ BEGIN <bits/siginfo-arch.h> /usr/include/x86_64-linux-gnu/bits/siginfo-arch.h */
/* +++ END <bits/siginfo-arch.h> /usr/include/x86_64-linux-gnu/bits/siginfo-arch.h */
typedef struct
  {
    int si_signo;
    int si_errno;
    int si_code;
    int __pad0;
    union
      {
 int _pad[((128 / sizeof (int)) - 4)];
 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
   } _kill;
 struct
   {
     int si_tid;
     int si_overrun;
     __sigval_t si_sigval;
   } _timer;
 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     __sigval_t si_sigval;
   } _rt;
 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     int si_status;
     __clock_t si_utime;
     __clock_t si_stime;
   } _sigchld;
 struct
   {
     void *si_addr;
    
     short int si_addr_lsb;
     union
       {
  struct
    {
      void *_lower;
      void *_upper;
    } _addr_bnd;
  __uint32_t _pkey;
       } _bounds;
   } _sigfault;
 struct
   {
     long int si_band;
     int si_fd;
   } _sigpoll;
 struct
   {
     void *_call_addr;
     int _syscall;
     unsigned int _arch;
   } _sigsys;
      } _sifields;
  } siginfo_t ;
/* ++ END <bits/types/siginfo_t.h> /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h */
/* ++ BEGIN <bits/siginfo-consts.h> /usr/include/x86_64-linux-gnu/bits/siginfo-consts.h */
enum
{
  SI_ASYNCNL = -60,
  SI_DETHREAD = -7,
  SI_TKILL,
  SI_SIGIO,
  SI_ASYNCIO,
  SI_MESGQ,
  SI_TIMER,
  SI_QUEUE,
  SI_USER,
  SI_KERNEL = 0x80
};
enum
{
  ILL_ILLOPC = 1,
  ILL_ILLOPN,
  ILL_ILLADR,
  ILL_ILLTRP,
  ILL_PRVOPC,
  ILL_PRVREG,
  ILL_COPROC,
  ILL_BADSTK,
  ILL_BADIADDR
};
enum
{
  FPE_INTDIV = 1,
  FPE_INTOVF,
  FPE_FLTDIV,
  FPE_FLTOVF,
  FPE_FLTUND,
  FPE_FLTRES,
  FPE_FLTINV,
  FPE_FLTSUB,
  FPE_FLTUNK = 14,
  FPE_CONDTRAP
};
enum
{
  SEGV_MAPERR = 1,
  SEGV_ACCERR,
  SEGV_BNDERR,
  SEGV_PKUERR,
  SEGV_ACCADI,
  SEGV_ADIDERR,
  SEGV_ADIPERR,
  SEGV_MTEAERR,
  SEGV_MTESERR,
  SEGV_CPERR
};
enum
{
  BUS_ADRALN = 1,
  BUS_ADRERR,
  BUS_OBJERR,
  BUS_MCEERR_AR,
  BUS_MCEERR_AO
};
enum
{
  CLD_EXITED = 1,
  CLD_KILLED,
  CLD_DUMPED,
  CLD_TRAPPED,
  CLD_STOPPED,
  CLD_CONTINUED
};
enum
{
  POLL_IN = 1,
  POLL_OUT,
  POLL_MSG,
  POLL_ERR,
  POLL_PRI,
  POLL_HUP
};
/* ++ END <bits/siginfo-consts.h> /usr/include/x86_64-linux-gnu/bits/siginfo-consts.h */
/* ++ BEGIN <bits/types/sigval_t.h> /usr/include/x86_64-linux-gnu/bits/types/sigval_t.h */
typedef __sigval_t sigval_t;
/* ++ END <bits/types/sigval_t.h> /usr/include/x86_64-linux-gnu/bits/types/sigval_t.h */
/* ++ BEGIN <bits/types/sigevent_t.h> /usr/include/x86_64-linux-gnu/bits/types/sigevent_t.h */
/* +++ BEGIN <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* +++ END <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
typedef union pthread_attr_t pthread_attr_t;
typedef struct sigevent
  {
    __sigval_t sigev_value;
    int sigev_signo;
    int sigev_notify;
    union
      {
 int _pad[((64 / sizeof (int)) - 4)];
 __pid_t _tid;
 struct
   {
     void (*_function) (__sigval_t);
     pthread_attr_t *_attribute;
   } _sigev_thread;
      } _sigev_un;
  } sigevent_t;
/* ++ END <bits/types/sigevent_t.h> /usr/include/x86_64-linux-gnu/bits/types/sigevent_t.h */
/* ++ BEGIN <bits/sigevent-consts.h> /usr/include/x86_64-linux-gnu/bits/sigevent-consts.h */
enum
{
  SIGEV_SIGNAL = 0,
  SIGEV_NONE,
  SIGEV_THREAD,
  SIGEV_THREAD_ID = 4
};
/* ++ END <bits/sigevent-consts.h> /usr/include/x86_64-linux-gnu/bits/sigevent-consts.h */
typedef void (*__sighandler_t) (int);
extern __sighandler_t __sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
extern __sighandler_t signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
extern int kill (__pid_t __pid, int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern int killpg (__pid_t __pgrp, int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern int raise (int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern __sighandler_t ssignal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
extern int gsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern void psignal (int __sig, const char *__s);
extern void psiginfo (const siginfo_t *__pinfo, const char *__s);
extern int sigblock (int __mask) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int sigsetmask (int __mask) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int siggetmask (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
typedef __sighandler_t sig_t;
extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigismember (const sigset_t *__set, int __signo)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
/* ++ BEGIN <bits/sigaction.h> /usr/include/x86_64-linux-gnu/bits/sigaction.h */
struct sigaction
  {
    union
      {
 __sighandler_t sa_handler;
 void (*sa_sigaction) (int, siginfo_t *, void *);
      }
    __sigaction_handler;
    __sigset_t sa_mask;
    int sa_flags;
    void (*sa_restorer) (void);
  };
/* ++ END <bits/sigaction.h> /usr/include/x86_64-linux-gnu/bits/sigaction.h */
extern int sigprocmask (int __how, const sigset_t *__restrict __set,
   sigset_t *__restrict __oset) __attribute__ ((__nothrow__ , __leaf__));
extern int sigsuspend (const sigset_t *__set) __attribute__ ((__nonnull__ (1)));
extern int sigaction (int __sig, const struct sigaction *__restrict __act,
        struct sigaction *__restrict __oact) __attribute__ ((__nothrow__ , __leaf__));
extern int sigpending (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigwait (const sigset_t *__restrict __set, int *__restrict __sig)
     __attribute__ ((__nonnull__ (1, 2)));
extern int sigwaitinfo (const sigset_t *__restrict __set,
   siginfo_t *__restrict __info) __attribute__ ((__nonnull__ (1)));
extern int sigtimedwait (const sigset_t *__restrict __set,
    siginfo_t *__restrict __info,
    const struct timespec *__restrict __timeout)
     __attribute__ ((__nonnull__ (1)));
extern int sigqueue (__pid_t __pid, int __sig, const union sigval __val)
     __attribute__ ((__nothrow__ , __leaf__));
/* ++ BEGIN <bits/sigcontext.h> /usr/include/x86_64-linux-gnu/bits/sigcontext.h */
struct _fpx_sw_bytes
{
  __uint32_t magic1;
  __uint32_t extended_size;
  __uint64_t xstate_bv;
  __uint32_t xstate_size;
  __uint32_t __glibc_reserved1[7];
};
struct _fpreg
{
  unsigned short significand[4];
  unsigned short exponent;
};
struct _fpxreg
{
  unsigned short significand[4];
  unsigned short exponent;
  unsigned short __glibc_reserved1[3];
};
struct _xmmreg
{
  __uint32_t element[4];
};
struct _fpstate
{
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
struct sigcontext
{
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
  __extension__ union
    {
      struct _fpstate * fpstate;
      __uint64_t __fpstate_word;
    };
  __uint64_t __reserved1 [8];
};
struct _xsave_hdr
{
  __uint64_t xstate_bv;
  __uint64_t __glibc_reserved1[2];
  __uint64_t __glibc_reserved2[5];
};
struct _ymmh_state
{
  __uint32_t ymmh_space[64];
};
struct _xstate
{
  struct _fpstate fpstate;
  struct _xsave_hdr xstate_hdr;
  struct _ymmh_state ymmh;
};
/* ++ END <bits/sigcontext.h> /usr/include/x86_64-linux-gnu/bits/sigcontext.h */
extern int sigreturn (struct sigcontext *__scp) __attribute__ ((__nothrow__ , __leaf__));
/* ++ BEGIN <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
/* ++ BEGIN <bits/types/stack_t.h> /usr/include/x86_64-linux-gnu/bits/types/stack_t.h */
/* +++ BEGIN <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
typedef struct
  {
    void *ss_sp;
    int ss_flags;
    size_t ss_size;
  } stack_t;
/* ++ END <bits/types/stack_t.h> /usr/include/x86_64-linux-gnu/bits/types/stack_t.h */
/* ++ BEGIN <sys/ucontext.h> /usr/include/x86_64-linux-gnu/sys/ucontext.h */
__extension__ typedef long long int greg_t;
typedef greg_t gregset_t[23];
struct _libc_fpxreg
{
  unsigned short int significand[4];
  unsigned short int exponent;
  unsigned short int __glibc_reserved1[3];
};
struct _libc_xmmreg
{
  __uint32_t element[4];
};
struct _libc_fpstate
{
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
typedef struct
  {
    gregset_t gregs;
    fpregset_t fpregs;
    __extension__ unsigned long long __reserved1 [8];
} mcontext_t;
typedef struct ucontext_t
  {
    unsigned long int uc_flags;
    struct ucontext_t *uc_link;
    stack_t uc_stack;
    mcontext_t uc_mcontext;
    sigset_t uc_sigmask;
    struct _libc_fpstate __fpregs_mem;
    __extension__ unsigned long long int __ssp[4];
  } ucontext_t;
/* ++ END <sys/ucontext.h> /usr/include/x86_64-linux-gnu/sys/ucontext.h */
extern int siginterrupt (int __sig, int __interrupt) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__deprecated__ ("Use sigaction with SA_RESTART instead")));
/* ++ BEGIN <bits/sigstack.h> /usr/include/x86_64-linux-gnu/bits/sigstack.h */
/* ++ END <bits/sigstack.h> /usr/include/x86_64-linux-gnu/bits/sigstack.h */
/* ++ BEGIN <bits/sigstksz.h> /usr/include/x86_64-linux-gnu/bits/sigstksz.h */
/* ++ END <bits/sigstksz.h> /usr/include/x86_64-linux-gnu/bits/sigstksz.h */
/* ++ BEGIN <bits/ss_flags.h> /usr/include/x86_64-linux-gnu/bits/ss_flags.h */
enum
{
  SS_ONSTACK = 1,
  SS_DISABLE
};
/* ++ END <bits/ss_flags.h> /usr/include/x86_64-linux-gnu/bits/ss_flags.h */
extern int sigaltstack (const stack_t *__restrict __ss,
   stack_t *__restrict __oss) __attribute__ ((__nothrow__ , __leaf__));
/* ++ BEGIN <bits/types/struct_sigstack.h> /usr/include/x86_64-linux-gnu/bits/types/struct_sigstack.h */
struct sigstack
  {
    void *ss_sp;
    int ss_onstack;
  };
/* ++ END <bits/types/struct_sigstack.h> /usr/include/x86_64-linux-gnu/bits/types/struct_sigstack.h */
extern int sigstack (struct sigstack *__ss, struct sigstack *__oss)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
/* ++ BEGIN <bits/pthreadtypes.h> /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h */
]] require 'ffi.req' 'c.bits.pthreadtypes' ffi.cdef[[
/* ++ END <bits/pthreadtypes.h> /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h */
/* ++ BEGIN <bits/sigthread.h> /usr/include/x86_64-linux-gnu/bits/sigthread.h */
extern int pthread_sigmask (int __how,
       const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__ , __leaf__));
extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ , __leaf__));
/* ++ END <bits/sigthread.h> /usr/include/x86_64-linux-gnu/bits/sigthread.h */
extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ , __leaf__));
extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ , __leaf__));
/* ++ BEGIN <bits/signal_ext.h> /usr/include/x86_64-linux-gnu/bits/signal_ext.h */
/* ++ END <bits/signal_ext.h> /usr/include/x86_64-linux-gnu/bits/signal_ext.h */
/* #define SIG_ERR ((__sighandler_t) -1) ### define is not number */
/* #define SIG_DFL ((__sighandler_t) 0) ### define is not number */
/* #define SIG_IGN ((__sighandler_t) 1) ### define is not number */
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
enum { SIGIOT = 6 };
enum { SIGCLD = 17 };
enum { __SIGRTMIN = 32 };
enum { __SIGRTMAX = 64 };
/* #define _NSIG (__SIGRTMAX + 1) ### define is not number */
enum { __SI_MAX_SIZE = 128 };
/* #define __SI_PAD_SIZE ((__SI_MAX_SIZE / sizeof (int)) - 4) ### define is not number */
enum { __SI_ALIGNMENT = 1 };
/* #define __SI_BAND_TYPE long int ### define is not number */
/* #define __SI_CLOCK_T __clock_t ### define is not number */
enum { __SI_ERRNO_THEN_CODE = 1 };
enum { __SI_HAVE_SIGSYS = 1 };
enum { __SI_SIGFAULT_ADDL = 1 };
/* #define si_pid _sifields._kill.si_pid ### define is not number */
/* #define si_uid _sifields._kill.si_uid ### define is not number */
/* #define si_timerid _sifields._timer.si_tid ### define is not number */
/* #define si_overrun _sifields._timer.si_overrun ### define is not number */
/* #define si_status _sifields._sigchld.si_status ### define is not number */
/* #define si_utime _sifields._sigchld.si_utime ### define is not number */
/* #define si_stime _sifields._sigchld.si_stime ### define is not number */
/* #define si_value _sifields._rt.si_sigval ### define is not number */
/* #define si_int _sifields._rt.si_sigval.sival_int ### define is not number */
/* #define si_ptr _sifields._rt.si_sigval.sival_ptr ### define is not number */
/* #define si_addr _sifields._sigfault.si_addr ### define is not number */
/* #define si_addr_lsb _sifields._sigfault.si_addr_lsb ### define is not number */
/* #define si_lower _sifields._sigfault._bounds._addr_bnd._lower ### define is not number */
/* #define si_upper _sifields._sigfault._bounds._addr_bnd._upper ### define is not number */
/* #define si_pkey _sifields._sigfault._bounds._pkey ### define is not number */
/* #define si_band _sifields._sigpoll.si_band ### define is not number */
/* #define si_fd _sifields._sigpoll.si_fd ### define is not number */
/* #define si_call_addr _sifields._sigsys._call_addr ### define is not number */
/* #define si_syscall _sifields._sigsys._syscall ### define is not number */
/* #define si_arch _sifields._sigsys._arch ### define is not number */
enum { __SI_ASYNCIO_AFTER_SIGIO = 1 };
/* #define SI_ASYNCNL SI_ASYNCNL ### define is not number */
/* #define SI_DETHREAD SI_DETHREAD ### define is not number */
/* #define SI_TKILL SI_TKILL ### define is not number */
/* #define SI_SIGIO SI_SIGIO ### define is not number */
/* #define SI_MESGQ SI_MESGQ ### define is not number */
/* #define SI_TIMER SI_TIMER ### define is not number */
/* #define SI_ASYNCIO SI_ASYNCIO ### define is not number */
/* #define SI_QUEUE SI_QUEUE ### define is not number */
/* #define SI_USER SI_USER ### define is not number */
/* #define SI_KERNEL SI_KERNEL ### define is not number */
/* #define ILL_ILLOPC ILL_ILLOPC ### define is not number */
/* #define ILL_ILLOPN ILL_ILLOPN ### define is not number */
/* #define ILL_ILLADR ILL_ILLADR ### define is not number */
/* #define ILL_ILLTRP ILL_ILLTRP ### define is not number */
/* #define ILL_PRVOPC ILL_PRVOPC ### define is not number */
/* #define ILL_PRVREG ILL_PRVREG ### define is not number */
/* #define ILL_COPROC ILL_COPROC ### define is not number */
/* #define ILL_BADSTK ILL_BADSTK ### define is not number */
/* #define ILL_BADIADDR ILL_BADIADDR ### define is not number */
/* #define FPE_INTDIV FPE_INTDIV ### define is not number */
/* #define FPE_INTOVF FPE_INTOVF ### define is not number */
/* #define FPE_FLTDIV FPE_FLTDIV ### define is not number */
/* #define FPE_FLTOVF FPE_FLTOVF ### define is not number */
/* #define FPE_FLTUND FPE_FLTUND ### define is not number */
/* #define FPE_FLTRES FPE_FLTRES ### define is not number */
/* #define FPE_FLTINV FPE_FLTINV ### define is not number */
/* #define FPE_FLTSUB FPE_FLTSUB ### define is not number */
/* #define FPE_FLTUNK FPE_FLTUNK ### define is not number */
/* #define FPE_CONDTRAP FPE_CONDTRAP ### define is not number */
/* #define SEGV_MAPERR SEGV_MAPERR ### define is not number */
/* #define SEGV_ACCERR SEGV_ACCERR ### define is not number */
/* #define SEGV_BNDERR SEGV_BNDERR ### define is not number */
/* #define SEGV_PKUERR SEGV_PKUERR ### define is not number */
/* #define SEGV_ACCADI SEGV_ACCADI ### define is not number */
/* #define SEGV_ADIDERR SEGV_ADIDERR ### define is not number */
/* #define SEGV_ADIPERR SEGV_ADIPERR ### define is not number */
/* #define SEGV_MTEAERR SEGV_MTEAERR ### define is not number */
/* #define SEGV_MTESERR SEGV_MTESERR ### define is not number */
/* #define SEGV_CPERR SEGV_CPERR ### define is not number */
/* #define BUS_ADRALN BUS_ADRALN ### define is not number */
/* #define BUS_ADRERR BUS_ADRERR ### define is not number */
/* #define BUS_OBJERR BUS_OBJERR ### define is not number */
/* #define BUS_MCEERR_AR BUS_MCEERR_AR ### define is not number */
/* #define BUS_MCEERR_AO BUS_MCEERR_AO ### define is not number */
/* #define CLD_EXITED CLD_EXITED ### define is not number */
/* #define CLD_KILLED CLD_KILLED ### define is not number */
/* #define CLD_DUMPED CLD_DUMPED ### define is not number */
/* #define CLD_TRAPPED CLD_TRAPPED ### define is not number */
/* #define CLD_STOPPED CLD_STOPPED ### define is not number */
/* #define CLD_CONTINUED CLD_CONTINUED ### define is not number */
/* #define POLL_IN POLL_IN ### define is not number */
/* #define POLL_OUT POLL_OUT ### define is not number */
/* #define POLL_MSG POLL_MSG ### define is not number */
/* #define POLL_ERR POLL_ERR ### define is not number */
/* #define POLL_PRI POLL_PRI ### define is not number */
/* #define POLL_HUP POLL_HUP ### define is not number */
enum { __SIGEV_MAX_SIZE = 64 };
/* #define __SIGEV_PAD_SIZE ((__SIGEV_MAX_SIZE / sizeof (int)) - 4) ### define is not number */
/* #define sigev_notify_function _sigev_un._sigev_thread._function ### define is not number */
/* #define sigev_notify_attributes _sigev_un._sigev_thread._attribute ### define is not number */
/* #define SIGEV_SIGNAL SIGEV_SIGNAL ### define is not number */
/* #define SIGEV_NONE SIGEV_NONE ### define is not number */
/* #define SIGEV_THREAD SIGEV_THREAD ### define is not number */
/* #define SIGEV_THREAD_ID SIGEV_THREAD_ID ### define is not number */
/* #define sigmask (sig) __glibc_macro_warning ("sigmask is deprecated") ((int)(1u << ((sig) - 1))) ### define is not number */
/* #define NSIG (__SIGRTMAX + 1) ### define is not number */
/* #define sa_handler __sigaction_handler.sa_handler ### define is not number */
/* #define sa_sigaction __sigaction_handler.sa_sigaction ### define is not number */
enum { SA_NOCLDSTOP = 1 };
enum { SA_NOCLDWAIT = 2 };
enum { SA_SIGINFO = 4 };
enum { SA_ONSTACK = 0x08000000 };
enum { SA_RESTART = 0x10000000 };
enum { SA_NODEFER = 0x40000000 };
enum { SA_RESETHAND = 0x80000000 };
enum { SA_INTERRUPT = 0x20000000 };
enum { SA_NOMASK = 0x40000000 };
enum { SA_ONESHOT = 0x80000000 };
enum { SA_STACK = 0x08000000 };
enum { SIG_BLOCK = 0 };
enum { SIG_UNBLOCK = 1 };
enum { SIG_SETMASK = 2 };
enum { FP_XSTATE_MAGIC1 = 0x46505853 };
enum { FP_XSTATE_MAGIC2 = 0x46505845 };
/* #define FP_XSTATE_MAGIC2_SIZE sizeof (FP_XSTATE_MAGIC2) ### define is not number */
enum { __NGREG = 23 };
enum { NGREG = 23 };
enum { MINSIGSTKSZ = 2048 };
enum { SIGSTKSZ = 8192 };
/* #define SS_ONSTACK SS_ONSTACK ### define is not number */
/* #define SS_DISABLE SS_DISABLE ### define is not number */
/* #define SIGRTMIN (__libc_current_sigrtmin ()) ### define is not number */
/* #define SIGRTMAX (__libc_current_sigrtmax ()) ### define is not number */
/* + END <signal.h> /usr/include/signal.h */
]]
