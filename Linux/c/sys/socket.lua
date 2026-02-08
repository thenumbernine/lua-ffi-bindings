local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/socket.h> /usr/include/x86_64-linux-gnu/sys/socket.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <bits/types/struct_iovec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h */
/* +++ BEGIN <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
struct iovec
  {
    void *iov_base;
    size_t iov_len;
  };
/* ++ END <bits/types/struct_iovec.h> /usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h */
/* ++ BEGIN <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
/* ++ BEGIN <bits/socket.h> /usr/include/x86_64-linux-gnu/bits/socket.h */
/* +++ BEGIN <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
/* +++ BEGIN <sys/types.h> /usr/include/x86_64-linux-gnu/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++ END <sys/types.h> /usr/include/x86_64-linux-gnu/sys/types.h */
typedef __socklen_t socklen_t;
/* +++ BEGIN <bits/socket_type.h> /usr/include/x86_64-linux-gnu/bits/socket_type.h */
enum __socket_type
{
  SOCK_STREAM = 1,
  SOCK_DGRAM = 2,
  SOCK_RAW = 3,
  SOCK_RDM = 4,
  SOCK_SEQPACKET = 5,
  SOCK_DCCP = 6,
  SOCK_PACKET = 10,
  SOCK_CLOEXEC = 02000000,
  SOCK_NONBLOCK = 00004000
};
/* +++ END <bits/socket_type.h> /usr/include/x86_64-linux-gnu/bits/socket_type.h */
/* +++ BEGIN <bits/sockaddr.h> /usr/include/x86_64-linux-gnu/bits/sockaddr.h */
typedef unsigned short int sa_family_t;
/* +++ END <bits/sockaddr.h> /usr/include/x86_64-linux-gnu/bits/sockaddr.h */
struct __attribute__ ((__may_alias__)) sockaddr
  {
    sa_family_t sa_family;
    char sa_data[14];
  };
struct __attribute__ ((__may_alias__)) sockaddr_storage
  {
    sa_family_t ss_family;
    char __ss_padding[(128 - (sizeof (unsigned short int)) - sizeof (unsigned long int))];
    unsigned long int __ss_align;
  };
enum
  {
    MSG_OOB = 0x01,
    MSG_PEEK = 0x02,
    MSG_DONTROUTE = 0x04,
    MSG_CTRUNC = 0x08,
    MSG_PROXY = 0x10,
    MSG_TRUNC = 0x20,
    MSG_DONTWAIT = 0x40,
    MSG_EOR = 0x80,
    MSG_WAITALL = 0x100,
    MSG_FIN = 0x200,
    MSG_SYN = 0x400,
    MSG_CONFIRM = 0x800,
    MSG_RST = 0x1000,
    MSG_ERRQUEUE = 0x2000,
    MSG_NOSIGNAL = 0x4000,
    MSG_MORE = 0x8000,
    MSG_WAITFORONE = 0x10000,
    MSG_BATCH = 0x40000,
    MSG_SOCK_DEVMEM = 0x2000000,
    MSG_ZEROCOPY = 0x4000000,
    MSG_FASTOPEN = 0x20000000,
    MSG_CMSG_CLOEXEC = 0x40000000
  };
struct msghdr
  {
    void *msg_name;
    socklen_t msg_namelen;
    struct iovec *msg_iov;
    size_t msg_iovlen;
    void *msg_control;
    size_t msg_controllen;
    int msg_flags;
  };
struct cmsghdr
  {
    size_t cmsg_len;
    int cmsg_level;
    int cmsg_type;
    __extension__ unsigned char __cmsg_data [];
  };
extern struct cmsghdr *__cmsg_nxthdr (struct msghdr *__mhdr,
          struct cmsghdr *__cmsg) __attribute__ ((__nothrow__ , __leaf__));
enum
  {
    SCM_RIGHTS = 0x01
  };
