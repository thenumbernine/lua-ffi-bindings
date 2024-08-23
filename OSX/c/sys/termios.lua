local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/termios.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
enum { VEOF = 0 };
enum { VEOL = 1 };
enum { VEOL2 = 2 };
enum { VERASE = 3 };
enum { VWERASE = 4 };
enum { VKILL = 5 };
enum { VREPRINT = 6 };
enum { VINTR = 8 };
enum { VQUIT = 9 };
enum { VSUSP = 10 };
enum { VDSUSP = 11 };
enum { VSTART = 12 };
enum { VSTOP = 13 };
enum { VLNEXT = 14 };
enum { VDISCARD = 15 };
enum { VMIN = 16 };
enum { VTIME = 17 };
enum { VSTATUS = 18 };
enum { NCCS = 20 };
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_posix_vdisable.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_posix_vdisable.h */
enum { IGNBRK = 1 };
enum { BRKINT = 2 };
enum { IGNPAR = 4 };
enum { PARMRK = 8 };
enum { INPCK = 16 };
enum { ISTRIP = 32 };
enum { INLCR = 64 };
enum { IGNCR = 128 };
enum { ICRNL = 256 };
enum { IXON = 512 };
enum { IXOFF = 1024 };
enum { IXANY = 2048 };
enum { IMAXBEL = 8192 };
enum { IUTF8 = 16384 };
enum { OPOST = 1 };
enum { ONLCR = 2 };
enum { OXTABS = 4 };
enum { ONOEOT = 8 };
enum { OCRNL = 16 };
enum { ONOCR = 32 };
enum { ONLRET = 64 };
enum { OFILL = 128 };
enum { NLDLY = 768 };
enum { TABDLY = 3076 };
enum { CRDLY = 12288 };
enum { FFDLY = 16384 };
enum { BSDLY = 32768 };
enum { VTDLY = 65536 };
enum { OFDEL = 131072 };
enum { NL0 = 0 };
enum { NL1 = 256 };
enum { NL2 = 512 };
enum { NL3 = 768 };
enum { TAB0 = 0 };
enum { TAB1 = 1024 };
enum { TAB2 = 2048 };
enum { TAB3 = 4 };
enum { CR0 = 0 };
enum { CR1 = 4096 };
enum { CR2 = 8192 };
enum { CR3 = 12288 };
enum { FF0 = 0 };
enum { FF1 = 16384 };
enum { BS0 = 0 };
enum { BS1 = 32768 };
enum { VT0 = 0 };
enum { VT1 = 65536 };
enum { CIGNORE = 1 };
enum { CSIZE = 768 };
enum { CS5 = 0 };
enum { CS6 = 256 };
enum { CS7 = 512 };
enum { CS8 = 768 };
enum { CSTOPB = 1024 };
enum { CREAD = 2048 };
enum { PARENB = 4096 };
enum { PARODD = 8192 };
enum { HUPCL = 16384 };
enum { CLOCAL = 32768 };
enum { CCTS_OFLOW = 65536 };
enum { CRTSCTS = 65536 };
enum { CRTS_IFLOW = 131072 };
enum { CDTR_IFLOW = 262144 };
enum { CDSR_OFLOW = 524288 };
enum { CCAR_OFLOW = 1048576 };
enum { MDMBUF = 1048576 };
enum { ECHOKE = 1 };
enum { ECHOE = 2 };
enum { ECHOK = 4 };
enum { ECHO = 8 };
enum { ECHONL = 16 };
enum { ECHOPRT = 32 };
enum { ECHOCTL = 64 };
enum { ISIG = 128 };
enum { ICANON = 256 };
enum { ALTWERASE = 512 };
enum { IEXTEN = 1024 };
enum { EXTPROC = 2048 };
enum { TOSTOP = 4194304 };
enum { FLUSHO = 8388608 };
enum { NOKERNINFO = 33554432 };
enum { PENDIN = 536870912 };
enum { NOFLSH = 2147483648 };
typedef unsigned long tcflag_t;
typedef unsigned char cc_t;
typedef unsigned long speed_t;
struct termios {
	tcflag_t c_iflag;
	tcflag_t c_oflag;
	tcflag_t c_cflag;
	tcflag_t c_lflag;
	cc_t c_cc[20];
	speed_t c_ispeed;
	speed_t c_ospeed;
};
enum { TCSANOW = 0 };
enum { TCSADRAIN = 1 };
enum { TCSAFLUSH = 2 };
enum { TCSASOFT = 16 };
enum { B0 = 0 };
enum { B50 = 50 };
enum { B75 = 75 };
enum { B110 = 110 };
enum { B134 = 134 };
enum { B150 = 150 };
enum { B200 = 200 };
enum { B300 = 300 };
enum { B600 = 600 };
enum { B1200 = 1200 };
enum { B1800 = 1800 };
enum { B2400 = 2400 };
enum { B4800 = 4800 };
enum { B9600 = 9600 };
enum { B19200 = 19200 };
enum { B38400 = 38400 };
enum { B7200 = 7200 };
enum { B14400 = 14400 };
enum { B28800 = 28800 };
enum { B57600 = 57600 };
enum { B76800 = 76800 };
enum { B115200 = 115200 };
enum { B230400 = 230400 };
enum { EXTA = 19200 };
enum { EXTB = 38400 };
enum { TCIFLUSH = 1 };
enum { TCOFLUSH = 2 };
enum { TCIOFLUSH = 3 };
enum { TCOOFF = 1 };
enum { TCOON = 2 };
enum { TCIOFF = 3 };
enum { TCION = 4 };
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
speed_t cfgetispeed(const struct termios *);
speed_t cfgetospeed(const struct termios *);
int cfsetispeed(struct termios *, speed_t);
int cfsetospeed(struct termios *, speed_t);
int tcgetattr(int, struct termios *);
int tcsetattr(int, int, const struct termios *);
int tcdrain(int) __asm("tcdrain");
int tcflow(int, int);
int tcflush(int, int);
int tcsendbreak(int, int);
void cfmakeraw(struct termios *);
int cfsetspeed(struct termios *, speed_t);
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ttycom.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ioccom.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
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
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ttydefaults.h */
enum { TTYDEF_IFLAG = 11010 };
enum { TTYDEF_OFLAG = 3 };
enum { TTYDEF_LFLAG = 1483 };
enum { TTYDEF_CFLAG = 19200 };
enum { TTYDEF_SPEED = 9600 };
/* #define CEOF            CTRL('d') ### string, not number "CTRL('d')" */
enum { CEOL = 255 };
enum { CERASE = 127 };
/* #define CINTR           CTRL('c') ### string, not number "CTRL('c')" */
/* #define CSTATUS         CTRL('t') ### string, not number "CTRL('t')" */
/* #define CKILL           CTRL('u') ### string, not number "CTRL('u')" */
enum { CMIN = 1 };
enum { CQUIT = 28 };
/* #define CSUSP           CTRL('z') ### string, not number "CTRL('z')" */
enum { CTIME = 0 };
/* #define CDSUSP          CTRL('y') ### string, not number "CTRL('y')" */
/* #define CSTART          CTRL('q') ### string, not number "CTRL('q')" */
/* #define CSTOP           CTRL('s') ### string, not number "CTRL('s')" */
/* #define CLNEXT          CTRL('v') ### string, not number "CTRL('v')" */
/* #define CDISCARD        CTRL('o') ### string, not number "CTRL('o')" */
/* #define CWERASE         CTRL('w') ### string, not number "CTRL('w')" */
/* #define CREPRINT        CTRL('r') ### string, not number "CTRL('r')" */
/* #define CEOT            CEOF ### string, not number "CEOF" */
enum { CBRK = 255 };
/* #define CRPRNT          CREPRINT ### string, not number "CREPRINT" */
/* #define CFLUSH          CDISCARD ### string, not number "CDISCARD" */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/ttydefaults.h */
/* + END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/termios.h */
]]
