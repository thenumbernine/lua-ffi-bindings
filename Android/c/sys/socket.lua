local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/socket.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/socket.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
/* ++ BEGIN <asm/fcntl.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/fcntl.h */
/* ++ END <asm/fcntl.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/fcntl.h */
/* ++ BEGIN <asm/socket.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/socket.h */
/* +++ BEGIN <asm-generic/socket.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/socket.h */
/* ++++ BEGIN <asm/sockios.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/sockios.h */
/* +++++ BEGIN <asm-generic/sockios.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/sockios.h */
/* +++++ END <asm-generic/sockios.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/sockios.h */
/* ++++ END <asm/sockios.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/sockios.h */
/* +++ END <asm-generic/socket.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/socket.h */
/* ++ END <asm/socket.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/socket.h */
/* ++ BEGIN <linux/sockios.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/sockios.h */
/* +++ BEGIN <asm/bitsperlong.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/bitsperlong.h */
/* +++ END <asm/bitsperlong.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/bitsperlong.h */
/* +++ BEGIN <asm/sockios.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/sockios.h */
/* +++ END <asm/sockios.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/sockios.h */
/* ++ END <linux/sockios.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/sockios.h */
/* ++ BEGIN <linux/uio.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/uio.h */
/* ++ END <linux/uio.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/uio.h */
/* ++ BEGIN <bits/sockaddr_storage.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/sockaddr_storage.h */
/* +++ BEGIN <bits/sa_family_t.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/sa_family_t.h */
typedef unsigned short sa_family_t;
/* +++ END <bits/sa_family_t.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/sa_family_t.h */
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wnullability-completeness"
struct sockaddr_storage {
  union {
    struct {
      sa_family_t ss_family;
      char __data[128 - sizeof(sa_family_t)];
    };
    void* __align;
  };
};
#pragma clang diagnostic pop
/* ++ END <bits/sockaddr_storage.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/sockaddr_storage.h */
struct timespec;
enum {
  SHUT_RD = 0,
  SHUT_WR,
  SHUT_RDWR
};
struct sockaddr {
  sa_family_t sa_family;
  char sa_data[14];
};
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wnullability-completeness"
struct linger {
  int l_onoff;
  int l_linger;
};
struct msghdr {
  void* msg_name;
  socklen_t msg_namelen;
  struct iovec* msg_iov;
  size_t msg_iovlen;
  void* msg_control;
  size_t msg_controllen;
  int msg_flags;
};
struct mmsghdr {
  struct msghdr msg_hdr;
  unsigned int msg_len;
};
struct cmsghdr {
  size_t cmsg_len;
  int cmsg_level;
  int cmsg_type;
};
#pragma clang diagnostic pop
struct cmsghdr*  __cmsg_nxthdr(struct msghdr*  __msg, struct cmsghdr*  __cmsg);
struct ucred {
  pid_t pid;
  uid_t uid;
  gid_t gid;
};
int accept(int __fd, struct sockaddr*  __addr, socklen_t*  __addr_length);
int accept4(int __fd, struct sockaddr*  __addr, socklen_t*  __addr_length, int __flags);
int bind(int __fd, const struct sockaddr*  __addr, socklen_t __addr_length);
int connect(int __fd, const struct sockaddr*  __addr, socklen_t __addr_length);
int getpeername(int __fd, struct sockaddr*  __addr, socklen_t*  __addr_length);
int getsockname(int __fd, struct sockaddr*  __addr, socklen_t*  __addr_length);
int getsockopt(int __fd, int __level, int __option, void*  __value, socklen_t*  __value_length);
int listen(int __fd, int __backlog);
int recvmmsg(int __fd, struct mmsghdr*  __msgs, unsigned int __msg_count, int __flags, const struct timespec*  __timeout);
ssize_t recvmsg(int __fd, struct msghdr*  __msg, int __flags);
int sendmmsg(int __fd, const struct mmsghdr*  __msgs, unsigned int __msg_count, int __flags);
ssize_t sendmsg(int __fd, const struct msghdr*  __msg, int __flags);
int setsockopt(int __fd, int __level, int __option, const void*  __value, socklen_t __value_length);
int shutdown(int __fd, int __how);
int socket(int __af, int __type, int __protocol);
int socketpair(int __af, int __type, int __protocol, int __fds[ 2]);
ssize_t recv(int __fd, void*  __buf, size_t __n, int __flags);
ssize_t send(int __fd, const void*  __buf, size_t __n, int __flags);
ssize_t sendto(int __fd, const void*  __buf, size_t __n, int __flags, const struct sockaddr*  __dst_addr, socklen_t __dst_addr_length);
ssize_t recvfrom(int __fd, void*  __buf, size_t __n, int __flags, struct sockaddr*  __src_addr, socklen_t*  __src_addr_length);
enum { _SYS_SOCKET_H_ = 1 };
enum { __ASM_GENERIC_SOCKET_H = 1 };
enum { __ASM_GENERIC_SOCKIOS_H = 1 };
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
/* #define SO_TIMESTAMP (sizeof(time_t) == sizeof(__kernel_long_t) ? SO_TIMESTAMP_OLD : SO_TIMESTAMP_NEW) ### define is not number */
/* #define SO_TIMESTAMPNS (sizeof(time_t) == sizeof(__kernel_long_t) ? SO_TIMESTAMPNS_OLD : SO_TIMESTAMPNS_NEW) ### define is not number */
/* #define SO_TIMESTAMPING (sizeof(time_t) == sizeof(__kernel_long_t) ? SO_TIMESTAMPING_OLD : SO_TIMESTAMPING_NEW) ### define is not number */
/* #define SO_RCVTIMEO (sizeof(time_t) == sizeof(__kernel_long_t) ? SO_RCVTIMEO_OLD : SO_RCVTIMEO_NEW) ### define is not number */
/* #define SO_SNDTIMEO (sizeof(time_t) == sizeof(__kernel_long_t) ? SO_SNDTIMEO_OLD : SO_SNDTIMEO_NEW) ### define is not number */
/* #define SCM_TIMESTAMP (sizeof(time_t) == sizeof(__kernel_long_t) ? SO_TIMESTAMP_OLD : SO_TIMESTAMP_NEW) ### define is not number */
/* #define SCM_TIMESTAMPNS (sizeof(time_t) == sizeof(__kernel_long_t) ? SO_TIMESTAMPNS_OLD : SO_TIMESTAMPNS_NEW) ### define is not number */
/* #define SCM_TIMESTAMPING (sizeof(time_t) == sizeof(__kernel_long_t) ? SO_TIMESTAMPING_OLD : SO_TIMESTAMPING_NEW) ### define is not number */
enum { _LINUX_SOCKIOS_H = 1 };
/* #define SIOCINQ FIONREAD ### define is not number */
/* #define SIOCOUTQ TIOCOUTQ ### define is not number */
enum { SOCK_IOC_TYPE = 0x89 };
/* #define SIOCGSTAMP_NEW _IOR(SOCK_IOC_TYPE, 0x06, long long[2]) ### define is not number */
/* #define SIOCGSTAMPNS_NEW _IOR(SOCK_IOC_TYPE, 0x07, long long[2]) ### define is not number */
/* #define SIOCGSTAMP ((sizeof(struct timeval)) == 8 ? SIOCGSTAMP_OLD : SIOCGSTAMP_NEW) ### define is not number */
/* #define SIOCGSTAMPNS ((sizeof(struct timespec)) == 8 ? SIOCGSTAMPNS_OLD : SIOCGSTAMPNS_NEW) ### define is not number */
enum { SIOCADDRT = 0x890b };
enum { SIOCDELRT = 0x890c };
enum { SIOCRTMSG = 0x890d };
enum { SIOCGIFNAME = 0x8910 };
enum { SIOCSIFLINK = 0x8911 };
enum { SIOCGIFCONF = 0x8912 };
enum { SIOCGIFFLAGS = 0x8913 };
enum { SIOCSIFFLAGS = 0x8914 };
enum { SIOCGIFADDR = 0x8915 };
enum { SIOCSIFADDR = 0x8916 };
enum { SIOCGIFDSTADDR = 0x8917 };
enum { SIOCSIFDSTADDR = 0x8918 };
enum { SIOCGIFBRDADDR = 0x8919 };
enum { SIOCSIFBRDADDR = 0x891a };
enum { SIOCGIFNETMASK = 0x891b };
enum { SIOCSIFNETMASK = 0x891c };
enum { SIOCGIFMETRIC = 0x891d };
enum { SIOCSIFMETRIC = 0x891e };
enum { SIOCGIFMEM = 0x891f };
enum { SIOCSIFMEM = 0x8920 };
enum { SIOCGIFMTU = 0x8921 };
enum { SIOCSIFMTU = 0x8922 };
enum { SIOCSIFNAME = 0x8923 };
enum { SIOCSIFHWADDR = 0x8924 };
enum { SIOCGIFENCAP = 0x8925 };
enum { SIOCSIFENCAP = 0x8926 };
enum { SIOCGIFHWADDR = 0x8927 };
enum { SIOCGIFSLAVE = 0x8929 };
enum { SIOCSIFSLAVE = 0x8930 };
enum { SIOCADDMULTI = 0x8931 };
enum { SIOCDELMULTI = 0x8932 };
enum { SIOCGIFINDEX = 0x8933 };
enum { SIOGIFINDEX = 0x8933 };
enum { SIOCSIFPFLAGS = 0x8934 };
enum { SIOCGIFPFLAGS = 0x8935 };
enum { SIOCDIFADDR = 0x8936 };
enum { SIOCSIFHWBROADCAST = 0x8937 };
enum { SIOCGIFCOUNT = 0x8938 };
enum { SIOCGIFBR = 0x8940 };
enum { SIOCSIFBR = 0x8941 };
enum { SIOCGIFTXQLEN = 0x8942 };
enum { SIOCSIFTXQLEN = 0x8943 };
enum { SIOCETHTOOL = 0x8946 };
enum { SIOCGMIIPHY = 0x8947 };
enum { SIOCGMIIREG = 0x8948 };
enum { SIOCSMIIREG = 0x8949 };
enum { SIOCWANDEV = 0x894a };
enum { SIOCOUTQNSD = 0x894b };
enum { SIOCGSKNS = 0x894c };
enum { SIOCDARP = 0x8953 };
enum { SIOCGARP = 0x8954 };
enum { SIOCSARP = 0x8955 };
enum { SIOCDRARP = 0x8960 };
enum { SIOCGRARP = 0x8961 };
enum { SIOCSRARP = 0x8962 };
enum { SIOCGIFMAP = 0x8970 };
enum { SIOCSIFMAP = 0x8971 };
enum { SIOCADDDLCI = 0x8980 };
enum { SIOCDELDLCI = 0x8981 };
enum { SIOCGIFVLAN = 0x8982 };
enum { SIOCSIFVLAN = 0x8983 };
enum { SIOCBONDENSLAVE = 0x8990 };
enum { SIOCBONDRELEASE = 0x8991 };
enum { SIOCBONDSETHWADDR = 0x8992 };
enum { SIOCBONDSLAVEINFOQUERY = 0x8993 };
enum { SIOCBONDINFOQUERY = 0x8994 };
enum { SIOCBONDCHANGEACTIVE = 0x8995 };
enum { SIOCBRADDBR = 0x89a0 };
enum { SIOCBRDELBR = 0x89a1 };
enum { SIOCBRADDIF = 0x89a2 };
enum { SIOCBRDELIF = 0x89a3 };
enum { SIOCSHWTSTAMP = 0x89b0 };
enum { SIOCGHWTSTAMP = 0x89b1 };
enum { SIOCDEVPRIVATE = 0x89f0 };
enum { SIOCPROTOPRIVATE = 0x89e0 };
enum { SOCK_STREAM = 1 };
enum { SOCK_DGRAM = 2 };
enum { SOCK_RAW = 3 };
enum { SOCK_RDM = 4 };
enum { SOCK_SEQPACKET = 5 };
enum { SOCK_DCCP = 6 };
enum { SOCK_PACKET = 10 };
enum { SOCK_CLOEXEC = 02000000 };
enum { SOCK_NONBLOCK = 00004000 };
/* #define SHUT_RD SHUT_RD ### define is not number */
/* #define SHUT_WR SHUT_WR ### define is not number */
/* #define SHUT_RDWR SHUT_RDWR ### define is not number */
/* #define CMSG_NXTHDR (mhdr,cmsg) __cmsg_nxthdr((mhdr), (cmsg)) ### define is not number */
/* #define CMSG_ALIGN (len) ( ((len)+sizeof(long)-1) & ~(sizeof(long)-1) ) ### define is not number */
/* #define CMSG_DATA (cmsg) (((unsigned char*)(cmsg) + CMSG_ALIGN(sizeof(struct cmsghdr)))) ### define is not number */
/* #define CMSG_SPACE (len) (CMSG_ALIGN(sizeof(struct cmsghdr)) + CMSG_ALIGN(len)) ### define is not number */
/* #define CMSG_LEN (len) (CMSG_ALIGN(sizeof(struct cmsghdr)) + (len)) ### define is not number */
/* #define CMSG_FIRSTHDR (msg) ((msg)->msg_controllen >= sizeof(struct cmsghdr) ? (struct cmsghdr*) (msg)->msg_control : (struct cmsghdr*) NULL) ### define is not number */
/* #define CMSG_OK (mhdr,cmsg) ((cmsg)->cmsg_len >= sizeof(struct cmsghdr) && (cmsg)->cmsg_len <= (unsigned long) ((mhdr)->msg_controllen - ((char*)(cmsg) - (char*)(mhdr)->msg_control))) ### define is not number */
enum { SCM_RIGHTS = 0x01 };
enum { SCM_CREDENTIALS = 0x02 };
enum { SCM_SECURITY = 0x03 };
enum { AF_UNSPEC = 0 };
enum { AF_UNIX = 1 };
enum { AF_LOCAL = 1 };
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
enum { AF_MAX = 43 };
enum { PF_UNSPEC = 0 };
enum { PF_UNIX = 1 };
enum { PF_LOCAL = 1 };
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
enum { PF_MAX = 43 };
enum { SOMAXCONN = 128 };
enum { MSG_OOB = 1 };
enum { MSG_PEEK = 2 };
enum { MSG_DONTROUTE = 4 };
enum { MSG_TRYHARD = 4 };
enum { MSG_CTRUNC = 8 };
enum { MSG_PROBE = 0x10 };
enum { MSG_TRUNC = 0x20 };
enum { MSG_DONTWAIT = 0x40 };
enum { MSG_EOR = 0x80 };
enum { MSG_WAITALL = 0x100 };
enum { MSG_FIN = 0x200 };
enum { MSG_SYN = 0x400 };
enum { MSG_CONFIRM = 0x800 };
enum { MSG_RST = 0x1000 };
enum { MSG_ERRQUEUE = 0x2000 };
enum { MSG_NOSIGNAL = 0x4000 };
enum { MSG_MORE = 0x8000 };
enum { MSG_WAITFORONE = 0x10000 };
enum { MSG_BATCH = 0x40000 };
enum { MSG_FASTOPEN = 0x20000000 };
enum { MSG_CMSG_CLOEXEC = 0x40000000 };
enum { MSG_EOF = 0x200 };
enum { MSG_CMSG_COMPAT = 0 };
enum { SOL_IP = 0 };
enum { SOL_TCP = 6 };
enum { SOL_UDP = 17 };
enum { SOL_IPV6 = 41 };
enum { SOL_ICMPV6 = 58 };
enum { SOL_SCTP = 132 };
enum { SOL_RAW = 255 };
enum { SOL_IPX = 256 };
enum { SOL_AX25 = 257 };
enum { SOL_ATALK = 258 };
enum { SOL_NETROM = 259 };
enum { SOL_ROSE = 260 };
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
enum { IPX_TYPE = 1 };
/* + END <sys/socket.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/socket.h */
]]