/* +++ BEGIN <asm/socket.h> /usr/include/x86_64-linux-gnu/asm/socket.h */
/* ++++ BEGIN <asm-generic/socket.h> /usr/include/asm-generic/socket.h */
/* +++++ BEGIN <linux/posix_types.h> /usr/include/linux/posix_types.h */
/* ++++++ BEGIN <linux/stddef.h> /usr/include/linux/stddef.h */
/* ++++++ END <linux/stddef.h> /usr/include/linux/stddef.h */
typedef struct {
 unsigned long fds_bits[1024 / (8 * sizeof(long))];
} __kernel_fd_set;
typedef void (*__kernel_sighandler_t)(int);
typedef int __kernel_key_t;
typedef int __kernel_mqd_t;
/* ++++++ BEGIN <asm/posix_types.h> /usr/include/x86_64-linux-gnu/asm/posix_types.h */
/* +++++++ BEGIN <asm/posix_types_64.h> /usr/include/x86_64-linux-gnu/asm/posix_types_64.h */
typedef unsigned short __kernel_old_uid_t;
typedef unsigned short __kernel_old_gid_t;
typedef unsigned long __kernel_old_dev_t;
/* ++++++++ BEGIN <asm-generic/posix_types.h> /usr/include/asm-generic/posix_types.h */
/* +++++++++ BEGIN <asm/bitsperlong.h> /usr/include/x86_64-linux-gnu/asm/bitsperlong.h */
/* ++++++++++ BEGIN <asm-generic/bitsperlong.h> /usr/include/asm-generic/bitsperlong.h */
/* ++++++++++ END <asm-generic/bitsperlong.h> /usr/include/asm-generic/bitsperlong.h */
/* +++++++++ END <asm/bitsperlong.h> /usr/include/x86_64-linux-gnu/asm/bitsperlong.h */
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_ino_t;
typedef unsigned int __kernel_mode_t;
typedef int __kernel_pid_t;
typedef int __kernel_ipc_pid_t;
typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;
typedef __kernel_long_t __kernel_suseconds_t;
typedef int __kernel_daddr_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef __kernel_long_t __kernel_ptrdiff_t;
typedef struct {
 int val[2];
} __kernel_fsid_t;
typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_old_time_t;
typedef __kernel_long_t __kernel_time_t;
typedef long long __kernel_time64_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef char * __kernel_caddr_t;
typedef unsigned short __kernel_uid16_t;
typedef unsigned short __kernel_gid16_t;
/* ++++++++ END <asm-generic/posix_types.h> /usr/include/asm-generic/posix_types.h */
/* +++++++ END <asm/posix_types_64.h> /usr/include/x86_64-linux-gnu/asm/posix_types_64.h */
/* ++++++ END <asm/posix_types.h> /usr/include/x86_64-linux-gnu/asm/posix_types.h */
/* +++++ END <linux/posix_types.h> /usr/include/linux/posix_types.h */
/* +++++ BEGIN <asm/sockios.h> /usr/include/x86_64-linux-gnu/asm/sockios.h */
/* ++++++ BEGIN <asm-generic/sockios.h> /usr/include/asm-generic/sockios.h */
/* ++++++ END <asm-generic/sockios.h> /usr/include/asm-generic/sockios.h */
/* +++++ END <asm/sockios.h> /usr/include/x86_64-linux-gnu/asm/sockios.h */
/* ++++ END <asm-generic/socket.h> /usr/include/asm-generic/socket.h */
/* +++ END <asm/socket.h> /usr/include/x86_64-linux-gnu/asm/socket.h */
struct linger
  {
    int l_onoff;
    int l_linger;
  };
/* ++ END <bits/socket.h> /usr/include/x86_64-linux-gnu/bits/socket.h */
/* ++ BEGIN <bits/types/struct_osockaddr.h> /usr/include/x86_64-linux-gnu/bits/types/struct_osockaddr.h */
struct osockaddr
{
  unsigned short int sa_family;
  unsigned char sa_data[14];
};
/* ++ END <bits/types/struct_osockaddr.h> /usr/include/x86_64-linux-gnu/bits/types/struct_osockaddr.h */
enum
{
  SHUT_RD = 0,
  SHUT_WR,
  SHUT_RDWR
};
extern int socket (int __domain, int __type, int __protocol) __attribute__ ((__nothrow__ , __leaf__));
extern int socketpair (int __domain, int __type, int __protocol,
         int __fds[2]) __attribute__ ((__nothrow__ , __leaf__));
extern int bind (int __fd, const struct sockaddr * __addr, socklen_t __len)
     __attribute__ ((__nothrow__ , __leaf__));
extern int getsockname (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__ , __leaf__));
extern int connect (int __fd, const struct sockaddr * __addr, socklen_t __len);
extern int getpeername (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__ , __leaf__));
extern ssize_t send (int __fd, const void *__buf, size_t __n, int __flags);
extern ssize_t recv (int __fd, void *__buf, size_t __n, int __flags);
extern ssize_t sendto (int __fd, const void *__buf, size_t __n,
         int __flags, const struct sockaddr * __addr,
         socklen_t __addr_len);
