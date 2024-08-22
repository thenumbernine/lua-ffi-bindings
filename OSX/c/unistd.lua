local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/unistd.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_posix_vdisable.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_posix_vdisable.h */
enum { F_OK = 0 };
enum { X_OK = 1 };
enum { W_OK = 2 };
enum { R_OK = 4 };
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_seek_set.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
enum { SEEK_SET = 0 };
enum { SEEK_CUR = 1 };
enum { SEEK_END = 2 };
enum { SEEK_HOLE = 3 };
enum { SEEK_DATA = 4 };
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_seek_set.h */
enum { L_SET = 0 };
enum { L_INCR = 1 };
enum { L_XTND = 2 };
struct accessx_descriptor {
	unsigned int ad_name_offset;
	int ad_flags;
	int ad_pad[2];
};
enum { ACCESSX_MAX_DESCRIPTORS = 100 };
enum { ACCESSX_MAX_TABLESIZE = 16384 };
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
typedef __darwin_size_t size_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
typedef signed char int8_t;
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
typedef short int16_t;
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
typedef int int32_t;
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
typedef long long int64_t;
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h */
typedef unsigned char u_int8_t;
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h */
typedef unsigned short u_int16_t;
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h */
typedef unsigned int u_int32_t;
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h */
typedef unsigned long long u_int64_t;
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h */
typedef int64_t register_t;
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* +++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* +++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
typedef __darwin_intptr_t intptr_t;
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
typedef unsigned long uintptr_t;
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
typedef u_int64_t user_addr_t;
typedef u_int64_t user_size_t;
typedef int64_t user_ssize_t;
typedef int64_t user_long_t;
typedef u_int64_t user_ulong_t;
typedef int64_t user_time_t;
typedef int64_t user_off_t;
/* #define USER_ADDR_NULL  ((user_addr_t) 0) ### string, not number "((user_addr_t) 0)" */
typedef u_int64_t syscall_arg_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
typedef __darwin_ssize_t ssize_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h */
typedef unsigned long long uint64_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h */
typedef unsigned int uint32_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
int getattrlistbulk(int, void *, void *, size_t, uint64_t);
int getattrlistat(int, const char *, void *, void *, size_t, unsigned long);
int setattrlistat(int, const char *, void *, void *, size_t, uint32_t);
ssize_t freadlink(int, char * restrict, size_t);
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_uid_t uid_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_gid_t gid_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
int faccessat(int, const char *, int, int);
int fchownat(int, const char *, uid_t, gid_t, int);
int linkat(int, const char *, int, const char *, int);
ssize_t readlinkat(int, const char *, char *, size_t);
int symlinkat(const char *, int, const char *);
int unlinkat(int, const char *, int);
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/unistd.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_off_t off_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_pid_t pid_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_useconds_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_useconds_t useconds_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_useconds_t.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* #define NULL  __DARWIN_NULL ### string, not number "__DARWIN_NULL" */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
enum { STDIN_FILENO = 0 };
enum { STDOUT_FILENO = 1 };
enum { STDERR_FILENO = 2 };
void _exit(int) __attribute__((__noreturn__));
int access(const char *, int);
unsigned int alarm(unsigned int);
int chdir(const char *);
int chown(const char *, uid_t, gid_t);
int close(int);
int dup(int);
int dup2(int, int);
int execl(const char * __path, const char * __arg0, ...);
int execle(const char * __path, const char * __arg0, ...);
int execlp(const char * __file, const char * __arg0, ...);
int execv(const char * __path, char * const * __argv);
int execve(const char * __file, char * const * __argv, char * const * __envp);
int execvp(const char * __file, char * const * __argv);
pid_t fork(void);
long fpathconf(int, int);
char *getcwd(char *, size_t);
gid_t getegid(void);
uid_t geteuid(void);
gid_t getgid(void);
int getgroups(int, gid_t []);
char *getlogin(void);
pid_t getpgrp(void);
pid_t getpid(void);
pid_t getppid(void);
uid_t getuid(void);
int isatty(int);
int link(const char *, const char *);
off_t lseek(int, off_t, int);
long pathconf(const char *, int);
int pause(void);
int pipe(int [2]);
ssize_t read(int, void *, size_t);
int rmdir(const char *);
int setgid(gid_t);
int setpgid(pid_t, pid_t);
pid_t setsid(void);
int setuid(uid_t);
unsigned int sleep(unsigned int);
long sysconf(int);
pid_t tcgetpgrp(int);
int tcsetpgrp(int, pid_t);
char *ttyname(int);
int ttyname_r(int, char *, size_t);
int unlink(const char *);
ssize_t write(int __fd, const void * __buf, size_t __nbyte);
size_t confstr(int, char *, size_t);
int getopt(int, char * const [], const char *);
extern char *optarg;
extern int optind, opterr, optopt;
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_ctermid.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
char *ctermid(char *);
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_ctermid.h */
enum { F_ULOCK = 0 };
enum { F_LOCK = 1 };
enum { F_TLOCK = 2 };
enum { F_TEST = 3 };
__attribute__((__deprecated__)) void *brk(const void *);
int chroot(const char *);
char *crypt(const char *, const char *);
void encrypt(char *, int);
int fchdir(int);
long gethostid(void);
pid_t getpgid(pid_t);
pid_t getsid(pid_t);
int getdtablesize(void);
int getpagesize(void) __attribute__((__const__));
char *getpass(const char *);
char *getwd(char *);
int lchown(const char *, uid_t, gid_t);
int lockf(int, int, off_t);
int nice(int);
ssize_t pread(int __fd, void * __buf, size_t __nbyte, off_t __offset);
ssize_t pwrite(int __fd, const void * __buf, size_t __nbyte, off_t __offset);
__attribute__((__deprecated__)) void *sbrk(int);
pid_t setpgrp(void);
int setregid(gid_t, gid_t);
int setreuid(uid_t, uid_t);
void swab(const void * restrict, void * restrict, ssize_t);
void sync(void);
int truncate(const char *, off_t);
useconds_t ualarm(useconds_t, useconds_t);
int usleep(useconds_t);
__attribute__((__deprecated__)) pid_t vfork(void);
int fsync(int);
int ftruncate(int, off_t);
int getlogin_r(char *, size_t);
int fchown(int, uid_t, gid_t);
int gethostname(char *, size_t);
ssize_t readlink(const char * restrict, char * restrict, size_t);
int setegid(gid_t);
int seteuid(uid_t);
int symlink(const char *, const char *);
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h */
]] require 'ffi.req' 'c.sys.select' ffi.cdef[[
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_dev_t dev_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_mode_t mode_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uuid_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
typedef __darwin_uuid_t uuid_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uuid_t.h */
void _Exit(int) __attribute__((__noreturn__));
int accessx_np(const struct accessx_descriptor *, size_t, int *, uid_t);
int acct(const char *);
int add_profil(char *, size_t, unsigned long, unsigned int);
void endusershell(void);
int execvP(const char * __file, const char * __searchpath, char * const * __argv);
char *fflagstostr(unsigned long);
int getdomainname(char *, int);
int getgrouplist(const char *, int, int *, int *);
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/gethostuuid.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uuid_t.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uuid_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
int gethostuuid(uuid_t, const struct timespec *);
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/gethostuuid.h */
mode_t getmode(const void *, mode_t);
int getpeereid(int, uid_t *, gid_t *);
int getsgroups_np(int *, uuid_t);
char *getusershell(void);
int getwgroups_np(int *, uuid_t);
int initgroups(const char *, int);
int issetugid(void);
char *mkdtemp(char *);
int mknod(const char *, mode_t, dev_t);
int mkpath_np(const char *path, mode_t omode);
int mkpathat_np(int dfd, const char *path, mode_t omode);
int mkstemp(char *);
int mkstemps(char *, int);
char *mktemp(char *);
int mkostemp(char *path, int oflags);
int mkostemps(char *path, int slen, int oflags);
int mkstemp_dprotected_np(char *path, int dpclass, int dpflags);
char *mkdtempat_np(int dfd, char *path);
int mkstempsat_np(int dfd, char *path, int slen);
int mkostempsat_np(int dfd, char *path, int slen, int oflags);
int nfssvc(int, void *);
int profil(char *, size_t, unsigned long, unsigned int);
__attribute__((__deprecated__)) int pthread_setugid_np(uid_t, gid_t);
int pthread_getugid_np( uid_t *, gid_t *);
int reboot(int);
int revoke(const char *);
__attribute__((__deprecated__)) int rcmd(char **, int, const char *, const char *, const char *, int *);
__attribute__((__deprecated__)) int rcmd_af(char **, int, const char *, const char *, const char *, int *, int);
__attribute__((__deprecated__)) int rresvport(int *);
__attribute__((__deprecated__)) int rresvport_af(int *, int);
__attribute__((__deprecated__)) int iruserok(unsigned long, int, const char *, const char *);
__attribute__((__deprecated__)) int iruserok_sa(const void *, int, int, const char *, const char *);
__attribute__((__deprecated__)) int ruserok(const char *, int, const char *, const char *);
int setdomainname(const char *, int);
int setgroups(int, const gid_t *);
void sethostid(long);
int sethostname(const char *, int);
void setkey(const char *);
int setlogin(const char *);
void *setmode(const char *);
int setrgid(gid_t);
int setruid(uid_t);
int setsgroups_np(int, const uuid_t);
void setusershell(void);
int setwgroups_np(int, const uuid_t);
int strtofflags(char **, unsigned long *, unsigned long *);
int swapon(const char *);
int ttyslot(void);
int undelete(const char *);
int unwhiteout(const char *);
void *valloc(size_t);
int syscall(int, ...);
extern char *suboptarg;
int getsubopt(char **, char * const *, char **);
int fgetattrlist(int,void*,void*,size_t,unsigned int);
int fsetattrlist(int,void*,void*,size_t,unsigned int);
int getattrlist(const char*,void*,void*,size_t,unsigned int);
int setattrlist(const char*,void*,void*,size_t,unsigned int);
int exchangedata(const char*,const char*,unsigned int);
int getdirentriesattr(int,void*,void*,size_t,unsigned int*,unsigned int*,unsigned int*,unsigned int);
struct fssearchblock;
struct searchstate;
int searchfs(const char *, struct fssearchblock *, unsigned long *, unsigned int, unsigned int, struct searchstate *);
int fsctl(const char *,unsigned long,void*,unsigned int);
int ffsctl(int,unsigned long,void*,unsigned int);
enum { SYNC_VOLUME_FULLSYNC = 1 };
enum { SYNC_VOLUME_WAIT = 2 };
int fsync_volume_np(int, int);
int sync_volume_np(const char *, int);
extern int optreset;
/* + END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h */
]]
return ffi.C
