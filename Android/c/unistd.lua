local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <unistd.h> /data/data/com.termux/files/usr/bin/../../usr/include/unistd.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
/* ++ BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
/* ++ BEGIN <sys/select.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/select.h */
]] require 'ffi.req' 'c.sys.select' ffi.cdef[[
/* ++ END <sys/select.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/select.h */
/* ++ BEGIN <bits/fcntl.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/fcntl.h */
/* ++ END <bits/fcntl.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/fcntl.h */
/* ++ BEGIN <bits/getentropy.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/getentropy.h */
__attribute__((__warn_unused_result__)) int getentropy(void*  __buffer, size_t __buffer_size) __attribute__((__availability__(android,strict,introduced=28 )));
/* ++ END <bits/getentropy.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/getentropy.h */
/* ++ BEGIN <bits/getopt.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/getopt.h */
int getopt(int __argc, char* const  __argv[], const char*  __options);
extern char*  optarg;
extern int optind;
extern int opterr;
extern int optopt;
/* ++ END <bits/getopt.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/getopt.h */
/* ++ BEGIN <bits/ioctl.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/ioctl.h */
int ioctl(int __fd, int __op, ...);
int ioctl(int __fd, unsigned __op, ...) __attribute__((__overloadable__)) __attribute__((__enable_if__(1, ""))) __asm__("ioctl");
/* ++ END <bits/ioctl.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/ioctl.h */
/* ++ BEGIN <bits/lockf.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/lockf.h */
int lockf(int __fd, int __op, off_t __length) __attribute__((__availability__(android,strict,introduced=24 )));
int lockf64(int __fd, int __op, off64_t __length) __attribute__((__availability__(android,strict,introduced=24 )));
/* ++ END <bits/lockf.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/lockf.h */
/* ++ BEGIN <bits/seek_constants.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/seek_constants.h */
/* ++ END <bits/seek_constants.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/seek_constants.h */
/* ++ BEGIN <bits/sysconf.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/sysconf.h */
long sysconf(int __name);
/* ++ END <bits/sysconf.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/sysconf.h */
extern char*  *  environ;
__attribute__((__noreturn__)) void _exit(int __status);
pid_t fork(void);
pid_t vfork(void) __attribute__((__returns_twice__));
pid_t getpid(void);
pid_t gettid(void);
pid_t getpgid(pid_t __pid);
int setpgid(pid_t __pid, pid_t __pgid);
pid_t getppid(void);
pid_t getpgrp(void);
int setpgrp(void);
pid_t getsid(pid_t __pid);
pid_t setsid(void);
int execv(const char*  __path, char*  const*  __argv);
int execvp(const char*  __file, char*  const*  __argv);
int execvpe(const char*  __file, char*  const*  __argv, char*  const*  __envp);
int execve(const char*  __file, char*  const*  __argv, char*  const*  __envp);
int execl(const char*  __path, const char*  __arg0, ...) __attribute__((__sentinel__));
int execlp(const char*  __file, const char*  __arg0, ...) __attribute__((__sentinel__));
int execle(const char*  __path, const char*  __arg0, ... )
    __attribute__((__sentinel__(1)));
int fexecve(int __fd, char*  const*  __argv, char*  const*  __envp) __attribute__((__availability__(android,strict,introduced=28 )));
int nice(int __incr);
int setegid(gid_t __gid);
int seteuid(uid_t __uid);
int setgid(gid_t __gid);
int setregid(gid_t __rgid, gid_t __egid);
int setresgid(gid_t __rgid, gid_t __egid, gid_t __sgid);
int setresuid(uid_t __ruid, uid_t __euid, uid_t __suid);
int setreuid(uid_t __ruid, uid_t __euid);
int setuid(uid_t __uid);
uid_t getuid(void);
uid_t geteuid(void);
gid_t getgid(void);
gid_t getegid(void);
int getgroups(int __size, gid_t*  __list);
int setgroups(size_t __size, const gid_t*  __list);
int getresuid(uid_t*  __ruid, uid_t*  __euid, uid_t*  __suid);
int getresgid(gid_t*  __rgid, gid_t*  __egid, gid_t*  __sgid);
char*  getlogin(void);
int getlogin_r(char*  __buffer, size_t __buffer_size) __attribute__((__availability__(android,strict,introduced=28 )));
long fpathconf(int __fd, int __name);
long pathconf(const char*  __path, int __name);
int access(const char*  __path, int __mode);
int faccessat(int __dirfd, const char*  __path, int __mode, int __flags);
int link(const char*  __old_path, const char*  __new_path);
int linkat(int __old_dir_fd, const char*  __old_path, int __new_dir_fd, const char*  __new_path, int __flags);
int unlink(const char*  __path);
int unlinkat(int __dirfd, const char*  __path, int __flags);
int chdir(const char*  __path);
int fchdir(int __fd);
int rmdir(const char*  __path);
int pipe(int __fds[ 2]);
int chroot(const char*  __path);
int symlink(const char*  __old_path, const char*  __new_path);
int symlinkat(const char*  __old_path, int __new_dir_fd, const char*  __new_path);
ssize_t readlink(const char*  __path, char*  __buf, size_t __buf_size);
ssize_t readlinkat(int __dir_fd, const char*  __path, char*  __buf, size_t __buf_size);
int chown(const char*  __path, uid_t __owner, gid_t __group);
int fchown(int __fd, uid_t __owner, gid_t __group);
int fchownat(int __dir_fd, const char*  __path, uid_t __owner, gid_t __group, int __flags);
int lchown(const char*  __path, uid_t __owner, gid_t __group);
char*  getcwd(char*  __buf, size_t __size);
void sync(void);
int close(int __fd);
ssize_t read(int __fd, void*  __buf, size_t __count);
ssize_t write(int __fd, const void*  __buf, size_t __count);
int dup(int __old_fd);
int dup2(int __old_fd, int __new_fd);
int dup3(int __old_fd, int __new_fd, int __flags);
int fsync(int __fd);
int fdatasync(int __fd);
int truncate(const char*  __path, off_t __length);
off_t lseek(int __fd, off_t __offset, int __whence);
ssize_t pread(int __fd, void*  __buf, size_t __count, off_t __offset);
ssize_t pwrite(int __fd, const void*  __buf, size_t __count, off_t __offset);
int ftruncate(int __fd, off_t __length);
int truncate64(const char*  __path, off64_t __length);
off64_t lseek64(int __fd, off64_t __offset, int __whence);
ssize_t pread64(int __fd, void*  __buf, size_t __count, off64_t __offset);
ssize_t pwrite64(int __fd, const void*  __buf, size_t __count, off64_t __offset);
int ftruncate64(int __fd, off64_t __length);
int pause(void);
unsigned int alarm(unsigned int __seconds);
unsigned int sleep(unsigned int __seconds);
int usleep(useconds_t __microseconds);
int gethostname(char*  _buf, size_t __buf_size);
int sethostname(const char*  __name, size_t __n) __attribute__((__availability__(android,strict,introduced=23 )));
int brk(void*  __addr);
void*  sbrk(ptrdiff_t __increment);
int isatty(int __fd);
char*  ttyname(int __fd);
int ttyname_r(int __fd, char*  __buf, size_t __buf_size);
int acct(const char*  __path);
int getpagesize(void) __attribute__((__const__));
long syscall(long __number, ...);
int daemon(int __no_chdir, int __no_close);
int cacheflush(long __addr, long __nbytes, long __cache);
pid_t tcgetpgrp(int __fd);
int tcsetpgrp(int __fd, pid_t __pid);
int getdomainname(char*  __buf, size_t __buf_size) __attribute__((__availability__(android,strict,introduced=26 )));
int setdomainname(const char*  __name, size_t __n) __attribute__((__availability__(android,strict,introduced=26 )));
void swab(const void*  __src, void*  __dst, ssize_t __byte_count) __attribute__((__availability__(android,strict,introduced=28 )));
static __inline__ char* getpass(const char* prompt) {
    struct _termios {
        unsigned int c_iflag;
        unsigned int c_oflag;
        unsigned int c_cflag;
        unsigned int c_lflag;
        unsigned char c_line;
        unsigned char c_cc[19 ];
    };
    struct _termios term_old, term_new;
    static char password[513] = { 0 };
    int len = 0, tty_changed = 0;
    while (*prompt) {
        write(1, prompt, 1);
        prompt++;
    }
    if (ioctl(0, 0x5401 , &term_old) == 0) {
        term_new = term_old;
        term_new.c_lflag &= ~0000010;
        if (ioctl(0, 0x5402+0 , &term_new) == 0) {
            tty_changed = 1;
        } else {
            tty_changed = 0;
        }
    }
    char chr;
    while (read(0, &chr, sizeof(char)) > 0) {
        if (chr == '\r' || chr == '\n' || chr == 0) {
            break;
        }
        if (len == sizeof(password)-1) {
            continue;
        } else {
            password[len++] = chr;
        }
    }
    password[len] = 0;
    if (tty_changed) {
        ioctl(0, 0x5402+0 , &term_old);
    }
    write(1, "\n", 1);
    return password;
}
/* ++ BEGIN <android/legacy_unistd_inlines.h> /data/data/com.termux/files/usr/bin/../../usr/include/android/legacy_unistd_inlines.h */
/* ++ END <android/legacy_unistd_inlines.h> /data/data/com.termux/files/usr/bin/../../usr/include/android/legacy_unistd_inlines.h */
enum { F_ULOCK = 0 };
enum { F_LOCK = 1 };
enum { F_TLOCK = 2 };
enum { F_TEST = 3 };
]] require 'ffi.req' 'c.SEEK' ffi.cdef[[
enum { _SC_ARG_MAX = 0x0000 };
enum { _SC_BC_BASE_MAX = 0x0001 };
enum { _SC_BC_DIM_MAX = 0x0002 };
enum { _SC_BC_SCALE_MAX = 0x0003 };
enum { _SC_BC_STRING_MAX = 0x0004 };
enum { _SC_CHILD_MAX = 0x0005 };
enum { _SC_CLK_TCK = 0x0006 };
enum { _SC_COLL_WEIGHTS_MAX = 0x0007 };
enum { _SC_EXPR_NEST_MAX = 0x0008 };
enum { _SC_LINE_MAX = 0x0009 };
enum { _SC_NGROUPS_MAX = 0x000a };
enum { _SC_OPEN_MAX = 0x000b };
enum { _SC_PASS_MAX = 0x000c };
enum { _SC_2_C_BIND = 0x000d };
enum { _SC_2_C_DEV = 0x000e };
enum { _SC_2_C_VERSION = 0x000f };
enum { _SC_2_CHAR_TERM = 0x0010 };
enum { _SC_2_FORT_DEV = 0x0011 };
enum { _SC_2_FORT_RUN = 0x0012 };
enum { _SC_2_LOCALEDEF = 0x0013 };
enum { _SC_2_SW_DEV = 0x0014 };
enum { _SC_2_UPE = 0x0015 };
enum { _SC_2_VERSION = 0x0016 };
enum { _SC_JOB_CONTROL = 0x0017 };
enum { _SC_SAVED_IDS = 0x0018 };
enum { _SC_VERSION = 0x0019 };
enum { _SC_RE_DUP_MAX = 0x001a };
enum { _SC_STREAM_MAX = 0x001b };
enum { _SC_TZNAME_MAX = 0x001c };
enum { _SC_XOPEN_CRYPT = 0x001d };
enum { _SC_XOPEN_ENH_I18N = 0x001e };
enum { _SC_XOPEN_SHM = 0x001f };
enum { _SC_XOPEN_VERSION = 0x0020 };
enum { _SC_XOPEN_XCU_VERSION = 0x0021 };
enum { _SC_XOPEN_REALTIME = 0x0022 };
enum { _SC_XOPEN_REALTIME_THREADS = 0x0023 };
enum { _SC_XOPEN_LEGACY = 0x0024 };
enum { _SC_ATEXIT_MAX = 0x0025 };
enum { _SC_IOV_MAX = 0x0026 };
enum { _SC_UIO_MAXIOV = 0x0026 };
enum { _SC_PAGESIZE = 0x0027 };
enum { _SC_PAGE_SIZE = 0x0028 };
enum { _SC_XOPEN_UNIX = 0x0029 };
enum { _SC_XBS5_ILP32_OFF32 = 0x002a };
enum { _SC_XBS5_ILP32_OFFBIG = 0x002b };
enum { _SC_XBS5_LP64_OFF64 = 0x002c };
enum { _SC_XBS5_LPBIG_OFFBIG = 0x002d };
enum { _SC_AIO_LISTIO_MAX = 0x002e };
enum { _SC_AIO_MAX = 0x002f };
enum { _SC_AIO_PRIO_DELTA_MAX = 0x0030 };
enum { _SC_DELAYTIMER_MAX = 0x0031 };
enum { _SC_MQ_OPEN_MAX = 0x0032 };
enum { _SC_MQ_PRIO_MAX = 0x0033 };
enum { _SC_RTSIG_MAX = 0x0034 };
enum { _SC_SEM_NSEMS_MAX = 0x0035 };
enum { _SC_SEM_VALUE_MAX = 0x0036 };
enum { _SC_SIGQUEUE_MAX = 0x0037 };
enum { _SC_TIMER_MAX = 0x0038 };
enum { _SC_ASYNCHRONOUS_IO = 0x0039 };
enum { _SC_FSYNC = 0x003a };
enum { _SC_MAPPED_FILES = 0x003b };
enum { _SC_MEMLOCK = 0x003c };
enum { _SC_MEMLOCK_RANGE = 0x003d };
enum { _SC_MEMORY_PROTECTION = 0x003e };
enum { _SC_MESSAGE_PASSING = 0x003f };
enum { _SC_PRIORITIZED_IO = 0x0040 };
enum { _SC_PRIORITY_SCHEDULING = 0x0041 };
enum { _SC_REALTIME_SIGNALS = 0x0042 };
enum { _SC_SEMAPHORES = 0x0043 };
enum { _SC_SHARED_MEMORY_OBJECTS = 0x0044 };
enum { _SC_SYNCHRONIZED_IO = 0x0045 };
enum { _SC_TIMERS = 0x0046 };
enum { _SC_GETGR_R_SIZE_MAX = 0x0047 };
enum { _SC_GETPW_R_SIZE_MAX = 0x0048 };
enum { _SC_LOGIN_NAME_MAX = 0x0049 };
enum { _SC_THREAD_DESTRUCTOR_ITERATIONS = 0x004a };
enum { _SC_THREAD_KEYS_MAX = 0x004b };
enum { _SC_THREAD_STACK_MIN = 0x004c };
enum { _SC_THREAD_THREADS_MAX = 0x004d };
enum { _SC_TTY_NAME_MAX = 0x004e };
enum { _SC_THREADS = 0x004f };
enum { _SC_THREAD_ATTR_STACKADDR = 0x0050 };
enum { _SC_THREAD_ATTR_STACKSIZE = 0x0051 };
enum { _SC_THREAD_PRIORITY_SCHEDULING = 0x0052 };
enum { _SC_THREAD_PRIO_INHERIT = 0x0053 };
enum { _SC_THREAD_PRIO_PROTECT = 0x0054 };
enum { _SC_THREAD_SAFE_FUNCTIONS = 0x0055 };
enum { _SC_NPROCESSORS_CONF = 0x0060 };
enum { _SC_NPROCESSORS_ONLN = 0x0061 };
enum { _SC_PHYS_PAGES = 0x0062 };
enum { _SC_AVPHYS_PAGES = 0x0063 };
enum { _SC_MONOTONIC_CLOCK = 0x0064 };
enum { _SC_2_PBS = 0x0065 };
enum { _SC_2_PBS_ACCOUNTING = 0x0066 };
enum { _SC_2_PBS_CHECKPOINT = 0x0067 };
enum { _SC_2_PBS_LOCATE = 0x0068 };
enum { _SC_2_PBS_MESSAGE = 0x0069 };
enum { _SC_2_PBS_TRACK = 0x006a };
enum { _SC_ADVISORY_INFO = 0x006b };
enum { _SC_BARRIERS = 0x006c };
enum { _SC_CLOCK_SELECTION = 0x006d };
enum { _SC_CPUTIME = 0x006e };
enum { _SC_HOST_NAME_MAX = 0x006f };
enum { _SC_IPV6 = 0x0070 };
enum { _SC_RAW_SOCKETS = 0x0071 };
enum { _SC_READER_WRITER_LOCKS = 0x0072 };
enum { _SC_REGEXP = 0x0073 };
enum { _SC_SHELL = 0x0074 };
enum { _SC_SPAWN = 0x0075 };
enum { _SC_SPIN_LOCKS = 0x0076 };
enum { _SC_SPORADIC_SERVER = 0x0077 };
enum { _SC_SS_REPL_MAX = 0x0078 };
enum { _SC_SYMLOOP_MAX = 0x0079 };
enum { _SC_THREAD_CPUTIME = 0x007a };
enum { _SC_THREAD_PROCESS_SHARED = 0x007b };
enum { _SC_THREAD_ROBUST_PRIO_INHERIT = 0x007c };
enum { _SC_THREAD_ROBUST_PRIO_PROTECT = 0x007d };
enum { _SC_THREAD_SPORADIC_SERVER = 0x007e };
enum { _SC_TIMEOUTS = 0x007f };
enum { _SC_TRACE = 0x0080 };
enum { _SC_TRACE_EVENT_FILTER = 0x0081 };
enum { _SC_TRACE_EVENT_NAME_MAX = 0x0082 };
enum { _SC_TRACE_INHERIT = 0x0083 };
enum { _SC_TRACE_LOG = 0x0084 };
enum { _SC_TRACE_NAME_MAX = 0x0085 };
enum { _SC_TRACE_SYS_MAX = 0x0086 };
enum { _SC_TRACE_USER_EVENT_MAX = 0x0087 };
enum { _SC_TYPED_MEMORY_OBJECTS = 0x0088 };
enum { _SC_V7_ILP32_OFF32 = 0x0089 };
enum { _SC_V7_ILP32_OFFBIG = 0x008a };
enum { _SC_V7_LP64_OFF64 = 0x008b };
enum { _SC_V7_LPBIG_OFFBIG = 0x008c };
enum { _SC_XOPEN_STREAMS = 0x008d };
enum { _SC_XOPEN_UUCP = 0x008e };
enum { _SC_LEVEL1_ICACHE_SIZE = 0x008f };
enum { _SC_LEVEL1_ICACHE_ASSOC = 0x0090 };
enum { _SC_LEVEL1_ICACHE_LINESIZE = 0x0091 };
enum { _SC_LEVEL1_DCACHE_SIZE = 0x0092 };
enum { _SC_LEVEL1_DCACHE_ASSOC = 0x0093 };
enum { _SC_LEVEL1_DCACHE_LINESIZE = 0x0094 };
enum { _SC_LEVEL2_CACHE_SIZE = 0x0095 };
enum { _SC_LEVEL2_CACHE_ASSOC = 0x0096 };
enum { _SC_LEVEL2_CACHE_LINESIZE = 0x0097 };
enum { _SC_LEVEL3_CACHE_SIZE = 0x0098 };
enum { _SC_LEVEL3_CACHE_ASSOC = 0x0099 };
enum { _SC_LEVEL3_CACHE_LINESIZE = 0x009a };
enum { _SC_LEVEL4_CACHE_SIZE = 0x009b };
enum { _SC_LEVEL4_CACHE_ASSOC = 0x009c };
enum { _SC_LEVEL4_CACHE_LINESIZE = 0x009d };
enum { _SC_NSIG = 0x009e };
enum { STDIN_FILENO = 0 };
enum { STDOUT_FILENO = 1 };
enum { STDERR_FILENO = 2 };
enum { F_OK = 0 };
enum { X_OK = 1 };
enum { W_OK = 2 };
enum { R_OK = 4 };
enum { _PC_FILESIZEBITS = 0 };
enum { _PC_LINK_MAX = 1 };
enum { _PC_MAX_CANON = 2 };
enum { _PC_MAX_INPUT = 3 };
enum { _PC_NAME_MAX = 4 };
enum { _PC_PATH_MAX = 5 };
enum { _PC_PIPE_BUF = 6 };
enum { _PC_2_SYMLINKS = 7 };
enum { _PC_ALLOC_SIZE_MIN = 8 };
enum { _PC_REC_INCR_XFER_SIZE = 9 };
enum { _PC_REC_MAX_XFER_SIZE = 10 };
enum { _PC_REC_MIN_XFER_SIZE = 11 };
enum { _PC_REC_XFER_ALIGN = 12 };
enum { _PC_SYMLINK_MAX = 13 };
enum { _PC_CHOWN_RESTRICTED = 14 };
enum { _PC_NO_TRUNC = 15 };
enum { _PC_VDISABLE = 16 };
enum { _PC_ASYNC_IO = 17 };
enum { _PC_PRIO_IO = 18 };
enum { _PC_SYNC_IO = 19 };
/* #define TEMP_FAILURE_RETRY (exp) ({ __typeof__(exp) _rc; do { _rc = (exp); } while (_rc == -1 && errno == EINTR); _rc; }) ### define is not number */
enum { GETPASS_H = 1 };
enum { HAVE_GETPASS = 1 };
enum { HAS_GETPASS = 1 };
enum { PASSWORDLEN = 512 };
/* + END <unistd.h> /data/data/com.termux/files/usr/bin/../../usr/include/unistd.h */
]]
return ffi.C
