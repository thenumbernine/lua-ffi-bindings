local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <netinet/in.h> /usr/include/netinet/in.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <bits/stdint-uintn.h> /usr/include/x86_64-linux-gnu/bits/stdint-uintn.h */
]] require 'ffi.req' 'c.bits.stdint-uintn' ffi.cdef[[
/* ++ END <bits/stdint-uintn.h> /usr/include/x86_64-linux-gnu/bits/stdint-uintn.h */
/* ++ BEGIN <sys/socket.h> /usr/include/x86_64-linux-gnu/sys/socket.h */
]] require 'ffi.req' 'c.sys.socket' ffi.cdef[[
/* ++ END <sys/socket.h> /usr/include/x86_64-linux-gnu/sys/socket.h */
typedef uint32_t in_addr_t;
struct in_addr
  {
    in_addr_t s_addr;
  };
/* ++ BEGIN <bits/in.h> /usr/include/x86_64-linux-gnu/bits/in.h */
struct ip_opts
  {
    struct in_addr ip_dst;
    char ip_opts[40];
  };
struct in_pktinfo
  {
    int ipi_ifindex;
    struct in_addr ipi_spec_dst;
    struct in_addr ipi_addr;
  };
/* ++ END <bits/in.h> /usr/include/x86_64-linux-gnu/bits/in.h */
enum
  {
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
enum
  {
    IPPROTO_HOPOPTS = 0,
    IPPROTO_ROUTING = 43,
    IPPROTO_FRAGMENT = 44,
    IPPROTO_ICMPV6 = 58,
    IPPROTO_NONE = 59,
    IPPROTO_DSTOPTS = 60,
    IPPROTO_MH = 135
  };
typedef uint16_t in_port_t;
enum
  {
    IPPORT_ECHO = 7,
    IPPORT_DISCARD = 9,
    IPPORT_SYSTAT = 11,
    IPPORT_DAYTIME = 13,
    IPPORT_NETSTAT = 15,
    IPPORT_FTP = 21,
    IPPORT_TELNET = 23,
    IPPORT_SMTP = 25,
    IPPORT_TIMESERVER = 37,
    IPPORT_NAMESERVER = 42,
    IPPORT_WHOIS = 43,
    IPPORT_MTP = 57,
    IPPORT_TFTP = 69,
    IPPORT_RJE = 77,
    IPPORT_FINGER = 79,
    IPPORT_TTYLINK = 87,
    IPPORT_SUPDUP = 95,
    IPPORT_EXECSERVER = 512,
    IPPORT_LOGINSERVER = 513,
    IPPORT_CMDSERVER = 514,
    IPPORT_EFSSERVER = 520,
    IPPORT_BIFFUDP = 512,
    IPPORT_WHOSERVER = 513,
    IPPORT_ROUTESERVER = 520,
    IPPORT_RESERVED = 1024,
    IPPORT_USERRESERVED = 5000
  };
struct in6_addr
  {
    union
      {
 uint8_t __u6_addr8[16];
 uint16_t __u6_addr16[8];
 uint32_t __u6_addr32[4];
      } __in6_u;
  };
extern const struct in6_addr in6addr_any;
extern const struct in6_addr in6addr_loopback;
struct __attribute__ ((__may_alias__)) sockaddr_in
  {
    sa_family_t sin_family;
    in_port_t sin_port;
    struct in_addr sin_addr;
    unsigned char sin_zero[sizeof (struct sockaddr)
      - (sizeof (unsigned short int))
      - sizeof (in_port_t)
      - sizeof (struct in_addr)];
  };
struct __attribute__ ((__may_alias__)) sockaddr_in6
  {
    sa_family_t sin6_family;
    in_port_t sin6_port;
    uint32_t sin6_flowinfo;
    struct in6_addr sin6_addr;
    uint32_t sin6_scope_id;
  };
struct ip_mreq
  {
    struct in_addr imr_multiaddr;
    struct in_addr imr_interface;
  };
struct ip_mreqn
  {
    struct in_addr imr_multiaddr;
    struct in_addr imr_address;
    int imr_ifindex;
  };
struct ip_mreq_source
  {
    struct in_addr imr_multiaddr;
    struct in_addr imr_interface;
    struct in_addr imr_sourceaddr;
  };
struct ipv6_mreq
  {
    struct in6_addr ipv6mr_multiaddr;
    unsigned int ipv6mr_interface;
  };
struct group_req
  {
    uint32_t gr_interface;
    struct sockaddr_storage gr_group;
  };
struct group_source_req
  {
    uint32_t gsr_interface;
    struct sockaddr_storage gsr_group;
    struct sockaddr_storage gsr_source;
  };
struct ip_msfilter
  {
    struct in_addr imsf_multiaddr;
    struct in_addr imsf_interface;
    uint32_t imsf_fmode;
    uint32_t imsf_numsrc;
    struct in_addr imsf_slist[1];
  };
struct group_filter
  {
    uint32_t gf_interface;
    struct sockaddr_storage gf_group;
    uint32_t gf_fmode;
    uint32_t gf_numsrc;
    struct sockaddr_storage gf_slist[1];
};
extern uint32_t ntohl (uint32_t __netlong) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint16_t ntohs (uint16_t __netshort)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint32_t htonl (uint32_t __hostlong)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint16_t htons (uint16_t __hostshort)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
/* ++ BEGIN <bits/byteswap.h> /usr/include/x86_64-linux-gnu/bits/byteswap.h */
/* ++ END <bits/byteswap.h> /usr/include/x86_64-linux-gnu/bits/byteswap.h */
/* ++ BEGIN <bits/uintn-identity.h> /usr/include/x86_64-linux-gnu/bits/uintn-identity.h */
/* ++ END <bits/uintn-identity.h> /usr/include/x86_64-linux-gnu/bits/uintn-identity.h */
extern int bindresvport (int __sockfd, struct sockaddr_in *__sock_in) __attribute__ ((__nothrow__ , __leaf__));
extern int bindresvport6 (int __sockfd, struct sockaddr_in6 *__sock_in)
     __attribute__ ((__nothrow__ , __leaf__));
enum { __USE_KERNEL_IPV6_DEFS = 0 };
enum { IP_OPTIONS = 4 };
enum { IP_HDRINCL = 3 };
enum { IP_TOS = 1 };
enum { IP_TTL = 2 };
enum { IP_RECVOPTS = 6 };
enum { IP_RECVRETOPTS = 7 };
enum { IP_RETOPTS = 7 };
enum { MCAST_JOIN_GROUP = 42 };
enum { MCAST_BLOCK_SOURCE = 43 };
enum { MCAST_UNBLOCK_SOURCE = 44 };
enum { MCAST_LEAVE_GROUP = 45 };
enum { MCAST_JOIN_SOURCE_GROUP = 46 };
enum { MCAST_LEAVE_SOURCE_GROUP = 47 };
enum { MCAST_MSFILTER = 48 };
enum { MCAST_EXCLUDE = 0 };
enum { MCAST_INCLUDE = 1 };
enum { IP_ROUTER_ALERT = 5 };
enum { IP_PKTINFO = 8 };
enum { IP_PKTOPTIONS = 9 };
enum { IP_PMTUDISC = 10 };
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
enum { IP_MULTICAST_ALL = 49 };
enum { IP_UNICAST_IF = 50 };
enum { IP_LOCAL_PORT_RANGE = 51 };
enum { IP_PROTOCOL = 52 };
enum { SOL_IP = 0 };
enum { IP_DEFAULT_MULTICAST_TTL = 1 };
enum { IP_DEFAULT_MULTICAST_LOOP = 1 };
enum { IP_MAX_MEMBERSHIPS = 20 };
enum { IPV6_ADDRFORM = 1 };
enum { IPV6_2292PKTINFO = 2 };
enum { IPV6_2292HOPOPTS = 3 };
enum { IPV6_2292DSTOPTS = 4 };
enum { IPV6_2292RTHDR = 5 };
enum { IPV6_2292PKTOPTIONS = 6 };
enum { IPV6_CHECKSUM = 7 };
enum { IPV6_2292HOPLIMIT = 8 };
/* #define SCM_SRCRT IPV6_RXSRCRT ### define is not number */
enum { IPV6_NEXTHOP = 9 };
enum { IPV6_AUTHHDR = 10 };
enum { IPV6_UNICAST_HOPS = 16 };
enum { IPV6_MULTICAST_IF = 17 };
enum { IPV6_MULTICAST_HOPS = 18 };
enum { IPV6_MULTICAST_LOOP = 19 };
enum { IPV6_JOIN_GROUP = 20 };
enum { IPV6_LEAVE_GROUP = 21 };
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
enum { IPV6_MINHOPCOUNT = 73 };
enum { IPV6_ORIGDSTADDR = 74 };
enum { IPV6_RECVORIGDSTADDR = 74 };
enum { IPV6_TRANSPARENT = 75 };
enum { IPV6_UNICAST_IF = 76 };
enum { IPV6_RECVFRAGSIZE = 77 };
enum { IPV6_FREEBIND = 78 };
enum { IPV6_ADD_MEMBERSHIP = 20 };
enum { IPV6_DROP_MEMBERSHIP = 21 };
enum { IPV6_RXHOPOPTS = 54 };
enum { IPV6_RXDSTOPTS = 59 };
enum { IPV6_PMTUDISC_DONT = 0 };
enum { IPV6_PMTUDISC_WANT = 1 };
enum { IPV6_PMTUDISC_DO = 2 };
enum { IPV6_PMTUDISC_PROBE = 3 };
enum { IPV6_PMTUDISC_INTERFACE = 4 };
enum { IPV6_PMTUDISC_OMIT = 5 };
enum { SOL_IPV6 = 41 };
enum { SOL_ICMPV6 = 58 };
enum { IPV6_RTHDR_LOOSE = 0 };
enum { IPV6_RTHDR_STRICT = 1 };
enum { IPV6_RTHDR_TYPE_0 = 0 };
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
/* #define IPPROTO_HOPOPTS IPPROTO_HOPOPTS ### define is not number */
/* #define IPPROTO_ROUTING IPPROTO_ROUTING ### define is not number */
/* #define IPPROTO_FRAGMENT IPPROTO_FRAGMENT ### define is not number */
/* #define IPPROTO_ICMPV6 IPPROTO_ICMPV6 ### define is not number */
/* #define IPPROTO_NONE IPPROTO_NONE ### define is not number */
/* #define IPPROTO_DSTOPTS IPPROTO_DSTOPTS ### define is not number */
/* #define IPPROTO_MH IPPROTO_MH ### define is not number */
/* #define IN_CLASSA (a) ((((in_addr_t)(a)) & 0x80000000) == 0) ### define is not number */
enum { IN_CLASSA_NET = 0xff000000 };
enum { IN_CLASSA_NSHIFT = 24 };
/* #define IN_CLASSA_HOST (0xffffffff & ~IN_CLASSA_NET) ### define is not number */
enum { IN_CLASSA_MAX = 128 };
/* #define IN_CLASSB (a) ((((in_addr_t)(a)) & 0xc0000000) == 0x80000000) ### define is not number */
enum { IN_CLASSB_NET = 0xffff0000 };
enum { IN_CLASSB_NSHIFT = 16 };
/* #define IN_CLASSB_HOST (0xffffffff & ~IN_CLASSB_NET) ### define is not number */
enum { IN_CLASSB_MAX = 65536 };
/* #define IN_CLASSC (a) ((((in_addr_t)(a)) & 0xe0000000) == 0xc0000000) ### define is not number */
enum { IN_CLASSC_NET = 0xffffff00 };
enum { IN_CLASSC_NSHIFT = 8 };
/* #define IN_CLASSC_HOST (0xffffffff & ~IN_CLASSC_NET) ### define is not number */
/* #define IN_CLASSD (a) ((((in_addr_t)(a)) & 0xf0000000) == 0xe0000000) ### define is not number */
/* #define IN_MULTICAST (a) IN_CLASSD(a) ### define is not number */
/* #define IN_EXPERIMENTAL (a) ((((in_addr_t)(a)) & 0xe0000000) == 0xe0000000) ### define is not number */
/* #define IN_BADCLASS (a) ((((in_addr_t)(a)) & 0xf0000000) == 0xf0000000) ### define is not number */
/* #define INADDR_ANY ((in_addr_t) 0x00000000) ### define is not number */
/* #define INADDR_BROADCAST ((in_addr_t) 0xffffffff) ### define is not number */
/* #define INADDR_NONE ((in_addr_t) 0xffffffff) ### define is not number */
/* #define INADDR_DUMMY ((in_addr_t) 0xc0000008) ### define is not number */
enum { IN_LOOPBACKNET = 127 };
/* #define INADDR_LOOPBACK ((in_addr_t) 0x7f000001) ### define is not number */
/* #define INADDR_UNSPEC_GROUP ((in_addr_t) 0xe0000000) ### define is not number */
/* #define INADDR_ALLHOSTS_GROUP ((in_addr_t) 0xe0000001) ### define is not number */
/* #define INADDR_ALLRTRS_GROUP ((in_addr_t) 0xe0000002) ### define is not number */
/* #define INADDR_ALLSNOOPERS_GROUP ((in_addr_t) 0xe000006a) ### define is not number */
/* #define INADDR_MAX_LOCAL_GROUP ((in_addr_t) 0xe00000ff) ### define is not number */
/* #define s6_addr __in6_u.__u6_addr8 ### define is not number */
/* #define s6_addr16 __in6_u.__u6_addr16 ### define is not number */
/* #define s6_addr32 __in6_u.__u6_addr32 ### define is not number */
/* #define IN6ADDR_ANY_INIT { { { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 } } } ### define is not number */
/* #define IN6ADDR_LOOPBACK_INIT { { { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1 } } } ### define is not number */
enum { INET_ADDRSTRLEN = 16 };
enum { INET6_ADDRSTRLEN = 46 };
/* #define IP_MSFILTER_SIZE (numsrc) (sizeof (struct ip_msfilter) - sizeof (struct in_addr) + (numsrc) * sizeof (struct in_addr)) ### define is not number */
/* #define GROUP_FILTER_SIZE (numsrc) (sizeof (struct group_filter) - sizeof (struct sockaddr_storage) + ((numsrc) * sizeof (struct sockaddr_storage))) ### define is not number */
/* #define IN6_IS_ADDR_UNSPECIFIED (a) (__extension__ ({ const struct in6_addr *__a = (const struct in6_addr *) (a); __a->__in6_u.__u6_addr32[0] == 0 && __a->__in6_u.__u6_addr32[1] == 0 && __a->__in6_u.__u6_addr32[2] == 0 && __a->__in6_u.__u6_addr32[3] == 0; })) ### define is not number */
/* #define IN6_IS_ADDR_LOOPBACK (a) (__extension__ ({ const struct in6_addr *__a = (const struct in6_addr *) (a); __a->__in6_u.__u6_addr32[0] == 0 && __a->__in6_u.__u6_addr32[1] == 0 && __a->__in6_u.__u6_addr32[2] == 0 && __a->__in6_u.__u6_addr32[3] == htonl (1); })) ### define is not number */
/* #define IN6_IS_ADDR_LINKLOCAL (a) (__extension__ ({ const struct in6_addr *__a = (const struct in6_addr *) (a); (__a->__in6_u.__u6_addr32[0] & htonl (0xffc00000)) == htonl (0xfe800000); })) ### define is not number */
/* #define IN6_IS_ADDR_SITELOCAL (a) (__extension__ ({ const struct in6_addr *__a = (const struct in6_addr *) (a); (__a->__in6_u.__u6_addr32[0] & htonl (0xffc00000)) == htonl (0xfec00000); })) ### define is not number */
/* #define IN6_IS_ADDR_V4MAPPED (a) (__extension__ ({ const struct in6_addr *__a = (const struct in6_addr *) (a); __a->__in6_u.__u6_addr32[0] == 0 && __a->__in6_u.__u6_addr32[1] == 0 && __a->__in6_u.__u6_addr32[2] == htonl (0xffff); })) ### define is not number */
/* #define IN6_IS_ADDR_V4COMPAT (a) (__extension__ ({ const struct in6_addr *__a = (const struct in6_addr *) (a); __a->__in6_u.__u6_addr32[0] == 0 && __a->__in6_u.__u6_addr32[1] == 0 && __a->__in6_u.__u6_addr32[2] == 0 && ntohl (__a->__in6_u.__u6_addr32[3]) > 1; })) ### define is not number */
/* #define IN6_ARE_ADDR_EQUAL (a,b) (__extension__ ({ const struct in6_addr *__a = (const struct in6_addr *) (a); const struct in6_addr *__b = (const struct in6_addr *) (b); __a->__in6_u.__u6_addr32[0] == __b->__in6_u.__u6_addr32[0] && __a->__in6_u.__u6_addr32[1] == __b->__in6_u.__u6_addr32[1] && __a->__in6_u.__u6_addr32[2] == __b->__in6_u.__u6_addr32[2] && __a->__in6_u.__u6_addr32[3] == __b->__in6_u.__u6_addr32[3]; })) ### define is not number */
/* #define IN6_IS_ADDR_MULTICAST (a) (((const uint8_t *) (a))[0] == 0xff) ### define is not number */
/* #define IN6_IS_ADDR_MC_NODELOCAL (a) (IN6_IS_ADDR_MULTICAST(a) && ((((const uint8_t *) (a))[1] & 0xf) == 0x1)) ### define is not number */
/* #define IN6_IS_ADDR_MC_LINKLOCAL (a) (IN6_IS_ADDR_MULTICAST(a) && ((((const uint8_t *) (a))[1] & 0xf) == 0x2)) ### define is not number */
/* #define IN6_IS_ADDR_MC_SITELOCAL (a) (IN6_IS_ADDR_MULTICAST(a) && ((((const uint8_t *) (a))[1] & 0xf) == 0x5)) ### define is not number */
/* #define IN6_IS_ADDR_MC_ORGLOCAL (a) (IN6_IS_ADDR_MULTICAST(a) && ((((const uint8_t *) (a))[1] & 0xf) == 0x8)) ### define is not number */
/* #define IN6_IS_ADDR_MC_GLOBAL (a) (IN6_IS_ADDR_MULTICAST(a) && ((((const uint8_t *) (a))[1] & 0xf) == 0xe)) ### define is not number */
/* + END <netinet/in.h> /usr/include/netinet/in.h */
]]
