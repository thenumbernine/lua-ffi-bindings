local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ioctl.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ttycom.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;
typedef long __darwin_intptr_t;
typedef unsigned int __darwin_natural_t;
typedef int __darwin_ct_rune_t;
typedef union {
	char __mbstate8[128];
	long long _mbstateL;
} __mbstate_t;
typedef __mbstate_t __darwin_mbstate_t;
typedef long int __darwin_ptrdiff_t;
typedef long unsigned int __darwin_size_t;
typedef __builtin_va_list __darwin_va_list;
typedef int __darwin_wchar_t;
typedef __darwin_wchar_t __darwin_rune_t;
typedef int __darwin_wint_t;
typedef unsigned long __darwin_clock_t;
typedef __uint32_t __darwin_socklen_t;
typedef long __darwin_ssize_t;
typedef long __darwin_time_t;
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
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
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
]] require 'ffi.req' 'c.sys._pthread._pthread_types' ffi.cdef[[
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
enum { IOCPARM_MASK = 8191 };
enum { IOCPARM_MAX = 8192 };
/* #define IOC_VOID        (__uint32_t)0x20000000 ### string, not number "(__uint32_t)0x20000000" */
/* #define IOC_OUT         (__uint32_t)0x40000000 ### string, not number "(__uint32_t)0x40000000" */
/* #define IOC_IN          (__uint32_t)0x80000000 ### string, not number "(__uint32_t)0x80000000" */
/* #define IOC_INOUT       (IOC_IN|IOC_OUT) ### string, not number "(IOC_IN|IOC_OUT)" */
/* #define IOC_DIRMASK     (__uint32_t)0xe0000000 ### string, not number "(__uint32_t)0xe0000000" */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
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
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ttycom.h */
struct ttysize {
	unsigned short ts_lines;
	unsigned short ts_cols;
	unsigned short ts_xxx;
	unsigned short ts_yyy;
};
/* #define TIOCGSIZE       TIOCGWINSZ ### string, not number "TIOCGWINSZ" */
/* #define TIOCSSIZE       TIOCSWINSZ ### string, not number "TIOCSWINSZ" */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/filio.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
/* #define FIOCLEX          _IO('f', 1) ### string, not number "_IO('f', 1)" */
/* #define FIONCLEX         _IO('f', 2) ### string, not number "_IO('f', 2)" */
/* #define FIONREAD        _IOR('f', 127, int) ### string, not number "_IOR('f', 127, int)" */
/* #define FIONBIO         _IOW('f', 126, int) ### string, not number "_IOW('f', 126, int)" */
/* #define FIOASYNC        _IOW('f', 125, int) ### string, not number "_IOW('f', 125, int)" */
/* #define FIOSETOWN       _IOW('f', 124, int) ### string, not number "_IOW('f', 124, int)" */
/* #define FIOGETOWN       _IOR('f', 123, int) ### string, not number "_IOR('f', 123, int)" */
/* #define FIODTYPE        _IOR('f', 122, int) ### string, not number "_IOR('f', 122, int)" */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/filio.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/sockio.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
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
/* #define SIOCGIFDIRECTLINK _IOWR('i', 219, struct ifreq) ### string, not number "_IOWR('i', 219, struct ifreq)" */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/sockio.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
int ioctl(int, unsigned long, ...);
/* + END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ioctl.h */
]]
