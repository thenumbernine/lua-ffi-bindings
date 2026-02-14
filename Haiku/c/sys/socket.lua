local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/socket.h> /boot/system/develop/headers/posix/sys/socket.h */
/* ++ BEGIN <stdint.h> /boot/system/develop/headers/posix/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++ END <stdint.h> /boot/system/develop/headers/posix/stdint.h */
/* ++ BEGIN <sys/param.h> /boot/system/develop/headers/bsd/sys/param.h */
/* +++ BEGIN <sys/param.h> /boot/system/develop/headers/posix/sys/param.h */
/* ++++ BEGIN <limits.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* ++++ END <limits.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/limits.h */
/* +++ END <sys/param.h> /boot/system/develop/headers/posix/sys/param.h */
/* +++ BEGIN <features.h> /boot/system/develop/headers/bsd/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* +++ END <features.h> /boot/system/develop/headers/bsd/features.h */
/* ++ END <sys/param.h> /boot/system/develop/headers/bsd/sys/param.h */
/* ++ BEGIN <sys/types.h> ./Haiku/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> ./Haiku/sys/types.h */
/* ++ BEGIN <sys/uio.h> /boot/system/develop/headers/bsd/sys/uio.h */
/* +++ BEGIN <sys/uio.h> /boot/system/develop/headers/posix/sys/uio.h */
typedef struct iovec {
 void *iov_base;
 size_t iov_len;
} iovec;
ssize_t readv(int fd, const struct iovec *vector, int count);
ssize_t readv_pos(int fd, off_t pos, const struct iovec *vec, int count);
ssize_t writev(int fd, const struct iovec *vector, int count);
ssize_t writev_pos(int fd, off_t pos, const struct iovec *vec, int count);
/* +++ END <sys/uio.h> /boot/system/develop/headers/posix/sys/uio.h */
static __inline ssize_t
preadv(int fd, const struct iovec *vecs, int count, off_t pos)
{
 return readv_pos(fd, pos, vecs, count);
}
static __inline ssize_t
pwritev(int fd, const struct iovec *vecs, int count, off_t pos)
{
 return writev_pos(fd, pos, vecs, count);
}
/* ++ END <sys/uio.h> /boot/system/develop/headers/bsd/sys/uio.h */
typedef uint32_t socklen_t;
typedef uint8_t sa_family_t;
struct linger {
 int l_onoff;
 int l_linger;
};
struct sockaddr {
 uint8_t sa_len;
 sa_family_t sa_family;
 uint8_t sa_data[30];
};
struct sockaddr_storage {
 uint8_t ss_len;
 sa_family_t ss_family;
 uint8_t __ss_pad1[6];
 uint64_t __ss_pad2;
 uint8_t __ss_pad3[112];
};
struct msghdr {
 void *msg_name;
 socklen_t msg_namelen;
 struct iovec *msg_iov;
 int msg_iovlen;
 void *msg_control;
 socklen_t msg_controllen;
 int msg_flags;
};
struct cmsghdr {
 socklen_t cmsg_len;
 int cmsg_level;
 int cmsg_type;
};
struct ucred {
 pid_t pid;
 uid_t uid;
 gid_t gid;
};
int accept(int socket, struct sockaddr *address, socklen_t *_addressLength);
int accept4(int socket, struct sockaddr *address, socklen_t *_addressLength, int flags);
int bind(int socket, const struct sockaddr *address,
   socklen_t addressLength);
int connect(int socket, const struct sockaddr *address,
   socklen_t addressLength);
int getpeername(int socket, struct sockaddr *address,
   socklen_t *_addressLength);
int getsockname(int socket, struct sockaddr *address,
   socklen_t *_addressLength);
int getsockopt(int socket, int level, int option, void *value,
   socklen_t *_length);
int listen(int socket, int backlog);
ssize_t recv(int socket, void *buffer, size_t length, int flags);
ssize_t recvfrom(int socket, void *buffer, size_t bufferLength, int flags,
   struct sockaddr *address, socklen_t *_addressLength);
ssize_t recvmsg(int socket, struct msghdr *message, int flags);
ssize_t send(int socket, const void *buffer, size_t length, int flags);
ssize_t sendmsg(int socket, const struct msghdr *message, int flags);
ssize_t sendto(int socket, const void *message, size_t length, int flags,
   const struct sockaddr *address, socklen_t addressLength);
int setsockopt(int socket, int level, int option, const void *value,
   socklen_t length);
