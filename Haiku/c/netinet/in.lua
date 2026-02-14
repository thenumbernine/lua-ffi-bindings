local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <netinet/in.h> /boot/system/develop/headers/posix/netinet/in.h */
/* ++ BEGIN <net/if.h> /boot/system/develop/headers/posix/net/if.h */
/* +++ BEGIN <net/route.h> /boot/system/develop/headers/posix/net/route.h */
/* ++++ BEGIN <sys/socket.h> /boot/system/develop/headers/posix/sys/socket.h */
]] require 'ffi.req' 'c.sys.socket' ffi.cdef[[
/* ++++ END <sys/socket.h> /boot/system/develop/headers/posix/sys/socket.h */
struct route_entry {
 struct sockaddr *destination;
 struct sockaddr *mask;
 struct sockaddr *gateway;
 struct sockaddr *source;
 uint32_t flags;
 uint32_t mtu;
};
/* +++ END <net/route.h> /boot/system/develop/headers/posix/net/route.h */
struct ifreq_stream_stats {
 uint32_t packets;
 uint32_t errors;
 uint64_t bytes;
 uint32_t multicast_packets;
 uint32_t dropped;
};
struct ifreq_stats {
 struct ifreq_stream_stats receive;
 struct ifreq_stream_stats send;
 uint32_t collisions;
};
struct ifreq {
 char ifr_name[32];
 union {
  struct sockaddr ifr_addr;
  struct sockaddr ifr_dstaddr;
  struct sockaddr ifr_broadaddr;
  struct sockaddr ifr_mask;
  struct ifreq_stats ifr_stats;
  struct route_entry ifr_route;
  int ifr_flags;
  int ifr_index;
  int ifr_metric;
  int ifr_mtu;
  int ifr_media;
  int ifr_type;
  int ifr_reqcap;
  int ifr_count;
  uint8_t* ifr_data;
 };
};
struct ifaliasreq {
 char ifra_name[32];
 int ifra_index;
 struct sockaddr_storage ifra_addr;
 union {
  struct sockaddr_storage ifra_broadaddr;
  struct sockaddr_storage ifra_destination;
 };
 struct sockaddr_storage ifra_mask;
 uint32_t ifra_flags;
};
struct ifconf {
 int ifc_len;
 union {
  void* ifc_buf;
  struct ifreq* ifc_req;
  int ifc_value;
 };
};
struct if_nameindex {
 unsigned if_index;
 char* if_name;
};
unsigned if_nametoindex(const char* name);
char* if_indextoname(unsigned interfaceIndex, char* nameBuffer);
struct if_nameindex* if_nameindex(void);
void if_freenameindex(struct if_nameindex* interfaceArray);
/* ++ END <net/if.h> /boot/system/develop/headers/posix/net/if.h */
/* ++ BEGIN <endian.h> /boot/system/develop/headers/bsd/endian.h */
/* +++ BEGIN <endian.h> /boot/system/develop/headers/posix/endian.h */
/* +++ END <endian.h> /boot/system/develop/headers/posix/endian.h */
static __inline uint32_t
be32dec(const void *pp)
{
 uint8_t const *p = (uint8_t const *)pp;
 return (((unsigned)p[0] << 24) | (p[1] << 16) | (p[2] << 8) | p[3]);
}
static __inline uint64_t
be64dec(const void *pp)
{
 uint8_t const *p = (uint8_t const *)pp;
 return (((uint64_t)be32dec(p) << 32) | be32dec(p + 4));
}
static __inline void
be32enc(void *pp, uint32_t u)
{
 uint8_t *p = (uint8_t *)pp;
 p[0] = (u >> 24) & 0xff;
 p[1] = (u >> 16) & 0xff;
 p[2] = (u >> 8) & 0xff;
 p[3] = u & 0xff;
}
static __inline void
be64enc(void *pp, uint64_t u)
{
 uint8_t *p = (uint8_t *)pp;
 be32enc(p, (uint32_t)(u >> 32));
 be32enc(p + 4, (uint32_t)(u & 0xffffffffU));
}
/* ++ END <endian.h> /boot/system/develop/headers/bsd/endian.h */
/* ++ BEGIN <netinet6/in6.h> /boot/system/develop/headers/posix/netinet6/in6.h */
struct in6_addr {
 union {
  uint8_t u6_addr8[16];
  uint16_t u6_addr16[8];
  uint32_t u6_addr32[4];
 } in6_u;
} __attribute__((packed));
struct sockaddr_in6 {
 uint8_t sin6_len;
 uint8_t sin6_family;
 uint16_t sin6_port;
 uint32_t sin6_flowinfo;
 struct in6_addr sin6_addr;
 uint32_t sin6_scope_id;
};
extern const struct in6_addr in6addr_any;
extern const struct in6_addr in6addr_loopback;
struct ipv6_mreq {
 struct in6_addr ipv6mr_multiaddr;
 unsigned ipv6mr_interface;
};
struct in6_pktinfo {
 struct in6_addr ipi6_addr;
 unsigned int ipi6_ifindex;
};
/* ++ END <netinet6/in6.h> /boot/system/develop/headers/posix/netinet6/in6.h */
typedef uint16_t in_port_t;
typedef uint32_t in_addr_t;
struct in_addr {
 in_addr_t s_addr;
};
struct sockaddr_in {
 uint8_t sin_len;
 uint8_t sin_family;
 uint16_t sin_port;
 struct in_addr sin_addr;
 int8_t sin_zero[24];
};
struct ip_mreq {
 struct in_addr imr_multiaddr;
 struct in_addr imr_interface;
};
struct ip_mreq_source {
 struct in_addr imr_multiaddr;
 struct in_addr imr_sourceaddr;
 struct in_addr imr_interface;
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
enum { _NETINET_IN_H_ = 1 };
enum { _NET_IF_H = 1 };
enum { _NET_ROUTE_H = 1 };
enum { RTF_UP = 0x00000001 };
enum { RTF_GATEWAY = 0x00000002 };
enum { RTF_HOST = 0x00000004 };
enum { RTF_REJECT = 0x00000008 };
enum { RTF_DYNAMIC = 0x00000010 };
enum { RTF_MODIFIED = 0x00000020 };
enum { RTF_DEFAULT = 0x00000080 };
enum { RTF_STATIC = 0x00000800 };
enum { RTF_BLACKHOLE = 0x00001000 };
enum { RTF_LOCAL = 0x00200000 };
enum { IF_NAMESIZE = 32 };
enum { IFNAMSIZ = 32 };
enum { IFF_UP = 0x0001 };
enum { IFF_BROADCAST = 0x0002 };
enum { IFF_LOOPBACK = 0x0008 };
enum { IFF_POINTOPOINT = 0x0010 };
enum { IFF_NOARP = 0x0040 };
enum { IFF_AUTOUP = 0x0080 };
enum { IFF_PROMISC = 0x0100 };
enum { IFF_ALLMULTI = 0x0200 };
enum { IFF_SIMPLEX = 0x0800 };
enum { IFF_LINK = 0x1000 };
enum { IFF_AUTO_CONFIGURED = 0x2000 };
enum { IFF_CONFIGURING = 0x4000 };
enum { IFF_MULTICAST = 0x8000 };
enum { IFAF_AUTO_CONFIGURED = 0x0001 };
enum { IFAF_CONFIGURING = 0x0002 };
/* #define _SIZEOF_ADDR_IFREQ (request) (IF_NAMESIZE + (request).ifr_addr.sa_len > (int)sizeof(struct ifreq) ? IF_NAMESIZE + (request).ifr_addr.sa_len : sizeof(struct ifreq)) ### define is not number */
enum { _BSD_ENDIAN_H_ = 1 };
enum { _ENDIAN_H_ = 1 };
enum { LITTLE_ENDIAN = 1234 };
enum { BIG_ENDIAN = 4321 };
enum { BYTE_ORDER = 1234 };
enum { __BIG_ENDIAN = 4321 };
enum { __LITTLE_ENDIAN = 1234 };
enum { __BYTE_ORDER = 1234 };
/* #define bswap16 (x) __builtin_bswap16(x) ### define is not number */
/* #define bswap32 (x) __builtin_bswap32(x) ### define is not number */
/* #define bswap64 (x) __builtin_bswap64(x) ### define is not number */
/* #define htobe16 (x) bswap16((x)) ### define is not number */
/* #define htobe32 (x) bswap32((x)) ### define is not number */
/* #define htobe64 (x) bswap64((x)) ### define is not number */
/* #define htole16 (x) ((uint16_t)(x)) ### define is not number */
/* #define htole32 (x) ((uint32_t)(x)) ### define is not number */
/* #define htole64 (x) ((uint64_t)(x)) ### define is not number */
/* #define be16toh (x) bswap16((x)) ### define is not number */
/* #define be32toh (x) bswap32((x)) ### define is not number */
/* #define be64toh (x) bswap64((x)) ### define is not number */
/* #define le16toh (x) ((uint16_t)(x)) ### define is not number */
/* #define le32toh (x) ((uint32_t)(x)) ### define is not number */
/* #define le64toh (x) ((uint64_t)(x)) ### define is not number */
enum { _NETINET6_IN6_H_ = 1 };
/* #define s6_addr in6_u.u6_addr8 ### define is not number */
/* #define s6_addr16 in6_u.u6_addr16 ### define is not number */
/* #define s6_addr32 in6_u.u6_addr32 ### define is not number */
/* #define IN6ADDR_ANY_INIT {{{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }}} ### define is not number */
/* #define IN6ADDR_LOOPBACK_INIT {{{ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01 }}} ### define is not number */
/* #define IN6ADDR_NODELOCAL_ALLNODES_INIT {{{ 0xff, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01 }}} ### define is not number */
/* #define IN6ADDR_LINKLOCAL_ALLNODES_INIT {{{ 0xff, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01 }}} ### define is not number */
/* #define IN6ADDR_LINKLOCAL_ALLROUTERS_INIT {{{ 0xff, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02 }}} ### define is not number */
enum { __IPV6_ADDR_SCOPE_NODELOCAL = 0x01 };
enum { __IPV6_ADDR_SCOPE_INTFACELOCAL = 0x01 };
enum { __IPV6_ADDR_SCOPE_LINKLOCAL = 0x02 };
enum { __IPV6_ADDR_SCOPE_SITELOCAL = 0x05 };
enum { __IPV6_ADDR_SCOPE_ORGLOCAL = 0x08 };
enum { __IPV6_ADDR_SCOPE_GLOBAL = 0x0e };
/* #define __IPV6_ADDR_MC_SCOPE (a) ((a)->s6_addr[1] & 0x0f) ### define is not number */
/* #define IN6_IS_ADDR_UNSPECIFIED (a) (!memcmp((a)->s6_addr, in6addr_any.s6_addr, sizeof(struct in6_addr))) ### define is not number */
/* #define IN6_IS_ADDR_LOOPBACK (a) (!memcmp((a)->s6_addr, in6addr_loopback.s6_addr, sizeof(struct in6_addr))) ### define is not number */
/* #define IN6_IS_ADDR_MULTICAST (a) ((a)->s6_addr[0] == 0xff) ### define is not number */
/* #define IN6_IS_ADDR_LINKLOCAL (a) (((a)->s6_addr[0] == 0xfe) && (((a)->s6_addr[1] & 0xc0) == 0x80)) ### define is not number */
/* #define IN6_IS_ADDR_SITELOCAL (a) (((a)->s6_addr[0] == 0xfe) && (((a)->s6_addr[1] & 0xc0) == 0xc0)) ### define is not number */
/* #define IN6_IS_ADDR_V4MAPPED (a) ((a)->s6_addr[0] == 0x00 && (a)->s6_addr[1] == 0x00 && (a)->s6_addr[2] == 0x00 && (a)->s6_addr[3] == 0x00 && (a)->s6_addr[4] == 0x00 && (a)->s6_addr[5] == 0x00 && (a)->s6_addr[6] == 0x00 && (a)->s6_addr[7] == 0x00 && (a)->s6_addr[8] == 0x00 && (a)->s6_addr[9] == 0x00 && (a)->s6_addr[10] == 0xff && (a)->s6_addr[11] == 0xff) ### define is not number */
/* #define IN6_IS_ADDR_V4COMPAT (a) ((a)->s6_addr[0] == 0x00 && (a)->s6_addr[1] == 0x00 && (a)->s6_addr[2] == 0x00 && (a)->s6_addr[3] == 0x00 && (a)->s6_addr[4] == 0x00 && (a)->s6_addr[5] == 0x00 && (a)->s6_addr[6] == 0x00 && (a)->s6_addr[7] == 0x00 && (a)->s6_addr[8] == 0x00 && (a)->s6_addr[9] == 0x00 && (a)->s6_addr[10] == 0x00 && (a)->s6_addr[11] == 0x01) ### define is not number */
/* #define IN6_IS_ADDR_MC_NODELOCAL (a) (IN6_IS_ADDR_MULTICAST(a) && __IPV6_ADDR_MC_SCOPE(a) == __IPV6_ADDR_SCOPE_NODELOCAL) ### define is not number */
/* #define IN6_IS_ADDR_MC_LINKLOCAL (a) (IN6_IS_ADDR_MULTICAST(a) && __IPV6_ADDR_MC_SCOPE(a) == __IPV6_ADDR_SCOPE_LINKLOCAL) ### define is not number */
/* #define IN6_IS_ADDR_MC_SITELOCAL (a) (IN6_IS_ADDR_MULTICAST(a) && __IPV6_ADDR_MC_SCOPE(a) == __IPV6_ADDR_SCOPE_SITELOCAL) ### define is not number */
/* #define IN6_IS_ADDR_MC_ORGLOCAL (a) (IN6_IS_ADDR_MULTICAST(a) && __IPV6_ADDR_MC_SCOPE(a) == __IPV6_ADDR_SCOPE_ORGLOCAL) ### define is not number */
/* #define IN6_IS_ADDR_MC_GLOBAL (a) (IN6_IS_ADDR_MULTICAST(a) && __IPV6_ADDR_MC_SCOPE(a) == __IPV6_ADDR_SCOPE_GLOBAL) ### define is not number */
/* #define IN6_ARE_ADDR_EQUAL (a,b) (!memcmp((a)->s6_addr, (b)->s6_addr, sizeof(struct in6_addr))) ### define is not number */
enum { INET6_ADDRSTRLEN = 46 };
/* #define __net_swap_int32 (arg) (uint32_t)__builtin_bswap32(arg) ### define is not number */
/* #define __net_swap_int16 (arg) (uint16_t)__builtin_bswap16(arg) ### define is not number */
/* #define htonl (x) ((uint32_t)__net_swap_int32(x)) ### define is not number */
/* #define ntohl (x) ((uint32_t)__net_swap_int32(x)) ### define is not number */
/* #define htons (x) __net_swap_int16(x) ### define is not number */
/* #define ntohs (x) __net_swap_int16(x) ### define is not number */
enum { IPPROTO_IP = 0 };
enum { IPPROTO_HOPOPTS = 0 };
enum { IPPROTO_ICMP = 1 };
enum { IPPROTO_IGMP = 2 };
enum { IPPROTO_TCP = 6 };
enum { IPPROTO_UDP = 17 };
enum { IPPROTO_IPV6 = 41 };
enum { IPPROTO_ROUTING = 43 };
enum { IPPROTO_FRAGMENT = 44 };
enum { IPPROTO_ESP = 50 };
enum { IPPROTO_AH = 51 };
enum { IPPROTO_ICMPV6 = 58 };
enum { IPPROTO_NONE = 59 };
enum { IPPROTO_DSTOPTS = 60 };
enum { IPPROTO_ETHERIP = 97 };
enum { IPPROTO_RAW = 255 };
enum { IPPROTO_MAX = 256 };
enum { IPPORT_RESERVED = 1024 };
enum { IP_OPTIONS = 1 };
enum { IP_HDRINCL = 2 };
enum { IP_TOS = 3 };
enum { IP_TTL = 4 };
enum { IP_RECVOPTS = 5 };
enum { IP_RECVRETOPTS = 6 };
enum { IP_RECVDSTADDR = 7 };
enum { IP_RETOPTS = 8 };
enum { IP_MULTICAST_IF = 9 };
enum { IP_MULTICAST_TTL = 10 };
enum { IP_MULTICAST_LOOP = 11 };
enum { IP_ADD_MEMBERSHIP = 12 };
enum { IP_DROP_MEMBERSHIP = 13 };
enum { IP_BLOCK_SOURCE = 14 };
enum { IP_UNBLOCK_SOURCE = 15 };
enum { IP_ADD_SOURCE_MEMBERSHIP = 16 };
enum { IP_DROP_SOURCE_MEMBERSHIP = 17 };
enum { MCAST_JOIN_GROUP = 18 };
enum { MCAST_BLOCK_SOURCE = 19 };
enum { MCAST_UNBLOCK_SOURCE = 20 };
enum { MCAST_LEAVE_GROUP = 21 };
enum { MCAST_JOIN_SOURCE_GROUP = 22 };
enum { MCAST_LEAVE_SOURCE_GROUP = 23 };
enum { IPV6_MULTICAST_IF = 24 };
enum { IPV6_MULTICAST_HOPS = 25 };
enum { IPV6_MULTICAST_LOOP = 26 };
enum { IPV6_UNICAST_HOPS = 27 };
enum { IPV6_JOIN_GROUP = 28 };
enum { IPV6_LEAVE_GROUP = 29 };
enum { IPV6_V6ONLY = 30 };
enum { IPV6_PKTINFO = 31 };
enum { IPV6_RECVPKTINFO = 32 };
enum { IPV6_HOPLIMIT = 33 };
enum { IPV6_RECVHOPLIMIT = 34 };
enum { IPV6_HOPOPTS = 35 };
enum { IPV6_DSTOPTS = 36 };
enum { IPV6_RTHDR = 37 };
enum { IP_DONTFRAG = 38 };
/* #define INADDR_ANY ((in_addr_t)0x00000000) ### define is not number */
/* #define INADDR_LOOPBACK ((in_addr_t)0x7f000001) ### define is not number */
/* #define INADDR_BROADCAST ((in_addr_t)0xffffffff) ### define is not number */
/* #define INADDR_UNSPEC_GROUP ((in_addr_t)0xe0000000) ### define is not number */
/* #define INADDR_ALLHOSTS_GROUP ((in_addr_t)0xe0000001) ### define is not number */
/* #define INADDR_ALLROUTERS_GROUP ((in_addr_t)0xe0000002) ### define is not number */
/* #define INADDR_MAX_LOCAL_GROUP ((in_addr_t)0xe00000ff) ### define is not number */
enum { IN_LOOPBACKNET = 127 };
/* #define INADDR_NONE ((in_addr_t)0xffffffff) ### define is not number */
/* #define IN_CLASSA (i) (((in_addr_t)(i) & 0x80000000) == 0) ### define is not number */
enum { IN_CLASSA_NET = 0xff000000 };
enum { IN_CLASSA_NSHIFT = 24 };
enum { IN_CLASSA_HOST = 0x00ffffff };
enum { IN_CLASSA_MAX = 128 };
/* #define IN_CLASSB (i) (((in_addr_t)(i) & 0xc0000000) == 0x80000000) ### define is not number */
enum { IN_CLASSB_NET = 0xffff0000 };
enum { IN_CLASSB_NSHIFT = 16 };
enum { IN_CLASSB_HOST = 0x0000ffff };
enum { IN_CLASSB_MAX = 65536 };
/* #define IN_CLASSC (i) (((in_addr_t)(i) & 0xe0000000) == 0xc0000000) ### define is not number */
enum { IN_CLASSC_NET = 0xffffff00 };
enum { IN_CLASSC_NSHIFT = 8 };
enum { IN_CLASSC_HOST = 0x000000ff };
/* #define IN_CLASSD (i) (((in_addr_t)(i) & 0xf0000000) == 0xe0000000) ### define is not number */
enum { IN_CLASSD_NET = 0xf0000000 };
enum { IN_CLASSD_NSHIFT = 28 };
enum { IN_CLASSD_HOST = 0x0fffffff };
/* #define IN_MULTICAST (i) IN_CLASSD(i) ### define is not number */
/* #define IN_EXPERIMENTAL (i) (((in_addr_t)(i) & 0xf0000000) == 0xf0000000) ### define is not number */
/* #define IN_BADCLASS (i) (((in_addr_t)(i) & 0xf0000000) == 0xf0000000) ### define is not number */
enum { IP_MAX_MEMBERSHIPS = 20 };
enum { INET_ADDRSTRLEN = 16 };
/* + END <netinet/in.h> /boot/system/develop/headers/posix/netinet/in.h */
]]
