local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <unistd.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/unistd.h */
/* ++ BEGIN <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* ++ END <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
/* ++ BEGIN <sys/unistd.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/unistd.h */
/* +++ BEGIN <sys/_types/_posix_vdisable.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_posix_vdisable.h */
/* +++ END <sys/_types/_posix_vdisable.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_posix_vdisable.h */
/* +++ BEGIN <sys/_types/_seek_set.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_seek_set.h */
/* +++ END <sys/_types/_seek_set.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_seek_set.h */
struct accessx_descriptor {
 unsigned int ad_name_offset;
 int ad_flags;
 int ad_pad[2];
};
/* +++ BEGIN <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
]] require 'ffi.req' 'c.sys._types._size_t' ffi.cdef[[
/* +++ END <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++ BEGIN <sys/_types/_ssize_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h */
]] require 'ffi.req' 'c.sys._types._ssize_t' ffi.cdef[[
/* +++ END <sys/_types/_ssize_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h */
/* +++ BEGIN <_types/_uint64_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h */
]] require 'ffi.req' 'c._types._uint64_t' ffi.cdef[[
/* +++ END <_types/_uint64_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h */
/* +++ BEGIN <_types/_uint32_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h */
]] require 'ffi.req' 'c._types._uint32_t' ffi.cdef[[
/* +++ END <_types/_uint32_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h */
/* +++ BEGIN <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++ END <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
int getattrlistbulk(int, void *, void *, size_t, uint64_t) __attribute__((availability(macosx,introduced=10.10)));
int getattrlistat(int, const char *, void *, void *, size_t, unsigned long) __attribute__((availability(macosx,introduced=10.10)));
int setattrlistat(int, const char *, void *, void *, size_t, uint32_t) __attribute__((availability(macosx,introduced=10.13))) __attribute__((availability(ios,introduced=11.0))) __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
ssize_t freadlink(int, char * restrict, size_t) __attribute__((availability(macos,introduced=13.0))) __attribute__((availability(ios,introduced=16.0))) __attribute__((availability(tvos,introduced=16.0))) __attribute__((availability(watchos,introduced=9.0)));
/* +++ BEGIN <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
]] require 'ffi.req' 'c.sys._types._size_t' ffi.cdef[[
/* +++ END <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++ BEGIN <sys/_types/_uid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h */
]] require 'ffi.req' 'c.sys._types._uid_t' ffi.cdef[[
/* +++ END <sys/_types/_uid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h */
/* +++ BEGIN <sys/_types/_gid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h */
]] require 'ffi.req' 'c.sys._types._gid_t' ffi.cdef[[
/* +++ END <sys/_types/_gid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h */
int faccessat(int, const char *, int, int) __attribute__((availability(macosx,introduced=10.10)));
int fchownat(int, const char *, uid_t, gid_t, int) __attribute__((availability(macosx,introduced=10.10)));
int linkat(int, const char *, int, const char *, int) __attribute__((availability(macosx,introduced=10.10)));
ssize_t readlinkat(int, const char *, char *, size_t) __attribute__((availability(macosx,introduced=10.10)));
int symlinkat(const char *, int, const char *) __attribute__((availability(macosx,introduced=10.10)));
int unlinkat(int, const char *, int) __attribute__((availability(macosx,introduced=10.10)));
/* ++ END <sys/unistd.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/unistd.h */
/* ++ BEGIN <sys/_types/_off_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h */
]] require 'ffi.req' 'c.sys._types._off_t' ffi.cdef[[
/* ++ END <sys/_types/_off_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h */
/* ++ BEGIN <sys/_types/_pid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
]] require 'ffi.req' 'c.sys._types._pid_t' ffi.cdef[[
/* ++ END <sys/_types/_pid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
/* ++ BEGIN <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
]] require 'ffi.req' 'c.sys._types._size_t' ffi.cdef[[
/* ++ END <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* ++ BEGIN <sys/_types/_useconds_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_useconds_t.h */
]] require 'ffi.req' 'c.sys._types._useconds_t' ffi.cdef[[
/* ++ END <sys/_types/_useconds_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_useconds_t.h */
/* ++ BEGIN <sys/_types/_null.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
/* ++ END <sys/_types/_null.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
void _exit(int) __attribute__((__noreturn__));
int access(const char *, int);
unsigned int
  alarm(unsigned int);
int chdir(const char *);
int chown(const char *, uid_t, gid_t);
int close(int) __asm("_" "close" );
int dup(int);
int dup2(int, int);
int execl(const char * __path, const char * __arg0, ...) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execle(const char * __path, const char * __arg0, ...) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execlp(const char * __file, const char * __arg0, ...) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execv(const char * __path, char * const * __argv) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execve(const char * __file, char * const * __argv, char * const * __envp) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execvp(const char * __file, char * const * __argv) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
pid_t fork(void) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
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
int pause(void) __asm("_" "pause" );
int pipe(int [2]);
ssize_t read(int, void *, size_t) __asm("_" "read" );
int rmdir(const char *);
int setgid(gid_t);
int setpgid(pid_t, pid_t);
pid_t setsid(void);
int setuid(uid_t);
unsigned int
  sleep(unsigned int) __asm("_" "sleep" );
long sysconf(int);
pid_t tcgetpgrp(int);
int tcsetpgrp(int, pid_t);
char *ttyname(int);
int ttyname_r(int, char *, size_t) __asm("_" "ttyname_r" );
int unlink(const char *);
ssize_t write(int __fd, const void * __buf, size_t __nbyte) __asm("_" "write" );
size_t confstr(int, char *, size_t) __asm("_" "confstr" );
int getopt(int, char * const [], const char *) __asm("_" "getopt" );
extern char *optarg;
extern int optind, opterr, optopt;
/* ++ BEGIN <_ctermid.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_ctermid.h */
]] require 'ffi.req' 'c._ctermid' ffi.cdef[[
/* ++ END <_ctermid.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_ctermid.h */
__attribute__((__deprecated__)) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)))
void *brk(const void *);
int chroot(const char *) ;
char *crypt(const char *, const char *);
void encrypt(char *, int) __asm("_" "encrypt" );
int fchdir(int);
long gethostid(void);
pid_t getpgid(pid_t);
pid_t getsid(pid_t);
int getdtablesize(void) ;
int getpagesize(void) __attribute__((__const__)) ;
char *getpass(const char *) ;
char *getwd(char *) ;
int lchown(const char *, uid_t, gid_t) __asm("_" "lchown" );
int lockf(int, int, off_t) __asm("_" "lockf" );
int nice(int) __asm("_" "nice" );
ssize_t pread(int __fd, void * __buf, size_t __nbyte, off_t __offset) __asm("_" "pread" );
ssize_t pwrite(int __fd, const void * __buf, size_t __nbyte, off_t __offset) __asm("_" "pwrite" );
__attribute__((__deprecated__)) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)))
void *sbrk(int);
pid_t setpgrp(void) __asm("_" "setpgrp" );
int setregid(gid_t, gid_t) __asm("_" "setregid" );
int setreuid(uid_t, uid_t) __asm("_" "setreuid" );
void swab(const void * restrict, void * restrict, ssize_t);
void sync(void);
int truncate(const char *, off_t);
useconds_t ualarm(useconds_t, useconds_t);
int usleep(useconds_t) __asm("_" "usleep" );
__attribute__((__deprecated__("Use posix_spawn or fork")))
pid_t vfork(void) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int fsync(int) __asm("_" "fsync" );
int ftruncate(int, off_t);
int getlogin_r(char *, size_t);
int fchown(int, uid_t, gid_t);
int gethostname(char *, size_t);
ssize_t readlink(const char * restrict, char * restrict, size_t);
int setegid(gid_t);
int seteuid(uid_t);
int symlink(const char *, const char *);
/* ++ BEGIN <sys/select.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/select.h */
]] require 'ffi.req' 'c.sys.select' ffi.cdef[[
/* ++ END <sys/select.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/select.h */
/* ++ BEGIN <sys/_types/_dev_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h */
]] require 'ffi.req' 'c.sys._types._dev_t' ffi.cdef[[
/* ++ END <sys/_types/_dev_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h */
/* ++ BEGIN <sys/_types/_mode_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
]] require 'ffi.req' 'c.sys._types._mode_t' ffi.cdef[[
/* ++ END <sys/_types/_mode_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h */
/* ++ BEGIN <sys/_types/_uuid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uuid_t.h */
typedef __darwin_uuid_t uuid_t;
/* ++ END <sys/_types/_uuid_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uuid_t.h */
void _Exit(int) __attribute__((__noreturn__));
int accessx_np(const struct accessx_descriptor *, size_t, int *, uid_t);
int acct(const char *);
int add_profil(char *, size_t, unsigned long, unsigned int) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
void endusershell(void);
int execvP(const char * __file, const char * __searchpath, char * const * __argv) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
char *fflagstostr(unsigned long);
int getdomainname(char *, int);
int getgrouplist(const char *, int, int *, int *);
/* ++ BEGIN <gethostuuid.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/gethostuuid.h */
int gethostuuid(uuid_t, const struct timespec *) __attribute__((availability(macos,introduced=10.5))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)));
/* ++ END <gethostuuid.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/gethostuuid.h */
mode_t getmode(const void *, mode_t);
int getpeereid(int, uid_t *, gid_t *);
int getsgroups_np(int *, uuid_t);
char *getusershell(void);
int getwgroups_np(int *, uuid_t);
int initgroups(const char *, int);
int issetugid(void);
char *mkdtemp(char *);
int mknod(const char *, mode_t, dev_t);
int mkpath_np(const char *path, mode_t omode) __attribute__((availability(macosx,introduced=10.8)));
int mkpathat_np(int dfd, const char *path, mode_t omode)
  __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0)))
  __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)));