extern ssize_t recvfrom (int __fd, void *__restrict __buf, size_t __n,
    int __flags, struct sockaddr *__restrict __addr,
    socklen_t *__restrict __addr_len);
extern ssize_t sendmsg (int __fd, const struct msghdr *__message,
   int __flags);
extern ssize_t recvmsg (int __fd, struct msghdr *__message, int __flags);
extern int getsockopt (int __fd, int __level, int __optname,
         void *__restrict __optval,
         socklen_t *__restrict __optlen) __attribute__ ((__nothrow__ , __leaf__));
extern int setsockopt (int __fd, int __level, int __optname,
         const void *__optval, socklen_t __optlen) __attribute__ ((__nothrow__ , __leaf__));
extern int listen (int __fd, int __n) __attribute__ ((__nothrow__ , __leaf__));
extern int accept (int __fd, struct sockaddr *__restrict __addr,
     socklen_t *__restrict __addr_len);
extern int shutdown (int __fd, int __how) __attribute__ ((__nothrow__ , __leaf__));
extern int sockatmark (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int isfdtype (int __fd, int __fdtype) __attribute__ ((__nothrow__ , __leaf__));
/* #define SOCK_STREAM SOCK_STREAM ### define is not number */
/* #define SOCK_DGRAM SOCK_DGRAM ### define is not number */
/* #define SOCK_RAW SOCK_RAW ### define is not number */
/* #define SOCK_RDM SOCK_RDM ### define is not number */
/* #define SOCK_SEQPACKET SOCK_SEQPACKET ### define is not number */
/* #define SOCK_DCCP SOCK_DCCP ### define is not number */
/* #define SOCK_PACKET SOCK_PACKET ### define is not number */
/* #define SOCK_CLOEXEC SOCK_CLOEXEC ### define is not number */
/* #define SOCK_NONBLOCK SOCK_NONBLOCK ### define is not number */
enum { PF_UNSPEC = 0 };
enum { PF_LOCAL = 1 };
enum { PF_UNIX = 1 };
enum { PF_FILE = 1 };
enum { PF_INET = 2 };
enum { PF_AX25 = 3 };
enum { PF_IPX = 4 };
enum { PF_APPLETALK = 5 };
enum { PF_NETROM = 6 };
enum { PF_BRIDGE = 7 };
enum { PF_ATMPVC = 8 };
enum { PF_X25 = 9 };
enum { PF_INET6 = 10 };
enum { PF_ROSE = 11 };
enum { PF_DECnet = 12 };
enum { PF_NETBEUI = 13 };
enum { PF_SECURITY = 14 };
enum { PF_KEY = 15 };
enum { PF_NETLINK = 16 };
enum { PF_ROUTE = 16 };
enum { PF_PACKET = 17 };
enum { PF_ASH = 18 };
enum { PF_ECONET = 19 };
enum { PF_ATMSVC = 20 };
enum { PF_RDS = 21 };
enum { PF_SNA = 22 };
enum { PF_IRDA = 23 };
enum { PF_PPPOX = 24 };
enum { PF_WANPIPE = 25 };
enum { PF_LLC = 26 };
enum { PF_IB = 27 };
enum { PF_MPLS = 28 };
enum { PF_CAN = 29 };
enum { PF_TIPC = 30 };
enum { PF_BLUETOOTH = 31 };
enum { PF_IUCV = 32 };
enum { PF_RXRPC = 33 };
enum { PF_ISDN = 34 };
enum { PF_PHONET = 35 };
enum { PF_IEEE802154 = 36 };
enum { PF_CAIF = 37 };
enum { PF_ALG = 38 };
enum { PF_NFC = 39 };
enum { PF_VSOCK = 40 };
enum { PF_KCM = 41 };
enum { PF_QIPCRTR = 42 };
enum { PF_SMC = 43 };
enum { PF_XDP = 44 };
enum { PF_MCTP = 45 };
enum { PF_MAX = 46 };
enum { AF_UNSPEC = 0 };
enum { AF_LOCAL = 1 };
enum { AF_UNIX = 1 };
enum { AF_FILE = 1 };
enum { AF_INET = 2 };
enum { AF_AX25 = 3 };
enum { AF_IPX = 4 };
enum { AF_APPLETALK = 5 };
enum { AF_NETROM = 6 };
enum { AF_BRIDGE = 7 };
enum { AF_ATMPVC = 8 };
enum { AF_X25 = 9 };
enum { AF_INET6 = 10 };
enum { AF_ROSE = 11 };
enum { AF_DECnet = 12 };
enum { AF_NETBEUI = 13 };
enum { AF_SECURITY = 14 };
enum { AF_KEY = 15 };
enum { AF_NETLINK = 16 };
enum { AF_ROUTE = 16 };
enum { AF_PACKET = 17 };
enum { AF_ASH = 18 };
enum { AF_ECONET = 19 };
enum { AF_ATMSVC = 20 };
enum { AF_RDS = 21 };
enum { AF_SNA = 22 };
enum { AF_IRDA = 23 };
enum { AF_PPPOX = 24 };
enum { AF_WANPIPE = 25 };
enum { AF_LLC = 26 };
enum { AF_IB = 27 };
enum { AF_MPLS = 28 };
enum { AF_CAN = 29 };
enum { AF_TIPC = 30 };
enum { AF_BLUETOOTH = 31 };
enum { AF_IUCV = 32 };
enum { AF_RXRPC = 33 };
enum { AF_ISDN = 34 };
enum { AF_PHONET = 35 };
enum { AF_IEEE802154 = 36 };
enum { AF_CAIF = 37 };
enum { AF_ALG = 38 };
enum { AF_NFC = 39 };
enum { AF_VSOCK = 40 };
enum { AF_KCM = 41 };
enum { AF_QIPCRTR = 42 };
enum { AF_SMC = 43 };
enum { AF_XDP = 44 };
enum { AF_MCTP = 45 };
enum { AF_MAX = 46 };
enum { SOL_RAW = 255 };
enum { SOL_DECNET = 261 };
enum { SOL_X25 = 262 };
enum { SOL_PACKET = 263 };
enum { SOL_ATM = 264 };
enum { SOL_AAL = 265 };
enum { SOL_IRDA = 266 };
enum { SOL_NETBEUI = 267 };
enum { SOL_LLC = 268 };
enum { SOL_DCCP = 269 };
enum { SOL_NETLINK = 270 };
enum { SOL_TIPC = 271 };
enum { SOL_RXRPC = 272 };
enum { SOL_PPPOL2TP = 273 };
enum { SOL_BLUETOOTH = 274 };
enum { SOL_PNPIPE = 275 };
enum { SOL_RDS = 276 };
enum { SOL_IUCV = 277 };
enum { SOL_CAIF = 278 };
enum { SOL_ALG = 279 };
enum { SOL_NFC = 280 };
enum { SOL_KCM = 281 };
enum { SOL_TLS = 282 };
enum { SOL_XDP = 283 };
enum { SOL_MPTCP = 284 };
enum { SOL_MCTP = 285 };
enum { SOL_SMC = 286 };
enum { SOL_VSOCK = 287 };
enum { SOMAXCONN = 4096 };
/* #define __SOCKADDR_COMMON (sa_prefix) sa_family_t sa_prefix ##family ### define is not number */
/* #define __SOCKADDR_COMMON_SIZE (sizeof (unsigned short int)) ### define is not number */
enum { _SS_SIZE = 128 };
/* #define __ss_aligntype unsigned long int ### define is not number */
/* #define _SS_PADSIZE (_SS_SIZE - __SOCKADDR_COMMON_SIZE - sizeof (__ss_aligntype)) ### define is not number */
/* #define MSG_OOB MSG_OOB ### define is not number */
/* #define MSG_PEEK MSG_PEEK ### define is not number */
/* #define MSG_DONTROUTE MSG_DONTROUTE ### define is not number */
/* #define MSG_CTRUNC MSG_CTRUNC ### define is not number */
/* #define MSG_PROXY MSG_PROXY ### define is not number */
/* #define MSG_TRUNC MSG_TRUNC ### define is not number */
/* #define MSG_DONTWAIT MSG_DONTWAIT ### define is not number */
/* #define MSG_EOR MSG_EOR ### define is not number */
/* #define MSG_WAITALL MSG_WAITALL ### define is not number */
/* #define MSG_FIN MSG_FIN ### define is not number */
/* #define MSG_SYN MSG_SYN ### define is not number */
/* #define MSG_CONFIRM MSG_CONFIRM ### define is not number */
/* #define MSG_RST MSG_RST ### define is not number */
/* #define MSG_ERRQUEUE MSG_ERRQUEUE ### define is not number */
/* #define MSG_NOSIGNAL MSG_NOSIGNAL ### define is not number */
/* #define MSG_MORE MSG_MORE ### define is not number */
/* #define MSG_WAITFORONE MSG_WAITFORONE ### define is not number */
/* #define MSG_BATCH MSG_BATCH ### define is not number */
/* #define MSG_SOCK_DEVMEM MSG_SOCK_DEVMEM ### define is not number */
/* #define MSG_ZEROCOPY MSG_ZEROCOPY ### define is not number */
/* #define MSG_FASTOPEN MSG_FASTOPEN ### define is not number */
/* #define MSG_CMSG_CLOEXEC MSG_CMSG_CLOEXEC ### define is not number */
/* #define CMSG_DATA (cmsg) ((cmsg)->__cmsg_data) ### define is not number */
/* #define CMSG_NXTHDR (mhdr,cmsg) __cmsg_nxthdr (mhdr, cmsg) ### define is not number */
/* #define CMSG_FIRSTHDR (mhdr) ((size_t) (mhdr)->msg_controllen >= sizeof (struct cmsghdr) ? (struct cmsghdr *) (mhdr)->msg_control : (struct cmsghdr *) 0) ### define is not number */
/* #define CMSG_ALIGN (len) (((len) + sizeof (size_t) - 1) & (size_t) ~(sizeof (size_t) - 1)) ### define is not number */
/* #define CMSG_SPACE (len) (CMSG_ALIGN (len) + CMSG_ALIGN (sizeof (struct cmsghdr))) ### define is not number */
/* #define CMSG_LEN (len) (CMSG_ALIGN (sizeof (struct cmsghdr)) + (len)) ### define is not number */
/* #define __CMSG_PADDING (len) ((sizeof (size_t) - ((len) & (sizeof (size_t) - 1))) & (sizeof (size_t) - 1)) ### define is not number */
/* #define SCM_RIGHTS SCM_RIGHTS ### define is not number */
/* #define __struct_group_tag (TAG) TAG ### define is not number */
/* #define __struct_group (TAG,NAME,ATTRS,MEMBERS...) union { struct { MEMBERS } ATTRS; struct __struct_group_tag(TAG) { MEMBERS } ATTRS NAME; } ATTRS ### define is not number */
/* #define __DECLARE_FLEX_ARRAY (TYPE,NAME) struct { struct { } __empty_ ## NAME; TYPE NAME[]; } ### define is not number */
/* #define __counted_by (m)  ### define is not number */
/* #define __counted_by_le (m)  ### define is not number */
/* #define __counted_by_be (m)  ### define is not number */
]] require 'ffi.req' 'c.bits.types.__FD_SETSIZE' ffi.cdef[[
/* #define __kernel_old_uid_t __kernel_old_uid_t ### define is not number */
/* #define __kernel_old_dev_t __kernel_old_dev_t ### define is not number */
enum { __BITS_PER_LONG = 64 };
enum { __ASM_GENERIC_BITS_PER_LONG = 1 };
enum { __BITS_PER_LONG_LONG = 64 };
enum { FIOSETOWN = 0x8901 };
enum { SIOCSPGRP = 0x8902 };
enum { FIOGETOWN = 0x8903 };
enum { SIOCGPGRP = 0x8904 };
enum { SIOCATMARK = 0x8905 };
enum { SIOCGSTAMP_OLD = 0x8906 };
enum { SIOCGSTAMPNS_OLD = 0x8907 };
enum { SOL_SOCKET = 1 };
enum { SO_DEBUG = 1 };
enum { SO_REUSEADDR = 2 };
enum { SO_TYPE = 3 };
enum { SO_ERROR = 4 };
enum { SO_DONTROUTE = 5 };
enum { SO_BROADCAST = 6 };
enum { SO_SNDBUF = 7 };
enum { SO_RCVBUF = 8 };
enum { SO_SNDBUFFORCE = 32 };
enum { SO_RCVBUFFORCE = 33 };
enum { SO_KEEPALIVE = 9 };
enum { SO_OOBINLINE = 10 };
enum { SO_NO_CHECK = 11 };
enum { SO_PRIORITY = 12 };
enum { SO_LINGER = 13 };
enum { SO_BSDCOMPAT = 14 };
enum { SO_REUSEPORT = 15 };
enum { SO_PASSCRED = 16 };
enum { SO_PEERCRED = 17 };
enum { SO_RCVLOWAT = 18 };
enum { SO_SNDLOWAT = 19 };
enum { SO_RCVTIMEO_OLD = 20 };
enum { SO_SNDTIMEO_OLD = 21 };
enum { SO_SECURITY_AUTHENTICATION = 22 };
enum { SO_SECURITY_ENCRYPTION_TRANSPORT = 23 };
enum { SO_SECURITY_ENCRYPTION_NETWORK = 24 };
enum { SO_BINDTODEVICE = 25 };
enum { SO_ATTACH_FILTER = 26 };
enum { SO_DETACH_FILTER = 27 };
enum { SO_GET_FILTER = 26 };
enum { SO_PEERNAME = 28 };
enum { SO_ACCEPTCONN = 30 };
enum { SO_PEERSEC = 31 };
enum { SO_PASSSEC = 34 };
enum { SO_MARK = 36 };
enum { SO_PROTOCOL = 38 };
enum { SO_DOMAIN = 39 };
enum { SO_RXQ_OVFL = 40 };
enum { SO_WIFI_STATUS = 41 };
enum { SCM_WIFI_STATUS = 41 };
enum { SO_PEEK_OFF = 42 };
enum { SO_NOFCS = 43 };
enum { SO_LOCK_FILTER = 44 };
enum { SO_SELECT_ERR_QUEUE = 45 };
enum { SO_BUSY_POLL = 46 };
enum { SO_MAX_PACING_RATE = 47 };
enum { SO_BPF_EXTENSIONS = 48 };
enum { SO_INCOMING_CPU = 49 };
enum { SO_ATTACH_BPF = 50 };
enum { SO_DETACH_BPF = 27 };
enum { SO_ATTACH_REUSEPORT_CBPF = 51 };
enum { SO_ATTACH_REUSEPORT_EBPF = 52 };
enum { SO_CNX_ADVICE = 53 };
enum { SCM_TIMESTAMPING_OPT_STATS = 54 };
enum { SO_MEMINFO = 55 };
enum { SO_INCOMING_NAPI_ID = 56 };
enum { SO_COOKIE = 57 };
enum { SCM_TIMESTAMPING_PKTINFO = 58 };
enum { SO_PEERGROUPS = 59 };
enum { SO_ZEROCOPY = 60 };
enum { SO_TXTIME = 61 };
enum { SCM_TXTIME = 61 };
enum { SO_BINDTOIFINDEX = 62 };
enum { SO_TIMESTAMP_OLD = 29 };
enum { SO_TIMESTAMPNS_OLD = 35 };
enum { SO_TIMESTAMPING_OLD = 37 };
enum { SO_TIMESTAMP_NEW = 63 };
enum { SO_TIMESTAMPNS_NEW = 64 };
enum { SO_TIMESTAMPING_NEW = 65 };
enum { SO_RCVTIMEO_NEW = 66 };
enum { SO_SNDTIMEO_NEW = 67 };
enum { SO_DETACH_REUSEPORT_BPF = 68 };
enum { SO_PREFER_BUSY_POLL = 69 };
enum { SO_BUSY_POLL_BUDGET = 70 };
enum { SO_NETNS_COOKIE = 71 };
enum { SO_BUF_LOCK = 72 };
enum { SO_RESERVE_MEM = 73 };
enum { SO_TXREHASH = 74 };
enum { SO_RCVMARK = 75 };
enum { SO_PASSPIDFD = 76 };
enum { SO_PEERPIDFD = 77 };
enum { SO_DEVMEM_LINEAR = 78 };
enum { SCM_DEVMEM_LINEAR = 78 };
enum { SO_DEVMEM_DMABUF = 79 };
enum { SCM_DEVMEM_DMABUF = 79 };
enum { SO_DEVMEM_DONTNEED = 80 };
enum { SCM_TS_OPT_ID = 81 };
enum { SO_RCVPRIORITY = 82 };
enum { SO_TIMESTAMP = 29 };
enum { SO_TIMESTAMPNS = 35 };
enum { SO_TIMESTAMPING = 37 };
enum { SO_RCVTIMEO = 20 };
enum { SO_SNDTIMEO = 21 };
enum { SCM_TIMESTAMP = 29 };
enum { SCM_TIMESTAMPNS = 35 };
enum { SCM_TIMESTAMPING = 37 };
/* #define SHUT_RD SHUT_RD ### define is not number */
/* #define SHUT_WR SHUT_WR ### define is not number */
/* #define SHUT_RDWR SHUT_RDWR ### define is not number */
/* #define __SOCKADDR_ARG struct sockaddr *__restrict ### define is not number */
/* #define __CONST_SOCKADDR_ARG const struct sockaddr * ### define is not number */
/* + END <sys/socket.h> /usr/include/x86_64-linux-gnu/sys/socket.h */
]]
