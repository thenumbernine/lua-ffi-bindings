require 'ffi.req' 'c.int128'
local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/signal.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
/* ++ BEGIN <asm/sigcontext.h> /data/data/com.termux/files/usr/bin/../../usr/include/aarch64-linux-android/asm/sigcontext.h */
struct sigcontext {
  __u64 fault_address;
  __u64 regs[31];
  __u64 sp;
  __u64 pc;
  __u64 pstate;
  __u8 __reserved[4096] __attribute__((__aligned__(16)));
};
struct _aarch64_ctx {
  __u32 magic;
  __u32 size;
};
struct fpsimd_context {
  struct _aarch64_ctx head;
  __u32 fpsr;
  __u32 fpcr;
  __uint128_t vregs[32];
};
struct esr_context {
  struct _aarch64_ctx head;
  __u64 esr;
};
struct poe_context {
  struct _aarch64_ctx head;
  __u64 por_el0;
};
struct extra_context {
  struct _aarch64_ctx head;
  __u64 datap;
  __u32 size;
  __u32 __reserved[3];
};
struct sve_context {
  struct _aarch64_ctx head;
  __u16 vl;
  __u16 flags;
  __u16 __reserved[2];
};
struct tpidr2_context {
  struct _aarch64_ctx head;
  __u64 tpidr2;
};
struct fpmr_context {
  struct _aarch64_ctx head;
  __u64 fpmr;
};
struct za_context {
  struct _aarch64_ctx head;
  __u16 vl;
  __u16 __reserved[3];
};
struct zt_context {
  struct _aarch64_ctx head;
  __u16 nregs;
  __u16 __reserved[3];
};
/* +++ BEGIN <asm/sve_context.h> /data/data/com.termux/files/usr/bin/../../usr/include/aarch64-linux-android/asm/sve_context.h */
/* +++ END <asm/sve_context.h> /data/data/com.termux/files/usr/bin/../../usr/include/aarch64-linux-android/asm/sve_context.h */
/* ++ END <asm/sigcontext.h> /data/data/com.termux/files/usr/bin/../../usr/include/aarch64-linux-android/asm/sigcontext.h */
/* ++ BEGIN <bits/signal_types.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/signal_types.h */
/* +++ BEGIN <limits.h> /data/data/com.termux/files/usr/lib/clang/21/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* +++ END <limits.h> /data/data/com.termux/files/usr/lib/clang/21/include/limits.h */
/* +++ BEGIN <linux/signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/signal.h */
/* ++++ BEGIN <asm/signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/aarch64-linux-android/asm/signal.h */
/* +++++ BEGIN <asm-generic/signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/signal.h */
typedef struct {
  unsigned long sig[(64 / 64)];
} sigset_t;
typedef unsigned long old_sigset_t;
/* ++++++ BEGIN <asm-generic/signal-defs.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/signal-defs.h */
typedef void __signalfn_t(int);
typedef __signalfn_t * __sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t * __sigrestore_t;
/* ++++++ END <asm-generic/signal-defs.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/signal-defs.h */
struct __kernel_sigaction {
  __sighandler_t sa_handler;
  unsigned long sa_flags;
  __sigrestore_t sa_restorer;
  sigset_t sa_mask;
};
typedef struct sigaltstack {
  void * ss_sp;
  int ss_flags;
  __kernel_size_t ss_size;
} stack_t;
/* +++++ END <asm-generic/signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/signal.h */
/* ++++ END <asm/signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/aarch64-linux-android/asm/signal.h */
/* ++++ BEGIN <asm/siginfo.h> /data/data/com.termux/files/usr/bin/../../usr/include/aarch64-linux-android/asm/siginfo.h */
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
/* ++++ END <asm/siginfo.h> /data/data/com.termux/files/usr/bin/../../usr/include/aarch64-linux-android/asm/siginfo.h */
/* +++ END <linux/signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/signal.h */
typedef int sig_atomic_t;
typedef __sighandler_t sig_t;
typedef __sighandler_t sighandler_t;
typedef sigset_t sigset64_t;
struct sigaction { int sa_flags; union { sighandler_t sa_handler; void (*sa_sigaction)(int, struct siginfo*, void*); }; sigset_t sa_mask; void (*sa_restorer)(void); };
struct sigaction64 { int sa_flags; union { sighandler_t sa_handler; void (*sa_sigaction)(int, struct siginfo*, void*); }; sigset_t sa_mask; void (*sa_restorer)(void); };
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
struct user_regs_struct {
  uint64_t regs[31];
  uint64_t sp;
  uint64_t pc;
  uint64_t pstate;
};
struct user_fpsimd_struct {
  __uint128_t vregs[32];
  uint32_t fpsr;
  uint32_t fpcr;
};
/* +++ END <sys/user.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/user.h */
typedef unsigned long greg_t;
typedef greg_t gregset_t[34];
typedef struct user_fpsimd_struct fpregset_t;
typedef struct sigcontext mcontext_t;
typedef struct ucontext {
  unsigned long uc_flags;
  struct ucontext *uc_link;
  stack_t uc_stack;
  union {
    sigset_t uc_sigmask;
    sigset64_t uc_sigmask64;
  };
  char __padding[128 - sizeof(sigset_t)];
  mcontext_t uc_mcontext;
} ucontext_t;
/* ++ END <sys/ucontext.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/ucontext.h */
int __libc_current_sigrtmin(void);
int __libc_current_sigrtmax(void);
extern const char* const sys_siglist[65];
extern const char* const sys_signame[65];
int sigaction(int __signal, const struct sigaction* __new_action, struct sigaction* __old_action);
int sigaction64(int __signal, const struct sigaction64* __new_action, struct sigaction64* __old_action) __attribute__((__availability__(android,strict,introduced=28 )));
int siginterrupt(int __signal, int __flag);
sighandler_t signal(int __signal, sighandler_t __handler);
int sigaddset(sigset_t* __set, int __signal);
int sigaddset64(sigset64_t* __set, int __signal) __attribute__((__availability__(android,strict,introduced=28 )));
int sigdelset(sigset_t* __set, int __signal);
int sigdelset64(sigset64_t* __set, int __signal) __attribute__((__availability__(android,strict,introduced=28 )));
int sigemptyset(sigset_t* __set);
int sigemptyset64(sigset64_t* __set) __attribute__((__availability__(android,strict,introduced=28 )));
int sigfillset(sigset_t* __set);
int sigfillset64(sigset64_t* __set) __attribute__((__availability__(android,strict,introduced=28 )));
int sigismember(const sigset_t* __set, int __signal);
int sigismember64(const sigset64_t* __set, int __signal) __attribute__((__availability__(android,strict,introduced=28 )));
int sigpending(sigset_t* __set);
int sigpending64(sigset64_t* __set) __attribute__((__availability__(android,strict,introduced=28 )));
int sigprocmask(int __how, const sigset_t* __new_set, sigset_t* __old_set);
int sigprocmask64(int __how, const sigset64_t* __new_set, sigset64_t* __old_set) __attribute__((__availability__(android,strict,introduced=28 )));
int sigsuspend(const sigset_t* __mask);
int sigsuspend64(const sigset64_t* __mask) __attribute__((__availability__(android,strict,introduced=28 )));
int sigwait(const sigset_t* __set, int* __signal);
int sigwait64(const sigset64_t* __set, int* __signal) __attribute__((__availability__(android,strict,introduced=28 )));
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
sighandler_t sigset(int __signal, sighandler_t __handler)
  __attribute__((__deprecated__("use sigaction() instead"))) __attribute__((__availability__(android,strict,introduced=26 )));
