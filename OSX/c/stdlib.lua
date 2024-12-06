local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_stdlib.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/wait.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef enum { P_ALL, P_PID, P_PGID } idtype_t;
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_pid_t pid_t;
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_id_t.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_id_t id_t;
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_id_t.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h */
]] require 'ffi.req' 'c.sys.signal' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/resource.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval.h */
]] require 'ffi.req' 'c.sys._types._timeval' ffi.cdef[[
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_id_t.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_id_t.h */
typedef __uint64_t rlim_t;
enum { PRIO_PROCESS = 0 };
enum { PRIO_PGRP = 1 };
enum { PRIO_USER = 2 };
enum { PRIO_DARWIN_THREAD = 3 };
enum { PRIO_DARWIN_PROCESS = 4 };
enum { PRIO_MIN = -20 };
enum { PRIO_MAX = 20 };
enum { PRIO_DARWIN_BG = 4096 };
enum { PRIO_DARWIN_NONUI = 4097 };
enum { RUSAGE_SELF = 0 };
enum { RUSAGE_CHILDREN = -1 };
struct rusage {
	struct timeval ru_utime;
	struct timeval ru_stime;
	long ru_maxrss;
	enum { ru_first = 0 };
	long ru_ixrss;
	long ru_idrss;
	long ru_isrss;
	long ru_minflt;
	long ru_majflt;
	long ru_nswap;
	long ru_inblock;
	long ru_oublock;
	long ru_msgsnd;
	long ru_msgrcv;
	long ru_nsignals;
	long ru_nvcsw;
	long ru_nivcsw;
	enum { ru_last = 0 };
};
enum { RUSAGE_INFO_V0 = 0 };
enum { RUSAGE_INFO_V1 = 1 };
enum { RUSAGE_INFO_V2 = 2 };
enum { RUSAGE_INFO_V3 = 3 };
enum { RUSAGE_INFO_V4 = 4 };
enum { RUSAGE_INFO_V5 = 5 };
enum { RUSAGE_INFO_V6 = 6 };
enum { RUSAGE_INFO_CURRENT = 6 };
enum { RU_PROC_RUNS_RESLIDE = 1 };
typedef void *rusage_info_t;
struct rusage_info_v0 {
	uint8_t ri_uuid[16];
	uint64_t ri_user_time;
	uint64_t ri_system_time;
	uint64_t ri_pkg_idle_wkups;
	uint64_t ri_interrupt_wkups;
	uint64_t ri_pageins;
	uint64_t ri_wired_size;
	uint64_t ri_resident_size;
	uint64_t ri_phys_footprint;
	uint64_t ri_proc_start_abstime;
	uint64_t ri_proc_exit_abstime;
};
struct rusage_info_v1 {
	uint8_t ri_uuid[16];
	uint64_t ri_user_time;
	uint64_t ri_system_time;
	uint64_t ri_pkg_idle_wkups;
	uint64_t ri_interrupt_wkups;
	uint64_t ri_pageins;
	uint64_t ri_wired_size;
	uint64_t ri_resident_size;
	uint64_t ri_phys_footprint;
	uint64_t ri_proc_start_abstime;
	uint64_t ri_proc_exit_abstime;
	uint64_t ri_child_user_time;
	uint64_t ri_child_system_time;
	uint64_t ri_child_pkg_idle_wkups;
	uint64_t ri_child_interrupt_wkups;
	uint64_t ri_child_pageins;
	uint64_t ri_child_elapsed_abstime;
};
struct rusage_info_v2 {
	uint8_t ri_uuid[16];
	uint64_t ri_user_time;
	uint64_t ri_system_time;
	uint64_t ri_pkg_idle_wkups;
	uint64_t ri_interrupt_wkups;
	uint64_t ri_pageins;
	uint64_t ri_wired_size;
	uint64_t ri_resident_size;
	uint64_t ri_phys_footprint;
	uint64_t ri_proc_start_abstime;
	uint64_t ri_proc_exit_abstime;
	uint64_t ri_child_user_time;
	uint64_t ri_child_system_time;
	uint64_t ri_child_pkg_idle_wkups;
	uint64_t ri_child_interrupt_wkups;
	uint64_t ri_child_pageins;
	uint64_t ri_child_elapsed_abstime;
	uint64_t ri_diskio_bytesread;
	uint64_t ri_diskio_byteswritten;
};
struct rusage_info_v3 {
	uint8_t ri_uuid[16];
	uint64_t ri_user_time;
	uint64_t ri_system_time;
	uint64_t ri_pkg_idle_wkups;
	uint64_t ri_interrupt_wkups;
	uint64_t ri_pageins;
	uint64_t ri_wired_size;
	uint64_t ri_resident_size;
	uint64_t ri_phys_footprint;
	uint64_t ri_proc_start_abstime;
	uint64_t ri_proc_exit_abstime;
	uint64_t ri_child_user_time;
	uint64_t ri_child_system_time;
	uint64_t ri_child_pkg_idle_wkups;
	uint64_t ri_child_interrupt_wkups;
	uint64_t ri_child_pageins;
	uint64_t ri_child_elapsed_abstime;
	uint64_t ri_diskio_bytesread;
	uint64_t ri_diskio_byteswritten;
	uint64_t ri_cpu_time_qos_default;
	uint64_t ri_cpu_time_qos_maintenance;
	uint64_t ri_cpu_time_qos_background;
	uint64_t ri_cpu_time_qos_utility;
	uint64_t ri_cpu_time_qos_legacy;
	uint64_t ri_cpu_time_qos_user_initiated;
	uint64_t ri_cpu_time_qos_user_interactive;
	uint64_t ri_billed_system_time;
	uint64_t ri_serviced_system_time;
};
struct rusage_info_v4 {
	uint8_t ri_uuid[16];
	uint64_t ri_user_time;
	uint64_t ri_system_time;
	uint64_t ri_pkg_idle_wkups;
	uint64_t ri_interrupt_wkups;
	uint64_t ri_pageins;
	uint64_t ri_wired_size;
	uint64_t ri_resident_size;
	uint64_t ri_phys_footprint;
	uint64_t ri_proc_start_abstime;
	uint64_t ri_proc_exit_abstime;
	uint64_t ri_child_user_time;
	uint64_t ri_child_system_time;
	uint64_t ri_child_pkg_idle_wkups;
	uint64_t ri_child_interrupt_wkups;
	uint64_t ri_child_pageins;
	uint64_t ri_child_elapsed_abstime;
	uint64_t ri_diskio_bytesread;
	uint64_t ri_diskio_byteswritten;
	uint64_t ri_cpu_time_qos_default;
	uint64_t ri_cpu_time_qos_maintenance;
	uint64_t ri_cpu_time_qos_background;
	uint64_t ri_cpu_time_qos_utility;
	uint64_t ri_cpu_time_qos_legacy;
	uint64_t ri_cpu_time_qos_user_initiated;
	uint64_t ri_cpu_time_qos_user_interactive;
	uint64_t ri_billed_system_time;
	uint64_t ri_serviced_system_time;
	uint64_t ri_logical_writes;
	uint64_t ri_lifetime_max_phys_footprint;
	uint64_t ri_instructions;
	uint64_t ri_cycles;
	uint64_t ri_billed_energy;
	uint64_t ri_serviced_energy;
	uint64_t ri_interval_max_phys_footprint;
	uint64_t ri_runnable_time;
};
struct rusage_info_v5 {
	uint8_t ri_uuid[16];
	uint64_t ri_user_time;
	uint64_t ri_system_time;
	uint64_t ri_pkg_idle_wkups;
	uint64_t ri_interrupt_wkups;
	uint64_t ri_pageins;
	uint64_t ri_wired_size;
	uint64_t ri_resident_size;
	uint64_t ri_phys_footprint;
	uint64_t ri_proc_start_abstime;
	uint64_t ri_proc_exit_abstime;
	uint64_t ri_child_user_time;
	uint64_t ri_child_system_time;
	uint64_t ri_child_pkg_idle_wkups;
	uint64_t ri_child_interrupt_wkups;
	uint64_t ri_child_pageins;
	uint64_t ri_child_elapsed_abstime;
	uint64_t ri_diskio_bytesread;
	uint64_t ri_diskio_byteswritten;
	uint64_t ri_cpu_time_qos_default;
	uint64_t ri_cpu_time_qos_maintenance;
	uint64_t ri_cpu_time_qos_background;
	uint64_t ri_cpu_time_qos_utility;
	uint64_t ri_cpu_time_qos_legacy;
	uint64_t ri_cpu_time_qos_user_initiated;
	uint64_t ri_cpu_time_qos_user_interactive;
	uint64_t ri_billed_system_time;
	uint64_t ri_serviced_system_time;
	uint64_t ri_logical_writes;
	uint64_t ri_lifetime_max_phys_footprint;
	uint64_t ri_instructions;
	uint64_t ri_cycles;
	uint64_t ri_billed_energy;
	uint64_t ri_serviced_energy;
	uint64_t ri_interval_max_phys_footprint;
	uint64_t ri_runnable_time;
	uint64_t ri_flags;
};
struct rusage_info_v6 {
	uint8_t ri_uuid[16];
	uint64_t ri_user_time;
	uint64_t ri_system_time;
	uint64_t ri_pkg_idle_wkups;
	uint64_t ri_interrupt_wkups;
	uint64_t ri_pageins;
	uint64_t ri_wired_size;
	uint64_t ri_resident_size;
	uint64_t ri_phys_footprint;
	uint64_t ri_proc_start_abstime;
	uint64_t ri_proc_exit_abstime;
	uint64_t ri_child_user_time;
	uint64_t ri_child_system_time;
	uint64_t ri_child_pkg_idle_wkups;
	uint64_t ri_child_interrupt_wkups;
	uint64_t ri_child_pageins;
	uint64_t ri_child_elapsed_abstime;
	uint64_t ri_diskio_bytesread;
	uint64_t ri_diskio_byteswritten;
	uint64_t ri_cpu_time_qos_default;
	uint64_t ri_cpu_time_qos_maintenance;
	uint64_t ri_cpu_time_qos_background;
	uint64_t ri_cpu_time_qos_utility;
	uint64_t ri_cpu_time_qos_legacy;
	uint64_t ri_cpu_time_qos_user_initiated;
	uint64_t ri_cpu_time_qos_user_interactive;
	uint64_t ri_billed_system_time;
	uint64_t ri_serviced_system_time;
	uint64_t ri_logical_writes;
	uint64_t ri_lifetime_max_phys_footprint;
	uint64_t ri_instructions;
	uint64_t ri_cycles;
	uint64_t ri_billed_energy;
	uint64_t ri_serviced_energy;
	uint64_t ri_interval_max_phys_footprint;
	uint64_t ri_runnable_time;
	uint64_t ri_flags;
	uint64_t ri_user_ptime;
	uint64_t ri_system_ptime;
	uint64_t ri_pinstructions;
	uint64_t ri_pcycles;
	uint64_t ri_energy_nj;
	uint64_t ri_penergy_nj;
	uint64_t ri_secure_time_in_system;
	uint64_t ri_secure_ptime_in_system;
	uint64_t ri_neural_footprint;
	uint64_t ri_lifetime_max_neural_footprint;
	uint64_t ri_interval_max_neural_footprint;
	uint64_t ri_reserved[9];
};
typedef struct rusage_info_v6 rusage_info_current;
/* #define RLIM_INFINITY   (((__uint64_t)1 << 63) - 1) ### string, not number "(((__uint64_t)1 << 63) - 1)" */
/* #define RLIM_SAVED_MAX  RLIM_INFINITY ### string, not number "RLIM_INFINITY" */
/* #define RLIM_SAVED_CUR  RLIM_INFINITY ### string, not number "RLIM_INFINITY" */
enum { RLIMIT_CPU = 0 };
enum { RLIMIT_FSIZE = 1 };
enum { RLIMIT_DATA = 2 };
enum { RLIMIT_STACK = 3 };
enum { RLIMIT_CORE = 4 };
enum { RLIMIT_AS = 5 };
enum { RLIMIT_RSS = 5 };
enum { RLIMIT_MEMLOCK = 6 };
enum { RLIMIT_NPROC = 7 };
enum { RLIMIT_NOFILE = 8 };
enum { RLIM_NLIMITS = 9 };
struct rlimit {
	rlim_t rlim_cur;
	rlim_t rlim_max;
};
enum { RLIMIT_WAKEUPS_MONITOR = 1 };
enum { RLIMIT_CPU_USAGE_MONITOR = 2 };
enum { RLIMIT_THREAD_CPULIMITS = 3 };
enum { RLIMIT_FOOTPRINT_INTERVAL = 4 };
enum { WAKEMON_ENABLE = 1 };
enum { WAKEMON_DISABLE = 2 };
enum { WAKEMON_GET_PARAMS = 4 };
enum { WAKEMON_SET_DEFAULTS = 8 };
enum { WAKEMON_MAKE_FATAL = 16 };
enum { CPUMON_MAKE_FATAL = 4096 };
enum { FOOTPRINT_INTERVAL_RESET = 1 };
struct proc_rlimit_control_wakeupmon {
	uint32_t wm_flags;
	int32_t wm_rate;
};
enum { IOPOL_TYPE_DISK = 0 };
enum { IOPOL_TYPE_VFS_ATIME_UPDATES = 2 };
enum { IOPOL_TYPE_VFS_MATERIALIZE_DATALESS_FILES = 3 };
enum { IOPOL_TYPE_VFS_STATFS_NO_DATA_VOLUME = 4 };
enum { IOPOL_TYPE_VFS_TRIGGER_RESOLVE = 5 };
enum { IOPOL_TYPE_VFS_IGNORE_CONTENT_PROTECTION = 6 };
enum { IOPOL_TYPE_VFS_IGNORE_PERMISSIONS = 7 };
enum { IOPOL_TYPE_VFS_SKIP_MTIME_UPDATE = 8 };
enum { IOPOL_TYPE_VFS_ALLOW_LOW_SPACE_WRITES = 9 };
enum { IOPOL_TYPE_VFS_DISALLOW_RW_FOR_O_EVTONLY = 10 };
enum { IOPOL_SCOPE_PROCESS = 0 };
enum { IOPOL_SCOPE_THREAD = 1 };
enum { IOPOL_SCOPE_DARWIN_BG = 2 };
enum { IOPOL_DEFAULT = 0 };
enum { IOPOL_IMPORTANT = 1 };
enum { IOPOL_PASSIVE = 2 };
enum { IOPOL_THROTTLE = 3 };
enum { IOPOL_UTILITY = 4 };
enum { IOPOL_STANDARD = 5 };
enum { IOPOL_APPLICATION = 5 };
enum { IOPOL_NORMAL = 1 };
enum { IOPOL_ATIME_UPDATES_DEFAULT = 0 };
enum { IOPOL_ATIME_UPDATES_OFF = 1 };
enum { IOPOL_MATERIALIZE_DATALESS_FILES_DEFAULT = 0 };
enum { IOPOL_MATERIALIZE_DATALESS_FILES_OFF = 1 };
enum { IOPOL_MATERIALIZE_DATALESS_FILES_ON = 2 };
enum { IOPOL_VFS_STATFS_NO_DATA_VOLUME_DEFAULT = 0 };
enum { IOPOL_VFS_STATFS_FORCE_NO_DATA_VOLUME = 1 };
enum { IOPOL_VFS_TRIGGER_RESOLVE_DEFAULT = 0 };
enum { IOPOL_VFS_TRIGGER_RESOLVE_OFF = 1 };
enum { IOPOL_VFS_CONTENT_PROTECTION_DEFAULT = 0 };
enum { IOPOL_VFS_CONTENT_PROTECTION_IGNORE = 1 };
enum { IOPOL_VFS_IGNORE_PERMISSIONS_OFF = 0 };
enum { IOPOL_VFS_IGNORE_PERMISSIONS_ON = 1 };
enum { IOPOL_VFS_SKIP_MTIME_UPDATE_OFF = 0 };
enum { IOPOL_VFS_SKIP_MTIME_UPDATE_ON = 1 };
enum { IOPOL_VFS_ALLOW_LOW_SPACE_WRITES_OFF = 0 };
enum { IOPOL_VFS_ALLOW_LOW_SPACE_WRITES_ON = 1 };
enum { IOPOL_VFS_DISALLOW_RW_FOR_O_EVTONLY_DEFAULT = 0 };
enum { IOPOL_VFS_DISALLOW_RW_FOR_O_EVTONLY_ON = 1 };
enum { IOPOL_VFS_NOCACHE_WRITE_FS_BLKSIZE_DEFAULT = 0 };
enum { IOPOL_VFS_NOCACHE_WRITE_FS_BLKSIZE_ON = 1 };
int getpriority(int, id_t);
int getiopolicy_np(int, int);
int getrlimit(int, struct rlimit *) __asm("getrlimit");
int getrusage(int, struct rusage *);
int setpriority(int, id_t, int);
int setiopolicy_np(int, int, int);
int setrlimit(int, const struct rlimit *) __asm("setrlimit");
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/resource.h */
enum { WNOHANG = 1 };
enum { WUNTRACED = 2 };
enum { WCOREFLAG = 128 };
enum { WEXITED = 4 };
enum { WSTOPPED = 8 };
enum { WCONTINUED = 16 };
enum { WNOWAIT = 32 };
enum { WAIT_ANY = -1 };
enum { WAIT_MYPGRP = 0 };
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/endian.h */
]] require 'ffi.req' 'c.machine.endian' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/endian.h */
union wait {
	int w_status;
	struct {
	unsigned int w_Termsig:7, w_Coredump:1, w_Retcode:8, w_Filler:16;
} w_T;
struct {
	unsigned int w_Stopval:8, w_Stopsig:8, w_Filler:16;
} w_S;
};
/* #define w_termsig       w_T.w_Termsig ### string, not number "w_T.w_Termsig" */
/* #define w_coredump      w_T.w_Coredump ### string, not number "w_T.w_Coredump" */
/* #define w_retcode       w_T.w_Retcode ### string, not number "w_T.w_Retcode" */
/* #define w_stopval       w_S.w_Stopval ### string, not number "w_S.w_Stopval" */
/* #define w_stopsig       w_S.w_Stopsig ### string, not number "w_S.w_Stopsig" */
pid_t wait(int *) __asm("wait");
pid_t waitpid(pid_t, int *, int) __asm("waitpid");
int waitid(idtype_t, id_t, siginfo_t *, int) __asm("waitid");
pid_t wait3(int *, int, struct rusage *);
pid_t wait4(pid_t, int *, int, struct rusage *);
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/wait.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/alloca.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* redefining matching value: #define USE_CLANG_STDDEF 0 */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
void *alloca(size_t);
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/alloca.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* redefining matching value: #define USE_CLANG_STDDEF 0 */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ct_rune_t.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
typedef __darwin_ct_rune_t ct_rune_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ct_rune_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rune_t.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
typedef __darwin_rune_t rune_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rune_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h */
/* redefining matching value: #define USE_CLANG_STDDEF 0 */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
typedef __darwin_wchar_t wchar_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h */
typedef struct {
	int quot;
	int rem;
} div_t;
typedef struct {
	long quot;
	long rem;
} ldiv_t;
typedef struct {
	long long quot;
	long long rem;
} lldiv_t;
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
/* redefining matching value: #define USE_CLANG_STDDEF 0 */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* #define NULL  __DARWIN_NULL ### string, not number "__DARWIN_NULL" */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
enum { EXIT_FAILURE = 1 };
enum { EXIT_SUCCESS = 0 };
enum { RAND_MAX = 2147483647 };
extern int __mb_cur_max;
enum { MB_CUR_MAX = 0 };
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_malloc.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* redefining matching value: #define USE_CLANG_STDDEF 0 */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_malloc_type.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_ptrcheck.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_ptrcheck.h */
typedef unsigned long long malloc_type_id_t;
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* redefining matching value: #define USE_CLANG_STDDEF 0 */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
void * malloc_type_malloc(size_t size, malloc_type_id_t type_id);
void * malloc_type_calloc(size_t count, size_t size, malloc_type_id_t type_id);
void malloc_type_free(void * ptr, malloc_type_id_t type_id);
void * malloc_type_realloc(void * ptr, size_t size, malloc_type_id_t type_id);
void * malloc_type_valloc(size_t size, malloc_type_id_t type_id);
void * malloc_type_aligned_alloc(size_t alignment, size_t size, malloc_type_id_t type_id);
int malloc_type_posix_memalign(void * *memptr, size_t alignment, size_t size, malloc_type_id_t type_id);
typedef struct _malloc_zone_t malloc_zone_t;
void * malloc_type_zone_malloc(malloc_zone_t *zone, size_t size, malloc_type_id_t type_id);
void * malloc_type_zone_calloc(malloc_zone_t *zone, size_t count, size_t size, malloc_type_id_t type_id);
void malloc_type_zone_free(malloc_zone_t *zone, void * ptr, malloc_type_id_t type_id);
void * malloc_type_zone_realloc(malloc_zone_t *zone, void * ptr, size_t size, malloc_type_id_t type_id);
void * malloc_type_zone_valloc(malloc_zone_t *zone, size_t size, malloc_type_id_t type_id);
void * malloc_type_zone_memalign(malloc_zone_t *zone, size_t alignment, size_t size, malloc_type_id_t type_id);
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_malloc_type.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_ptrcheck.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_ptrcheck.h */
void * malloc(size_t __size);
void * calloc(size_t __count, size_t __size);
void free(void * );
void * realloc(void * __ptr, size_t __size);
void * reallocf(void * __ptr, size_t __size);
void * valloc(size_t __size);
void * aligned_alloc(size_t __alignment, size_t __size);
int posix_memalign(void * *__memptr, size_t __alignment, size_t __size);
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_malloc.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_abort.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
void abort(void) __attribute__((__noreturn__));
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_abort.h */
int abs(int) __attribute__((__const__));
int atexit(void (* )(void));
int at_quick_exit(void (*)(void));
double atof(const char *);
int atoi(const char *);
long atol(const char *);
long long atoll(const char *);
void *bsearch(const void *__key, const void *__base, size_t __nel, size_t __width, int (* __compar)(const void *, const void *));
div_t div(int, int) __attribute__((__const__));
void exit(int) __attribute__((__noreturn__));
char *getenv(const char *);
long labs(long) __attribute__((__const__));
ldiv_t ldiv(long, long) __attribute__((__const__));
long long llabs(long long);
lldiv_t lldiv(long long, long long);
int mblen(const char *__s, size_t __n);
size_t mbstowcs(wchar_t * restrict , const char * restrict, size_t);
int mbtowc(wchar_t * restrict, const char * restrict, size_t);
void qsort(void *__base, size_t __nel, size_t __width, int (* __compar)(const void *, const void *));
void quick_exit(int) __attribute__((__noreturn__));
int rand(void);
void srand(unsigned);
double strtod(const char *, char **) __asm("strtod");
float strtof(const char *, char **) __asm("strtof");
long strtol(const char *__str, char **__endptr, int __base);
long double strtold(const char *, char **);
long long strtoll(const char *__str, char **__endptr, int __base);
unsigned long strtoul(const char *__str, char **__endptr, int __base);
unsigned long long strtoull(const char *__str, char **__endptr, int __base);
int system(const char *) __asm("system");
size_t wcstombs(char * restrict, const wchar_t * restrict, size_t);
int wctomb(char *, wchar_t);
void _Exit(int) __attribute__((__noreturn__));
long a64l(const char *);
double drand48(void);
char *ecvt(double, int, int *restrict, int *restrict);
double erand48(unsigned short[3]);
char *fcvt(double, int, int *restrict, int *restrict);
char *gcvt(double, int, char *);
int getsubopt(char **, char * const *, char **);
int grantpt(int);
char *initstate(unsigned, char *, size_t);
long jrand48(unsigned short[3]);
char *l64a(long);
void lcong48(unsigned short[7]);
long lrand48(void);
__attribute__((__deprecated__)) char *mktemp(char *);
int mkstemp(char *);
long mrand48(void);
long nrand48(unsigned short[3]);
int posix_openpt(int);
char *ptsname(int);
int ptsname_r(int fildes, char *buffer, size_t buflen);
int putenv(char *) __asm("putenv");
long random(void);
int rand_r(unsigned *);
char *realpath(const char * restrict, char * restrict) __asm("realpath$DARWIN_EXTSN");
unsigned short *seed48(unsigned short[3]);
int setenv(const char * __name, const char * __value, int __overwrite) __asm("setenv");
void setkey(const char *) __asm("setkey");
char *setstate(const char *);
void srand48(long);
void srandom(unsigned);
int unlockpt(int);
int unsetenv(const char *) __asm("unsetenv");
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_dev_t dev_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_mode_t mode_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h */
uint32_t arc4random(void);
void arc4random_addrandom(unsigned char * , int );
void arc4random_buf(void * __buf, size_t __nbytes);
void arc4random_stir(void);
uint32_t arc4random_uniform(uint32_t __upper_bound);
char *cgetcap(char *, const char *, int);
int cgetclose(void);
int cgetent(char **, char **, const char *);
int cgetfirst(char **, char **);
int cgetmatch(const char *, const char *);
int cgetnext(char **, char **);
int cgetnum(char *, const char *, long *);
int cgetset(const char *);
int cgetstr(char *, const char *, char **);
int cgetustr(char *, const char *, char **);
int daemon(int, int) __asm("daemon$1050");
char *devname(dev_t, mode_t);
char *devname_r(dev_t, mode_t, char *buf, int len);
char *getbsize(int *, long *);
int getloadavg(double [], int);
const char *getprogname(void);
void setprogname(const char *);
int heapsort(void *__base, size_t __nel, size_t __width, int (* __compar)(const void *, const void *));
int mergesort(void *__base, size_t __nel, size_t __width, int (* __compar)(const void *, const void *));
void psort(void *__base, size_t __nel, size_t __width, int (* __compar)(const void *, const void *));
void psort_r(void *__base, size_t __nel, size_t __width, void *, int (* __compar)(void *, const void *, const void *));
void qsort_r(void *__base, size_t __nel, size_t __width, void *, int (* __compar)(void *, const void *, const void *));
int radixsort(const unsigned char **__base, int __nel, const unsigned char *__table, unsigned __endbyte);
int rpmatch(const char *);
int sradixsort(const unsigned char **__base, int __nel, const unsigned char *__table, unsigned __endbyte);
void sranddev(void);
void srandomdev(void);
long long strtonum(const char *__numstr, long long __minval, long long __maxval, const char **__errstrp);
long long strtoq(const char *__str, char **__endptr, int __base);
unsigned long long strtouq(const char *__str, char **__endptr, int __base);
extern char *suboptarg;
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_stdlib.h */
/* + END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h */
]]
