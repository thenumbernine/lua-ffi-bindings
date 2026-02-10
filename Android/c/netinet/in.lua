local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <netinet/in.h> /data/data/com.termux/files/usr/bin/../../usr/include/netinet/in.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <endian.h> /data/data/com.termux/files/usr/bin/../../usr/include/endian.h */
/* +++ BEGIN <sys/endian.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/endian.h */
/* ++++ BEGIN <stdint.h> /data/data/com.termux/files/usr/lib/clang/21/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++++ END <stdint.h> /data/data/com.termux/files/usr/lib/clang/21/include/stdint.h */
uint32_t htonl(uint32_t __x) __attribute__((__const__));
uint16_t htons(uint16_t __x) __attribute__((__const__));
uint32_t ntohl(uint32_t __x) __attribute__((__const__));
uint16_t ntohs(uint16_t __x) __attribute__((__const__));
/* +++ END <sys/endian.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/endian.h */
/* ++ END <endian.h> /data/data/com.termux/files/usr/bin/../../usr/include/endian.h */
/* ++ BEGIN <netinet/in6.h> /data/data/com.termux/files/usr/bin/../../usr/include/netinet/in6.h */
/* +++ BEGIN <linux/in6.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/in6.h */
/* ++++ BEGIN <linux/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/types.h */
/* ++++ END <linux/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/types.h */
/* ++++ BEGIN <linux/libc-compat.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/libc-compat.h */
/* ++++ END <linux/libc-compat.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/libc-compat.h */
struct in6_addr {
  union {
    uint8_t u6_addr8[16];
    uint16_t u6_addr16[8];
    uint32_t u6_addr32[4];
  } in6_u;
};
struct sockaddr_in6 {
  unsigned short int sin6_family;
  uint16_t sin6_port;
  uint32_t sin6_flowinfo;
  struct in6_addr sin6_addr;
  uint32_t sin6_scope_id;
};
struct ipv6_mreq {
  struct in6_addr ipv6mr_multiaddr;
  int ipv6mr_ifindex;
};
struct in6_flowlabel_req {
  struct in6_addr flr_dst;
  uint32_t flr_label;
  uint8_t flr_action;
  uint8_t flr_share;
  uint16_t flr_flags;
  uint16_t flr_expires;
  uint16_t flr_linger;
  uint32_t __flr_pad;
};
/* +++ END <linux/in6.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/in6.h */
/* ++ END <netinet/in6.h> /data/data/com.termux/files/usr/bin/../../usr/include/netinet/in6.h */
/* ++ BEGIN <sys/socket.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/socket.h */
]] require 'ffi.req' 'c.sys.socket' ffi.cdef[[
/* ++ END <sys/socket.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/socket.h */
/* ++ BEGIN <linux/in.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/in.h */
/* +++ BEGIN <bits/ip_msfilter.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/ip_msfilter.h */
/* ++++ BEGIN <bits/in_addr.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/in_addr.h */
typedef uint32_t in_addr_t;
struct in_addr {
  in_addr_t s_addr;
};
/* ++++ END <bits/in_addr.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/in_addr.h */
struct ip_msfilter {
  struct in_addr imsf_multiaddr;
  struct in_addr imsf_interface;
  uint32_t imsf_fmode;
  uint32_t imsf_numsrc;
  struct in_addr imsf_slist[1];
};
/* +++ END <bits/ip_msfilter.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/ip_msfilter.h */
/* +++ BEGIN <bits/ip_mreq_source.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/ip_mreq_source.h */
struct ip_mreq_source {
  struct in_addr imr_multiaddr;
  struct in_addr imr_interface;
  struct in_addr imr_sourceaddr;
};
/* +++ END <bits/ip_mreq_source.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/ip_mreq_source.h */
/* +++ BEGIN <linux/socket.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/socket.h */
typedef unsigned short __kernel_sa_family_t;
/* +++ END <linux/socket.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/socket.h */
enum {
  IPPROTO_IP = 0,
  IPPROTO_ICMP = 1,
  IPPROTO_IGMP = 2,
  IPPROTO_IPIP = 4,
  IPPROTO_TCP = 6,
  IPPROTO_EGP = 8,
  IPPROTO_PUP = 12,
  IPPROTO_UDP = 17,
  IPPROTO_IDP = 22,
  IPPROTO_TP = 29,
  IPPROTO_DCCP = 33,
  IPPROTO_IPV6 = 41,
  IPPROTO_RSVP = 46,
  IPPROTO_GRE = 47,
  IPPROTO_ESP = 50,
  IPPROTO_AH = 51,
  IPPROTO_MTP = 92,
  IPPROTO_BEETPH = 94,
  IPPROTO_ENCAP = 98,
  IPPROTO_PIM = 103,
  IPPROTO_COMP = 108,
  IPPROTO_L2TP = 115,
  IPPROTO_SCTP = 132,
  IPPROTO_UDPLITE = 136,
  IPPROTO_MPLS = 137,
  IPPROTO_ETHERNET = 143,
  IPPROTO_RAW = 255,
  IPPROTO_SMC = 256,
  IPPROTO_MPTCP = 262,
  IPPROTO_MAX
};
struct ip_mreq {
  struct in_addr imr_multiaddr;
  struct in_addr imr_interface;
};
struct ip_mreqn {
  struct in_addr imr_multiaddr;
  struct in_addr imr_address;
  int imr_ifindex;
};
struct group_req {
  uint32_t gr_interface;
  struct sockaddr_storage gr_group;
};
struct group_source_req {
  uint32_t gsr_interface;
  struct sockaddr_storage gsr_group;
  struct sockaddr_storage gsr_source;
};
struct group_filter {
  union {
    struct {
      uint32_t gf_interface_aux;
      struct sockaddr_storage gf_group_aux;
      uint32_t gf_fmode_aux;
      uint32_t gf_numsrc_aux;
      struct sockaddr_storage gf_slist[1];
    };
    struct {
      uint32_t gf_interface;
      struct sockaddr_storage gf_group;
      uint32_t gf_fmode;
      uint32_t gf_numsrc;
      struct sockaddr_storage gf_slist_flex[];
    };
  };
};
struct in_pktinfo {
  int ipi_ifindex;
  struct in_addr ipi_spec_dst;
  struct in_addr ipi_addr;
};
struct sockaddr_in {
  __kernel_sa_family_t sin_family;
  uint16_t sin_port;
  struct in_addr sin_addr;
  unsigned char __pad[16 - sizeof(short int) - sizeof(unsigned short int) - sizeof(struct in_addr)];
};
/* +++ BEGIN <asm/byteorder.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/byteorder.h */
/* ++++ BEGIN <linux/byteorder/little_endian.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/byteorder/little_endian.h */
/* +++++ BEGIN <linux/swab.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/swab.h */
/* ++++++ BEGIN <asm/bitsperlong.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/bitsperlong.h */
/* ++++++ END <asm/bitsperlong.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/bitsperlong.h */
/* ++++++ BEGIN <asm/swab.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/swab.h */
/* ++++++ END <asm/swab.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/swab.h */
static inline __attribute__((__const__)) uint32_t __fswahw32(uint32_t val) {
  return ((uint32_t) ((((uint32_t) (val) & (uint32_t) 0x0000ffffUL) << 16) | (((uint32_t) (val) & (uint32_t) 0xffff0000UL) >> 16)));
}
static inline __attribute__((__const__)) uint32_t __fswahb32(uint32_t val) {
  return ((uint32_t) ((((uint32_t) (val) & (uint32_t) 0x00ff00ffUL) << 8) | (((uint32_t) (val) & (uint32_t) 0xff00ff00UL) >> 8)));
}
static __attribute__((__always_inline__)) uint16_t __swab16p(const uint16_t * p) {
  return (uint16_t) __builtin_bswap16((uint16_t) (* p));
}
static __attribute__((__always_inline__)) uint32_t __swab32p(const uint32_t * p) {
  return (uint32_t) __builtin_bswap32((uint32_t) (* p));
}
static __attribute__((__always_inline__)) uint64_t __swab64p(const uint64_t * p) {
  return (uint64_t) __builtin_bswap64((uint64_t) (* p));
}
static inline uint32_t __swahw32p(const uint32_t * p) {
  return (__builtin_constant_p((uint32_t) (* p)) ? ((uint32_t) ((((uint32_t) (* p) & (uint32_t) 0x0000ffffUL) << 16) | (((uint32_t) (* p) & (uint32_t) 0xffff0000UL) >> 16))) : __fswahw32(* p));
}
static inline uint32_t __swahb32p(const uint32_t * p) {
  return (__builtin_constant_p((uint32_t) (* p)) ? ((uint32_t) ((((uint32_t) (* p) & (uint32_t) 0x00ff00ffUL) << 8) | (((uint32_t) (* p) & (uint32_t) 0xff00ff00UL) >> 8))) : __fswahb32(* p));
}
static inline void __swab16s(uint16_t * p) {
  * p = __swab16p(p);
}
static __attribute__((__always_inline__)) void __swab32s(uint32_t * p) {
  * p = __swab32p(p);
}
static __attribute__((__always_inline__)) void __swab64s(uint64_t * p) {
  * p = __swab64p(p);
}
static inline void __swahw32s(uint32_t * p) {
  * p = __swahw32p(p);
}
static inline void __swahb32s(uint32_t * p) {
  * p = __swahb32p(p);
}
/* +++++ END <linux/swab.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/swab.h */
/* ++++ END <linux/byteorder/little_endian.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/byteorder/little_endian.h */
/* +++ END <asm/byteorder.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/byteorder.h */
/* ++ END <linux/in.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/in.h */
/* ++ BEGIN <linux/ipv6.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/ipv6.h */
struct in6_pktinfo {
  struct in6_addr ipi6_addr;
  int ipi6_ifindex;
};
struct ip6_mtuinfo {
  struct sockaddr_in6 ip6m_addr;
  uint32_t ip6m_mtu;
};
struct in6_ifreq {
  struct in6_addr ifr6_addr;
  uint32_t ifr6_prefixlen;
  int ifr6_ifindex;
};
struct ipv6_rt_hdr {
  uint8_t nexthdr;
  uint8_t hdrlen;
  uint8_t type;
  uint8_t segments_left;
};
struct ipv6_opt_hdr {
  uint8_t nexthdr;
  uint8_t hdrlen;
} __attribute__((packed));
struct rt0_hdr {
  struct ipv6_rt_hdr rt_hdr;
  uint32_t reserved;
  struct in6_addr addr[];
};
struct rt2_hdr {
  struct ipv6_rt_hdr rt_hdr;
  uint32_t reserved;
  struct in6_addr addr;
};
struct ipv6_destopt_hao {
  uint8_t type;
  uint8_t length;
  struct in6_addr addr;
} __attribute__((packed));
struct ipv6hdr {
  uint8_t priority : 4, version : 4;
  uint8_t flow_lbl[3];
  uint16_t payload_len;
  uint8_t nexthdr;
  uint8_t hop_limit;
  union { struct { struct in6_addr saddr; struct in6_addr daddr; } ; struct { struct in6_addr saddr; struct in6_addr daddr; } addrs; } ;
};
enum {
  DEVCONF_FORWARDING = 0,
  DEVCONF_HOPLIMIT,
  DEVCONF_MTU6,
  DEVCONF_ACCEPT_RA,
  DEVCONF_ACCEPT_REDIRECTS,
  DEVCONF_AUTOCONF,
  DEVCONF_DAD_TRANSMITS,
  DEVCONF_RTR_SOLICITS,
  DEVCONF_RTR_SOLICIT_INTERVAL,
  DEVCONF_RTR_SOLICIT_DELAY,
  DEVCONF_USE_TEMPADDR,
  DEVCONF_TEMP_VALID_LFT,
  DEVCONF_TEMP_PREFERED_LFT,
  DEVCONF_REGEN_MAX_RETRY,
  DEVCONF_MAX_DESYNC_FACTOR,
  DEVCONF_MAX_ADDRESSES,
  DEVCONF_FORCE_MLD_VERSION,
  DEVCONF_ACCEPT_RA_DEFRTR,
  DEVCONF_ACCEPT_RA_PINFO,
  DEVCONF_ACCEPT_RA_RTR_PREF,
  DEVCONF_RTR_PROBE_INTERVAL,
  DEVCONF_ACCEPT_RA_RT_INFO_MAX_PLEN,
  DEVCONF_PROXY_NDP,
  DEVCONF_OPTIMISTIC_DAD,
  DEVCONF_ACCEPT_SOURCE_ROUTE,
  DEVCONF_MC_FORWARDING,
  DEVCONF_DISABLE_IPV6,
  DEVCONF_ACCEPT_DAD,
  DEVCONF_FORCE_TLLAO,
  DEVCONF_NDISC_NOTIFY,
  DEVCONF_MLDV1_UNSOLICITED_REPORT_INTERVAL,
  DEVCONF_MLDV2_UNSOLICITED_REPORT_INTERVAL,
  DEVCONF_SUPPRESS_FRAG_NDISC,
  DEVCONF_ACCEPT_RA_FROM_LOCAL,
  DEVCONF_USE_OPTIMISTIC,
  DEVCONF_ACCEPT_RA_MTU,
  DEVCONF_STABLE_SECRET,
  DEVCONF_USE_OIF_ADDRS_ONLY,
  DEVCONF_ACCEPT_RA_MIN_HOP_LIMIT,
  DEVCONF_IGNORE_ROUTES_WITH_LINKDOWN,
  DEVCONF_DROP_UNICAST_IN_L2_MULTICAST,
  DEVCONF_DROP_UNSOLICITED_NA,
  DEVCONF_KEEP_ADDR_ON_DOWN,
  DEVCONF_RTR_SOLICIT_MAX_INTERVAL,
  DEVCONF_SEG6_ENABLED,
  DEVCONF_SEG6_REQUIRE_HMAC,
  DEVCONF_ENHANCED_DAD,
  DEVCONF_ADDR_GEN_MODE,
  DEVCONF_DISABLE_POLICY,
  DEVCONF_ACCEPT_RA_RT_INFO_MIN_PLEN,
  DEVCONF_NDISC_TCLASS,
  DEVCONF_RPL_SEG_ENABLED,
  DEVCONF_RA_DEFRTR_METRIC,
  DEVCONF_IOAM6_ENABLED,
  DEVCONF_IOAM6_ID,
  DEVCONF_IOAM6_ID_WIDE,
  DEVCONF_NDISC_EVICT_NOCARRIER,
  DEVCONF_ACCEPT_UNTRACKED_NA,
  DEVCONF_ACCEPT_RA_MIN_LFT,
  DEVCONF_MAX
};
/* ++ END <linux/ipv6.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/ipv6.h */
typedef uint16_t in_port_t;
int bindresvport(int __fd, struct sockaddr_in*  __sin);
extern const struct in6_addr in6addr_any __attribute__((__availability__(android,strict,introduced=24 )));
extern const struct in6_addr in6addr_loopback __attribute__((__availability__(android,strict,introduced=24 )));
enum { _SYS_ENDIAN_H_ = 1 };
enum { _LITTLE_ENDIAN = 1234 };
enum { _BIG_ENDIAN = 4321 };
enum { _PDP_ENDIAN = 3412 };
enum { _BYTE_ORDER = 1234 };
enum { __LITTLE_ENDIAN_BITFIELD = 1 };
enum { __LITTLE_ENDIAN = 1234 };
enum { __BIG_ENDIAN = 4321 };
enum { __BYTE_ORDER = 1234 };
/* #define __swap16 __builtin_bswap16 ### define is not number */
/* #define __swap32 __builtin_bswap32 ### define is not number */
/* #define __swap64 (x) __BIONIC_CAST(static_cast,uint64_t,__builtin_bswap64(x)) ### define is not number */
/* #define htonl (x) __swap32(x) ### define is not number */
/* #define htons (x) __swap16(x) ### define is not number */
/* #define ntohl (x) __swap32(x) ### define is not number */
/* #define ntohs (x) __swap16(x) ### define is not number */
/* #define htonq (x) __swap64(x) ### define is not number */
/* #define ntohq (x) __swap64(x) ### define is not number */
enum { LITTLE_ENDIAN = 1234 };
enum { BIG_ENDIAN = 4321 };
enum { PDP_ENDIAN = 3412 };
enum { BYTE_ORDER = 1234 };
/* #define NTOHL (x) (x) = ntohl(__BIONIC_CAST(static_cast,u_int32_t,(x))) ### define is not number */
/* #define NTOHS (x) (x) = ntohs(__BIONIC_CAST(static_cast,u_int16_t,(x))) ### define is not number */
/* #define HTONL (x) (x) = htonl(__BIONIC_CAST(static_cast,u_int32_t,(x))) ### define is not number */
/* #define HTONS (x) (x) = htons(__BIONIC_CAST(static_cast,u_int16_t,(x))) ### define is not number */
/* #define htobe16 (x) __swap16(x) ### define is not number */
/* #define htobe32 (x) __swap32(x) ### define is not number */
/* #define htobe64 (x) __swap64(x) ### define is not number */
/* #define betoh16 (x) __swap16(x) ### define is not number */
/* #define betoh32 (x) __swap32(x) ### define is not number */
/* #define betoh64 (x) __swap64(x) ### define is not number */
/* #define htole16 (x) (x) ### define is not number */
/* #define htole32 (x) (x) ### define is not number */
/* #define htole64 (x) (x) ### define is not number */
/* #define letoh16 (x) (x) ### define is not number */
/* #define letoh32 (x) (x) ### define is not number */
/* #define letoh64 (x) (x) ### define is not number */
/* #define be16toh (x) htobe16(x) ### define is not number */
/* #define be32toh (x) htobe32(x) ### define is not number */
/* #define be64toh (x) htobe64(x) ### define is not number */
/* #define le16toh (x) htole16(x) ### define is not number */
/* #define le32toh (x) htole32(x) ### define is not number */
/* #define le64toh (x) htole64(x) ### define is not number */
enum { _NETINET_IN6_H = 1 };
enum { _UAPI_LINUX_IN6_H = 1 };
enum { _UAPI_LIBC_COMPAT_H = 1 };
enum { __UAPI_DEF_IF_IFCONF = 1 };
enum { __UAPI_DEF_IF_IFMAP = 1 };
enum { __UAPI_DEF_IF_IFNAMSIZ = 1 };
enum { __UAPI_DEF_IF_IFREQ = 1 };
enum { __UAPI_DEF_IF_NET_DEVICE_FLAGS = 1 };
enum { __UAPI_DEF_IF_NET_DEVICE_FLAGS_LOWER_UP_DORMANT_ECHO = 1 };
enum { __UAPI_DEF_IN_ADDR = 1 };
enum { __UAPI_DEF_IN_IPPROTO = 1 };
enum { __UAPI_DEF_IN_PKTINFO = 1 };
enum { __UAPI_DEF_IP_MREQ = 1 };
enum { __UAPI_DEF_SOCKADDR_IN = 1 };
enum { __UAPI_DEF_IN_CLASS = 1 };
enum { __UAPI_DEF_IN6_ADDR = 1 };
enum { __UAPI_DEF_IN6_ADDR_ALT = 1 };
enum { __UAPI_DEF_SOCKADDR_IN6 = 1 };
enum { __UAPI_DEF_IPV6_MREQ = 1 };
enum { __UAPI_DEF_IPPROTO_V6 = 1 };
enum { __UAPI_DEF_IPV6_OPTIONS = 1 };
enum { __UAPI_DEF_IN6_PKTINFO = 1 };
enum { __UAPI_DEF_IP6_MTUINFO = 1 };
enum { __UAPI_DEF_XATTR = 1 };
/* #define s6_addr in6_u.u6_addr8 ### define is not number */
/* #define s6_addr16 in6_u.u6_addr16 ### define is not number */
/* #define s6_addr32 in6_u.u6_addr32 ### define is not number */
/* #define ipv6mr_acaddr ipv6mr_multiaddr ### define is not number */
enum { IPV6_FL_A_GET = 0 };
enum { IPV6_FL_A_PUT = 1 };
enum { IPV6_FL_A_RENEW = 2 };
enum { IPV6_FL_F_CREATE = 1 };
enum { IPV6_FL_F_EXCL = 2 };
enum { IPV6_FL_F_REFLECT = 4 };
enum { IPV6_FL_F_REMOTE = 8 };
enum { IPV6_FL_S_NONE = 0 };
enum { IPV6_FL_S_EXCL = 1 };
enum { IPV6_FL_S_PROCESS = 2 };
enum { IPV6_FL_S_USER = 3 };
enum { IPV6_FL_S_ANY = 255 };
enum { IPV6_FLOWINFO_FLOWLABEL = 0x000fffff };
enum { IPV6_FLOWINFO_PRIORITY = 0x0ff00000 };
enum { IPV6_PRIORITY_UNCHARACTERIZED = 0x0000 };
enum { IPV6_PRIORITY_FILLER = 0x0100 };
enum { IPV6_PRIORITY_UNATTENDED = 0x0200 };
enum { IPV6_PRIORITY_RESERVED1 = 0x0300 };
enum { IPV6_PRIORITY_BULK = 0x0400 };
enum { IPV6_PRIORITY_RESERVED2 = 0x0500 };
enum { IPV6_PRIORITY_INTERACTIVE = 0x0600 };
enum { IPV6_PRIORITY_CONTROL = 0x0700 };
enum { IPV6_PRIORITY_8 = 0x0800 };
enum { IPV6_PRIORITY_9 = 0x0900 };
enum { IPV6_PRIORITY_10 = 0x0a00 };
enum { IPV6_PRIORITY_11 = 0x0b00 };
enum { IPV6_PRIORITY_12 = 0x0c00 };
enum { IPV6_PRIORITY_13 = 0x0d00 };
enum { IPV6_PRIORITY_14 = 0x0e00 };
enum { IPV6_PRIORITY_15 = 0x0f00 };
enum { IPPROTO_HOPOPTS = 0 };
enum { IPPROTO_ROUTING = 43 };
enum { IPPROTO_FRAGMENT = 44 };
enum { IPPROTO_ICMPV6 = 58 };
enum { IPPROTO_NONE = 59 };
enum { IPPROTO_DSTOPTS = 60 };
enum { IPPROTO_MH = 135 };
enum { IPV6_TLV_PAD1 = 0 };
enum { IPV6_TLV_PADN = 1 };
enum { IPV6_TLV_ROUTERALERT = 5 };
enum { IPV6_TLV_CALIPSO = 7 };
enum { IPV6_TLV_IOAM = 49 };
enum { IPV6_TLV_JUMBO = 194 };
enum { IPV6_TLV_HAO = 201 };
enum { IPV6_ADDRFORM = 1 };
enum { IPV6_2292PKTINFO = 2 };
enum { IPV6_2292HOPOPTS = 3 };
enum { IPV6_2292DSTOPTS = 4 };
enum { IPV6_2292RTHDR = 5 };
enum { IPV6_2292PKTOPTIONS = 6 };
enum { IPV6_CHECKSUM = 7 };
enum { IPV6_2292HOPLIMIT = 8 };
enum { IPV6_NEXTHOP = 9 };
enum { IPV6_AUTHHDR = 10 };
enum { IPV6_FLOWINFO = 11 };
enum { IPV6_UNICAST_HOPS = 16 };
enum { IPV6_MULTICAST_IF = 17 };
enum { IPV6_MULTICAST_HOPS = 18 };
enum { IPV6_MULTICAST_LOOP = 19 };
enum { IPV6_ADD_MEMBERSHIP = 20 };
enum { IPV6_DROP_MEMBERSHIP = 21 };
enum { IPV6_ROUTER_ALERT = 22 };
enum { IPV6_MTU_DISCOVER = 23 };
enum { IPV6_MTU = 24 };
enum { IPV6_RECVERR = 25 };
enum { IPV6_V6ONLY = 26 };
enum { IPV6_JOIN_ANYCAST = 27 };
enum { IPV6_LEAVE_ANYCAST = 28 };
enum { IPV6_MULTICAST_ALL = 29 };
enum { IPV6_ROUTER_ALERT_ISOLATE = 30 };
enum { IPV6_RECVERR_RFC4884 = 31 };
enum { IPV6_PMTUDISC_DONT = 0 };
enum { IPV6_PMTUDISC_WANT = 1 };
enum { IPV6_PMTUDISC_DO = 2 };
enum { IPV6_PMTUDISC_PROBE = 3 };
enum { IPV6_PMTUDISC_INTERFACE = 4 };
enum { IPV6_PMTUDISC_OMIT = 5 };
enum { IPV6_FLOWLABEL_MGR = 32 };
enum { IPV6_FLOWINFO_SEND = 33 };
enum { IPV6_IPSEC_POLICY = 34 };
enum { IPV6_XFRM_POLICY = 35 };
enum { IPV6_HDRINCL = 36 };
enum { IPV6_RECVPKTINFO = 49 };
enum { IPV6_PKTINFO = 50 };
enum { IPV6_RECVHOPLIMIT = 51 };
enum { IPV6_HOPLIMIT = 52 };
enum { IPV6_RECVHOPOPTS = 53 };
enum { IPV6_HOPOPTS = 54 };
enum { IPV6_RTHDRDSTOPTS = 55 };
enum { IPV6_RECVRTHDR = 56 };
enum { IPV6_RTHDR = 57 };
enum { IPV6_RECVDSTOPTS = 58 };
enum { IPV6_DSTOPTS = 59 };
enum { IPV6_RECVPATHMTU = 60 };
enum { IPV6_PATHMTU = 61 };
enum { IPV6_DONTFRAG = 62 };
enum { IPV6_RECVTCLASS = 66 };
enum { IPV6_TCLASS = 67 };
enum { IPV6_AUTOFLOWLABEL = 70 };
enum { IPV6_ADDR_PREFERENCES = 72 };
enum { IPV6_PREFER_SRC_TMP = 0x0001 };
enum { IPV6_PREFER_SRC_PUBLIC = 0x0002 };
enum { IPV6_PREFER_SRC_PUBTMP_DEFAULT = 0x0100 };
enum { IPV6_PREFER_SRC_COA = 0x0004 };
enum { IPV6_PREFER_SRC_HOME = 0x0400 };
enum { IPV6_PREFER_SRC_CGA = 0x0008 };
enum { IPV6_PREFER_SRC_NONCGA = 0x0800 };
enum { IPV6_MINHOPCOUNT = 73 };
enum { IPV6_ORIGDSTADDR = 74 };
enum { IPV6_RECVORIGDSTADDR = 74 };
enum { IPV6_TRANSPARENT = 75 };
enum { IPV6_UNICAST_IF = 76 };
enum { IPV6_RECVFRAGSIZE = 77 };
enum { IPV6_FREEBIND = 78 };
/* #define IN6_IS_ADDR_UNSPECIFIED (a) ((((a)->s6_addr32[0]) == 0) && (((a)->s6_addr32[1]) == 0) && (((a)->s6_addr32[2]) == 0) && (((a)->s6_addr32[3]) == 0)) ### define is not number */
/* #define IN6_IS_ADDR_LOOPBACK (a) ((((a)->s6_addr32[0]) == 0) && (((a)->s6_addr32[1]) == 0) && (((a)->s6_addr32[2]) == 0) && (((a)->s6_addr32[3]) == ntohl(1))) ### define is not number */
/* #define IN6_IS_ADDR_V4COMPAT (a) ((((a)->s6_addr32[0]) == 0) && (((a)->s6_addr32[1]) == 0) && (((a)->s6_addr32[2]) == 0) && (((a)->s6_addr32[3]) != 0) && (((a)->s6_addr32[3]) != ntohl(1))) ### define is not number */
/* #define IN6_IS_ADDR_V4MAPPED (a) ((((a)->s6_addr32[0]) == 0) && (((a)->s6_addr32[1]) == 0) && (((a)->s6_addr32[2]) == ntohl(0x0000ffff))) ### define is not number */
/* #define __bionic_s6_addr (a) __BIONIC_CAST(reinterpret_cast, const uint8_t*, a) ### define is not number */
/* #define IN6_IS_ADDR_LINKLOCAL (a) ((__bionic_s6_addr(a)[0] == 0xfe) && ((__bionic_s6_addr(a)[1] & 0xc0) == 0x80)) ### define is not number */
/* #define IN6_IS_ADDR_SITELOCAL (a) ((__bionic_s6_addr(a)[0] == 0xfe) && ((__bionic_s6_addr(a)[1] & 0xc0) == 0xc0)) ### define is not number */
/* #define IN6_IS_ADDR_MULTICAST (a) (__bionic_s6_addr(a)[0] == 0xff) ### define is not number */
/* #define IN6_IS_ADDR_ULA (a) ((__bionic_s6_addr(a)[0] & 0xfe) == 0xfc) ### define is not number */
enum { IPV6_ADDR_SCOPE_NODELOCAL = 0x01 };
enum { IPV6_ADDR_SCOPE_INTFACELOCAL = 0x01 };
enum { IPV6_ADDR_SCOPE_LINKLOCAL = 0x02 };
enum { IPV6_ADDR_SCOPE_SITELOCAL = 0x05 };
enum { IPV6_ADDR_SCOPE_ORGLOCAL = 0x08 };
enum { IPV6_ADDR_SCOPE_GLOBAL = 0x0e };
/* #define IPV6_ADDR_MC_SCOPE (a) (__bionic_s6_addr(a)[1] & 0x0f) ### define is not number */
/* #define IN6_IS_ADDR_MC_NODELOCAL (a) (IN6_IS_ADDR_MULTICAST(a) && (IPV6_ADDR_MC_SCOPE(a) == IPV6_ADDR_SCOPE_NODELOCAL)) ### define is not number */
/* #define IN6_IS_ADDR_MC_LINKLOCAL (a) (IN6_IS_ADDR_MULTICAST(a) && (IPV6_ADDR_MC_SCOPE(a) == IPV6_ADDR_SCOPE_LINKLOCAL)) ### define is not number */
/* #define IN6_IS_ADDR_MC_SITELOCAL (a) (IN6_IS_ADDR_MULTICAST(a) && (IPV6_ADDR_MC_SCOPE(a) == IPV6_ADDR_SCOPE_SITELOCAL)) ### define is not number */
/* #define IN6_IS_ADDR_MC_ORGLOCAL (a) (IN6_IS_ADDR_MULTICAST(a) && (IPV6_ADDR_MC_SCOPE(a) == IPV6_ADDR_SCOPE_ORGLOCAL)) ### define is not number */
/* #define IN6_IS_ADDR_MC_GLOBAL (a) (IN6_IS_ADDR_MULTICAST(a) && (IPV6_ADDR_MC_SCOPE(a) == IPV6_ADDR_SCOPE_GLOBAL)) ### define is not number */
/* #define IN6_ARE_ADDR_EQUAL (a,b) (__builtin_memcmp(&(a)->s6_addr[0], &(b)->s6_addr[0], sizeof(struct in6_addr)) == 0) ### define is not number */
enum { INET6_ADDRSTRLEN = 46 };
enum { IPV6_JOIN_GROUP = 20 };
enum { IPV6_LEAVE_GROUP = 21 };
/* #define IN6ADDR_ANY_INIT {{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}}} ### define is not number */
/* #define IN6ADDR_LOOPBACK_INIT {{{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1}}} ### define is not number */
/* #define ipv6mr_interface ipv6mr_ifindex ### define is not number */
enum { _UAPI_LINUX_IN_H = 1 };
enum { _UAPI_LINUX_SOCKET_H = 1 };
enum { _K_SS_MAXSIZE = 128 };
enum { SOCK_SNDBUF_LOCK = 1 };
enum { SOCK_RCVBUF_LOCK = 2 };
/* #define SOCK_BUF_LOCK_MASK (SOCK_SNDBUF_LOCK | SOCK_RCVBUF_LOCK) ### define is not number */
enum { SOCK_TXREHASH_DEFAULT = 255 };
enum { SOCK_TXREHASH_DISABLED = 0 };
enum { SOCK_TXREHASH_ENABLED = 1 };
/* #define IPPROTO_IP IPPROTO_IP ### define is not number */
/* #define IPPROTO_ICMP IPPROTO_ICMP ### define is not number */
/* #define IPPROTO_IGMP IPPROTO_IGMP ### define is not number */
/* #define IPPROTO_IPIP IPPROTO_IPIP ### define is not number */
/* #define IPPROTO_TCP IPPROTO_TCP ### define is not number */
/* #define IPPROTO_EGP IPPROTO_EGP ### define is not number */
/* #define IPPROTO_PUP IPPROTO_PUP ### define is not number */
/* #define IPPROTO_UDP IPPROTO_UDP ### define is not number */
/* #define IPPROTO_IDP IPPROTO_IDP ### define is not number */
/* #define IPPROTO_TP IPPROTO_TP ### define is not number */
/* #define IPPROTO_DCCP IPPROTO_DCCP ### define is not number */
/* #define IPPROTO_IPV6 IPPROTO_IPV6 ### define is not number */
/* #define IPPROTO_RSVP IPPROTO_RSVP ### define is not number */
/* #define IPPROTO_GRE IPPROTO_GRE ### define is not number */
/* #define IPPROTO_ESP IPPROTO_ESP ### define is not number */
/* #define IPPROTO_AH IPPROTO_AH ### define is not number */
/* #define IPPROTO_MTP IPPROTO_MTP ### define is not number */
/* #define IPPROTO_BEETPH IPPROTO_BEETPH ### define is not number */
/* #define IPPROTO_ENCAP IPPROTO_ENCAP ### define is not number */
/* #define IPPROTO_PIM IPPROTO_PIM ### define is not number */
/* #define IPPROTO_COMP IPPROTO_COMP ### define is not number */
/* #define IPPROTO_L2TP IPPROTO_L2TP ### define is not number */
/* #define IPPROTO_SCTP IPPROTO_SCTP ### define is not number */
/* #define IPPROTO_UDPLITE IPPROTO_UDPLITE ### define is not number */
/* #define IPPROTO_MPLS IPPROTO_MPLS ### define is not number */
/* #define IPPROTO_ETHERNET IPPROTO_ETHERNET ### define is not number */
/* #define IPPROTO_RAW IPPROTO_RAW ### define is not number */
/* #define IPPROTO_SMC IPPROTO_SMC ### define is not number */
/* #define IPPROTO_MPTCP IPPROTO_MPTCP ### define is not number */
enum { IP_TOS = 1 };
enum { IP_TTL = 2 };
enum { IP_HDRINCL = 3 };
enum { IP_OPTIONS = 4 };
enum { IP_ROUTER_ALERT = 5 };
enum { IP_RECVOPTS = 6 };
enum { IP_RETOPTS = 7 };
enum { IP_PKTINFO = 8 };
enum { IP_PKTOPTIONS = 9 };
enum { IP_MTU_DISCOVER = 10 };
enum { IP_RECVERR = 11 };
enum { IP_RECVTTL = 12 };
enum { IP_RECVTOS = 13 };
enum { IP_MTU = 14 };
enum { IP_FREEBIND = 15 };
enum { IP_IPSEC_POLICY = 16 };
enum { IP_XFRM_POLICY = 17 };
enum { IP_PASSSEC = 18 };
enum { IP_TRANSPARENT = 19 };
enum { IP_RECVRETOPTS = 7 };
enum { IP_ORIGDSTADDR = 20 };
enum { IP_RECVORIGDSTADDR = 20 };
enum { IP_MINTTL = 21 };
enum { IP_NODEFRAG = 22 };
enum { IP_CHECKSUM = 23 };
enum { IP_BIND_ADDRESS_NO_PORT = 24 };
enum { IP_RECVFRAGSIZE = 25 };
enum { IP_RECVERR_RFC4884 = 26 };
enum { IP_PMTUDISC_DONT = 0 };
enum { IP_PMTUDISC_WANT = 1 };
enum { IP_PMTUDISC_DO = 2 };
enum { IP_PMTUDISC_PROBE = 3 };
enum { IP_PMTUDISC_INTERFACE = 4 };
enum { IP_PMTUDISC_OMIT = 5 };
enum { IP_MULTICAST_IF = 32 };
enum { IP_MULTICAST_TTL = 33 };
enum { IP_MULTICAST_LOOP = 34 };
enum { IP_ADD_MEMBERSHIP = 35 };
enum { IP_DROP_MEMBERSHIP = 36 };
enum { IP_UNBLOCK_SOURCE = 37 };
enum { IP_BLOCK_SOURCE = 38 };
enum { IP_ADD_SOURCE_MEMBERSHIP = 39 };
enum { IP_DROP_SOURCE_MEMBERSHIP = 40 };
enum { IP_MSFILTER = 41 };
enum { MCAST_JOIN_GROUP = 42 };
enum { MCAST_BLOCK_SOURCE = 43 };
enum { MCAST_UNBLOCK_SOURCE = 44 };
enum { MCAST_LEAVE_GROUP = 45 };
enum { MCAST_JOIN_SOURCE_GROUP = 46 };
enum { MCAST_LEAVE_SOURCE_GROUP = 47 };
enum { MCAST_MSFILTER = 48 };
enum { IP_MULTICAST_ALL = 49 };
enum { IP_UNICAST_IF = 50 };
enum { IP_LOCAL_PORT_RANGE = 51 };
enum { IP_PROTOCOL = 52 };
enum { MCAST_EXCLUDE = 0 };
enum { MCAST_INCLUDE = 1 };
enum { IP_DEFAULT_MULTICAST_TTL = 1 };
enum { IP_DEFAULT_MULTICAST_LOOP = 1 };
/* #define IP_MSFILTER_SIZE (numsrc) (sizeof(struct ip_msfilter) - sizeof(uint32_t) + (numsrc) * sizeof(uint32_t)) ### define is not number */
/* #define GROUP_FILTER_SIZE (numsrc) (sizeof(struct group_filter) - sizeof(struct sockaddr_storage) + (numsrc) * sizeof(struct sockaddr_storage)) ### define is not number */
enum { __SOCK_SIZE__ = 16 };
/* #define sin_zero __pad ### define is not number */
/* #define IN_CLASSA (a) ((((long int) (a)) & 0x80000000) == 0) ### define is not number */
enum { IN_CLASSA_NET = 0xff000000 };
enum { IN_CLASSA_NSHIFT = 24 };
/* #define IN_CLASSA_HOST (0xffffffff & ~IN_CLASSA_NET) ### define is not number */
enum { IN_CLASSA_MAX = 128 };
/* #define IN_CLASSB (a) ((((long int) (a)) & 0xc0000000) == 0x80000000) ### define is not number */
enum { IN_CLASSB_NET = 0xffff0000 };
enum { IN_CLASSB_NSHIFT = 16 };
/* #define IN_CLASSB_HOST (0xffffffff & ~IN_CLASSB_NET) ### define is not number */
enum { IN_CLASSB_MAX = 65536 };
/* #define IN_CLASSC (a) ((((long int) (a)) & 0xe0000000) == 0xc0000000) ### define is not number */
enum { IN_CLASSC_NET = 0xffffff00 };
enum { IN_CLASSC_NSHIFT = 8 };
/* #define IN_CLASSC_HOST (0xffffffff & ~IN_CLASSC_NET) ### define is not number */
/* #define IN_CLASSD (a) ((((long int) (a)) & 0xf0000000) == 0xe0000000) ### define is not number */
/* #define IN_MULTICAST (a) IN_CLASSD(a) ### define is not number */
enum { IN_MULTICAST_NET = 0xe0000000 };
/* #define IN_BADCLASS (a) (((long int) (a)) == (long int) 0xffffffff) ### define is not number */
/* #define IN_EXPERIMENTAL (a) IN_BADCLASS((a)) ### define is not number */
/* #define IN_CLASSE (a) ((((long int) (a)) & 0xf0000000) == 0xf0000000) ### define is not number */
enum { IN_CLASSE_NET = 0xffffffff };
enum { IN_CLASSE_NSHIFT = 0 };
/* #define INADDR_ANY ((unsigned long int) 0x00000000) ### define is not number */
/* #define INADDR_BROADCAST ((unsigned long int) 0xffffffff) ### define is not number */
/* #define INADDR_NONE ((unsigned long int) 0xffffffff) ### define is not number */
/* #define INADDR_DUMMY ((unsigned long int) 0xc0000008) ### define is not number */
enum { IN_LOOPBACKNET = 127 };
enum { INADDR_LOOPBACK = 0x7f000001 };
/* #define IN_LOOPBACK (a) ((((long int) (a)) & 0xff000000) == 0x7f000000) ### define is not number */
enum { INADDR_UNSPEC_GROUP = 0xe0000000 };
enum { INADDR_ALLHOSTS_GROUP = 0xe0000001 };
enum { INADDR_ALLRTRS_GROUP = 0xe0000002 };
enum { INADDR_ALLSNOOPERS_GROUP = 0xe000006a };
enum { INADDR_MAX_LOCAL_GROUP = 0xe00000ff };
enum { __ASM_ARM_BYTEORDER_H = 1 };
enum { _UAPI_LINUX_BYTEORDER_LITTLE_ENDIAN_H = 1 };
enum { _UAPI_LINUX_SWAB_H = 1 };
enum { _UAPI__ASM_ARM_SWAB_H = 1 };
enum { __SWAB_64_THRU_32__ = 1 };
/* #define __arch_swab32 __arch_swab32 ### define is not number */
/* #define ___constant_swab16 (x) ((uint16_t) ((((uint16_t) (x) & (uint16_t) 0x00ffU) << 8) | (((uint16_t) (x) & (uint16_t) 0xff00U) >> 8))) ### define is not number */
/* #define ___constant_swab32 (x) ((uint32_t) ((((uint32_t) (x) & (uint32_t) 0x000000ffUL) << 24) | (((uint32_t) (x) & (uint32_t) 0x0000ff00UL) << 8) | (((uint32_t) (x) & (uint32_t) 0x00ff0000UL) >> 8) | (((uint32_t) (x) & (uint32_t) 0xff000000UL) >> 24))) ### define is not number */
/* #define ___constant_swab64 (x) ((uint64_t) ((((uint64_t) (x) & (uint64_t) 0x00000000000000ffULL) << 56) | (((uint64_t) (x) & (uint64_t) 0x000000000000ff00ULL) << 40) | (((uint64_t) (x) & (uint64_t) 0x0000000000ff0000ULL) << 24) | (((uint64_t) (x) & (uint64_t) 0x00000000ff000000ULL) << 8) | (((uint64_t) (x) & (uint64_t) 0x000000ff00000000ULL) >> 8) | (((uint64_t) (x) & (uint64_t) 0x0000ff0000000000ULL) >> 24) | (((uint64_t) (x) & (uint64_t) 0x00ff000000000000ULL) >> 40) | (((uint64_t) (x) & (uint64_t) 0xff00000000000000ULL) >> 56))) ### define is not number */
/* #define ___constant_swahw32 (x) ((uint32_t) ((((uint32_t) (x) & (uint32_t) 0x0000ffffUL) << 16) | (((uint32_t) (x) & (uint32_t) 0xffff0000UL) >> 16))) ### define is not number */
/* #define ___constant_swahb32 (x) ((uint32_t) ((((uint32_t) (x) & (uint32_t) 0x00ff00ffUL) << 8) | (((uint32_t) (x) & (uint32_t) 0xff00ff00UL) >> 8))) ### define is not number */
/* #define __swab16 (x) (uint16_t) __builtin_bswap16((uint16_t) (x)) ### define is not number */
/* #define __swab32 (x) (uint32_t) __builtin_bswap32((uint32_t) (x)) ### define is not number */
/* #define __swab64 (x) (uint64_t) __builtin_bswap64((uint64_t) (x)) ### define is not number */
/* #define __swahw32 (x) (__builtin_constant_p((uint32_t) (x)) ? ___constant_swahw32(x) : __fswahw32(x)) ### define is not number */
/* #define __swahb32 (x) (__builtin_constant_p((uint32_t) (x)) ? ___constant_swahb32(x) : __fswahb32(x)) ### define is not number */
/* #define __constant_htonl (x) (( uint32_t) ___constant_swab32((x))) ### define is not number */
/* #define __constant_ntohl (x) ___constant_swab32(( uint32_t) (x)) ### define is not number */
/* #define __constant_htons (x) (( uint16_t) ___constant_swab16((x))) ### define is not number */
/* #define __constant_ntohs (x) ___constant_swab16(( uint16_t) (x)) ### define is not number */
/* #define __constant_cpu_to_le64 (x) (( __le64) (uint64_t) (x)) ### define is not number */
/* #define __constant_le64_to_cpu (x) (( uint64_t) (__le64) (x)) ### define is not number */
/* #define __constant_cpu_to_le32 (x) (( __le32) (uint32_t) (x)) ### define is not number */
/* #define __constant_le32_to_cpu (x) (( uint32_t) (__le32) (x)) ### define is not number */
/* #define __constant_cpu_to_le16 (x) (( __le16) (uint16_t) (x)) ### define is not number */
/* #define __constant_le16_to_cpu (x) (( uint16_t) (__le16) (x)) ### define is not number */
/* #define __constant_cpu_to_be64 (x) (( __be64) ___constant_swab64((x))) ### define is not number */
/* #define __constant_be64_to_cpu (x) ___constant_swab64(( uint64_t) (__be64) (x)) ### define is not number */
/* #define __constant_cpu_to_be32 (x) (( uint32_t) ___constant_swab32((x))) ### define is not number */
/* #define __constant_be32_to_cpu (x) ___constant_swab32(( uint32_t) (uint32_t) (x)) ### define is not number */
/* #define __constant_cpu_to_be16 (x) (( uint16_t) ___constant_swab16((x))) ### define is not number */
/* #define __constant_be16_to_cpu (x) ___constant_swab16(( uint16_t) (uint16_t) (x)) ### define is not number */
/* #define __cpu_to_le64 (x) (( __le64) (uint64_t) (x)) ### define is not number */
/* #define __le64_to_cpu (x) (( uint64_t) (__le64) (x)) ### define is not number */
/* #define __cpu_to_le32 (x) (( __le32) (uint32_t) (x)) ### define is not number */
/* #define __le32_to_cpu (x) (( uint32_t) (__le32) (x)) ### define is not number */
/* #define __cpu_to_le16 (x) (( __le16) (uint16_t) (x)) ### define is not number */
/* #define __le16_to_cpu (x) (( uint16_t) (__le16) (x)) ### define is not number */
/* #define __cpu_to_be64 (x) (( __be64) __swab64((x))) ### define is not number */
/* #define __be64_to_cpu (x) __swab64(( uint64_t) (__be64) (x)) ### define is not number */
/* #define __cpu_to_be32 (x) (( uint32_t) __swab32((x))) ### define is not number */
/* #define uint32_t_to_cpu (x) __swab32(( uint32_t) (uint32_t) (x)) ### define is not number */
/* #define __cpu_to_be16 (x) (( uint16_t) __swab16((x))) ### define is not number */
/* #define uint16_t_to_cpu (x) __swab16(( uint16_t) (uint16_t) (x)) ### define is not number */
/* #define __cpu_to_le64s (x) do { (void) (x); } while(0) ### define is not number */
/* #define __le64_to_cpus (x) do { (void) (x); } while(0) ### define is not number */
/* #define __cpu_to_le32s (x) do { (void) (x); } while(0) ### define is not number */
/* #define __le32_to_cpus (x) do { (void) (x); } while(0) ### define is not number */
/* #define __cpu_to_le16s (x) do { (void) (x); } while(0) ### define is not number */
/* #define __le16_to_cpus (x) do { (void) (x); } while(0) ### define is not number */
/* #define __cpu_to_be64s (x) __swab64s((x)) ### define is not number */
/* #define __be64_to_cpus (x) __swab64s((x)) ### define is not number */
/* #define __cpu_to_be32s (x) __swab32s((x)) ### define is not number */
/* #define uint32_t_to_cpus (x) __swab32s((x)) ### define is not number */
/* #define __cpu_to_be16s (x) __swab16s((x)) ### define is not number */
/* #define uint16_t_to_cpus (x) __swab16s((x)) ### define is not number */
enum { _UAPI_IPV6_H = 1 };
enum { IPV6_MIN_MTU = 1280 };
enum { IPV6_SRCRT_STRICT = 0x01 };
enum { IPV6_SRCRT_TYPE_0 = 0 };
enum { IPV6_SRCRT_TYPE_2 = 2 };
enum { IPV6_SRCRT_TYPE_3 = 3 };
enum { IPV6_SRCRT_TYPE_4 = 4 };
/* #define ipv6_destopt_hdr ipv6_opt_hdr ### define is not number */
/* #define ipv6_hopopt_hdr ipv6_opt_hdr ### define is not number */
enum { IPV6_OPT_ROUTERALERT_MLD = 0x0000 };
/* #define rt0_type rt_hdr.type ### define is not number */
/* #define rt2_type rt_hdr.type ### define is not number */
enum { INET_ADDRSTRLEN = 16 };
/* + END <netinet/in.h> /data/data/com.termux/files/usr/bin/../../usr/include/netinet/in.h */
]]
