local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <stdlib.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h */
/* ++ BEGIN <_stdlib.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_stdlib.h */
/* +++ BEGIN <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++ END <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* +++ BEGIN <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
]] require 'ffi.req' 'c.sys.cdefs' ffi.cdef[[
/* +++ END <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* +++ END <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
/* +++ BEGIN <sys/wait.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/wait.h */
typedef enum {
 P_ALL,
 P_PID,
 P_PGID
} idtype_t;
/* ++++ BEGIN <sys/_types/_pid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
]] require 'ffi.req' 'c.sys._types._pid_t' ffi.cdef[[
/* ++++ END <sys/_types/_pid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
/* ++++ BEGIN <sys/_types/_id_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_id_t.h */
]] require 'ffi.req' 'c.sys._types._id_t' ffi.cdef[[
/* ++++ END <sys/_types/_id_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_id_t.h */
/* ++++ BEGIN <sys/signal.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h */
]] require 'ffi.req' 'c.sys.signal' ffi.cdef[[
/* ++++ END <sys/signal.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h */
/* ++++ BEGIN <sys/resource.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/resource.h */
/* +++++ BEGIN <stdint.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* +++++ END <stdint.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
/* +++++ BEGIN <sys/_types/_timeval.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval.h */
]] require 'ffi.req' 'c.sys._types._timeval' ffi.cdef[[
/* +++++ END <sys/_types/_timeval.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval.h */
typedef __uint64_t rlim_t;
struct rusage {
 struct timeval ru_utime;
 struct timeval ru_stime;
 long ru_maxrss;
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
};
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
struct rlimit {
 rlim_t rlim_cur;
 rlim_t rlim_max;
};
struct proc_rlimit_control_wakeupmon {
 uint32_t wm_flags;
 int32_t wm_rate;
};
int getpriority(int, id_t);
int getiopolicy_np(int, int) ;
int getrlimit(int, struct rlimit *) __asm("_getrlimit" );
int getrusage(int, struct rusage *);
int setpriority(int, id_t, int);
int setiopolicy_np(int, int, int) ;
int setrlimit(int, const struct rlimit *) __asm("_setrlimit" );
/* ++++ END <sys/resource.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/resource.h */
/* ++++ BEGIN <machine/endian.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/endian.h */
]] require 'ffi.req' 'c.machine.endian' ffi.cdef[[
/* ++++ END <machine/endian.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/endian.h */
union wait {
 int w_status;
 struct {
  unsigned int w_Termsig:7,
      w_Coredump:1,
      w_Retcode:8,
      w_Filler:16;
 } w_T;
 struct {
  unsigned int w_Stopval:8,
      w_Stopsig:8,
      w_Filler:16;
 } w_S;
};
pid_t wait(int *) __asm("_wait" );
pid_t waitpid(pid_t, int *, int) __asm("_waitpid" );
int waitid(idtype_t, id_t, siginfo_t *, int) __asm("_waitid" );
pid_t wait3(int *, int, struct rusage *);
pid_t wait4(pid_t, int *, int, struct rusage *);
/* +++ END <sys/wait.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/wait.h */
/* +++ BEGIN <alloca.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/alloca.h */
/* ++++ BEGIN <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
]] require 'ffi.req' 'c.sys._types._size_t' ffi.cdef[[
/* ++++ END <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
void *alloca(size_t);
/* +++ END <alloca.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/alloca.h */
/* +++ BEGIN <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
]] require 'ffi.req' 'c.sys._types._size_t' ffi.cdef[[
/* +++ END <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++ BEGIN <sys/_types/_ct_rune_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ct_rune_t.h */
]] require 'ffi.req' 'c.sys._types._ct_rune_t' ffi.cdef[[
/* +++ END <sys/_types/_ct_rune_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ct_rune_t.h */
/* +++ BEGIN <sys/_types/_rune_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rune_t.h */
]] require 'ffi.req' 'c.sys._types._rune_t' ffi.cdef[[
/* +++ END <sys/_types/_rune_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rune_t.h */
/* +++ BEGIN <sys/_types/_wchar_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h */
]] require 'ffi.req' 'c.sys._types._wchar_t' ffi.cdef[[
/* +++ END <sys/_types/_wchar_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h */
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
/* +++ BEGIN <sys/_types/_null.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
/* +++ END <sys/_types/_null.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
extern int __mb_cur_max;
/* +++ BEGIN <malloc/_malloc.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_malloc.h */
/* ++++ BEGIN <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
]] require 'ffi.req' 'c.sys._types._size_t' ffi.cdef[[
/* ++++ END <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* ++++ BEGIN <malloc/_malloc_type.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_malloc_type.h */
/* +++++ BEGIN <malloc/_ptrcheck.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_ptrcheck.h */
/* +++++ END <malloc/_ptrcheck.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_ptrcheck.h */
typedef unsigned long long malloc_type_id_t;
/* +++++ BEGIN <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
]] require 'ffi.req' 'c.sys._types._size_t' ffi.cdef[[
/* +++++ END <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
      void * malloc_type_malloc(size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1)));
      void * malloc_type_calloc(size_t count, size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1,2)));
      void malloc_type_free(void * ptr, malloc_type_id_t type_id);
      void * malloc_type_realloc(void * ptr, size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2)));
      void * malloc_type_valloc(size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1)));
      void * malloc_type_aligned_alloc(size_t alignment, size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2)));
      int malloc_type_posix_memalign(void * *memptr, size_t alignment, size_t size, malloc_type_id_t type_id) ;
typedef struct _malloc_zone_t malloc_zone_t;
      void * malloc_type_zone_malloc(malloc_zone_t *zone, size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2)));
      void * malloc_type_zone_calloc(malloc_zone_t *zone, size_t count, size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2,3)));
      void malloc_type_zone_free(malloc_zone_t *zone, void * ptr, malloc_type_id_t type_id);
      void * malloc_type_zone_realloc(malloc_zone_t *zone, void * ptr, size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(3)));
      void * malloc_type_zone_valloc(malloc_zone_t *zone, size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2)));
      void * malloc_type_zone_memalign(malloc_zone_t *zone, size_t alignment, size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(3)));
/* ++++ END <malloc/_malloc_type.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_malloc_type.h */
void * malloc(size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1))) ;
void * calloc(size_t __count, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1,2))) ;
void free(void * );
void * realloc(void * __ptr, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2))) ;
void * reallocf(void * __ptr, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2)));
void * valloc(size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1))) ;
void * aligned_alloc(size_t __alignment, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_align(1))) __attribute__((alloc_size(2)))    ;
int posix_memalign(void * *__memptr, size_t __alignment, size_t __size) ;
/* +++ END <malloc/_malloc.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_malloc.h */
/* +++ BEGIN <_abort.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_abort.h */
void abort(void) __attribute__((__cold__)) __attribute__((__noreturn__));
/* +++ END <_abort.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_abort.h */
int abs(int) __attribute__((__const__));
int atexit(void (* )(void));
int at_quick_exit(void (*)(void));
double atof(const char *);
int atoi(const char *);
long atol(const char *);
long long
  atoll(const char *);
