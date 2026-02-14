local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <netdb.h> /boot/system/develop/headers/posix/netdb.h */
/* ++ BEGIN <stdint.h> /boot/system/develop/headers/posix/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++ END <stdint.h> /boot/system/develop/headers/posix/stdint.h */
/* ++ BEGIN <netinet/in.h> /boot/system/develop/headers/posix/netinet/in.h */
]] require 'ffi.req' 'c.netinet.in' ffi.cdef[[
/* ++ END <netinet/in.h> /boot/system/develop/headers/posix/netinet/in.h */
struct hostent {
 char* h_name;
 char** h_aliases;
 int h_addrtype;
 int h_length;
 char** h_addr_list;
};
struct netent {
 char* n_name;
 char** n_aliases;
 int n_addrtype;
 in_addr_t n_net;
};
struct servent {
 char* s_name;
 char** s_aliases;
 int s_port;
 char* s_proto;
};
struct protoent {
 char* p_name;
 char** p_aliases;
 int p_proto;
};
struct addrinfo {
 int ai_flags;
 int ai_family;
 int ai_socktype;
 int ai_protocol;
 socklen_t ai_addrlen;
 char* ai_canonname;
 struct sockaddr* ai_addr;
 struct addrinfo* ai_next;
};
extern int * __h_errno(void);
void herror(const char *);
const char *hstrerror(int);
void sethostent(int);
void endhostent(void);
struct hostent* gethostent(void);
void setnetent(int);
void endnetent(void);
struct netent* getnetbyaddr(uint32_t, int);
struct netent* getnetbyname(const char *);
struct netent* getnetent(void);
void setprotoent(int);
void endprotoent(void);
struct protoent* getprotoent(void);
struct protoent* getprotobyname(const char *);
struct protoent* getprotobynumber(int);
void setservent(int);
void endservent(void);
struct servent* getservent(void);
struct servent* getservbyname(const char *, const char *);
struct servent* getservbyport(int, const char *);
struct hostent* gethostbyaddr(const void *address, socklen_t length, int type);
struct hostent* gethostbyname(const char *name);
struct hostent* gethostbyname2(const char *name, int type);
int getaddrinfo(const char *, const char *, const struct addrinfo *,
 struct addrinfo **);
int getnameinfo(const struct sockaddr *, socklen_t, char *, socklen_t,
 char *, socklen_t, int);
void freeaddrinfo(struct addrinfo *);
const char* gai_strerror(int);
enum { _NETDB_H_ = 1 };
/* #define h_addr h_addr_list[0] ### define is not number */
/* #define h_errno (*__h_errno()) ### define is not number */
enum { NETDB_INTERNAL = -1 };
enum { NETDB_SUCCESS = 0 };
enum { HOST_NOT_FOUND = 1 };
enum { TRY_AGAIN = 2 };
enum { NO_RECOVERY = 3 };
enum { NO_DATA = 4 };
enum { NO_ADDRESS = 4 };
enum { AI_PASSIVE = 0x00000001 };
enum { AI_CANONNAME = 0x00000002 };
enum { AI_NUMERICHOST = 0x00000004 };
enum { AI_NUMERICSERV = 0x00000008 };
enum { AI_ALL = 0x00000100 };
enum { AI_V4MAPPED_CFG = 0x00000200 };
enum { AI_ADDRCONFIG = 0x00000400 };
enum { AI_V4MAPPED = 0x00000800 };
/* #define AI_MASK (AI_PASSIVE | AI_CANONNAME | AI_NUMERICHOST | AI_NUMERICSERV | AI_ADDRCONFIG) ### define is not number */
enum { NI_MAXHOST = 1025 };
enum { NI_MAXSERV = 32 };
/* #define SCOPE_DELIMITER '%' ### define is not number */
enum { NI_NOFQDN = 0x00000001 };
enum { NI_NUMERICHOST = 0x00000002 };
enum { NI_NAMEREQD = 0x00000004 };
enum { NI_NUMERICSERV = 0x00000008 };
enum { NI_DGRAM = 0x00000010 };
enum { NI_NUMERICSCOPE = 0x00000040 };
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
/* + END <netdb.h> /boot/system/develop/headers/posix/netdb.h */
]]
