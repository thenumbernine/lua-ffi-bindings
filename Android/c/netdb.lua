local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <netdb.h> /data/data/com.termux/files/usr/bin/../../usr/include/netdb.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
/* ++ BEGIN <sys/socket.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/socket.h */
]] require 'ffi.req' 'c.sys.socket' ffi.cdef[[
/* ++ END <sys/socket.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/socket.h */
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wnullability-completeness"
struct hostent {
 char *h_name;
 char **h_aliases;
 int h_addrtype;
 int h_length;
 char **h_addr_list;
};
struct netent {
 char *n_name;
 char **n_aliases;
 int n_addrtype;
 uint32_t n_net;
};
struct servent {
 char *s_name;
 char **s_aliases;
 int s_port;
 char *  s_proto;
};
struct protoent {
 char *p_name;
 char **p_aliases;
 int p_proto;
};
struct addrinfo {
 int ai_flags;
 int ai_family;
 int ai_socktype;
 int ai_protocol;
 socklen_t ai_addrlen;
 char *ai_canonname;
 struct sockaddr *ai_addr;
 struct addrinfo *ai_next;
};
#pragma clang diagnostic pop
int getaddrinfo(const char*  __node, const char*  __service, const struct addrinfo*  __hints, struct addrinfo*  *  __result);
void freeaddrinfo(struct addrinfo*  __ptr);
int getnameinfo(const struct sockaddr*  __sa, socklen_t __sa_length, char*  __host, size_t __host_length, char*  __service, size_t __service_length, int __flags);
const char*  gai_strerror(int __error);
int*  __get_h_errno(void);
void herror(const char*  __s);
const char*  hstrerror(int __error);
struct hostent*  gethostbyaddr(const void*  __addr, socklen_t __length, int __type);
int gethostbyaddr_r(const void*  __addr, socklen_t __length, int __type, struct hostent*  __ret, char*  __buf, size_t __buf_size, struct hostent*  *  __result, int*  __h_errno_ptr) __attribute__((__availability__(android,strict,introduced=23 )));
struct hostent*  gethostbyname(const char*  __name);
int gethostbyname_r(const char*  __name, struct hostent*  __ret, char*  __buf, size_t __buf_size, struct hostent*  *  __result, int*  __h_errno_ptr);
struct hostent*  gethostbyname2(const char*  __name, int __af);
int gethostbyname2_r(const char*  __name, int __af, struct hostent*  __ret, char*  __buf, size_t __buf_size, struct hostent*  *  __result, int*  __h_errno_ptr) __attribute__((__availability__(android,strict,introduced=23 )));
void endhostent(void) __attribute__((__availability__(android,strict,introduced=28 )));
struct hostent*  gethostent(void);
void sethostent(int __stay_open) __attribute__((__availability__(android,strict,introduced=28 )));
void endnetent(void) __attribute__((__availability__(android,strict,introduced=28 )));
struct netent*  getnetbyaddr(uint32_t __net, int __type);
struct netent*  getnetbyname(const char*  __name);
struct netent*  getnetent(void) __attribute__((__availability__(android,strict,introduced=28 )));
void setnetent(int __stay_open) __attribute__((__availability__(android,strict,introduced=28 )));
void endprotoent(void) __attribute__((__availability__(android,strict,introduced=28 )));
struct protoent*  getprotobyname(const char*  __name);
struct protoent*  getprotobynumber(int __proto);
struct protoent*  getprotoent(void) __attribute__((__availability__(android,strict,introduced=28 )));
void setprotoent(int __stay_open) __attribute__((__availability__(android,strict,introduced=28 )));
void endservent(void);
struct servent*  getservbyname(const char*  __name, const char*  __proto);
struct servent*  getservbyport(int __port_in_network_order, const char*  __proto);
struct servent*  getservent(void);
void setservent(int __stay_open);
enum { _NETDB_H_ = 1 };
/* #define _PATH_HEQUIV "/system/etc/hosts.equiv" ### define is not number */
/* #define _PATH_HOSTS "/system/etc/hosts" ### define is not number */
/* #define _PATH_NETWORKS "/system/etc/networks" ### define is not number */
/* #define _PATH_PROTOCOLS "/system/etc/protocols" ### define is not number */
/* #define _PATH_SERVICES "/system/etc/services" ### define is not number */
/* #define h_addr h_addr_list[0] ### define is not number */
enum { NETDB_INTERNAL = -1 };
enum { NETDB_SUCCESS = 0 };
enum { HOST_NOT_FOUND = 1 };
enum { TRY_AGAIN = 2 };
enum { NO_RECOVERY = 3 };
enum { NO_DATA = 4 };
enum { NO_ADDRESS = 4 };
enum { EAI_ADDRFAMILY = 1 };
enum { EAI_AGAIN = 2 };
enum { EAI_BADFLAGS = 3 };
enum { EAI_FAIL = 4 };
enum { EAI_FAMILY = 5 };
enum { EAI_MEMORY = 6 };
enum { EAI_NODATA = 7 };
enum { EAI_NONAME = 8 };
enum { EAI_SERVICE = 9 };
enum { EAI_SOCKTYPE = 10 };
enum { EAI_SYSTEM = 11 };
enum { EAI_BADHINTS = 12 };
enum { EAI_PROTOCOL = 13 };
enum { EAI_OVERFLOW = 14 };
enum { EAI_MAX = 15 };
enum { AI_PASSIVE = 0x00000001 };
enum { AI_CANONNAME = 0x00000002 };
enum { AI_NUMERICHOST = 0x00000004 };
enum { AI_NUMERICSERV = 0x00000008 };
/* #define AI_MASK (AI_PASSIVE | AI_CANONNAME | AI_NUMERICHOST | AI_NUMERICSERV | AI_ADDRCONFIG) ### define is not number */
enum { AI_ALL = 0x00000100 };
enum { AI_V4MAPPED_CFG = 0x00000200 };
enum { AI_ADDRCONFIG = 0x00000400 };
enum { AI_V4MAPPED = 0x00000800 };
/* #define AI_DEFAULT (AI_V4MAPPED_CFG | AI_ADDRCONFIG) ### define is not number */
enum { NI_MAXHOST = 1025 };
enum { NI_MAXSERV = 32 };
enum { NI_NOFQDN = 0x00000001 };
enum { NI_NUMERICHOST = 0x00000002 };
enum { NI_NAMEREQD = 0x00000004 };
enum { NI_NUMERICSERV = 0x00000008 };
enum { NI_DGRAM = 0x00000010 };
/* #define SCOPE_DELIMITER '%' ### define is not number */

/* #define h_errno (*__get_h_errno()) ### define is not number */
/* + END <netdb.h> /data/data/com.termux/files/usr/bin/../../usr/include/netdb.h */
]]