void *bsearch(const void *__key, const void *__base, size_t __nel,
     size_t __width, int (* __compar)(const void *, const void *));
div_t div(int, int) __attribute__((__const__));
void exit(int) __attribute__((__noreturn__));
char *getenv(const char *);
long labs(long) __attribute__((__const__));
ldiv_t ldiv(long, long) __attribute__((__const__));
long long
  llabs(long long);
lldiv_t lldiv(long long, long long);
int mblen(const char *__s, size_t __n);
size_t mbstowcs(wchar_t * restrict , const char * restrict, size_t);
int mbtowc(wchar_t * restrict, const char * restrict, size_t);
void qsort(void *__base, size_t __nel, size_t __width,
     int (* __compar)(const void *, const void *));
void quick_exit(int) __attribute__((__noreturn__));
int rand(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
void srand(unsigned) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
double strtod(const char *, char **) __asm("_strtod" );
float strtof(const char *, char **) __asm("_strtof" );
long strtol(const char *__str, char **__endptr, int __base);
long double
  strtold(const char *, char **);
long long
  strtoll(const char *__str, char **__endptr, int __base);
unsigned long
  strtoul(const char *__str, char **__endptr, int __base);
unsigned long long
  strtoull(const char *__str, char **__endptr, int __base);
__attribute__((__availability__(swift, unavailable, message="Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)")))
int system(const char *) __asm("_system" );
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
long jrand48(unsigned short[3]) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
char *l64a(long);
void lcong48(unsigned short[7]);
long lrand48(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
__attribute__((__deprecated__("This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of mktemp(3), it is highly recommended that you use mkstemp(3) instead.")))
char *mktemp(char *);
int mkstemp(char *);
long mrand48(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
long nrand48(unsigned short[3]) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
int posix_openpt(int);
char *ptsname(int);
int ptsname_r(int fildes, char *buffer, size_t buflen)    ;
int putenv(char *) __asm("_putenv" );
long random(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
int rand_r(unsigned *) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
char *realpath(const char * restrict, char * restrict) __asm("_realpath$DARWIN_EXTSN");
unsigned short
 *seed48(unsigned short[3]);
int setenv(const char * __name, const char * __value, int __overwrite) __asm("_setenv" );
void setkey(const char *) __asm("_setkey" );
char *setstate(const char *);
void srand48(long);
void srandom(unsigned);
int unlockpt(int);
int unsetenv(const char *) __asm("_unsetenv" );
/* +++ BEGIN <sys/_types/_dev_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h */
]] require 'ffi.req' 'c.sys._types._dev_t' ffi.cdef[[
/* +++ END <sys/_types/_dev_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h */
/* +++ BEGIN <sys/_types/_mode_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
]] require 'ffi.req' 'c.sys._types._mode_t' ffi.cdef[[
/* +++ END <sys/_types/_mode_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
uint32_t arc4random(void);
void arc4random_addrandom(unsigned char * , int )
     ;
void arc4random_buf(void * __buf, size_t __nbytes) ;
void arc4random_stir(void);
uint32_t
  arc4random_uniform(uint32_t __upper_bound) ;
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
int daemon(int, int) __asm("_daemon$1050")   ;
char *devname(dev_t, mode_t);
char *devname_r(dev_t, mode_t, char *buf, int len);
char *getbsize(int *, long *);
int getloadavg(double [], int);
const char
 *getprogname(void);
void setprogname(const char *);
int heapsort(void *__base, size_t __nel, size_t __width,
     int (* __compar)(const void *, const void *));
int mergesort(void *__base, size_t __nel, size_t __width,
     int (* __compar)(const void *, const void *));
void psort(void *__base, size_t __nel, size_t __width,
     int (* __compar)(const void *, const void *))
     ;
void psort_r(void *__base, size_t __nel, size_t __width, void *,
     int (* __compar)(void *, const void *, const void *))
     ;
void qsort_r(void *__base, size_t __nel, size_t __width, void *,
     int (* __compar)(void *, const void *, const void *));
int radixsort(const unsigned char **__base, int __nel, const unsigned char *__table,
     unsigned __endbyte);
int rpmatch(const char *)
    ;
int sradixsort(const unsigned char **__base, int __nel, const unsigned char *__table,
     unsigned __endbyte);
void sranddev(void);
void srandomdev(void);
long long
 strtonum(const char *__numstr, long long __minval, long long __maxval, const char **__errstrp)
    ;
long long
  strtoq(const char *__str, char **__endptr, int __base);
unsigned long long
  strtouq(const char *__str, char **__endptr, int __base);
extern char *suboptarg;
/* ++ END <_stdlib.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_stdlib.h */
enum { PRIO_PROCESS = 0 };
enum { PRIO_PGRP = 1 };
enum { PRIO_USER = 2 };
enum { PRIO_DARWIN_THREAD = 3 };
enum { PRIO_DARWIN_PROCESS = 4 };
enum { PRIO_MIN = -20 };
enum { PRIO_MAX = 20 };
enum { PRIO_DARWIN_BG = 0x1000 };
enum { PRIO_DARWIN_NONUI = 0x1001 };
enum { RUSAGE_SELF = 0 };
enum { RUSAGE_CHILDREN = -1 };
/* #define ru_first ru_ixrss ### define is not number */
/* #define ru_last ru_nivcsw ### define is not number */
enum { RUSAGE_INFO_V0 = 0 };
enum { RUSAGE_INFO_V1 = 1 };
enum { RUSAGE_INFO_V2 = 2 };
enum { RUSAGE_INFO_V3 = 3 };
enum { RUSAGE_INFO_V4 = 4 };
enum { RUSAGE_INFO_V5 = 5 };
enum { RUSAGE_INFO_V6 = 6 };
enum { RUSAGE_INFO_CURRENT = 6 };
enum { RU_PROC_RUNS_RESLIDE = 0x00000001 };
/* #define RLIM_INFINITY (((__uint64_t)1 << 63) - 1) ### define is not number */
/* #define RLIM_SAVED_MAX (((__uint64_t)1 << 63) - 1) ### define is not number */
/* #define RLIM_SAVED_CUR (((__uint64_t)1 << 63) - 1) ### define is not number */
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
enum { _RLIMIT_POSIX_FLAG = 0x1000 };
enum { RLIMIT_WAKEUPS_MONITOR = 0x1 };
enum { RLIMIT_CPU_USAGE_MONITOR = 0x2 };
enum { RLIMIT_THREAD_CPULIMITS = 0x3 };
enum { RLIMIT_FOOTPRINT_INTERVAL = 0x4 };
enum { WAKEMON_ENABLE = 0x01 };
enum { WAKEMON_DISABLE = 0x02 };
enum { WAKEMON_GET_PARAMS = 0x04 };
enum { WAKEMON_SET_DEFAULTS = 0x08 };
enum { WAKEMON_MAKE_FATAL = 0x10 };
enum { CPUMON_MAKE_FATAL = 0x1000 };
enum { FOOTPRINT_INTERVAL_RESET = 0x1 };
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
enum { WNOHANG = 0x00000001 };
enum { WUNTRACED = 0x00000002 };
/* #define _W_INT (w) (*(int *)&(w)) ### define is not number */
enum { WCOREFLAG = 0200 };
/* #define _WSTATUS (x) (_W_INT(x) & 0177) ### define is not number */
enum { _WSTOPPED = 0177 };
/* #define WEXITSTATUS (x) ((_W_INT(x) >> 8) & 0x000000ff) ### define is not number */
/* #define WSTOPSIG (x) (_W_INT(x) >> 8) ### define is not number */
/* #define WIFCONTINUED (x) (_WSTATUS(x) == _WSTOPPED && WSTOPSIG(x) == 0x13) ### define is not number */
/* #define WIFSTOPPED (x) (_WSTATUS(x) == _WSTOPPED && WSTOPSIG(x) != 0x13) ### define is not number */
/* #define WIFEXITED (x) (_WSTATUS(x) == 0) ### define is not number */
/* #define WIFSIGNALED (x) (_WSTATUS(x) != _WSTOPPED && _WSTATUS(x) != 0) ### define is not number */
/* #define WTERMSIG (x) (_WSTATUS(x)) ### define is not number */
/* #define WCOREDUMP (x) (_W_INT(x) & WCOREFLAG) ### define is not number */
/* #define W_EXITCODE (ret,sig) ((ret) << 8 | (sig)) ### define is not number */
/* #define W_STOPCODE (sig) ((sig) << 8 | _WSTOPPED) ### define is not number */
enum { WEXITED = 0x00000004 };
enum { WSTOPPED = 0x00000008 };
enum { WCONTINUED = 0x00000010 };
enum { WNOWAIT = 0x00000020 };
/* #define WAIT_ANY (-1) ### define is not number */
enum { WAIT_MYPGRP = 0 };
/* #define w_termsig w_T.w_Termsig ### define is not number */
/* #define w_coredump w_T.w_Coredump ### define is not number */
/* #define w_retcode w_T.w_Retcode ### define is not number */
/* #define w_stopval w_S.w_Stopval ### define is not number */
/* #define w_stopsig w_S.w_Stopsig ### define is not number */
/* #define alloca (size) __alloca(size) ### define is not number */
/* #define __alloca (size) __builtin_alloca(size) ### define is not number */
/* #define NULL ((void *)0) ### define is not number */
enum { EXIT_FAILURE = 1 };
enum { EXIT_SUCCESS = 0 };
enum { RAND_MAX = 0x7fffffff };
/* #define MB_CUR_MAX __mb_cur_max ### define is not number */
/* #define __counted_by (N)  ### define is not number */
/* #define __counted_by_or_null (N)  ### define is not number */
/* #define __sized_by (N)  ### define is not number */
/* #define __sized_by_or_null (N)  ### define is not number */
/* #define __ended_by (E)  ### define is not number */
/* #define __terminated_by (T)  ### define is not number */
/* #define __ptrcheck_abi_assume_single ()  ### define is not number */
/* #define _MALLOC_TYPE_AVAILABILITY __API_AVAILABLE(macos(14.0), ios(17.0), tvos(17.0), watchos(10.0), visionos(1.0), driverkit(23.0)) ### define is not number */
/* #define _MALLOC_TYPED (override,type_param_pos)  ### define is not number */
/* + END <stdlib.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h */
]]
