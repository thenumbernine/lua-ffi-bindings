local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <unistd.h> /boot/system/develop/headers/bsd/unistd.h */
/* ++ BEGIN <unistd.h> /boot/system/develop/headers/posix/unistd.h */
/* +++ BEGIN <null.h> /boot/system/develop/headers/posix/null.h */
]] require 'ffi.req' 'c.null' ffi.cdef[[
/* +++ END <null.h> /boot/system/develop/headers/posix/null.h */
/* +++ BEGIN <stdint.h> /boot/system/develop/headers/posix/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* +++ END <stdint.h> /boot/system/develop/headers/posix/stdint.h */
/* +++ BEGIN <sys/types.h> ./Haiku/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++ END <sys/types.h> ./Haiku/sys/types.h */
extern int access(const char *path, int accessMode);
extern int faccessat(int fd, const char *path, int accessMode, int flag);
extern int chdir(const char *path);
extern int fchdir(int fd);
extern char *getcwd(char *buffer, size_t size);
extern int pipe(int fildes[2]);
extern int pipe2(int fildes[2], int flags);
extern int dup(int fd);
extern int dup2(int fd1, int fd2);
extern int dup3(int fd1, int fd2, int flags);
extern int close(int fd);
extern int link(const char *toPath, const char *path);
extern int linkat(int toFD, const char *toPath, int pathFD,
     const char *path, int flag);
extern int unlink(const char *name);
extern int unlinkat(int fd, const char *path, int flag);
extern int rmdir(const char *path);
extern ssize_t readlink(const char *path, char *buffer, size_t bufferSize);
extern ssize_t readlinkat(int fd, const char *path, char *buffer,
     size_t bufferSize);
extern int symlink(const char *toPath, const char *symlinkPath);
extern int symlinkat(const char *toPath, int fd, const char *symlinkPath);
extern int ftruncate(int fd, off_t newSize);
extern int truncate(const char *path, off_t newSize);
extern int __ioctl(int fd, ulong cmd, void* argument, size_t size);
extern int ioctl(int fd, unsigned long op, ...);
extern ssize_t read(int fd, void *buffer, size_t count);
extern ssize_t read_pos(int fd, off_t pos, void *buffer, size_t count);
extern ssize_t pread(int fd, void *buffer, size_t count, off_t pos);
extern ssize_t write(int fd, const void *buffer, size_t count);
extern ssize_t write_pos(int fd, off_t pos, const void *buffer,size_t count);
extern ssize_t pwrite(int fd, const void *buffer, size_t count, off_t pos);
extern off_t lseek(int fd, off_t offset, int whence);
extern void sync(void);
extern int fsync(int fd);
extern int fdatasync(int fd);
extern int chown(const char *path, uid_t owner, gid_t group);
extern int fchown(int fd, uid_t owner, gid_t group);
extern int lchown(const char *path, uid_t owner, gid_t group);
extern int fchownat(int fd, const char *path, uid_t owner, gid_t group,
     int flag);
extern int getpagesize(void);
extern int getdtablesize(void);
extern long sysconf(int name);
extern long fpathconf(int fd, int name);
extern long pathconf(const char *path, int name);
extern size_t confstr(int name, char *buf, size_t len);
extern int lockf(int fd, int function, off_t size);
extern pid_t fork(void);
extern pid_t vfork(void);
extern int execve(const char *path, char * const argv[],
     char *const environment[]);
extern int execl(const char *path, const char *arg, ...);
extern int execv(const char *path, char *const argv[]);
extern int execlp(const char *file, const char *arg, ...);
extern int execle(const char *path, const char *arg , ... );
extern int execvp(const char *file, char *const argv[]);
extern int execvpe(const char *file, char *const argv[],
     char *const environment[]);
extern void _exit(int status) __attribute__ ((noreturn));
extern pid_t tcgetpgrp(int fd);
extern int tcsetpgrp(int fd, pid_t pgrpid);
extern int brk(void *addr);
extern void *sbrk(intptr_t increment);
extern unsigned int alarm(unsigned int seconds);
extern useconds_t ualarm(useconds_t microSeconds, useconds_t interval);
extern unsigned int sleep(unsigned int seconds);
extern int usleep(unsigned int microSeconds);
extern int pause(void);
extern pid_t getpid(void);
extern pid_t getpgrp(void);
extern pid_t getppid(void);
extern pid_t getsid(pid_t pid);
extern pid_t getpgid(pid_t pid);
extern pid_t setsid(void);
extern int setpgid(pid_t pid, pid_t pgid);
extern pid_t setpgrp(void);
extern int chroot(const char *path);
extern int nice(int incr);
extern gid_t getegid(void);
extern uid_t geteuid(void);
extern gid_t getgid(void);
extern uid_t getuid(void);
extern int getresgid(gid_t *rgid, gid_t *egid, gid_t *sgid);
extern int getresuid(uid_t *ruid, uid_t *euid, uid_t *suid);
extern int setgid(gid_t gid);
extern int setuid(uid_t uid);
extern int setegid(gid_t gid);
extern int seteuid(uid_t uid);
extern int setregid(gid_t rgid, gid_t egid);
extern int setreuid(uid_t ruid, uid_t euid);
extern int setresgid(gid_t rgid, gid_t egid, gid_t sgid);
extern int setresuid(uid_t ruid, uid_t euid, uid_t suid);
extern int getgrouplist(const char* user, gid_t baseGroup,
     gid_t* groupList, int* groupCount);
extern int getgroups(int groupCount, gid_t groupList[]);
extern int initgroups(const char* user, gid_t baseGroup);
extern int setgroups(int groupCount, const gid_t* groupList);
extern char *getlogin(void);
extern int getlogin_r(char *name, size_t nameSize);
extern int sethostname(const char *hostName, size_t nameSize);
extern int gethostname(char *hostName, size_t nameSize);
extern int isatty(int fd);
extern char *ttyname(int fd);
extern int ttyname_r(int fd, char *buffer, size_t bufferSize);
extern char *crypt(const char *key, const char *salt);
extern void encrypt(char block[64], int edflag);
extern int getopt(int argc, char *const *argv, const char *shortOpts);
extern void swab(const void *src, void *dest, ssize_t nbytes);
int getentropy(void *buf, size_t buflen);
extern char *optarg;
extern int optind, opterr, optopt;
/* ++ END <unistd.h> /boot/system/develop/headers/posix/unistd.h */
/* ++ BEGIN <features.h> /boot/system/develop/headers/bsd/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /boot/system/develop/headers/bsd/features.h */
void endusershell(void);
char *getpass(const char *prompt);
char *getusershell(void);
int issetugid(void);
void setusershell(void);
int closefrom(int lowFd);
int close_range(u_int minFd, u_int maxFd, int flags);
enum { _BSD_UNISTD_H_ = 1 };
enum { _UNISTD_H_ = 1 };
enum { R_OK = 4 };
enum { W_OK = 2 };
enum { X_OK = 1 };
enum { F_OK = 0 };
enum { STDIN_FILENO = 0 };
enum { STDOUT_FILENO = 1 };
enum { STDERR_FILENO = 2 };
enum { F_ULOCK = 0 };
enum { F_LOCK = 1 };
enum { F_TLOCK = 2 };
enum { F_TEST = 3 };
/* #define _POSIX_VERSION (200809L) ### define is not number */
/* #define _POSIX2_VERSION (200809L) ### define is not number */
/* #define _XOPEN_VERSION (700) ### define is not number */
/* #define _POSIX_VDISABLE ((unsigned char)-2) ### define is not number */
/* #define _POSIX_ADVISORY_INFO (200809L) ### define is not number */
/* #define _POSIX_ASYNCHRONOUS_IO (-1) ### define is not number */
/* #define _POSIX_BARRIERS (200809L) ### define is not number */
/* #define _POSIX_CHOWN_RESTRICTED (1) ### define is not number */
/* #define _POSIX_CLOCK_SELECTION (200809L) ### define is not number */
/* #define _POSIX_CPUTIME (200809L) ### define is not number */
/* #define _POSIX_DEVICE_CONTROL (202405L) ### define is not number */
/* #define _POSIX_FSYNC (200809L) ### define is not number */
/* #define _POSIX_IPV6 (200809L) ### define is not number */
/* #define _POSIX_JOB_CONTROL (1) ### define is not number */
/* #define _POSIX_MAPPED_FILES (200809L) ### define is not number */
/* #define _POSIX_MEMLOCK (-1) ### define is not number */
/* #define _POSIX_MEMLOCK_RANGE (200809L) ### define is not number */
/* #define _POSIX_MEMORY_PROTECTION (200809L) ### define is not number */
/* #define _POSIX_MESSAGE_PASSING (-1) ### define is not number */
/* #define _POSIX_MONOTONIC_CLOCK (200809L) ### define is not number */
/* #define _POSIX_NO_TRUNC (0) ### define is not number */
/* #define _POSIX_PRIORITIZED_IO (-1) ### define is not number */
/* #define _POSIX_PRIORITY_SCHEDULING (-1) ### define is not number */
/* #define _POSIX_RAW_SOCKETS (-1) ### define is not number */
/* #define _POSIX_READER_WRITER_LOCKS (200809L) ### define is not number */
/* #define _POSIX_REALTIME_SIGNALS (200809L) ### define is not number */
/* #define _POSIX_REGEXP (200809L) ### define is not number */
/* #define _POSIX_SAVED_IDS (1) ### define is not number */
/* #define _POSIX_SEMAPHORES (200112L) ### define is not number */
/* #define _POSIX_SHARED_MEMORY_OBJECTS (200809L) ### define is not number */
/* #define _POSIX_SHELL (200809L) ### define is not number */
/* #define _POSIX_SPAWN (200809L) ### define is not number */
/* #define _POSIX_SPIN_LOCKS (-1) ### define is not number */
/* #define _POSIX_SPORADIC_SERVER (-1) ### define is not number */
/* #define _POSIX_SYNCHRONIZED_IO (200809L) ### define is not number */
/* #define _POSIX_THREAD_ATTR_STACKADDR (200809L) ### define is not number */
/* #define _POSIX_THREAD_ATTR_STACKSIZE (200809L) ### define is not number */
/* #define _POSIX_THREAD_CPUTIME (200809L) ### define is not number */
/* #define _POSIX_THREAD_PRIO_INHERIT (-1) ### define is not number */
/* #define _POSIX_THREAD_PRIO_PROTECT (-1) ### define is not number */
/* #define _POSIX_THREAD_PRIORITY_SCHEDULING (-1) ### define is not number */
/* #define _POSIX_THREAD_PROCESS_SHARED (200809L) ### define is not number */
/* #define _POSIX_THREAD_ROBUST_PRIO_INHERIT (-1) ### define is not number */
/* #define _POSIX_THREAD_ROBUST_PRIO_PROTECT (-1) ### define is not number */
/* #define _POSIX_THREAD_SAFE_FUNCTIONS (200809L) ### define is not number */
/* #define _POSIX_THREAD_SPORADIC_SERVER (-1) ### define is not number */
/* #define _POSIX_THREADS (200809L) ### define is not number */
/* #define _POSIX_TIMEOUTS (-1) ### define is not number */
/* #define _POSIX_TIMERS (200809L) ### define is not number */
/* #define _POSIX_TRACE (-1) ### define is not number */
/* #define _POSIX_TRACE_EVENT_FILTER (-1) ### define is not number */
/* #define _POSIX_TRACE_INHERIT (-1) ### define is not number */
/* #define _POSIX_TRACE_LOG (-1) ### define is not number */
/* #define _POSIX_TYPED_MEMORY_OBJECTS (-1) ### define is not number */
/* #define __ILP32_OFF32 (-1) ### define is not number */
/* #define __ILP32_OFFBIG (-1) ### define is not number */
/* #define __LP64_OFF64 (0) ### define is not number */
/* #define __LPBIG_OFFBIG (-1) ### define is not number */
/* #define _POSIX_V6_ILP32_OFF32 (-1) ### define is not number */
/* #define _POSIX_V6_ILP32_OFFBIG (-1) ### define is not number */
/* #define _POSIX_V6_LP64_OFF64 (0) ### define is not number */
/* #define _POSIX_V6_LPBIG_OFFBIG (-1) ### define is not number */
/* #define _POSIX_V7_ILP32_OFF32 (-1) ### define is not number */
/* #define _POSIX_V7_ILP32_OFFBIG (-1) ### define is not number */
/* #define _POSIX_V7_LP64_OFF64 (0) ### define is not number */
/* #define _POSIX_V7_LPBIG_OFFBIG (-1) ### define is not number */
/* #define _POSIX2_C_BIND (200809L) ### define is not number */
/* #define _POSIX2_C_DEV (-1) ### define is not number */
/* #define _POSIX2_CHAR_TERM (1) ### define is not number */
/* #define _POSIX2_FORT_DEV (-1) ### define is not number */
/* #define _POSIX2_FORT_RUN (-1) ### define is not number */
/* #define _POSIX2_LOCALEDEF (-1) ### define is not number */
/* #define _POSIX2_PBS (-1) ### define is not number */
/* #define _POSIX2_PBS_ACCOUNTING (-1) ### define is not number */
/* #define _POSIX2_PBS_CHECKPOINT (-1) ### define is not number */
/* #define _POSIX2_PBS_LOCATE (-1) ### define is not number */
/* #define _POSIX2_PBS_MESSAGE (-1) ### define is not number */
/* #define _POSIX2_PBS_TRACK (-1) ### define is not number */
/* #define _POSIX2_SW_DEV (-1) ### define is not number */
/* #define _POSIX2_UPE (-1) ### define is not number */
/* #define _XOPEN_CRYPT (-1) ### define is not number */
/* #define _XOPEN_ENH_I18N (-1) ### define is not number */
/* #define _XOPEN_LEGACY (-1) ### define is not number */
/* #define _XOPEN_REALTIME (-1) ### define is not number */
/* #define _XOPEN_REALTIME_THREADS (-1) ### define is not number */
/* #define _XOPEN_SHM (-1) ### define is not number */
/* #define _XOPEN_STREAMS (-1) ### define is not number */
/* #define _XOPEN_UNIX (-1) ### define is not number */
/* #define _XOPEN_UUCP (-1) ### define is not number */
enum { _PC_CHOWN_RESTRICTED = 1 };
enum { _PC_MAX_CANON = 2 };
enum { _PC_MAX_INPUT = 3 };
enum { _PC_NAME_MAX = 4 };
enum { _PC_NO_TRUNC = 5 };
enum { _PC_PATH_MAX = 6 };
enum { _PC_PIPE_BUF = 7 };
enum { _PC_VDISABLE = 8 };
enum { _PC_LINK_MAX = 25 };
enum { _PC_SYNC_IO = 26 };
enum { _PC_ASYNC_IO = 27 };
enum { _PC_PRIO_IO = 28 };
enum { _PC_SOCK_MAXBUF = 29 };
enum { _PC_FILESIZEBITS = 30 };
enum { _PC_REC_INCR_XFER_SIZE = 31 };
enum { _PC_REC_MAX_XFER_SIZE = 32 };
enum { _PC_REC_MIN_XFER_SIZE = 33 };
enum { _PC_REC_XFER_ALIGN = 34 };
enum { _PC_ALLOC_SIZE_MIN = 35 };
enum { _PC_SYMLINK_MAX = 36 };
enum { _PC_2_SYMLINKS = 37 };
enum { _PC_XATTR_EXISTS = 38 };
enum { _PC_XATTR_ENABLED = 39 };
enum { _SC_ARG_MAX = 15 };
enum { _SC_CHILD_MAX = 16 };
enum { _SC_CLK_TCK = 17 };
enum { _SC_JOB_CONTROL = 18 };
enum { _SC_NGROUPS_MAX = 19 };
enum { _SC_OPEN_MAX = 20 };
enum { _SC_SAVED_IDS = 21 };
enum { _SC_STREAM_MAX = 22 };
enum { _SC_TZNAME_MAX = 23 };
enum { _SC_VERSION = 24 };
enum { _SC_GETGR_R_SIZE_MAX = 25 };
enum { _SC_GETPW_R_SIZE_MAX = 26 };
enum { _SC_PAGE_SIZE = 27 };
enum { _SC_PAGESIZE = 27 };
enum { _SC_SEM_NSEMS_MAX = 28 };
enum { _SC_SEM_VALUE_MAX = 29 };
enum { _SC_SEMAPHORES = 30 };
enum { _SC_THREADS = 31 };
enum { _SC_IOV_MAX = 32 };
enum { _SC_UIO_MAXIOV = 32 };
enum { _SC_NPROCESSORS_CONF = 34 };
enum { _SC_NPROCESSORS_ONLN = 35 };
enum { _SC_ATEXIT_MAX = 37 };
enum { _SC_PASS_MAX = 39 };
enum { _SC_PHYS_PAGES = 40 };
enum { _SC_AVPHYS_PAGES = 41 };
enum { _SC_PIPE = 42 };
enum { _SC_SELECT = 43 };
enum { _SC_POLL = 44 };
enum { _SC_MAPPED_FILES = 45 };
enum { _SC_THREAD_PROCESS_SHARED = 46 };
enum { _SC_THREAD_STACK_MIN = 47 };
enum { _SC_THREAD_ATTR_STACKADDR = 48 };
enum { _SC_THREAD_ATTR_STACKSIZE = 49 };
enum { _SC_THREAD_PRIORITY_SCHEDULING = 50 };
enum { _SC_REALTIME_SIGNALS = 51 };
enum { _SC_MEMORY_PROTECTION = 52 };
enum { _SC_SIGQUEUE_MAX = 53 };
enum { _SC_RTSIG_MAX = 54 };
enum { _SC_MONOTONIC_CLOCK = 55 };
enum { _SC_DELAYTIMER_MAX = 56 };
enum { _SC_TIMER_MAX = 57 };
enum { _SC_TIMERS = 58 };
enum { _SC_CPUTIME = 59 };
enum { _SC_THREAD_CPUTIME = 60 };
enum { _SC_HOST_NAME_MAX = 61 };
enum { _SC_REGEXP = 62 };
enum { _SC_SYMLOOP_MAX = 63 };
enum { _SC_SHELL = 64 };
enum { _SC_TTY_NAME_MAX = 65 };
enum { _SC_ADVISORY_INFO = 66 };
enum { _SC_BARRIERS = 67 };
enum { _SC_CLOCK_SELECTION = 68 };
enum { _SC_FSYNC = 69 };
enum { _SC_IPV6 = 70 };
enum { _SC_MEMLOCK = 71 };
enum { _SC_MEMLOCK_RANGE = 72 };
enum { _SC_MESSAGE_PASSING = 73 };
enum { _SC_PRIORITIZED_IO = 74 };
enum { _SC_PRIORITY_SCHEDULING = 75 };
enum { _SC_READER_WRITER_LOCKS = 76 };
enum { _SC_SHARED_MEMORY_OBJECTS = 77 };
enum { _SC_SPAWN = 78 };
enum { _SC_SPIN_LOCKS = 79 };
enum { _SC_SPORADIC_SERVER = 80 };
enum { _SC_SYNCHRONIZED_IO = 81 };
enum { _SC_THREAD_PRIO_INHERIT = 82 };
enum { _SC_THREAD_PRIO_PROTECT = 83 };
enum { _SC_THREAD_ROBUST_PRIO_INHERIT = 84 };
enum { _SC_THREAD_ROBUST_PRIO_PROTECT = 85 };
enum { _SC_THREAD_SAFE_FUNCTIONS = 86 };
enum { _SC_THREAD_SPORADIC_SERVER = 87 };
enum { _SC_TIMEOUTS = 88 };
enum { _SC_TRACE = 89 };
enum { _SC_TRACE_EVENT_FILTER = 90 };
enum { _SC_TRACE_INHERIT = 91 };
enum { _SC_TRACE_LOG = 92 };
enum { _SC_TYPED_MEMORY_OBJECTS = 93 };
enum { _SC_V6_ILP32_OFF32 = 94 };
enum { _SC_V6_ILP32_OFFBIG = 95 };
enum { _SC_V6_LP64_OFF64 = 96 };
enum { _SC_V6_LPBIG_OFFBIG = 97 };
enum { _SC_V7_ILP32_OFF32 = 98 };
enum { _SC_V7_ILP32_OFFBIG = 99 };
enum { _SC_V7_LP64_OFF64 = 100 };
enum { _SC_V7_LPBIG_OFFBIG = 101 };
enum { _SC_2_C_BIND = 102 };
enum { _SC_2_C_DEV = 103 };
enum { _SC_2_CHAR_TERM = 104 };
enum { _SC_2_FORT_DEV = 105 };
enum { _SC_2_FORT_RUN = 106 };
enum { _SC_2_LOCALEDEF = 107 };
enum { _SC_2_PBS = 108 };
enum { _SC_2_PBS_ACCOUNTING = 109 };
enum { _SC_2_PBS_CHECKPOINT = 110 };
enum { _SC_2_PBS_LOCATE = 111 };
enum { _SC_2_PBS_MESSAGE = 112 };
enum { _SC_2_PBS_TRACK = 113 };
enum { _SC_2_SW_DEV = 114 };
enum { _SC_2_UPE = 115 };
enum { _SC_2_VERSION = 116 };
enum { _SC_XOPEN_CRYPT = 117 };
enum { _SC_XOPEN_ENH_I18N = 118 };
enum { _SC_XOPEN_REALTIME = 119 };
enum { _SC_XOPEN_REALTIME_THREADS = 120 };
enum { _SC_XOPEN_SHM = 121 };
enum { _SC_XOPEN_STREAMS = 122 };
enum { _SC_XOPEN_UNIX = 123 };
enum { _SC_XOPEN_UUCP = 124 };
enum { _SC_XOPEN_VERSION = 125 };
enum { _SC_BC_BASE_MAX = 129 };
enum { _SC_BC_DIM_MAX = 130 };
enum { _SC_BC_SCALE_MAX = 131 };
enum { _SC_BC_STRING_MAX = 132 };
enum { _SC_COLL_WEIGHTS_MAX = 133 };
enum { _SC_EXPR_NEST_MAX = 134 };
enum { _SC_LINE_MAX = 135 };
enum { _SC_LOGIN_NAME_MAX = 136 };
enum { _SC_MQ_OPEN_MAX = 137 };
enum { _SC_MQ_PRIO_MAX = 138 };
enum { _SC_THREAD_DESTRUCTOR_ITERATIONS = 139 };
enum { _SC_THREAD_KEYS_MAX = 140 };
enum { _SC_THREAD_THREADS_MAX = 141 };
enum { _SC_RE_DUP_MAX = 142 };
enum { _SC_DEVICE_CONTROL = 143 };
enum { _CS_PATH = 1 };
]] require 'ffi.req' 'c.SEEK' ffi.cdef[[
enum { SEEK_DATA = 3 };
enum { SEEK_HOLE = 4 };
enum { CLOSE_RANGE_CLOEXEC = 0x4 };
/* #define _IOCTL2 (a,b) __ioctl(a, b, NULL, 0) ### define is not number */
/* #define _IOCTL3 (a,b,c) __ioctl(a, b, (void*)(c), 0) ### define is not number */
/* #define _IOCTL4 (a,b,c,d) __ioctl(a, b, (void*)(c), d) ### define is not number */
/* #define _IOCTL (ARG1,ARG2,ARG3,ARG4,NAME,...) NAME ### define is not number */
/* #define ioctl (...) _IOCTL(__VA_ARGS__, _IOCTL4, _IOCTL3, _IOCTL2)(__VA_ARGS__) ### define is not number */
enum { L_SET = 0 };
enum { L_INCR = 1 };
enum { L_XTND = 2 };
/* + END <unistd.h> /boot/system/develop/headers/bsd/unistd.h */
]]
return ffi.C
