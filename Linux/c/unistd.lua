local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/unistd.h */
enum { _UNISTD_H = 1 };
/* BEGIN /usr/include/features.h */
]] require 'ffi.c.features' ffi.cdef[[
/* END   /usr/include/features.h */
enum { _POSIX_VERSION = 200809 };
enum { __POSIX2_THIS_VERSION = 200809 };
enum { _POSIX2_VERSION = 200809 };
enum { _POSIX2_C_VERSION = 200809 };
enum { _POSIX2_C_BIND = 200809 };
enum { _POSIX2_C_DEV = 200809 };
enum { _POSIX2_SW_DEV = 200809 };
enum { _POSIX2_LOCALEDEF = 200809 };
enum { _XOPEN_VERSION = 700 };
enum { _XOPEN_XCU_VERSION = 4 };
enum { _XOPEN_XPG2 = 1 };
enum { _XOPEN_XPG3 = 1 };
enum { _XOPEN_XPG4 = 1 };
enum { _XOPEN_UNIX = 1 };
enum { _XOPEN_ENH_I18N = 1 };
enum { _XOPEN_LEGACY = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/posix_opt.h */
enum { _BITS_POSIX_OPT_H = 1 };
enum { _POSIX_JOB_CONTROL = 1 };
enum { _POSIX_SAVED_IDS = 1 };
enum { _POSIX_PRIORITY_SCHEDULING = 200809 };
enum { _POSIX_SYNCHRONIZED_IO = 200809 };
enum { _POSIX_FSYNC = 200809 };
enum { _POSIX_MAPPED_FILES = 200809 };
enum { _POSIX_MEMLOCK = 200809 };
enum { _POSIX_MEMLOCK_RANGE = 200809 };
enum { _POSIX_MEMORY_PROTECTION = 200809 };
enum { _POSIX_CHOWN_RESTRICTED = 0 };
/* #define	_POSIX_VDISABLE	'\0' ### string, not number "'\\0'" */
enum { _POSIX_NO_TRUNC = 1 };
enum { _XOPEN_REALTIME = 1 };
enum { _XOPEN_REALTIME_THREADS = 1 };
enum { _XOPEN_SHM = 1 };
enum { _POSIX_THREADS = 200809 };
enum { _POSIX_REENTRANT_FUNCTIONS = 1 };
enum { _POSIX_THREAD_SAFE_FUNCTIONS = 200809 };
enum { _POSIX_THREAD_PRIORITY_SCHEDULING = 200809 };
enum { _POSIX_THREAD_ATTR_STACKSIZE = 200809 };
enum { _POSIX_THREAD_ATTR_STACKADDR = 200809 };
enum { _POSIX_THREAD_PRIO_INHERIT = 200809 };
enum { _POSIX_THREAD_PRIO_PROTECT = 200809 };
enum { _POSIX_THREAD_ROBUST_PRIO_INHERIT = 200809 };
enum { _POSIX_THREAD_ROBUST_PRIO_PROTECT = -1 };
enum { _POSIX_SEMAPHORES = 200809 };
enum { _POSIX_REALTIME_SIGNALS = 200809 };
enum { _POSIX_ASYNCHRONOUS_IO = 200809 };
enum { _POSIX_ASYNC_IO = 1 };
enum { _LFS_ASYNCHRONOUS_IO = 1 };
enum { _POSIX_PRIORITIZED_IO = 200809 };
enum { _LFS64_ASYNCHRONOUS_IO = 1 };
enum { _LFS_LARGEFILE = 1 };
enum { _LFS64_LARGEFILE = 1 };
enum { _LFS64_STDIO = 1 };
enum { _POSIX_SHARED_MEMORY_OBJECTS = 200809 };
enum { _POSIX_CPUTIME = 0 };
enum { _POSIX_THREAD_CPUTIME = 0 };
enum { _POSIX_REGEXP = 1 };
enum { _POSIX_READER_WRITER_LOCKS = 200809 };
enum { _POSIX_SHELL = 1 };
enum { _POSIX_TIMEOUTS = 200809 };
enum { _POSIX_SPIN_LOCKS = 200809 };
enum { _POSIX_SPAWN = 200809 };
enum { _POSIX_TIMERS = 200809 };
enum { _POSIX_BARRIERS = 200809 };
enum { _POSIX_MESSAGE_PASSING = 200809 };
enum { _POSIX_THREAD_PROCESS_SHARED = 200809 };
enum { _POSIX_MONOTONIC_CLOCK = 0 };
enum { _POSIX_CLOCK_SELECTION = 200809 };
enum { _POSIX_ADVISORY_INFO = 200809 };
enum { _POSIX_IPV6 = 200809 };
enum { _POSIX_RAW_SOCKETS = 200809 };
enum { _POSIX2_CHAR_TERM = 200809 };
enum { _POSIX_SPORADIC_SERVER = -1 };
enum { _POSIX_THREAD_SPORADIC_SERVER = -1 };
enum { _POSIX_TRACE = -1 };
enum { _POSIX_TRACE_EVENT_FILTER = -1 };
enum { _POSIX_TRACE_INHERIT = -1 };
enum { _POSIX_TRACE_LOG = -1 };
enum { _POSIX_TYPED_MEMORY_OBJECTS = -1 };
/* END   /usr/include/x86_64-linux-gnu/bits/posix_opt.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/environments.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* redefining matching value: # define __WORDSIZE	64 */
/* redefining matching value: # define __WORDSIZE_TIME64_COMPAT32	1 */
/* redefining matching value: # define __SYSCALL_WORDSIZE		64 */
/* END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
enum { _POSIX_V7_LPBIG_OFFBIG = -1 };
enum { _POSIX_V6_LPBIG_OFFBIG = -1 };
enum { _XBS5_LPBIG_OFFBIG = -1 };
enum { _POSIX_V7_LP64_OFF64 = 1 };
enum { _POSIX_V6_LP64_OFF64 = 1 };
enum { _XBS5_LP64_OFF64 = 1 };
/* #define __ILP32_OFF32_CFLAGS	"-m32" ### string, not number "\"-m32\"" */
/* #define __ILP32_OFF32_LDFLAGS	"-m32" ### string, not number "\"-m32\"" */
/* # define __ILP32_OFFBIG_CFLAGS	"-m32 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64" ### string, not number "\"-m32 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64\"" */
/* # define __ILP32_OFFBIG_LDFLAGS	"-m32" ### string, not number "\"-m32\"" */
/* #define __LP64_OFF64_CFLAGS	"-m64" ### string, not number "\"-m64\"" */
/* #define __LP64_OFF64_LDFLAGS	"-m64" ### string, not number "\"-m64\"" */
/* END   /usr/include/x86_64-linux-gnu/bits/environments.h */
enum { STDIN_FILENO = 0 };
enum { STDOUT_FILENO = 1 };
enum { STDERR_FILENO = 2 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.c.bits.types' ffi.cdef[[
/* END   /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.c.bits.types.ssize_t' ffi.cdef[[
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/12/include/stddef.h */
]] require 'ffi.Linux.c.stddef' ffi.cdef[[
/* END   /usr/lib/gcc/x86_64-linux-gnu/12/include/stddef.h */
]] require 'ffi.c.bits.types.gid_t' ffi.cdef[[
]] require 'ffi.c.bits.types.uid_t' ffi.cdef[[
]] require 'ffi.c.bits.types.off_t' ffi.cdef[[
typedef __useconds_t useconds_t;
enum { __useconds_t_defined = 1 };
]] require 'ffi.c.bits.types.pid_t' ffi.cdef[[
typedef __intptr_t intptr_t;
enum { __intptr_t_defined = 1 };
typedef __socklen_t socklen_t;
enum { __socklen_t_defined = 1 };
enum { R_OK = 4 };
enum { W_OK = 2 };
enum { X_OK = 1 };
enum { F_OK = 0 };
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int faccessat (int __fd, const char *__file, int __type, int __flag) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
]] require 'ffi.c.bits.types.SEEK' ffi.cdef[[
enum { L_SET = 0 };
enum { L_INCR = 1 };
enum { L_XTND = 2 };
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ , __leaf__));
extern int close (int __fd);
extern void closefrom (int __lowfd) __attribute__ ((__nothrow__ , __leaf__));
extern ssize_t read (int __fd, void *__buf, size_t __nbytes) __attribute__ ((__access__ (__write_only__, 2, 3)));
extern ssize_t write (int __fd, const void *__buf, size_t __n) __attribute__ ((__access__ (__read_only__, 2, 3)));
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes, __off_t __offset) __attribute__ ((__access__ (__write_only__, 2, 3)));
extern ssize_t pwrite (int __fd, const void *__buf, size_t __n, __off_t __offset) __attribute__ ((__access__ (__read_only__, 2, 3)));
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned int sleep (unsigned int __seconds);
extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval) __attribute__ ((__nothrow__ , __leaf__));
extern int usleep (__useconds_t __useconds);
extern int pause (void);
extern int chown (const char *__file, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ , __leaf__));
extern int lchown (const char *__file, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int fchownat (int __fd, const char *__file, __uid_t __owner, __gid_t __group, int __flag) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int chdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int fchdir (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ , __leaf__));
extern char *getwd (char *__buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) __attribute__ ((__access__ (__write_only__, 1)));
extern int dup (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ , __leaf__));
extern char **__environ;
extern int execve (const char *__path, char *const __argv[], char *const __envp[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int fexecve (int __fd, char *const __argv[], char *const __envp[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int execv (const char *__path, char *const __argv[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execle (const char *__path, const char *__arg, ...) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execl (const char *__path, const char *__arg, ...) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execvp (const char *__file, char *const __argv[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execlp (const char *__file, const char *__arg, ...) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nice (int __inc) __attribute__ ((__nothrow__ , __leaf__));
extern void _exit (int __status) __attribute__ ((__noreturn__));

/* TODO here I skipped conframe because it was too many mixed enums and ddefines => enums */

extern long int pathconf (const char *__path, int __name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ , __leaf__));
extern long int sysconf (int __name) __attribute__ ((__nothrow__ , __leaf__));
extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__access__ (__write_only__, 2, 3)));
extern __pid_t getpid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getppid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ , __leaf__));
extern int setpgrp (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t setsid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern __uid_t getuid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __uid_t geteuid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __gid_t getgid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __gid_t getegid (void) __attribute__ ((__nothrow__ , __leaf__));
extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__access__ (__write_only__, 2, 1)));
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__));
extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ , __leaf__));
extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__));
extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__));
extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ , __leaf__));
extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t fork (void) __attribute__ ((__nothrow__));
extern __pid_t vfork (void) __attribute__ ((__nothrow__ , __leaf__));
extern char *ttyname (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int ttyname_r (int __fd, char *__buf, size_t __buflen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) __attribute__ ((__access__ (__write_only__, 2, 3)));
extern int isatty (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int ttyslot (void) __attribute__ ((__nothrow__ , __leaf__));
extern int link (const char *__from, const char *__to) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int linkat (int __fromfd, const char *__from, int __tofd, const char *__to, int __flags) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));
extern int symlink (const char *__from, const char *__to) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern ssize_t readlink (const char * __path, char * __buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__access__ (__write_only__, 2, 3)));
extern int symlinkat (const char *__from, int __tofd, const char *__to) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
extern ssize_t readlinkat (int __fd, const char * __path, char * __buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3))) __attribute__ ((__access__ (__write_only__, 3, 4)));
extern int unlink (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int unlinkat (int __fd, const char *__name, int __flag) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int rmdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ , __leaf__));
extern char *getlogin (void);
extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1))) __attribute__ ((__access__ (__write_only__, 1, 2)));
extern int setlogin (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
/* BEGIN /usr/include/x86_64-linux-gnu/bits/getopt_posix.h */
enum { _GETOPT_POSIX_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/getopt_core.h */
enum { _GETOPT_CORE_H = 1 };
extern char *optarg;
extern int optind;
extern int opterr;
extern int optopt;
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
/* END   /usr/include/x86_64-linux-gnu/bits/getopt_core.h */
/* END   /usr/include/x86_64-linux-gnu/bits/getopt_posix.h */
extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__access__ (__write_only__, 1, 2)));
extern int sethostname (const char *__name, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__access__ (__read_only__, 1, 2)));
extern int sethostid (long int __id) __attribute__ ((__nothrow__ , __leaf__));
extern int getdomainname (char *__name, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__access__ (__write_only__, 1, 2)));
extern int setdomainname (const char *__name, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__access__ (__read_only__, 1, 2)));
extern int vhangup (void) __attribute__ ((__nothrow__ , __leaf__));
extern int revoke (const char *__file) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int profil (unsigned short int *__sample_buffer, size_t __size, size_t __offset, unsigned int __scale) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int acct (const char *__name) __attribute__ ((__nothrow__ , __leaf__));
extern char *getusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void endusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void setusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ , __leaf__));
extern int chroot (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));
extern int fsync (int __fd);
extern long int gethostid (void);
extern void sync (void) __attribute__ ((__nothrow__ , __leaf__));
extern int getpagesize (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int getdtablesize (void) __attribute__ ((__nothrow__ , __leaf__));
extern int truncate (const char *__file, __off_t __length) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__ , __leaf__));
extern int brk (void *__addr) __attribute__ ((__nothrow__ , __leaf__));
extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ , __leaf__));
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ , __leaf__));
enum { F_ULOCK = 0 };
enum { F_LOCK = 1 };
enum { F_TLOCK = 2 };
enum { F_TEST = 3 };
extern int lockf (int __fd, int __cmd, __off_t __len);
extern int fdatasync (int __fildes);
extern char *crypt (const char *__key, const char *__salt) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
int getentropy (void *__buffer, size_t __length) __attribute__ ((__access__ (__write_only__, 1, 2)));
/* BEGIN /usr/include/x86_64-linux-gnu/bits/unistd_ext.h */
/* END   /usr/include/x86_64-linux-gnu/bits/unistd_ext.h */
/* END   /usr/include/unistd.h */
]]
return ffi.C