int raise(int __signal);
int kill(pid_t __pid, int __signal);
int killpg(int __pgrp, int __signal);
int tgkill(int __tgid, int __tid, int __signal);
int sigaltstack(const stack_t* __new_signal_stack, stack_t* __old_signal_stack);
void psiginfo(const siginfo_t* __info, const char* __msg);
void psignal(int __signal, const char* __msg);
int pthread_kill(pthread_t __pthread, int __signal);
int pthread_sigmask(int __how, const sigset_t* __new_set, sigset_t* __old_set);
int pthread_sigmask64(int __how, const sigset64_t* __new_set, sigset64_t* __old_set) __attribute__((__availability__(android,strict,introduced=28 )));
int sigqueue(pid_t __pid, int __signal, const union sigval __value) __attribute__((__availability__(android,strict,introduced=23 )));
int sigtimedwait(const sigset_t* __set, siginfo_t* __info, const struct timespec* __timeout) __attribute__((__availability__(android,strict,introduced=23 )));
int sigtimedwait64(const sigset64_t* __set, siginfo_t* __info, const struct timespec* __timeout) __attribute__((__availability__(android,strict,introduced=28 )));
int sigwaitinfo(const sigset_t* __set, siginfo_t* __info) __attribute__((__availability__(android,strict,introduced=23 )));
int sigwaitinfo64(const sigset64_t* __set, siginfo_t* __info) __attribute__((__availability__(android,strict,introduced=28 )));
enum { _SIGNAL_H_ = 1 };
enum { _UAPI__ASM_SIGCONTEXT_H = 1 };
enum { FPSIMD_MAGIC = 0x46508001 };
enum { ESR_MAGIC = 0x45535201 };
enum { POE_MAGIC = 0x504f4530 };
enum { EXTRA_MAGIC = 0x45585401 };
enum { SVE_MAGIC = 0x53564501 };
enum { SVE_SIG_FLAG_SM = 0x1 };
enum { TPIDR2_MAGIC = 0x54504902 };
enum { FPMR_MAGIC = 0x46504d52 };
enum { ZA_MAGIC = 0x54366345 };
enum { ZT_MAGIC = 0x5a544e01 };
enum { _UAPI__ASM_SVE_CONTEXT_H = 1 };
enum { __SVE_VQ_BYTES = 16 };
enum { __SVE_VQ_MIN = 1 };
enum { __SVE_VQ_MAX = 512 };
/* #define __SVE_VL_MIN (__SVE_VQ_MIN * __SVE_VQ_BYTES) ### define is not number */
/* #define __SVE_VL_MAX (__SVE_VQ_MAX * __SVE_VQ_BYTES) ### define is not number */
enum { __SVE_NUM_ZREGS = 32 };
enum { __SVE_NUM_PREGS = 16 };
/* #define __sve_vl_valid (vl) ((vl) % __SVE_VQ_BYTES == 0 && (vl) >= __SVE_VL_MIN && (vl) <= __SVE_VL_MAX) ### define is not number */
/* #define __sve_vq_from_vl (vl) ((vl) / __SVE_VQ_BYTES) ### define is not number */
/* #define __sve_vl_from_vq (vq) ((vq) * __SVE_VQ_BYTES) ### define is not number */
/* #define __SVE_ZREG_SIZE (vq) ((__u32) (vq) * __SVE_VQ_BYTES) ### define is not number */
/* #define __SVE_PREG_SIZE (vq) ((__u32) (vq) * (__SVE_VQ_BYTES / 8)) ### define is not number */
/* #define __SVE_FFR_SIZE (vq) __SVE_PREG_SIZE(vq) ### define is not number */
enum { __SVE_ZREGS_OFFSET = 0 };
/* #define __SVE_ZREG_OFFSET (vq,n) (__SVE_ZREGS_OFFSET + __SVE_ZREG_SIZE(vq) * (n)) ### define is not number */
/* #define __SVE_ZREGS_SIZE (vq) (__SVE_ZREG_OFFSET(vq, __SVE_NUM_ZREGS) - __SVE_ZREGS_OFFSET) ### define is not number */
/* #define __SVE_PREGS_OFFSET (vq) (__SVE_ZREGS_OFFSET + __SVE_ZREGS_SIZE(vq)) ### define is not number */
/* #define __SVE_PREG_OFFSET (vq,n) (__SVE_PREGS_OFFSET(vq) + __SVE_PREG_SIZE(vq) * (n)) ### define is not number */
/* #define __SVE_PREGS_SIZE (vq) (__SVE_PREG_OFFSET(vq, __SVE_NUM_PREGS) - __SVE_PREGS_OFFSET(vq)) ### define is not number */
/* #define __SVE_FFR_OFFSET (vq) (__SVE_PREGS_OFFSET(vq) + __SVE_PREGS_SIZE(vq)) ### define is not number */
enum { SVE_VQ_BYTES = 16 };
enum { SVE_VQ_MIN = 1 };
enum { SVE_VQ_MAX = 512 };
/* #define SVE_VL_MIN (__SVE_VQ_MIN * __SVE_VQ_BYTES) ### define is not number */
/* #define SVE_VL_MAX (__SVE_VQ_MAX * __SVE_VQ_BYTES) ### define is not number */
enum { SVE_NUM_ZREGS = 32 };
enum { SVE_NUM_PREGS = 16 };
/* #define sve_vl_valid (vl) __sve_vl_valid(vl) ### define is not number */
/* #define sve_vq_from_vl (vl) __sve_vq_from_vl(vl) ### define is not number */
/* #define sve_vl_from_vq (vq) __sve_vl_from_vq(vq) ### define is not number */
/* #define SVE_SIG_ZREG_SIZE (vq) __SVE_ZREG_SIZE(vq) ### define is not number */
/* #define SVE_SIG_PREG_SIZE (vq) __SVE_PREG_SIZE(vq) ### define is not number */
/* #define SVE_SIG_FFR_SIZE (vq) __SVE_FFR_SIZE(vq) ### define is not number */
/* #define SVE_SIG_REGS_OFFSET ((sizeof(struct sve_context) + (__SVE_VQ_BYTES - 1)) / __SVE_VQ_BYTES * __SVE_VQ_BYTES) ### define is not number */
/* #define SVE_SIG_ZREGS_OFFSET (SVE_SIG_REGS_OFFSET + __SVE_ZREGS_OFFSET) ### define is not number */
/* #define SVE_SIG_ZREG_OFFSET (vq,n) (SVE_SIG_REGS_OFFSET + __SVE_ZREG_OFFSET(vq, n)) ### define is not number */
/* #define SVE_SIG_ZREGS_SIZE (vq) __SVE_ZREGS_SIZE(vq) ### define is not number */
/* #define SVE_SIG_PREGS_OFFSET (vq) (SVE_SIG_REGS_OFFSET + __SVE_PREGS_OFFSET(vq)) ### define is not number */
/* #define SVE_SIG_PREG_OFFSET (vq,n) (SVE_SIG_REGS_OFFSET + __SVE_PREG_OFFSET(vq, n)) ### define is not number */
/* #define SVE_SIG_PREGS_SIZE (vq) __SVE_PREGS_SIZE(vq) ### define is not number */
/* #define SVE_SIG_FFR_OFFSET (vq) (SVE_SIG_REGS_OFFSET + __SVE_FFR_OFFSET(vq)) ### define is not number */
/* #define SVE_SIG_REGS_SIZE (vq) (__SVE_FFR_OFFSET(vq) + __SVE_FFR_SIZE(vq)) ### define is not number */
/* #define SVE_SIG_CONTEXT_SIZE (vq) (SVE_SIG_REGS_OFFSET + SVE_SIG_REGS_SIZE(vq)) ### define is not number */
/* #define ZA_SIG_REGS_OFFSET ((sizeof(struct za_context) + (__SVE_VQ_BYTES - 1)) / __SVE_VQ_BYTES * __SVE_VQ_BYTES) ### define is not number */
/* #define ZA_SIG_REGS_SIZE (vq) (((vq) * __SVE_VQ_BYTES) * ((vq) * __SVE_VQ_BYTES)) ### define is not number */
/* #define ZA_SIG_ZAV_OFFSET (vq,n) (ZA_SIG_REGS_OFFSET + (SVE_SIG_ZREG_SIZE(vq) * (n))) ### define is not number */
/* #define ZA_SIG_CONTEXT_SIZE (vq) (ZA_SIG_REGS_OFFSET + ZA_SIG_REGS_SIZE(vq)) ### define is not number */
enum { ZT_SIG_REG_SIZE = 512 };
/* #define ZT_SIG_REG_BYTES (ZT_SIG_REG_SIZE / 8) ### define is not number */
/* #define ZT_SIG_REGS_OFFSET sizeof(struct zt_context) ### define is not number */
/* #define ZT_SIG_REGS_SIZE (n) (ZT_SIG_REG_BYTES * (n)) ### define is not number */
/* #define ZT_SIG_CONTEXT_SIZE (n) (sizeof(struct zt_context) + ZT_SIG_REGS_SIZE(n)) ### define is not number */
enum { _UAPI_LINUX_SIGNAL_H = 1 };
enum { __ASM_SIGNAL_H = 1 };
enum { SA_RESTORER = 0x04000000 };
enum { MINSIGSTKSZ = 5120 };
enum { SIGSTKSZ = 16384 };
enum { _UAPI__ASM_GENERIC_SIGNAL_H = 1 };
enum { _KERNEL__NSIG = 64 };
enum { _NSIG_BPW = 64 };
/* #define _NSIG_WORDS (_KERNEL__NSIG / _NSIG_BPW) ### define is not number */
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
enum { __ARCH_HAS_SA_RESTORER = 1 };
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
enum { NGREG = 34 };
enum { __BIONIC_HAVE_UCONTEXT_T = 1 };
/* #define SIG_HOLD __BIONIC_CAST(reinterpret_cast, sighandler_t, 2) ### define is not number */
/* #define SIGRTMIN (__libc_current_sigrtmin()) ### define is not number */
/* #define SIGRTMAX (__libc_current_sigrtmax()) ### define is not number */
/* #define si_timerid _sifields._timer._tid ### define is not number */
enum { SIG2STR_MAX = 32 };
/* + END <signal.h> /data/data/com.termux/files/usr/bin/../../usr/include/signal.h */
]]