int shutdown(int socket, int how);
int socket(int domain, int type, int protocol);
int sockatmark(int descriptor);
int socketpair(int domain, int type, int protocol, int socketVector[2]);
enum { _SYS_SOCKET_H = 1 };
enum { _BSD_SYS_PARAM_H_ = 1 };
enum { _SYS_PARAM_H = 1 };
/* #define MAXHOSTNAMELEN (256) ### define is not number */
/* #define MAXPATHLEN (1024) ### define is not number */
/* #define MAXSYMLINKS (16) ### define is not number */
/* #define NOFILE (128) ### define is not number */
enum { DEV_BSIZE = 512 };
/* #define MIN (a,b) (((a) < (b)) ? (a) : (b)) ### define is not number */
/* #define MAX (a,b) (((a) > (b)) ? (a) : (b)) ### define is not number */
/* #define _ALIGNBYTES (sizeof(long) - 1) ### define is not number */
/* #define _ALIGN (p) (((u_long)(p) + _ALIGNBYTES) &~ _ALIGNBYTES) ### define is not number */
enum { MAXLOGNAME = 33 };
enum { NBBY = 8 };
/* #define ALIGNBYTES (sizeof(long) - 1) ### define is not number */
/* #define ALIGN (p) _ALIGN(p) ### define is not number */
/* #define howmany (x,y) (((x)+((y)-1))/(y)) ### define is not number */
/* #define nitems (x) (sizeof((x)) / sizeof((x)[0])) ### define is not number */
/* #define roundup (x,y) ((((x)+((y)-1))/(y))*(y)) ### define is not number */
/* #define rounddown (x,y) (((x)/(y))*(y)) ### define is not number */
/* #define powerof2 (x) ((((x)-1)&(x))==0) ### define is not number */
enum { _BSD_SYS_UIO_H_ = 1 };
enum { _SYS_UIO_H = 1 };
enum { AF_UNSPEC = 0 };
enum { AF_INET = 1 };
enum { AF_APPLETALK = 2 };
enum { AF_ROUTE = 3 };
enum { AF_LINK = 4 };
enum { AF_INET6 = 5 };
enum { AF_DLI = 6 };
enum { AF_IPX = 7 };
enum { AF_NOTIFY = 8 };
enum { AF_LOCAL = 9 };
enum { AF_UNIX = 9 };
enum { AF_BLUETOOTH = 10 };
enum { AF_MAX = 11 };
enum { PF_UNSPEC = 0 };
enum { PF_INET = 1 };
enum { PF_ROUTE = 3 };
enum { PF_LINK = 4 };
enum { PF_INET6 = 5 };
enum { PF_LOCAL = 9 };
enum { PF_UNIX = 9 };
enum { PF_BLUETOOTH = 10 };
enum { SOCK_STREAM = 1 };
enum { SOCK_DGRAM = 2 };
enum { SOCK_RAW = 3 };
enum { SOCK_SEQPACKET = 5 };
enum { SOCK_MISC = 255 };
enum { SOCK_NONBLOCK = 0x00040000 };
enum { SOCK_CLOEXEC = 0x00080000 };
enum { SOCK_CLOFORK = 0x00100000 };
enum { SOL_SOCKET = -1 };
enum { SO_ACCEPTCONN = 0x00000001 };
enum { SO_BROADCAST = 0x00000002 };
enum { SO_DEBUG = 0x00000004 };
enum { SO_DONTROUTE = 0x00000008 };
enum { SO_KEEPALIVE = 0x00000010 };
enum { SO_OOBINLINE = 0x00000020 };
enum { SO_REUSEADDR = 0x00000040 };
enum { SO_REUSEPORT = 0x00000080 };
enum { SO_USELOOPBACK = 0x00000100 };
enum { SO_LINGER = 0x00000200 };
enum { SO_SNDBUF = 0x40000001 };
enum { SO_SNDLOWAT = 0x40000002 };
enum { SO_SNDTIMEO = 0x40000003 };
enum { SO_RCVBUF = 0x40000004 };
enum { SO_RCVLOWAT = 0x40000005 };
enum { SO_RCVTIMEO = 0x40000006 };
enum { SO_ERROR = 0x40000007 };
enum { SO_TYPE = 0x40000008 };
enum { SO_NONBLOCK = 0x40000009 };
enum { SO_BINDTODEVICE = 0x4000000a };
enum { SO_PEERCRED = 0x4000000b };
enum { SHUT_RD = 0 };
enum { SHUT_WR = 1 };
enum { SHUT_RDWR = 2 };
enum { SOMAXCONN = 32 };
enum { MSG_OOB = 0x0001 };
enum { MSG_PEEK = 0x0002 };
enum { MSG_DONTROUTE = 0x0004 };
enum { MSG_EOR = 0x0008 };
enum { MSG_TRUNC = 0x0010 };
enum { MSG_CTRUNC = 0x0020 };
enum { MSG_WAITALL = 0x0040 };
enum { MSG_DONTWAIT = 0x0080 };
enum { MSG_BCAST = 0x0100 };
enum { MSG_MCAST = 0x0200 };
enum { MSG_EOF = 0x0400 };
enum { MSG_NOSIGNAL = 0x0800 };
enum { MSG_CMSG_CLOEXEC = 0x1000 };
enum { MSG_CMSG_CLOFORK = 0x2000 };
/* #define CMSG_DATA (cmsg) ((unsigned char *)(cmsg) + _ALIGN(sizeof(struct cmsghdr))) ### define is not number */
/* #define CMSG_NXTHDR (mhdr,cmsg) (((char *)(cmsg) + _ALIGN((cmsg)->cmsg_len) + _ALIGN(sizeof(struct cmsghdr)) > (char *)(mhdr)->msg_control + (mhdr)->msg_controllen) ? (struct cmsghdr *)NULL : (struct cmsghdr *)((char *)(cmsg) + _ALIGN((cmsg)->cmsg_len))) ### define is not number */
/* #define CMSG_FIRSTHDR (mhdr) ((mhdr)->msg_controllen >= sizeof(struct cmsghdr) ? (struct cmsghdr *)(mhdr)->msg_control : (struct cmsghdr *)NULL) ### define is not number */
/* #define CMSG_SPACE (len) (_ALIGN(sizeof(struct cmsghdr)) + _ALIGN(len)) ### define is not number */
/* #define CMSG_LEN (len) (_ALIGN(sizeof(struct cmsghdr)) + (len)) ### define is not number */
/* #define CMSG_ALIGN (len) _ALIGN(len) ### define is not number */
enum { SCM_RIGHTS = 0x01 };
/* + END <sys/socket.h> /boot/system/develop/headers/posix/sys/socket.h */
]]
