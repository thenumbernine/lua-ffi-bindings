local ffi = require 'ffi'
require 'ffi.req' 'c.sys.types'
ffi.cdef[[
/* + BEGIN <sched.h> /data/data/com.termux/files/usr/bin/../../usr/include/sched.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <bits/timespec.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/timespec.h */
/* ++ END <bits/timespec.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/timespec.h */
/* ++ BEGIN <linux/sched.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/sched.h */
struct clone_args {
  uint64_t __attribute__((aligned(8))) flags;
  uint64_t __attribute__((aligned(8))) pidfd;
  uint64_t __attribute__((aligned(8))) child_tid;
  uint64_t __attribute__((aligned(8))) parent_tid;
  uint64_t __attribute__((aligned(8))) exit_signal;
  uint64_t __attribute__((aligned(8))) stack;
  uint64_t __attribute__((aligned(8))) stack_size;
  uint64_t __attribute__((aligned(8))) tls;
  uint64_t __attribute__((aligned(8))) set_tid;
  uint64_t __attribute__((aligned(8))) set_tid_size;
  uint64_t __attribute__((aligned(8))) cgroup;
};
/* ++ END <linux/sched.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/sched.h */
/* ++ BEGIN <linux/sched/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/sched/types.h */
struct sched_attr {
  uint32_t size;
  uint32_t sched_policy;
  uint64_t sched_flags;
  int32_t sched_nice;
  uint32_t sched_priority;
  uint64_t sched_runtime;
  uint64_t sched_deadline;
  uint64_t sched_period;
  uint32_t sched_util_min;
  uint32_t sched_util_max;
};
/* ++ END <linux/sched/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/sched/types.h */
struct sched_param {
  int sched_priority;
};
int sched_setscheduler(pid_t __pid, int __policy, const struct sched_param*  __param);
int sched_getscheduler(pid_t __pid);
int sched_yield(void);
int sched_get_priority_max(int __policy);
int sched_get_priority_min(int __policy);
int sched_setparam(pid_t __pid, const struct sched_param*  __param);
int sched_getparam(pid_t __pid, struct sched_param*  __param);
int sched_rr_get_interval(pid_t __pid, struct timespec*  __quantum);
enum { _UAPI_LINUX_SCHED_H = 1 };
enum { CSIGNAL = 0x000000ff };
enum { CLONE_VM = 0x00000100 };
enum { CLONE_FS = 0x00000200 };
enum { CLONE_FILES = 0x00000400 };
enum { CLONE_SIGHAND = 0x00000800 };
enum { CLONE_PIDFD = 0x00001000 };
enum { CLONE_PTRACE = 0x00002000 };
enum { CLONE_VFORK = 0x00004000 };
enum { CLONE_PARENT = 0x00008000 };
enum { CLONE_THREAD = 0x00010000 };
enum { CLONE_NEWNS = 0x00020000 };
enum { CLONE_SYSVSEM = 0x00040000 };
enum { CLONE_SETTLS = 0x00080000 };
enum { CLONE_PARENT_SETTID = 0x00100000 };
enum { CLONE_CHILD_CLEARTID = 0x00200000 };
enum { CLONE_DETACHED = 0x00400000 };
enum { CLONE_UNTRACED = 0x00800000 };
enum { CLONE_CHILD_SETTID = 0x01000000 };
enum { CLONE_NEWCGROUP = 0x02000000 };
enum { CLONE_NEWUTS = 0x04000000 };
enum { CLONE_NEWIPC = 0x08000000 };
enum { CLONE_NEWUSER = 0x10000000 };
enum { CLONE_NEWPID = 0x20000000 };
enum { CLONE_NEWNET = 0x40000000 };
enum { CLONE_IO = 0x80000000 };
/* + END <sched.h> /data/data/com.termux/files/usr/bin/../../usr/include/sched.h */
]]