int mkstemp(char *);
int mkstemps(char *, int);
char *mktemp(char *);
int mkostemp(char *path, int oflags)
  __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0)))
  __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)));
int mkostemps(char *path, int slen, int oflags)
  __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0)))
  __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)));
int mkstemp_dprotected_np(char *path, int dpclass, int dpflags)
  __attribute__((availability(macosx,unavailable))) __attribute__((availability(ios,introduced=10.0)))
  __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)));
char *mkdtempat_np(int dfd, char *path)
  __attribute__((availability(macosx,introduced=10.13))) __attribute__((availability(ios,introduced=11.0)))
  __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
int mkstempsat_np(int dfd, char *path, int slen)
  __attribute__((availability(macosx,introduced=10.13))) __attribute__((availability(ios,introduced=11.0)))
  __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
int mkostempsat_np(int dfd, char *path, int slen, int oflags)
  __attribute__((availability(macosx,introduced=10.13))) __attribute__((availability(ios,introduced=11.0)))
  __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
int nfssvc(int, void *);
int profil(char *, size_t, unsigned long, unsigned int);
__attribute__((__deprecated__("Use of per-thread security contexts is error-prone and discouraged.")))
int pthread_setugid_np(uid_t, gid_t);
int pthread_getugid_np( uid_t *, gid_t *);
int reboot(int);
int revoke(const char *);
__attribute__((__deprecated__)) int rcmd(char **, int, const char *, const char *, const char *, int *);
__attribute__((__deprecated__)) int rcmd_af(char **, int, const char *, const char *, const char *, int *,
  int);
