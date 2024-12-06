local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/ioctl.h */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/ttycom.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
/* redefining matching value: #define USE_CLANG_TYPES 0 */
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef unsigned int __darwin_fsblkcnt_t;
typedef unsigned int __darwin_fsfilcnt_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint32_t __darwin_id_t;
typedef __uint64_t __darwin_ino64_t;
typedef __darwin_ino64_t __darwin_ino_t;
typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_pid_t;
typedef __uint32_t __darwin_sigset_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
typedef __uint32_t __darwin_useconds_t;
typedef unsigned char __darwin_uuid_t[16];
typedef char __darwin_uuid_string_t[37];
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_types' ffi.cdef[[
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
enum { IOCPARM_MASK = 8191 };
enum { IOCPARM_MAX = 8192 };
/* #define IOC_VOID        (__uint32_t)0x20000000 ### string, not number "(__uint32_t)0x20000000" */
/* #define IOC_OUT         (__uint32_t)0x40000000 ### string, not number "(__uint32_t)0x40000000" */
/* #define IOC_IN          (__uint32_t)0x80000000 ### string, not number "(__uint32_t)0x80000000" */
/* #define IOC_INOUT       (IOC_IN|IOC_OUT) ### string, not number "(IOC_IN|IOC_OUT)" */
/* #define IOC_DIRMASK     (__uint32_t)0xe0000000 ### string, not number "(__uint32_t)0xe0000000" */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
struct winsize {
	unsigned short ws_row;
	unsigned short ws_col;
	unsigned short ws_xpixel;
	unsigned short ws_ypixel;
};
/* #define TIOCMODG        _IOR('t', 3, int) ### string, not number "_IOR('t', 3, int)" */
/* #define TIOCMODS        _IOW('t', 4, int) ### string, not number "_IOW('t', 4, int)" */
enum { TIOCM_LE = 1 };
enum { TIOCM_DTR = 2 };
enum { TIOCM_RTS = 4 };
enum { TIOCM_ST = 8 };
enum { TIOCM_SR = 16 };
enum { TIOCM_CTS = 32 };
enum { TIOCM_CAR = 64 };
enum { TIOCM_CD = 64 };
enum { TIOCM_RNG = 128 };
enum { TIOCM_RI = 128 };
enum { TIOCM_DSR = 256 };
/* #define TIOCEXCL         _IO('t', 13) ### string, not number "_IO('t', 13)" */
/* #define TIOCNXCL         _IO('t', 14) ### string, not number "_IO('t', 14)" */
/* #define TIOCFLUSH       _IOW('t', 16, int) ### string, not number "_IOW('t', 16, int)" */
/* #define TIOCGETA        _IOR('t', 19, struct termios) ### string, not number "_IOR('t', 19, struct termios)" */
/* #define TIOCSETA        _IOW('t', 20, struct termios) ### string, not number "_IOW('t', 20, struct termios)" */
/* #define TIOCSETAW       _IOW('t', 21, struct termios) ### string, not number "_IOW('t', 21, struct termios)" */
/* #define TIOCSETAF       _IOW('t', 22, struct termios) ### string, not number "_IOW('t', 22, struct termios)" */
/* #define TIOCGETD        _IOR('t', 26, int) ### string, not number "_IOR('t', 26, int)" */
/* #define TIOCSETD        _IOW('t', 27, int) ### string, not number "_IOW('t', 27, int)" */
/* #define TIOCIXON         _IO('t', 129) ### string, not number "_IO('t', 129)" */
/* #define TIOCIXOFF        _IO('t', 128) ### string, not number "_IO('t', 128)" */
/* #define TIOCSBRK         _IO('t', 123) ### string, not number "_IO('t', 123)" */
/* #define TIOCCBRK         _IO('t', 122) ### string, not number "_IO('t', 122)" */
/* #define TIOCSDTR         _IO('t', 121) ### string, not number "_IO('t', 121)" */
/* #define TIOCCDTR         _IO('t', 120) ### string, not number "_IO('t', 120)" */
/* #define TIOCGPGRP       _IOR('t', 119, int) ### string, not number "_IOR('t', 119, int)" */
/* #define TIOCSPGRP       _IOW('t', 118, int) ### string, not number "_IOW('t', 118, int)" */
/* #define TIOCOUTQ        _IOR('t', 115, int) ### string, not number "_IOR('t', 115, int)" */
/* #define TIOCSTI         _IOW('t', 114, char) ### string, not number "_IOW('t', 114, char)" */
/* #define TIOCNOTTY        _IO('t', 113) ### string, not number "_IO('t', 113)" */
/* #define TIOCPKT         _IOW('t', 112, int) ### string, not number "_IOW('t', 112, int)" */
enum { TIOCPKT_DATA = 0 };
enum { TIOCPKT_FLUSHREAD = 1 };
enum { TIOCPKT_FLUSHWRITE = 2 };
enum { TIOCPKT_STOP = 4 };
enum { TIOCPKT_START = 8 };
enum { TIOCPKT_NOSTOP = 16 };
enum { TIOCPKT_DOSTOP = 32 };
enum { TIOCPKT_IOCTL = 64 };
/* #define TIOCSTOP         _IO('t', 111) ### string, not number "_IO('t', 111)" */
/* #define TIOCSTART        _IO('t', 110) ### string, not number "_IO('t', 110)" */
/* #define TIOCMSET        _IOW('t', 109, int) ### string, not number "_IOW('t', 109, int)" */
/* #define TIOCMBIS        _IOW('t', 108, int) ### string, not number "_IOW('t', 108, int)" */
/* #define TIOCMBIC        _IOW('t', 107, int) ### string, not number "_IOW('t', 107, int)" */
/* #define TIOCMGET        _IOR('t', 106, int) ### string, not number "_IOR('t', 106, int)" */
/* #define TIOCGWINSZ      _IOR('t', 104, struct winsize) ### string, not number "_IOR('t', 104, struct winsize)" */
/* #define TIOCSWINSZ      _IOW('t', 103, struct winsize) ### string, not number "_IOW('t', 103, struct winsize)" */
/* #define TIOCUCNTL       _IOW('t', 102, int) ### string, not number "_IOW('t', 102, int)" */
/* #define TIOCSTAT         _IO('t', 101) ### string, not number "_IO('t', 101)" */
/* #define TIOCSCONS       _IO('t', 99) ### string, not number "_IO('t', 99)" */
/* #define TIOCCONS        _IOW('t', 98, int) ### string, not number "_IOW('t', 98, int)" */
/* #define TIOCSCTTY        _IO('t', 97) ### string, not number "_IO('t', 97)" */
/* #define TIOCEXT         _IOW('t', 96, int) ### string, not number "_IOW('t', 96, int)" */
/* #define TIOCSIG          _IO('t', 95) ### string, not number "_IO('t', 95)" */
/* #define TIOCDRAIN        _IO('t', 94) ### string, not number "_IO('t', 94)" */
/* #define TIOCMSDTRWAIT   _IOW('t', 91, int) ### string, not number "_IOW('t', 91, int)" */
/* #define TIOCMGDTRWAIT   _IOR('t', 90, int) ### string, not number "_IOR('t', 90, int)" */
/* #define TIOCTIMESTAMP   _IOR('t', 89, struct timeval) ### string, not number "_IOR('t', 89, struct timeval)" */
/* #define TIOCDCDTIMESTAMP _IOR('t', 88, struct timeval) ### string, not number "_IOR('t', 88, struct timeval)" */
/* #define TIOCSDRAINWAIT  _IOW('t', 87, int) ### string, not number "_IOW('t', 87, int)" */
/* #define TIOCGDRAINWAIT  _IOR('t', 86, int) ### string, not number "_IOR('t', 86, int)" */
/* #define TIOCDSIMICROCODE _IO('t', 85) ### string, not number "_IO('t', 85)" */
/* #define TIOCPTYGRANT    _IO('t', 84) ### string, not number "_IO('t', 84)" */
/* #define TIOCPTYGNAME    _IOC(IOC_OUT, 't', 83, 128) ### string, not number "_IOC(IOC_OUT, 't', 83, 128)" */
/* #define TIOCPTYUNLK     _IO('t', 82) ### string, not number "_IO('t', 82)" */
enum { TTYDISC = 0 };
enum { TABLDISC = 3 };
enum { SLIPDISC = 4 };
enum { PPPDISC = 5 };
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/ttycom.h */
struct ttysize {
	unsigned short ts_lines;
	unsigned short ts_cols;
	unsigned short ts_xxx;
	unsigned short ts_yyy;
};
/* #define TIOCGSIZE       TIOCGWINSZ ### string, not number "TIOCGWINSZ" */
/* #define TIOCSSIZE       TIOCSWINSZ ### string, not number "TIOCSWINSZ" */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/filio.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
/* #define FIOCLEX          _IO('f', 1) ### string, not number "_IO('f', 1)" */
/* #define FIONCLEX         _IO('f', 2) ### string, not number "_IO('f', 2)" */
/* #define FIONREAD        _IOR('f', 127, int) ### string, not number "_IOR('f', 127, int)" */
/* #define FIONBIO         _IOW('f', 126, int) ### string, not number "_IOW('f', 126, int)" */
/* #define FIOASYNC        _IOW('f', 125, int) ### string, not number "_IOW('f', 125, int)" */
/* #define FIOSETOWN       _IOW('f', 124, int) ### string, not number "_IOW('f', 124, int)" */
/* #define FIOGETOWN       _IOR('f', 123, int) ### string, not number "_IOR('f', 123, int)" */
/* #define FIODTYPE        _IOR('f', 122, int) ### string, not number "_IOR('f', 122, int)" */
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/filio.h */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/sockio.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/net/if.h */
enum { IF_NAMESIZE = 16 };
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/net/if_var.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/time.h */
]] require 'ffi.req' 'c.sys.time' ffi.cdef[[
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/time.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/queue.h */
enum { TRACEBUF = 1 };
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/queue.h */
enum { APPLE_IF_FAM_LOOPBACK = 1 };
enum { APPLE_IF_FAM_ETHERNET = 2 };
enum { APPLE_IF_FAM_SLIP = 3 };
enum { APPLE_IF_FAM_TUN = 4 };
enum { APPLE_IF_FAM_VLAN = 5 };
enum { APPLE_IF_FAM_PPP = 6 };
enum { APPLE_IF_FAM_PVC = 7 };
enum { APPLE_IF_FAM_DISC = 8 };
enum { APPLE_IF_FAM_MDECAP = 9 };
enum { APPLE_IF_FAM_GIF = 10 };
enum { APPLE_IF_FAM_FAITH = 11 };
enum { APPLE_IF_FAM_STF = 12 };
enum { APPLE_IF_FAM_FIREWIRE = 13 };
enum { APPLE_IF_FAM_BOND = 14 };
enum { APPLE_IF_FAM_CELLULAR = 15 };
enum { APPLE_IF_FAM_UNUSED_16 = 16 };
enum { APPLE_IF_FAM_UTUN = 17 };
enum { APPLE_IF_FAM_IPSEC = 18 };
enum { IF_MINMTU = 72 };
enum { IF_MAXMTU = 65535 };
enum { IFNAMSIZ = 16 };
struct net_event_data {
	u_int32_t if_family;
	u_int32_t if_unit;
	char if_name[16];
};
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval32.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h */
struct timeval32 {
	__int32_t tv_sec;
	__int32_t tv_usec;
};
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval32.h */
enum { IF_DATA_TIMEVAL = 0 };
/* #pragma pack(4) */
struct if_data {
	u_char ifi_type;
	u_char ifi_typelen;
	u_char ifi_physical;
	u_char ifi_addrlen;
	u_char ifi_hdrlen;
	u_char ifi_recvquota;
	u_char ifi_xmitquota;
	u_char ifi_unused1;
	u_int32_t ifi_mtu;
	u_int32_t ifi_metric;
	u_int32_t ifi_baudrate;
	u_int32_t ifi_ipackets;
	u_int32_t ifi_ierrors;
	u_int32_t ifi_opackets;
	u_int32_t ifi_oerrors;
	u_int32_t ifi_collisions;
	u_int32_t ifi_ibytes;
	u_int32_t ifi_obytes;
	u_int32_t ifi_imcasts;
	u_int32_t ifi_omcasts;
	u_int32_t ifi_iqdrops;
	u_int32_t ifi_noproto;
	u_int32_t ifi_recvtiming;
	u_int32_t ifi_xmittiming;
	struct timeval32 ifi_lastchange;
	u_int32_t ifi_unused2;
	u_int32_t ifi_hwassist;
	u_int32_t ifi_reserved1;
	u_int32_t ifi_reserved2;
};
struct if_data64 {
	u_char ifi_type;
	u_char ifi_typelen;
	u_char ifi_physical;
	u_char ifi_addrlen;
	u_char ifi_hdrlen;
	u_char ifi_recvquota;
	u_char ifi_xmitquota;
	u_char ifi_unused1;
	u_int32_t ifi_mtu;
	u_int32_t ifi_metric;
	u_int64_t ifi_baudrate;
	u_int64_t ifi_ipackets;
	u_int64_t ifi_ierrors;
	u_int64_t ifi_opackets;
	u_int64_t ifi_oerrors;
	u_int64_t ifi_collisions;
	u_int64_t ifi_ibytes;
	u_int64_t ifi_obytes;
	u_int64_t ifi_imcasts;
	u_int64_t ifi_omcasts;
	u_int64_t ifi_iqdrops;
	u_int64_t ifi_noproto;
	u_int32_t ifi_recvtiming;
	u_int32_t ifi_xmittiming;
	struct timeval32 ifi_lastchange;
};
/* #pragma pack() */
struct ifnet_interface_advisory;
struct ifqueue {
	void *ifq_head;
	void *ifq_tail;
	int ifq_len;
	int ifq_maxlen;
	int ifq_drops;
};
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/net/if_var.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/net/net_kev.h */
enum { KEV_INET_SUBCLASS = 1 };
enum { KEV_INET_NEW_ADDR = 1 };
enum { KEV_INET_CHANGED_ADDR = 2 };
enum { KEV_INET_ADDR_DELETED = 3 };
enum { KEV_INET_SIFDSTADDR = 4 };
enum { KEV_INET_SIFBRDADDR = 5 };
enum { KEV_INET_SIFNETMASK = 6 };
enum { KEV_INET_ARPCOLLISION = 7 };
enum { KEV_INET_PORTINUSE = 8 };
enum { KEV_INET_ARPRTRFAILURE = 9 };
enum { KEV_INET_ARPRTRALIVE = 10 };
enum { KEV_DL_SUBCLASS = 2 };
enum { KEV_DL_SIFFLAGS = 1 };
enum { KEV_DL_SIFMETRICS = 2 };
enum { KEV_DL_SIFMTU = 3 };
enum { KEV_DL_SIFPHYS = 4 };
enum { KEV_DL_SIFMEDIA = 5 };
enum { KEV_DL_SIFGENERIC = 6 };
enum { KEV_DL_ADDMULTI = 7 };
enum { KEV_DL_DELMULTI = 8 };
enum { KEV_DL_IF_ATTACHED = 9 };
enum { KEV_DL_IF_DETACHING = 10 };
enum { KEV_DL_IF_DETACHED = 11 };
enum { KEV_DL_LINK_OFF = 12 };
enum { KEV_DL_LINK_ON = 13 };
enum { KEV_DL_PROTO_ATTACHED = 14 };
enum { KEV_DL_PROTO_DETACHED = 15 };
enum { KEV_DL_LINK_ADDRESS_CHANGED = 16 };
enum { KEV_DL_WAKEFLAGS_CHANGED = 17 };
enum { KEV_DL_IF_IDLE_ROUTE_REFCNT = 18 };
enum { KEV_DL_IFCAP_CHANGED = 19 };
enum { KEV_DL_LINK_QUALITY_METRIC_CHANGED = 20 };
enum { KEV_DL_NODE_PRESENCE = 21 };
enum { KEV_DL_NODE_ABSENCE = 22 };
enum { KEV_DL_PRIMARY_ELECTED = 23 };
enum { KEV_DL_ISSUES = 24 };
enum { KEV_DL_IFDELEGATE_CHANGED = 25 };
enum { KEV_DL_AWDL_RESTRICTED = 26 };
enum { KEV_DL_AWDL_UNRESTRICTED = 27 };
enum { KEV_DL_RRC_STATE_CHANGED = 28 };
enum { KEV_DL_QOS_MODE_CHANGED = 29 };
enum { KEV_DL_LOW_POWER_MODE_CHANGED = 30 };
enum { KEV_DL_MASTER_ELECTED = 23 };
enum { KEV_INET6_SUBCLASS = 6 };
enum { KEV_INET6_NEW_USER_ADDR = 1 };
enum { KEV_INET6_CHANGED_ADDR = 2 };
enum { KEV_INET6_ADDR_DELETED = 3 };
enum { KEV_INET6_NEW_LL_ADDR = 4 };
enum { KEV_INET6_NEW_RTADV_ADDR = 5 };
enum { KEV_INET6_DEFROUTER = 6 };
enum { KEV_INET6_REQUEST_NAT64_PREFIX = 7 };
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/net/net_kev.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/socket.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/constrained_ctypes.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* #pragma clang diagnostic push */
/* #pragma clang diagnostic ignored "-Wextra-semi" */
/* #pragma clang diagnostic pop */
/* #pragma clang diagnostic push */
/* #pragma clang diagnostic ignored "-Wextra-semi" */
/* #pragma clang diagnostic pop */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/constrained_ctypes.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_param.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_param.h */
/* +++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
]] require 'ffi.req' 'c.i386._types' ffi.cdef[[
/* +++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_param.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_param.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/net/net_kev.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/net/net_kev.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_sa_family_t.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h */
typedef __uint8_t sa_family_t;
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_sa_family_t.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_socklen_t.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h */
typedef __darwin_socklen_t socklen_t;
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_socklen_t.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* redefining matching value: #define USE_CLANG_STDDEF 0 */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_iovec_t.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* redefining matching value: #define USE_CLANG_STDDEF 0 */
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
struct iovec {
	void * iov_base;
	size_t iov_len;
};
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_iovec_t.h */
enum { SOCK_STREAM = 1 };
enum { SOCK_DGRAM = 2 };
enum { SOCK_RAW = 3 };
enum { SOCK_RDM = 4 };
enum { SOCK_SEQPACKET = 5 };
enum { SO_DEBUG = 1 };
enum { SO_ACCEPTCONN = 2 };
enum { SO_REUSEADDR = 4 };
enum { SO_KEEPALIVE = 8 };
enum { SO_DONTROUTE = 16 };
enum { SO_BROADCAST = 32 };
enum { SO_USELOOPBACK = 64 };
enum { SO_LINGER = 128 };
enum { SO_LINGER_SEC = 4224 };
enum { SO_OOBINLINE = 256 };
enum { SO_REUSEPORT = 512 };
enum { SO_TIMESTAMP = 1024 };
enum { SO_TIMESTAMP_MONOTONIC = 2048 };
enum { SO_DONTTRUNC = 8192 };
enum { SO_WANTMORE = 16384 };
enum { SO_WANTOOBFLAG = 32768 };
enum { SO_SNDBUF = 4097 };
enum { SO_RCVBUF = 4098 };
enum { SO_SNDLOWAT = 4099 };
enum { SO_RCVLOWAT = 4100 };
enum { SO_SNDTIMEO = 4101 };
enum { SO_RCVTIMEO = 4102 };
enum { SO_ERROR = 4103 };
enum { SO_TYPE = 4104 };
enum { SO_LABEL = 4112 };
enum { SO_PEERLABEL = 4113 };
enum { SO_NREAD = 4128 };
enum { SO_NKE = 4129 };
enum { SO_NOSIGPIPE = 4130 };
enum { SO_NOADDRERR = 4131 };
enum { SO_NWRITE = 4132 };
enum { SO_REUSESHAREUID = 4133 };
enum { SO_NOTIFYCONFLICT = 4134 };
enum { SO_UPCALLCLOSEWAIT = 4135 };
enum { SO_RANDOMPORT = 4226 };
enum { SO_NP_EXTENSIONS = 4227 };
enum { SO_NUMRCVPKT = 4370 };
enum { SO_NET_SERVICE_TYPE = 4374 };
enum { SO_NETSVC_MARKING_LEVEL = 4377 };
enum { SO_RESOLVER_SIGNATURE = 4401 };
enum { SO_BINDTODEVICE = 4404 };
enum { NET_SERVICE_TYPE_BE = 0 };
enum { NET_SERVICE_TYPE_BK = 1 };
enum { NET_SERVICE_TYPE_SIG = 2 };
enum { NET_SERVICE_TYPE_VI = 3 };
enum { NET_SERVICE_TYPE_VO = 4 };
enum { NET_SERVICE_TYPE_RV = 5 };
enum { NET_SERVICE_TYPE_AV = 6 };
enum { NET_SERVICE_TYPE_OAM = 7 };
enum { NET_SERVICE_TYPE_RD = 8 };
enum { NETSVC_MRKNG_UNKNOWN = 0 };
enum { NETSVC_MRKNG_LVL_L2 = 1 };
enum { NETSVC_MRKNG_LVL_L3L2_ALL = 2 };
enum { NETSVC_MRKNG_LVL_L3L2_BK = 3 };
typedef __uint32_t sae_associd_t;
enum { SAE_ASSOCID_ANY = 0 };
/* #define SAE_ASSOCID_ALL ((sae_associd_t)(-1ULL)) ### string, not number "((sae_associd_t)(-1ULL))" */
typedef __uint32_t sae_connid_t;
enum { SAE_CONNID_ANY = 0 };
/* #define SAE_CONNID_ALL  ((sae_connid_t)(-1ULL)) ### string, not number "((sae_connid_t)(-1ULL))" */
enum { CONNECT_RESUME_ON_READ_WRITE = 1 };
enum { CONNECT_DATA_IDEMPOTENT = 2 };
enum { CONNECT_DATA_AUTHENTICATED = 4 };
typedef struct sa_endpoints {
	unsigned int sae_srcif;
	const struct sockaddr *sae_srcaddr;
	socklen_t sae_srcaddrlen;
	const struct sockaddr *sae_dstaddr;
	socklen_t sae_dstaddrlen;
} sa_endpoints_t;
struct linger {
	int l_onoff;
	int l_linger;
};
struct so_np_extensions {
	u_int32_t npx_flags;
	u_int32_t npx_mask;
};
enum { SONPX_SETOPTSHUT = 1 };
enum { SOL_SOCKET = 65535 };
enum { AF_UNSPEC = 0 };
enum { AF_UNIX = 1 };
enum { AF_LOCAL = 1 };
enum { AF_INET = 2 };
enum { AF_IMPLINK = 3 };
enum { AF_PUP = 4 };
enum { AF_CHAOS = 5 };
enum { AF_NS = 6 };
enum { AF_ISO = 7 };
enum { AF_OSI = 7 };
enum { AF_ECMA = 8 };
enum { AF_DATAKIT = 9 };
enum { AF_CCITT = 10 };
enum { AF_SNA = 11 };
enum { AF_DECnet = 12 };
enum { AF_DLI = 13 };
enum { AF_LAT = 14 };
enum { AF_HYLINK = 15 };
enum { AF_APPLETALK = 16 };
enum { AF_ROUTE = 17 };
enum { AF_LINK = 18 };
enum { pseudo_AF_XTP = 19 };
enum { AF_COIP = 20 };
enum { AF_CNT = 21 };
enum { pseudo_AF_RTIP = 22 };
enum { AF_IPX = 23 };
enum { AF_SIP = 24 };
enum { pseudo_AF_PIP = 25 };
enum { AF_NDRV = 27 };
enum { AF_ISDN = 28 };
enum { AF_E164 = 28 };
enum { pseudo_AF_KEY = 29 };
enum { AF_INET6 = 30 };
enum { AF_NATM = 31 };
enum { AF_SYSTEM = 32 };
enum { AF_NETBIOS = 33 };
enum { AF_PPP = 34 };
enum { pseudo_AF_HDRCMPLT = 35 };
enum { AF_RESERVED_36 = 36 };
enum { AF_IEEE80211 = 37 };
enum { AF_UTUN = 38 };
enum { AF_VSOCK = 40 };
enum { AF_MAX = 41 };
struct sockaddr {
	__uint8_t sa_len;
	sa_family_t sa_family;
	char sa_data[14];
};
;
struct __sockaddr_header {
	__uint8_t sa_len;
	sa_family_t sa_family;
};
enum { SOCK_MAXADDRLEN = 255 };
struct sockproto {
	__uint16_t sp_family;
	__uint16_t sp_protocol;
};
struct sockaddr_storage {
	__uint8_t ss_len;
	sa_family_t ss_family;
	char __ss_pad1[((sizeof(__int64_t)) - sizeof(__uint8_t) - sizeof(sa_family_t))];
	__int64_t __ss_align;
	char __ss_pad2[(128 - sizeof(__uint8_t) - sizeof(sa_family_t) - ((sizeof(__int64_t)) - sizeof(__uint8_t) - sizeof(sa_family_t)) - (sizeof(__int64_t)))];
};
;
enum { PF_UNSPEC = 0 };
enum { PF_LOCAL = 1 };
enum { PF_UNIX = 1 };
enum { PF_INET = 2 };
enum { PF_IMPLINK = 3 };
enum { PF_PUP = 4 };
enum { PF_CHAOS = 5 };
enum { PF_NS = 6 };
enum { PF_ISO = 7 };
enum { PF_OSI = 7 };
enum { PF_ECMA = 8 };
enum { PF_DATAKIT = 9 };
enum { PF_CCITT = 10 };
enum { PF_SNA = 11 };
enum { PF_DECnet = 12 };
enum { PF_DLI = 13 };
enum { PF_LAT = 14 };
enum { PF_HYLINK = 15 };
enum { PF_APPLETALK = 16 };
enum { PF_ROUTE = 17 };
enum { PF_LINK = 18 };
enum { PF_XTP = 19 };
enum { PF_COIP = 20 };
enum { PF_CNT = 21 };
enum { PF_SIP = 24 };
enum { PF_IPX = 23 };
enum { PF_RTIP = 22 };
enum { PF_PIP = 25 };
enum { PF_NDRV = 27 };
enum { PF_ISDN = 28 };
enum { PF_KEY = 29 };
enum { PF_INET6 = 30 };
enum { PF_NATM = 31 };
enum { PF_SYSTEM = 32 };
enum { PF_NETBIOS = 33 };
enum { PF_PPP = 34 };
enum { PF_RESERVED_36 = 36 };
enum { PF_UTUN = 38 };
enum { PF_VSOCK = 40 };
enum { PF_MAX = 41 };
/* #define PF_VLAN         ((uint32_t)0x766c616e) ### string, not number "((uint32_t)0x766c616e)" */
/* #define PF_BOND         ((uint32_t)0x626f6e64) ### string, not number "((uint32_t)0x626f6e64)" */
enum { NET_MAXID = 41 };
enum { NET_RT_DUMP = 1 };
enum { NET_RT_FLAGS = 2 };
enum { NET_RT_IFLIST = 3 };
enum { NET_RT_STAT = 4 };
enum { NET_RT_TRASH = 5 };
enum { NET_RT_IFLIST2 = 6 };
enum { NET_RT_DUMP2 = 7 };
enum { NET_RT_FLAGS_PRIV = 10 };
enum { NET_RT_MAXID = 11 };
enum { SOMAXCONN = 128 };
struct msghdr {
	void * msg_name;
	socklen_t msg_namelen;
	struct iovec *msg_iov;
	int msg_iovlen;
	void * msg_control;
	socklen_t msg_controllen;
	int msg_flags;
};
enum { MSG_OOB = 1 };
enum { MSG_PEEK = 2 };
enum { MSG_DONTROUTE = 4 };
enum { MSG_EOR = 8 };
enum { MSG_TRUNC = 16 };
enum { MSG_CTRUNC = 32 };
enum { MSG_WAITALL = 64 };
enum { MSG_DONTWAIT = 128 };
enum { MSG_EOF = 256 };
enum { MSG_WAITSTREAM = 512 };
enum { MSG_FLUSH = 1024 };
enum { MSG_HOLD = 2048 };
enum { MSG_SEND = 4096 };
enum { MSG_HAVEMORE = 8192 };
enum { MSG_RCVMORE = 16384 };
enum { MSG_NEEDSA = 65536 };
enum { MSG_NOSIGNAL = 524288 };
struct cmsghdr {
	socklen_t cmsg_len;
	int cmsg_level;
	int cmsg_type;
};
enum { SCM_RIGHTS = 1 };
enum { SCM_TIMESTAMP = 2 };
enum { SCM_CREDS = 3 };
enum { SCM_TIMESTAMP_MONOTONIC = 4 };
enum { SHUT_RD = 0 };
enum { SHUT_WR = 1 };
enum { SHUT_RDWR = 2 };
struct sf_hdtr {
	struct iovec *headers;
	int hdr_cnt;
	struct iovec *trailers;
	int trl_cnt;
};
int accept(int, struct sockaddr * restrict, socklen_t * restrict) __asm("accept");
int bind(int, const struct sockaddr *, socklen_t) __asm("bind");
int connect(int, const struct sockaddr *, socklen_t) __asm("connect");
int getpeername(int, struct sockaddr * restrict, socklen_t * restrict) __asm("getpeername");
int getsockname(int, struct sockaddr * restrict, socklen_t * restrict) __asm("getsockname");
int getsockopt(int, int, int, void * restrict, socklen_t * restrict);
int listen(int, int) __asm("listen");
ssize_t recv(int, void *, size_t, int) __asm("recv");
ssize_t recvfrom(int, void *, size_t, int, struct sockaddr * restrict, socklen_t * restrict) __asm("recvfrom");
ssize_t recvmsg(int, struct msghdr *, int) __asm("recvmsg");
ssize_t send(int, const void *, size_t, int) __asm("send");
ssize_t sendmsg(int, const struct msghdr *, int) __asm("sendmsg");
ssize_t sendto(int, const void *, size_t, int, const struct sockaddr *, socklen_t) __asm("sendto");
int setsockopt(int, int, int, const void *, socklen_t);
int shutdown(int, int);
int sockatmark(int);
int socket(int, int, int);
int socketpair(int, int, int, int *) __asm("socketpair");
int sendfile(int, int, off_t, off_t *, struct sf_hdtr *, int);
void pfctlinput(int, struct sockaddr *);
int connectx(int, const sa_endpoints_t *, sae_associd_t, unsigned int, const struct iovec *, unsigned int, size_t *, sae_connid_t *);
int disconnectx(int, sae_associd_t, sae_connid_t);
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/socket.h */
struct if_clonereq {
	int ifcr_total;
	int ifcr_count;
	char *ifcr_buffer;
};
enum { IFF_UP = 1 };
enum { IFF_BROADCAST = 2 };
enum { IFF_DEBUG = 4 };
enum { IFF_LOOPBACK = 8 };
enum { IFF_POINTOPOINT = 16 };
enum { IFF_NOTRAILERS = 32 };
enum { IFF_RUNNING = 64 };
enum { IFF_NOARP = 128 };
enum { IFF_PROMISC = 256 };
enum { IFF_ALLMULTI = 512 };
enum { IFF_OACTIVE = 1024 };
enum { IFF_SIMPLEX = 2048 };
enum { IFF_LINK0 = 4096 };
enum { IFF_LINK1 = 8192 };
enum { IFF_LINK2 = 16384 };
enum { IFF_ALTPHYS = 16384 };
enum { IFF_MULTICAST = 32768 };
enum { IFCAP_RXCSUM = 1 };
enum { IFCAP_TXCSUM = 2 };
enum { IFCAP_VLAN_MTU = 4 };
enum { IFCAP_VLAN_HWTAGGING = 8 };
enum { IFCAP_JUMBO_MTU = 16 };
enum { IFCAP_TSO4 = 32 };
enum { IFCAP_TSO6 = 64 };
enum { IFCAP_LRO = 128 };
enum { IFCAP_AV = 256 };
enum { IFCAP_TXSTATUS = 512 };
enum { IFCAP_SKYWALK = 1024 };
enum { IFCAP_HW_TIMESTAMP = 2048 };
enum { IFCAP_SW_TIMESTAMP = 4096 };
enum { IFCAP_CSUM_PARTIAL = 8192 };
enum { IFCAP_CSUM_ZERO_INVERT = 16384 };
enum { IFCAP_LRO_NUM_SEG = 32768 };
enum { IFCAP_HWCSUM = 3 };
enum { IFCAP_TSO = 96 };
enum { IFCAP_VALID = 32767 };
enum { IFQ_MAXLEN = 128 };
enum { IFNET_SLOWHZ = 1 };
/* #define IFQ_DEF_C_TARGET_DELAY        (10ULL * 1000 * 1000) ### string, not number "(10ULL * 1000 * 1000)" */
/* #define IFQ_DEF_C_UPDATE_INTERVAL     (100ULL * 1000 * 1000) ### string, not number "(100ULL * 1000 * 1000)" */
/* #define IFQ_DEF_L4S_TARGET_DELAY        (2ULL * 1000 * 1000) ### string, not number "(2ULL * 1000 * 1000)" */
/* #define IFQ_DEF_L4S_WIRELESS_TARGET_DELAY   (15ULL * 1000 * 1000) ### string, not number "(15ULL * 1000 * 1000)" */
/* #define IFQ_DEF_L4S_UPDATE_INTERVAL     (100ULL * 1000 * 1000) ### string, not number "(100ULL * 1000 * 1000)" */
/* #define IFQ_LL_C_TARGET_DELAY     (10ULL * 1000 * 1000) ### string, not number "(10ULL * 1000 * 1000)" */
/* #define IFQ_LL_C_UPDATE_INTERVAL  (100ULL * 1000 * 1000) ### string, not number "(100ULL * 1000 * 1000)" */
/* #define IFQ_LL_L4S_TARGET_DELAY     (2ULL * 1000 * 1000) ### string, not number "(2ULL * 1000 * 1000)" */
/* #define IFQ_LL_L4S_WIRELESS_TARGET_DELAY   (15ULL * 1000 * 1000) ### string, not number "(15ULL * 1000 * 1000)" */
/* #define IFQ_LL_L4S_UPDATE_INTERVAL  (100ULL * 1000 * 1000) ### string, not number "(100ULL * 1000 * 1000)" */
struct if_msghdr {
	unsigned short ifm_msglen;
	unsigned char ifm_version;
	unsigned char ifm_type;
	int ifm_addrs;
	int ifm_flags;
	unsigned short ifm_index;
	struct if_data ifm_data;
};
struct ifa_msghdr {
	unsigned short ifam_msglen;
	unsigned char ifam_version;
	unsigned char ifam_type;
	int ifam_addrs;
	int ifam_flags;
	unsigned short ifam_index;
	int ifam_metric;
};
struct ifma_msghdr {
	unsigned short ifmam_msglen;
	unsigned char ifmam_version;
	unsigned char ifmam_type;
	int ifmam_addrs;
	int ifmam_flags;
	unsigned short ifmam_index;
};
struct if_msghdr2 {
	u_short ifm_msglen;
	u_char ifm_version;
	u_char ifm_type;
	int ifm_addrs;
	int ifm_flags;
	u_short ifm_index;
	int ifm_snd_len;
	int ifm_snd_maxlen;
	int ifm_snd_drops;
	int ifm_timer;
	struct if_data64 ifm_data;
};
struct ifma_msghdr2 {
	u_short ifmam_msglen;
	u_char ifmam_version;
	u_char ifmam_type;
	int ifmam_addrs;
	int ifmam_flags;
	u_short ifmam_index;
	int32_t ifmam_refcount;
};
struct ifdevmtu {
	int ifdm_current;
	int ifdm_min;
	int ifdm_max;
};
/* #pragma pack(4) */
struct ifkpi {
	unsigned int ifk_module_id;
	unsigned int ifk_type;
	union {
	void *ifk_ptr;
	int ifk_value;
} ifk_data;
};
enum { IF_WAKE_ON_MAGIC_PACKET = 1 };
/* #pragma pack() */
struct ifreq {
	char ifr_name[16];
	union {
	struct sockaddr ifru_addr;
	struct sockaddr ifru_dstaddr;
	struct sockaddr ifru_broadaddr;
	short ifru_flags;
	int ifru_metric;
	int ifru_mtu;
	int ifru_phys;
	int ifru_media;
	int ifru_intval;
	caddr_t ifru_data;
	struct ifdevmtu ifru_devmtu;
	struct ifkpi ifru_kpi;
	u_int32_t ifru_wake_flags;
	u_int32_t ifru_route_refcnt;
	int ifru_cap[2];
	u_int32_t ifru_functional_type;
	u_int32_t ifru_peer_egress_functional_type;
	enum { IFRTYPE_FUNCTIONAL_UNKNOWN = 0 };
	enum { IFRTYPE_FUNCTIONAL_LOOPBACK = 1 };
	enum { IFRTYPE_FUNCTIONAL_WIRED = 2 };
	enum { IFRTYPE_FUNCTIONAL_WIFI_INFRA = 3 };
	enum { IFRTYPE_FUNCTIONAL_WIFI_AWDL = 4 };
	enum { IFRTYPE_FUNCTIONAL_CELLULAR = 5 };
	enum { IFRTYPE_FUNCTIONAL_INTCOPROC = 6 };
	enum { IFRTYPE_FUNCTIONAL_COMPANIONLINK = 7 };
	enum { IFRTYPE_FUNCTIONAL_MANAGEMENT = 8 };
	enum { IFRTYPE_FUNCTIONAL_LAST = 8 };
	u_int8_t ifru_is_directlink;
	u_int8_t ifru_is_vpn;
} ifr_ifru;
/* #define ifr_addr        ifr_ifru.ifru_addr ### string, not number "ifr_ifru.ifru_addr" */
/* #define ifr_dstaddr     ifr_ifru.ifru_dstaddr ### string, not number "ifr_ifru.ifru_dstaddr" */
/* #define ifr_broadaddr   ifr_ifru.ifru_broadaddr ### string, not number "ifr_ifru.ifru_broadaddr" */
/* #define ifr_flags       ifr_ifru.ifru_flags ### string, not number "ifr_ifru.ifru_flags" */
/* #define ifr_metric      ifr_ifru.ifru_metric ### string, not number "ifr_ifru.ifru_metric" */
/* #define ifr_mtu         ifr_ifru.ifru_mtu ### string, not number "ifr_ifru.ifru_mtu" */
/* #define ifr_phys        ifr_ifru.ifru_phys ### string, not number "ifr_ifru.ifru_phys" */
/* #define ifr_media       ifr_ifru.ifru_media ### string, not number "ifr_ifru.ifru_media" */
/* #define ifr_data        ifr_ifru.ifru_data ### string, not number "ifr_ifru.ifru_data" */
/* #define ifr_devmtu      ifr_ifru.ifru_devmtu ### string, not number "ifr_ifru.ifru_devmtu" */
/* #define ifr_intval      ifr_ifru.ifru_intval ### string, not number "ifr_ifru.ifru_intval" */
/* #define ifr_kpi         ifr_ifru.ifru_kpi ### string, not number "ifr_ifru.ifru_kpi" */
/* #define ifr_wake_flags  ifr_ifru.ifru_wake_flags ### string, not number "ifr_ifru.ifru_wake_flags" */
/* #define ifr_route_refcnt ifr_ifru.ifru_route_refcnt ### string, not number "ifr_ifru.ifru_route_refcnt" */
/* #define ifr_reqcap      ifr_ifru.ifru_cap[0] ### string, not number "ifr_ifru.ifru_cap[0]" */
/* #define ifr_curcap      ifr_ifru.ifru_cap[1] ### string, not number "ifr_ifru.ifru_cap[1]" */
};
struct ifaliasreq {
	char ifra_name[16];
	struct sockaddr ifra_addr;
	struct sockaddr ifra_broadaddr;
	struct sockaddr ifra_mask;
};
struct rslvmulti_req {
	struct sockaddr *sa;
	struct sockaddr **llsa;
};
/* #pragma pack(4) */
struct ifmediareq {
	char ifm_name[16];
	int ifm_current;
	int ifm_mask;
	int ifm_status;
	int ifm_active;
	int ifm_count;
	int *ifm_ulist;
};
/* #pragma pack() */
/* #pragma pack(4) */
struct ifdrv {
	char ifd_name[16];
	unsigned long ifd_cmd;
	size_t ifd_len;
	void *ifd_data;
};
/* #pragma pack() */
enum { IFSTATMAX = 800 };
struct ifstat {
	char ifs_name[16];
	char ascii[800 + 1];
};
/* #pragma pack(4) */
struct ifconf {
	int ifc_len;
	union {
	caddr_t ifcu_buf;
	struct ifreq *ifcu_req;
} ifc_ifcu;
};
/* #pragma pack() */
/* #define ifc_buf ifc_ifcu.ifcu_buf ### string, not number "ifc_ifcu.ifcu_buf" */
/* #define ifc_req ifc_ifcu.ifcu_req ### string, not number "ifc_ifcu.ifcu_req" */
struct kev_dl_proto_data {
	struct net_event_data link_data;
	u_int32_t proto_family;
	u_int32_t proto_remaining_count;
};
struct if_nameindex {
	unsigned int if_index;
	char *if_name;
};
unsigned int if_nametoindex(const char *);
char *if_indextoname(unsigned int, char *);
struct if_nameindex *if_nameindex(void);
void if_freenameindex(struct if_nameindex *);
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/net/if.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
/* #define SIOCSHIWAT       _IOW('s',  0, int) ### string, not number "_IOW('s',  0, int)" */
/* #define SIOCGHIWAT       _IOR('s',  1, int) ### string, not number "_IOR('s',  1, int)" */
/* #define SIOCSLOWAT       _IOW('s',  2, int) ### string, not number "_IOW('s',  2, int)" */
/* #define SIOCGLOWAT       _IOR('s',  3, int) ### string, not number "_IOR('s',  3, int)" */
/* #define SIOCATMARK       _IOR('s',  7, int) ### string, not number "_IOR('s',  7, int)" */
/* #define SIOCSPGRP        _IOW('s',  8, int) ### string, not number "_IOW('s',  8, int)" */
/* #define SIOCGPGRP        _IOR('s',  9, int) ### string, not number "_IOR('s',  9, int)" */
/* #define SIOCSIFADDR     _IOW('i', 12, struct ifreq) ### string, not number "_IOW('i', 12, struct ifreq)" */
/* #define SIOCSIFDSTADDR   _IOW('i', 14, struct ifreq) ### string, not number "_IOW('i', 14, struct ifreq)" */
/* #define SIOCSIFFLAGS     _IOW('i', 16, struct ifreq) ### string, not number "_IOW('i', 16, struct ifreq)" */
/* #define SIOCGIFFLAGS    _IOWR('i', 17, struct ifreq) ### string, not number "_IOWR('i', 17, struct ifreq)" */
/* #define SIOCSIFBRDADDR   _IOW('i', 19, struct ifreq) ### string, not number "_IOW('i', 19, struct ifreq)" */
/* #define SIOCSIFNETMASK   _IOW('i', 22, struct ifreq) ### string, not number "_IOW('i', 22, struct ifreq)" */
/* #define SIOCGIFMETRIC   _IOWR('i', 23, struct ifreq) ### string, not number "_IOWR('i', 23, struct ifreq)" */
/* #define SIOCSIFMETRIC   _IOW('i', 24, struct ifreq) ### string, not number "_IOW('i', 24, struct ifreq)" */
/* #define SIOCDIFADDR     _IOW('i', 25, struct ifreq) ### string, not number "_IOW('i', 25, struct ifreq)" */
/* #define SIOCAIFADDR     _IOW('i', 26, struct ifaliasreq) ### string, not number "_IOW('i', 26, struct ifaliasreq)" */
/* #define SIOCGIFADDR     _IOWR('i', 33, struct ifreq) ### string, not number "_IOWR('i', 33, struct ifreq)" */
/* #define SIOCGIFDSTADDR  _IOWR('i', 34, struct ifreq) ### string, not number "_IOWR('i', 34, struct ifreq)" */
/* #define SIOCGIFBRDADDR  _IOWR('i', 35, struct ifreq) ### string, not number "_IOWR('i', 35, struct ifreq)" */
/* #define SIOCGIFCONF     _IOWR('i', 36, struct ifconf) ### string, not number "_IOWR('i', 36, struct ifconf)" */
/* #define SIOCGIFNETMASK  _IOWR('i', 37, struct ifreq) ### string, not number "_IOWR('i', 37, struct ifreq)" */
/* #define SIOCAUTOADDR    _IOWR('i', 38, struct ifreq) ### string, not number "_IOWR('i', 38, struct ifreq)" */
/* #define SIOCAUTONETMASK _IOW('i', 39, struct ifreq) ### string, not number "_IOW('i', 39, struct ifreq)" */
/* #define SIOCARPIPLL             _IOWR('i', 40, struct ifreq) ### string, not number "_IOWR('i', 40, struct ifreq)" */
/* #define SIOCADDMULTI     _IOW('i', 49, struct ifreq) ### string, not number "_IOW('i', 49, struct ifreq)" */
/* #define SIOCDELMULTI     _IOW('i', 50, struct ifreq) ### string, not number "_IOW('i', 50, struct ifreq)" */
/* #define SIOCGIFMTU      _IOWR('i', 51, struct ifreq) ### string, not number "_IOWR('i', 51, struct ifreq)" */
/* #define SIOCSIFMTU       _IOW('i', 52, struct ifreq) ### string, not number "_IOW('i', 52, struct ifreq)" */
/* #define SIOCGIFPHYS     _IOWR('i', 53, struct ifreq) ### string, not number "_IOWR('i', 53, struct ifreq)" */
/* #define SIOCSIFPHYS      _IOW('i', 54, struct ifreq) ### string, not number "_IOW('i', 54, struct ifreq)" */
/* #define SIOCSIFMEDIA    _IOWR('i', 55, struct ifreq) ### string, not number "_IOWR('i', 55, struct ifreq)" */
/* #define SIOCGIFMEDIA    _IOWR('i', 56, struct ifmediareq) ### string, not number "_IOWR('i', 56, struct ifmediareq)" */
/* #define SIOCSIFGENERIC   _IOW('i', 57, struct ifreq) ### string, not number "_IOW('i', 57, struct ifreq)" */
/* #define SIOCGIFGENERIC  _IOWR('i', 58, struct ifreq) ### string, not number "_IOWR('i', 58, struct ifreq)" */
/* #define SIOCRSLVMULTI   _IOWR('i', 59, struct rslvmulti_req) ### string, not number "_IOWR('i', 59, struct rslvmulti_req)" */
/* #define SIOCSIFLLADDR   _IOW('i', 60, struct ifreq) ### string, not number "_IOW('i', 60, struct ifreq)" */
/* #define SIOCGIFSTATUS   _IOWR('i', 61, struct ifstat) ### string, not number "_IOWR('i', 61, struct ifstat)" */
/* #define SIOCSIFPHYADDR   _IOW('i', 62, struct ifaliasreq) ### string, not number "_IOW('i', 62, struct ifaliasreq)" */
/* #define SIOCGIFPSRCADDR _IOWR('i', 63, struct ifreq) ### string, not number "_IOWR('i', 63, struct ifreq)" */
/* #define SIOCGIFPDSTADDR _IOWR('i', 64, struct ifreq) ### string, not number "_IOWR('i', 64, struct ifreq)" */
/* #define SIOCDIFPHYADDR   _IOW('i', 65, struct ifreq) ### string, not number "_IOW('i', 65, struct ifreq)" */
/* #define SIOCGIFDEVMTU   _IOWR('i', 68, struct ifreq) ### string, not number "_IOWR('i', 68, struct ifreq)" */
/* #define SIOCSIFALTMTU    _IOW('i', 69, struct ifreq) ### string, not number "_IOW('i', 69, struct ifreq)" */
/* #define SIOCGIFALTMTU   _IOWR('i', 72, struct ifreq) ### string, not number "_IOWR('i', 72, struct ifreq)" */
/* #define SIOCSIFBOND      _IOW('i', 70, struct ifreq) ### string, not number "_IOW('i', 70, struct ifreq)" */
/* #define SIOCGIFBOND     _IOWR('i', 71, struct ifreq) ### string, not number "_IOWR('i', 71, struct ifreq)" */
/* #define SIOCGIFXMEDIA   _IOWR('i', 72, struct ifmediareq) ### string, not number "_IOWR('i', 72, struct ifmediareq)" */
/* #define SIOCSIFCAP       _IOW('i', 90, struct ifreq) ### string, not number "_IOW('i', 90, struct ifreq)" */
/* #define SIOCGIFCAP      _IOWR('i', 91, struct ifreq) ### string, not number "_IOWR('i', 91, struct ifreq)" */
/* #define SIOCSIFMANAGEMENT       _IOWR('i', 92, struct ifreq) ### string, not number "_IOWR('i', 92, struct ifreq)" */
/* #define SIOCIFCREATE    _IOWR('i', 120, struct ifreq) ### string, not number "_IOWR('i', 120, struct ifreq)" */
/* #define SIOCIFDESTROY    _IOW('i', 121, struct ifreq) ### string, not number "_IOW('i', 121, struct ifreq)" */
/* #define SIOCIFCREATE2   _IOWR('i', 122, struct ifreq) ### string, not number "_IOWR('i', 122, struct ifreq)" */
/* #define SIOCSDRVSPEC    _IOW('i', 123, struct ifdrv) ### string, not number "_IOW('i', 123, struct ifdrv)" */
/* #define SIOCGDRVSPEC    _IOWR('i', 123, struct ifdrv) ### string, not number "_IOWR('i', 123, struct ifdrv)" */
/* #define SIOCSIFVLAN      _IOW('i', 126, struct ifreq) ### string, not number "_IOW('i', 126, struct ifreq)" */
/* #define SIOCGIFVLAN     _IOWR('i', 127, struct ifreq) ### string, not number "_IOWR('i', 127, struct ifreq)" */
/* #define SIOCSETVLAN     SIOCSIFVLAN ### string, not number "SIOCSIFVLAN" */
/* #define SIOCGETVLAN     SIOCGIFVLAN ### string, not number "SIOCGIFVLAN" */
/* #define SIOCIFGCLONERS  _IOWR('i', 129, struct if_clonereq) ### string, not number "_IOWR('i', 129, struct if_clonereq)" */
/* #define SIOCGIFASYNCMAP _IOWR('i', 124, struct ifreq) ### string, not number "_IOWR('i', 124, struct ifreq)" */
/* #define SIOCSIFASYNCMAP _IOW('i', 125, struct ifreq) ### string, not number "_IOW('i', 125, struct ifreq)" */
/* #define SIOCGIFMAC      _IOWR('i', 130, struct ifreq) ### string, not number "_IOWR('i', 130, struct ifreq)" */
/* #define SIOCSIFMAC      _IOW('i', 131, struct ifreq) ### string, not number "_IOW('i', 131, struct ifreq)" */
/* #define SIOCSIFKPI      _IOW('i', 134, struct ifreq) ### string, not number "_IOW('i', 134, struct ifreq)" */
/* #define SIOCGIFKPI      _IOWR('i', 135, struct ifreq) ### string, not number "_IOWR('i', 135, struct ifreq)" */
/* #define SIOCGIFWAKEFLAGS _IOWR('i', 136, struct ifreq) ### string, not number "_IOWR('i', 136, struct ifreq)" */
/* #define SIOCGIFFUNCTIONALTYPE   _IOWR('i', 173, struct ifreq) ### string, not number "_IOWR('i', 173, struct ifreq)" */
/* #define SIOCSIF6LOWPAN  _IOW('i', 196, struct ifreq) ### string, not number "_IOW('i', 196, struct ifreq)" */
/* #define SIOCGIF6LOWPAN  _IOWR('i', 197, struct ifreq) ### string, not number "_IOWR('i', 197, struct ifreq)" */
/* #define SIOCGIFDIRECTLINK _IOWR('i', 222, struct ifreq) ### string, not number "_IOWR('i', 222, struct ifreq)" */
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/sockio.h */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
int ioctl(int, unsigned long, ...);
/* + END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/ioctl.h */
]]