__attribute__((__deprecated__)) int rresvport(int *);
__attribute__((__deprecated__)) int rresvport_af(int *, int);
__attribute__((__deprecated__)) int iruserok(unsigned long, int, const char *, const char *);
__attribute__((__deprecated__)) int iruserok_sa(const void *, int, int, const char *, const char *);
__attribute__((__deprecated__)) int ruserok(const char *, int, const char *, const char *);
int setdomainname(const char *, int);
int setgroups(int, const gid_t *);
void sethostid(long);
int sethostname(const char *, int);
void setkey(const char *) __asm("_" "setkey" );
int setlogin(const char *);
void *setmode(const char *) __asm("_" "setmode" );
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
__attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)))
__attribute__((availability(ios,deprecated=10.0,message="syscall(2) is unsupported; " "please switch to a supported interface. For SYS_kdebug_trace use kdebug_signpost().")))
__attribute__((availability(macosx,deprecated=10.12,message="syscall(2) is unsupported; " "please switch to a supported interface. For SYS_kdebug_trace use kdebug_signpost().")))
int syscall(int, ...);
extern char *suboptarg;
int getsubopt(char **, char * const *, char **);
int fgetattrlist(int,void*,void*,size_t,unsigned int) __attribute__((availability(macosx,introduced=10.6)));
int fsetattrlist(int,void*,void*,size_t,unsigned int) __attribute__((availability(macosx,introduced=10.6)));
int getattrlist(const char*,void*,void*,size_t,unsigned int) __asm("_" "getattrlist" );
int setattrlist(const char*,void*,void*,size_t,unsigned int) __asm("_" "setattrlist" );
int exchangedata(const char*,const char*,unsigned int) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int getdirentriesattr(int,void*,void*,size_t,unsigned int*,unsigned int*,unsigned int*,unsigned int) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
struct fssearchblock;
struct searchstate;
int searchfs(const char *, struct fssearchblock *, unsigned long *, unsigned int, unsigned int, struct searchstate *) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int fsctl(const char *,unsigned long,void*,unsigned int);
int ffsctl(int,unsigned long,void*,unsigned int) __attribute__((availability(macosx,introduced=10.6)));
int fsync_volume_np(int, int) __attribute__((availability(macosx,introduced=10.8)));
int sync_volume_np(const char *, int) __attribute__((availability(macosx,introduced=10.8)));
extern int optreset;
/* + END <unistd.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/unistd.h */
enum { _UNISTD_H_ = 1 };
enum { STDIN_FILENO = 0 };
enum { STDOUT_FILENO = 1 };
enum { STDERR_FILENO = 2 };
enum { _XOPEN_VERSION = 600 };
enum { _XOPEN_XCU_VERSION = 4 };
/* #define _POSIX_ADVISORY_INFO (-1) ### define is not number */
/* #define _POSIX_ASYNCHRONOUS_IO (-1) ### define is not number */
/* #define _POSIX_BARRIERS (-1) ### define is not number */
enum { _POSIX_CHOWN_RESTRICTED = 200112 };
/* #define _POSIX_CLOCK_SELECTION (-1) ### define is not number */
/* #define _POSIX_CPUTIME (-1) ### define is not number */
enum { _POSIX_FSYNC = 200112 };
enum { _POSIX_IPV6 = 200112 };
enum { _POSIX_JOB_CONTROL = 200112 };
enum { _POSIX_MAPPED_FILES = 200112 };
/* #define _POSIX_MEMLOCK (-1) ### define is not number */
/* #define _POSIX_MEMLOCK_RANGE (-1) ### define is not number */
enum { _POSIX_MEMORY_PROTECTION = 200112 };
/* #define _POSIX_MESSAGE_PASSING (-1) ### define is not number */
/* #define _POSIX_MONOTONIC_CLOCK (-1) ### define is not number */
enum { _POSIX_NO_TRUNC = 200112 };
/* #define _POSIX_PRIORITIZED_IO (-1) ### define is not number */
/* #define _POSIX_PRIORITY_SCHEDULING (-1) ### define is not number */
/* #define _POSIX_RAW_SOCKETS (-1) ### define is not number */
enum { _POSIX_READER_WRITER_LOCKS = 200112 };
/* #define _POSIX_REALTIME_SIGNALS (-1) ### define is not number */
enum { _POSIX_REGEXP = 200112 };
enum { _POSIX_SAVED_IDS = 200112 };
/* #define _POSIX_SEMAPHORES (-1) ### define is not number */
/* #define _POSIX_SHARED_MEMORY_OBJECTS (-1) ### define is not number */
enum { _POSIX_SHELL = 200112 };
enum { _POSIX_SPAWN = 200112 };
/* #define _POSIX_SPIN_LOCKS (-1) ### define is not number */
/* #define _POSIX_SPORADIC_SERVER (-1) ### define is not number */
/* #define _POSIX_SYNCHRONIZED_IO (-1) ### define is not number */
enum { _POSIX_THREAD_ATTR_STACKADDR = 200112 };
enum { _POSIX_THREAD_ATTR_STACKSIZE = 200112 };
/* #define _POSIX_THREAD_CPUTIME (-1) ### define is not number */
/* #define _POSIX_THREAD_PRIO_INHERIT (-1) ### define is not number */
/* #define _POSIX_THREAD_PRIO_PROTECT (-1) ### define is not number */
/* #define _POSIX_THREAD_PRIORITY_SCHEDULING (-1) ### define is not number */
enum { _POSIX_THREAD_PROCESS_SHARED = 200112 };
enum { _POSIX_THREAD_SAFE_FUNCTIONS = 200112 };
/* #define _POSIX_THREAD_SPORADIC_SERVER (-1) ### define is not number */
enum { _POSIX_THREADS = 200112 };
/* #define _POSIX_TIMEOUTS (-1) ### define is not number */
/* #define _POSIX_TIMERS (-1) ### define is not number */
/* #define _POSIX_TRACE (-1) ### define is not number */
/* #define _POSIX_TRACE_EVENT_FILTER (-1) ### define is not number */
/* #define _POSIX_TRACE_INHERIT (-1) ### define is not number */
/* #define _POSIX_TRACE_LOG (-1) ### define is not number */
/* #define _POSIX_TYPED_MEMORY_OBJECTS (-1) ### define is not number */
enum { _POSIX2_C_BIND = 200112 };
enum { _POSIX2_C_DEV = 200112 };
enum { _POSIX2_CHAR_TERM = 200112 };
/* #define _POSIX2_FORT_DEV (-1) ### define is not number */
enum { _POSIX2_FORT_RUN = 200112 };
enum { _POSIX2_LOCALEDEF = 200112 };
/* #define _POSIX2_PBS (-1) ### define is not number */
/* #define _POSIX2_PBS_ACCOUNTING (-1) ### define is not number */
/* #define _POSIX2_PBS_CHECKPOINT (-1) ### define is not number */
/* #define _POSIX2_PBS_LOCATE (-1) ### define is not number */
/* #define _POSIX2_PBS_MESSAGE (-1) ### define is not number */
/* #define _POSIX2_PBS_TRACK (-1) ### define is not number */
enum { _POSIX2_SW_DEV = 200112 };
enum { _POSIX2_UPE = 200112 };
/* #define __ILP32_OFF32 (-1) ### define is not number */
/* #define __ILP32_OFFBIG (-1) ### define is not number */
/* #define __LP64_OFF64 (1) ### define is not number */
/* #define __LPBIG_OFFBIG (1) ### define is not number */
/* #define _POSIX_V6_ILP32_OFF32 __ILP32_OFF32 ### define is not number */
/* #define _POSIX_V6_ILP32_OFFBIG __ILP32_OFFBIG ### define is not number */
/* #define _POSIX_V6_LP64_OFF64 __LP64_OFF64 ### define is not number */
/* #define _POSIX_V6_LPBIG_OFFBIG __LPBIG_OFFBIG ### define is not number */
/* #define _POSIX_V7_ILP32_OFF32 __ILP32_OFF32 ### define is not number */
/* #define _POSIX_V7_ILP32_OFFBIG __ILP32_OFFBIG ### define is not number */
/* #define _POSIX_V7_LP64_OFF64 __LP64_OFF64 ### define is not number */
/* #define _POSIX_V7_LPBIG_OFFBIG __LPBIG_OFFBIG ### define is not number */
/* #define _V6_ILP32_OFF32 __ILP32_OFF32 ### define is not number */
/* #define _V6_ILP32_OFFBIG __ILP32_OFFBIG ### define is not number */
/* #define _V6_LP64_OFF64 __LP64_OFF64 ### define is not number */
/* #define _V6_LPBIG_OFFBIG __LPBIG_OFFBIG ### define is not number */
/* #define _XBS5_ILP32_OFF32 __ILP32_OFF32 ### define is not number */
/* #define _XBS5_ILP32_OFFBIG __ILP32_OFFBIG ### define is not number */
/* #define _XBS5_LP64_OFF64 __LP64_OFF64 ### define is not number */
/* #define _XBS5_LPBIG_OFFBIG __LPBIG_OFFBIG ### define is not number */
/* #define _XOPEN_CRYPT (1) ### define is not number */
/* #define _XOPEN_ENH_I18N (1) ### define is not number */
/* #define _XOPEN_LEGACY (-1) ### define is not number */
/* #define _XOPEN_REALTIME (-1) ### define is not number */
/* #define _XOPEN_REALTIME_THREADS (-1) ### define is not number */
/* #define _XOPEN_SHM (1) ### define is not number */
/* #define _XOPEN_STREAMS (-1) ### define is not number */
/* #define _XOPEN_UNIX (1) ### define is not number */
enum { _SC_ARG_MAX = 1 };
enum { _SC_CHILD_MAX = 2 };
enum { _SC_CLK_TCK = 3 };
enum { _SC_NGROUPS_MAX = 4 };
enum { _SC_OPEN_MAX = 5 };
enum { _SC_JOB_CONTROL = 6 };
enum { _SC_SAVED_IDS = 7 };
enum { _SC_VERSION = 8 };
enum { _SC_BC_BASE_MAX = 9 };
enum { _SC_BC_DIM_MAX = 10 };
enum { _SC_BC_SCALE_MAX = 11 };
enum { _SC_BC_STRING_MAX = 12 };
enum { _SC_COLL_WEIGHTS_MAX = 13 };
enum { _SC_EXPR_NEST_MAX = 14 };
enum { _SC_LINE_MAX = 15 };
enum { _SC_RE_DUP_MAX = 16 };
enum { _SC_2_VERSION = 17 };
enum { _SC_2_C_BIND = 18 };
enum { _SC_2_C_DEV = 19 };
enum { _SC_2_CHAR_TERM = 20 };
enum { _SC_2_FORT_DEV = 21 };
enum { _SC_2_FORT_RUN = 22 };
enum { _SC_2_LOCALEDEF = 23 };
enum { _SC_2_SW_DEV = 24 };
enum { _SC_2_UPE = 25 };
enum { _SC_STREAM_MAX = 26 };
enum { _SC_TZNAME_MAX = 27 };
enum { _SC_ASYNCHRONOUS_IO = 28 };
enum { _SC_PAGESIZE = 29 };
enum { _SC_MEMLOCK = 30 };
enum { _SC_MEMLOCK_RANGE = 31 };
enum { _SC_MEMORY_PROTECTION = 32 };
enum { _SC_MESSAGE_PASSING = 33 };
enum { _SC_PRIORITIZED_IO = 34 };
enum { _SC_PRIORITY_SCHEDULING = 35 };
enum { _SC_REALTIME_SIGNALS = 36 };
enum { _SC_SEMAPHORES = 37 };
enum { _SC_FSYNC = 38 };
enum { _SC_SHARED_MEMORY_OBJECTS = 39 };
enum { _SC_SYNCHRONIZED_IO = 40 };
enum { _SC_TIMERS = 41 };
enum { _SC_AIO_LISTIO_MAX = 42 };
enum { _SC_AIO_MAX = 43 };
enum { _SC_AIO_PRIO_DELTA_MAX = 44 };
enum { _SC_DELAYTIMER_MAX = 45 };
enum { _SC_MQ_OPEN_MAX = 46 };
enum { _SC_MAPPED_FILES = 47 };
enum { _SC_RTSIG_MAX = 48 };
enum { _SC_SEM_NSEMS_MAX = 49 };
enum { _SC_SEM_VALUE_MAX = 50 };
enum { _SC_SIGQUEUE_MAX = 51 };
enum { _SC_TIMER_MAX = 52 };
enum { _SC_NPROCESSORS_CONF = 57 };
enum { _SC_NPROCESSORS_ONLN = 58 };
enum { _SC_2_PBS = 59 };
enum { _SC_2_PBS_ACCOUNTING = 60 };
enum { _SC_2_PBS_CHECKPOINT = 61 };
enum { _SC_2_PBS_LOCATE = 62 };
enum { _SC_2_PBS_MESSAGE = 63 };
enum { _SC_2_PBS_TRACK = 64 };
enum { _SC_ADVISORY_INFO = 65 };
enum { _SC_BARRIERS = 66 };
enum { _SC_CLOCK_SELECTION = 67 };
enum { _SC_CPUTIME = 68 };
enum { _SC_FILE_LOCKING = 69 };
enum { _SC_GETGR_R_SIZE_MAX = 70 };
enum { _SC_GETPW_R_SIZE_MAX = 71 };
enum { _SC_HOST_NAME_MAX = 72 };
enum { _SC_LOGIN_NAME_MAX = 73 };
enum { _SC_MONOTONIC_CLOCK = 74 };
enum { _SC_MQ_PRIO_MAX = 75 };
enum { _SC_READER_WRITER_LOCKS = 76 };
enum { _SC_REGEXP = 77 };
enum { _SC_SHELL = 78 };
enum { _SC_SPAWN = 79 };
enum { _SC_SPIN_LOCKS = 80 };
enum { _SC_SPORADIC_SERVER = 81 };
enum { _SC_THREAD_ATTR_STACKADDR = 82 };
enum { _SC_THREAD_ATTR_STACKSIZE = 83 };
enum { _SC_THREAD_CPUTIME = 84 };
enum { _SC_THREAD_DESTRUCTOR_ITERATIONS = 85 };
enum { _SC_THREAD_KEYS_MAX = 86 };
enum { _SC_THREAD_PRIO_INHERIT = 87 };
enum { _SC_THREAD_PRIO_PROTECT = 88 };
enum { _SC_THREAD_PRIORITY_SCHEDULING = 89 };
enum { _SC_THREAD_PROCESS_SHARED = 90 };
enum { _SC_THREAD_SAFE_FUNCTIONS = 91 };
enum { _SC_THREAD_SPORADIC_SERVER = 92 };
enum { _SC_THREAD_STACK_MIN = 93 };
enum { _SC_THREAD_THREADS_MAX = 94 };
enum { _SC_TIMEOUTS = 95 };
enum { _SC_THREADS = 96 };
enum { _SC_TRACE = 97 };
enum { _SC_TRACE_EVENT_FILTER = 98 };
enum { _SC_TRACE_INHERIT = 99 };
enum { _SC_TRACE_LOG = 100 };
enum { _SC_TTY_NAME_MAX = 101 };
enum { _SC_TYPED_MEMORY_OBJECTS = 102 };
enum { _SC_V6_ILP32_OFF32 = 103 };
enum { _SC_V6_ILP32_OFFBIG = 104 };
enum { _SC_V6_LP64_OFF64 = 105 };
enum { _SC_V6_LPBIG_OFFBIG = 106 };
enum { _SC_IPV6 = 118 };
enum { _SC_RAW_SOCKETS = 119 };
enum { _SC_SYMLOOP_MAX = 120 };
enum { _SC_ATEXIT_MAX = 107 };
enum { _SC_IOV_MAX = 56 };
/* #define _SC_PAGE_SIZE _SC_PAGESIZE ### define is not number */
enum { _SC_XOPEN_CRYPT = 108 };
enum { _SC_XOPEN_ENH_I18N = 109 };
enum { _SC_XOPEN_LEGACY = 110 };
enum { _SC_XOPEN_REALTIME = 111 };
enum { _SC_XOPEN_REALTIME_THREADS = 112 };
enum { _SC_XOPEN_SHM = 113 };
enum { _SC_XOPEN_STREAMS = 114 };
enum { _SC_XOPEN_UNIX = 115 };
enum { _SC_XOPEN_VERSION = 116 };
enum { _SC_XOPEN_XCU_VERSION = 121 };
enum { _SC_XBS5_ILP32_OFF32 = 122 };
enum { _SC_XBS5_ILP32_OFFBIG = 123 };
enum { _SC_XBS5_LP64_OFF64 = 124 };
enum { _SC_XBS5_LPBIG_OFFBIG = 125 };
enum { _SC_SS_REPL_MAX = 126 };
enum { _SC_TRACE_EVENT_NAME_MAX = 127 };
enum { _SC_TRACE_NAME_MAX = 128 };
enum { _SC_TRACE_SYS_MAX = 129 };
enum { _SC_TRACE_USER_EVENT_MAX = 130 };
enum { _SC_PASS_MAX = 131 };
enum { _SC_PHYS_PAGES = 200 };
enum { _CS_POSIX_V6_ILP32_OFF32_CFLAGS = 2 };
enum { _CS_POSIX_V6_ILP32_OFF32_LDFLAGS = 3 };
enum { _CS_POSIX_V6_ILP32_OFF32_LIBS = 4 };
enum { _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS = 5 };
enum { _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS = 6 };
enum { _CS_POSIX_V6_ILP32_OFFBIG_LIBS = 7 };
enum { _CS_POSIX_V6_LP64_OFF64_CFLAGS = 8 };
enum { _CS_POSIX_V6_LP64_OFF64_LDFLAGS = 9 };
enum { _CS_POSIX_V6_LP64_OFF64_LIBS = 10 };
enum { _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS = 11 };
enum { _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS = 12 };
enum { _CS_POSIX_V6_LPBIG_OFFBIG_LIBS = 13 };
enum { _CS_POSIX_V6_WIDTH_RESTRICTED_ENVS = 14 };
enum { _CS_XBS5_ILP32_OFF32_CFLAGS = 20 };
enum { _CS_XBS5_ILP32_OFF32_LDFLAGS = 21 };
enum { _CS_XBS5_ILP32_OFF32_LIBS = 22 };
enum { _CS_XBS5_ILP32_OFF32_LINTFLAGS = 23 };
enum { _CS_XBS5_ILP32_OFFBIG_CFLAGS = 24 };
enum { _CS_XBS5_ILP32_OFFBIG_LDFLAGS = 25 };
enum { _CS_XBS5_ILP32_OFFBIG_LIBS = 26 };
enum { _CS_XBS5_ILP32_OFFBIG_LINTFLAGS = 27 };
enum { _CS_XBS5_LP64_OFF64_CFLAGS = 28 };
enum { _CS_XBS5_LP64_OFF64_LDFLAGS = 29 };
enum { _CS_XBS5_LP64_OFF64_LIBS = 30 };
enum { _CS_XBS5_LP64_OFF64_LINTFLAGS = 31 };
enum { _CS_XBS5_LPBIG_OFFBIG_CFLAGS = 32 };
enum { _CS_XBS5_LPBIG_OFFBIG_LDFLAGS = 33 };
enum { _CS_XBS5_LPBIG_OFFBIG_LIBS = 34 };
enum { _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS = 35 };
enum { _CS_DARWIN_USER_DIR = 65536 };
enum { _CS_DARWIN_USER_TEMP_DIR = 65537 };
enum { _CS_DARWIN_USER_CACHE_DIR = 65538 };
enum { F_ULOCK = 0 };
enum { F_LOCK = 1 };
enum { F_TLOCK = 2 };
enum { F_TEST = 3 };
enum { SYNC_VOLUME_FULLSYNC = 0x01 };
enum { SYNC_VOLUME_WAIT = 0x02 };
]]
return ffi.C
