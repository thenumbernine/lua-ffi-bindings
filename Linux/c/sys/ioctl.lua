local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/sys/ioctl.h */
/* ++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END   /usr/include/features.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/ioctls.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/asm/ioctls.h */
/* ++++ BEGIN /usr/include/asm-generic/ioctls.h */
/* +++++ BEGIN /usr/include/linux/ioctl.h */
/* ++++++ BEGIN /usr/include/x86_64-linux-gnu/asm/ioctl.h */
/* +++++++ BEGIN /usr/include/asm-generic/ioctl.h */
enum { IOC_IN = 1073741824 };
enum { IOC_OUT = -2147483648 };
enum { IOC_INOUT = -1073741824 };
enum { IOCSIZE_MASK = 1073676288 };
enum { IOCSIZE_SHIFT = 16 };
/* +++++++ END   /usr/include/asm-generic/ioctl.h */
/* ++++++ END   /usr/include/x86_64-linux-gnu/asm/ioctl.h */
/* +++++ END   /usr/include/linux/ioctl.h */
enum { TCGETS = 21505 };
enum { TCSETS = 21506 };
enum { TCSETSW = 21507 };
enum { TCSETSF = 21508 };
enum { TCGETA = 21509 };
enum { TCSETA = 21510 };
enum { TCSETAW = 21511 };
enum { TCSETAF = 21512 };
enum { TCSBRK = 21513 };
enum { TCXONC = 21514 };
enum { TCFLSH = 21515 };
enum { TIOCEXCL = 21516 };
enum { TIOCNXCL = 21517 };
enum { TIOCSCTTY = 21518 };
enum { TIOCGPGRP = 21519 };
enum { TIOCSPGRP = 21520 };
enum { TIOCOUTQ = 21521 };
enum { TIOCSTI = 21522 };
enum { TIOCGWINSZ = 21523 };
enum { TIOCSWINSZ = 21524 };
enum { TIOCMGET = 21525 };
enum { TIOCMBIS = 21526 };
enum { TIOCMBIC = 21527 };
enum { TIOCMSET = 21528 };
enum { TIOCGSOFTCAR = 21529 };
enum { TIOCSSOFTCAR = 21530 };
enum { FIONREAD = 21531 };
enum { TIOCINQ = 21531 };
enum { TIOCLINUX = 21532 };
enum { TIOCCONS = 21533 };
enum { TIOCGSERIAL = 21534 };
enum { TIOCSSERIAL = 21535 };
enum { TIOCPKT = 21536 };
enum { FIONBIO = 21537 };
enum { TIOCNOTTY = 21538 };
enum { TIOCSETD = 21539 };
enum { TIOCGETD = 21540 };
enum { TCSBRKP = 21541 };
enum { TIOCSBRK = 21543 };
enum { TIOCCBRK = 21544 };
enum { TIOCGSID = 21545 };
/* #define TCGETS2		_IOR('T', 0x2A, struct termios2) ### string, not number "_IOR('T', 0x2A, struct termios2)" */
/* #define TCSETS2		_IOW('T', 0x2B, struct termios2) ### string, not number "_IOW('T', 0x2B, struct termios2)" */
/* #define TCSETSW2	_IOW('T', 0x2C, struct termios2) ### string, not number "_IOW('T', 0x2C, struct termios2)" */
/* #define TCSETSF2	_IOW('T', 0x2D, struct termios2) ### string, not number "_IOW('T', 0x2D, struct termios2)" */
enum { TIOCGRS485 = 21550 };
enum { TIOCSRS485 = 21551 };
/* #define TIOCGPTN	_IOR('T', 0x30, unsigned int) ### string, not number "_IOR('T', 0x30, unsigned int)" */
/* #define TIOCSPTLCK	_IOW('T', 0x31, int) ### string, not number "_IOW('T', 0x31, int)" */
/* #define TIOCGDEV	_IOR('T', 0x32, unsigned int) ### string, not number "_IOR('T', 0x32, unsigned int)" */
enum { TCGETX = 21554 };
enum { TCSETX = 21555 };
enum { TCSETXF = 21556 };
enum { TCSETXW = 21557 };
/* #define TIOCSIG		_IOW('T', 0x36, int) ### string, not number "_IOW('T', 0x36, int)" */
enum { TIOCVHANGUP = 21559 };
/* #define TIOCGPKT	_IOR('T', 0x38, int) ### string, not number "_IOR('T', 0x38, int)" */
/* #define TIOCGPTLCK	_IOR('T', 0x39, int) ### string, not number "_IOR('T', 0x39, int)" */
/* #define TIOCGEXCL	_IOR('T', 0x40, int) ### string, not number "_IOR('T', 0x40, int)" */
/* #define TIOCGPTPEER	_IO('T', 0x41) ### string, not number "_IO('T', 0x41)" */
/* #define TIOCGISO7816	_IOR('T', 0x42, struct serial_iso7816) ### string, not number "_IOR('T', 0x42, struct serial_iso7816)" */
/* #define TIOCSISO7816	_IOWR('T', 0x43, struct serial_iso7816) ### string, not number "_IOWR('T', 0x43, struct serial_iso7816)" */
enum { FIONCLEX = 21584 };
enum { FIOCLEX = 21585 };
enum { FIOASYNC = 21586 };
enum { TIOCSERCONFIG = 21587 };
enum { TIOCSERGWILD = 21588 };
enum { TIOCSERSWILD = 21589 };
enum { TIOCGLCKTRMIOS = 21590 };
enum { TIOCSLCKTRMIOS = 21591 };
enum { TIOCSERGSTRUCT = 21592 };
enum { TIOCSERGETLSR = 21593 };
enum { TIOCSERGETMULTI = 21594 };
enum { TIOCSERSETMULTI = 21595 };
enum { TIOCMIWAIT = 21596 };
enum { TIOCGICOUNT = 21597 };
enum { FIOQSIZE = 21600 };
enum { TIOCPKT_DATA = 0 };
enum { TIOCPKT_FLUSHREAD = 1 };
enum { TIOCPKT_FLUSHWRITE = 2 };
enum { TIOCPKT_STOP = 4 };
enum { TIOCPKT_START = 8 };
enum { TIOCPKT_NOSTOP = 16 };
enum { TIOCPKT_DOSTOP = 32 };
enum { TIOCPKT_IOCTL = 64 };
enum { TIOCSER_TEMT = 1 };
/* ++++ END   /usr/include/asm-generic/ioctls.h */
/* +++ END   /usr/include/x86_64-linux-gnu/asm/ioctls.h */
enum { SIOCADDRT = 35083 };
enum { SIOCDELRT = 35084 };
enum { SIOCRTMSG = 35085 };
enum { SIOCGIFNAME = 35088 };
enum { SIOCSIFLINK = 35089 };
enum { SIOCGIFCONF = 35090 };
enum { SIOCGIFFLAGS = 35091 };
enum { SIOCSIFFLAGS = 35092 };
enum { SIOCGIFADDR = 35093 };
enum { SIOCSIFADDR = 35094 };
enum { SIOCGIFDSTADDR = 35095 };
enum { SIOCSIFDSTADDR = 35096 };
enum { SIOCGIFBRDADDR = 35097 };
enum { SIOCSIFBRDADDR = 35098 };
enum { SIOCGIFNETMASK = 35099 };
enum { SIOCSIFNETMASK = 35100 };
enum { SIOCGIFMETRIC = 35101 };
enum { SIOCSIFMETRIC = 35102 };
enum { SIOCGIFMEM = 35103 };
enum { SIOCSIFMEM = 35104 };
enum { SIOCGIFMTU = 35105 };
enum { SIOCSIFMTU = 35106 };
enum { SIOCSIFNAME = 35107 };
enum { SIOCSIFHWADDR = 35108 };
enum { SIOCGIFENCAP = 35109 };
enum { SIOCSIFENCAP = 35110 };
enum { SIOCGIFHWADDR = 35111 };
enum { SIOCGIFSLAVE = 35113 };
enum { SIOCSIFSLAVE = 35120 };
enum { SIOCADDMULTI = 35121 };
enum { SIOCDELMULTI = 35122 };
enum { SIOCGIFINDEX = 35123 };
enum { SIOGIFINDEX = 35123 };
enum { SIOCSIFPFLAGS = 35124 };
enum { SIOCGIFPFLAGS = 35125 };
enum { SIOCDIFADDR = 35126 };
enum { SIOCSIFHWBROADCAST = 35127 };
enum { SIOCGIFCOUNT = 35128 };
enum { SIOCGIFBR = 35136 };
enum { SIOCSIFBR = 35137 };
enum { SIOCGIFTXQLEN = 35138 };
enum { SIOCSIFTXQLEN = 35139 };
enum { SIOCDARP = 35155 };
enum { SIOCGARP = 35156 };
enum { SIOCSARP = 35157 };
enum { SIOCDRARP = 35168 };
enum { SIOCGRARP = 35169 };
enum { SIOCSRARP = 35170 };
enum { SIOCGIFMAP = 35184 };
enum { SIOCSIFMAP = 35185 };
enum { SIOCADDDLCI = 35200 };
enum { SIOCDELDLCI = 35201 };
enum { SIOCDEVPRIVATE = 35312 };
enum { SIOCPROTOPRIVATE = 35296 };
/* ++ END   /usr/include/x86_64-linux-gnu/bits/ioctls.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/ioctl-types.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/asm/ioctls.h */
/* ++++ BEGIN /usr/include/asm-generic/ioctls.h */
/* ++++ END   /usr/include/asm-generic/ioctls.h */
/* +++ END   /usr/include/x86_64-linux-gnu/asm/ioctls.h */
struct winsize {
	unsigned short int ws_row;
	unsigned short int ws_col;
	unsigned short int ws_xpixel;
	unsigned short int ws_ypixel;
};
enum { NCC = 8 };
struct termio {
	unsigned short int c_iflag;
	unsigned short int c_oflag;
	unsigned short int c_cflag;
	unsigned short int c_lflag;
	unsigned char c_line;
	unsigned char c_cc[8];
};
enum { TIOCM_LE = 1 };
enum { TIOCM_DTR = 2 };
enum { TIOCM_RTS = 4 };
enum { TIOCM_ST = 8 };
enum { TIOCM_SR = 16 };
enum { TIOCM_CTS = 32 };
enum { TIOCM_CAR = 64 };
enum { TIOCM_RNG = 128 };
enum { TIOCM_DSR = 256 };
enum { TIOCM_CD = 64 };
enum { TIOCM_RI = 128 };
enum { N_TTY = 0 };
enum { N_SLIP = 1 };
enum { N_MOUSE = 2 };
enum { N_PPP = 3 };
enum { N_STRIP = 4 };
enum { N_AX25 = 5 };
enum { N_X25 = 6 };
enum { N_6PACK = 7 };
enum { N_MASC = 8 };
enum { N_R3964 = 9 };
enum { N_PROFIBUS_FDL = 10 };
enum { N_IRDA = 11 };
enum { N_SMSBLOCK = 12 };
enum { N_HDLC = 13 };
enum { N_SYNC_PPP = 14 };
enum { N_HCI = 15 };
/* ++ END   /usr/include/x86_64-linux-gnu/bits/ioctl-types.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/sys/ttydefaults.h */
enum { TTYDEF_IFLAG = 0 };
enum { TTYDEF_OFLAG = 0 };
enum { TTYDEF_LFLAG = 0 };
enum { TTYDEF_CFLAG = 0 };
enum { TTYDEF_SPEED = 0 };
/* #define	CEOF		CTRL('d') ### string, not number "CTRL('d')" */
/* # define CEOL		'\0' ### string, not number "'\\0'" */
enum { CERASE = 127 };
/* #define	CINTR		CTRL('c') ### string, not number "CTRL('c')" */
/* # define CSTATUS	'\0' ### string, not number "'\\0'" */
/* #define	CKILL		CTRL('u') ### string, not number "CTRL('u')" */
enum { CMIN = 1 };
enum { CQUIT = 28 };
/* #define	CSUSP		CTRL('z') ### string, not number "CTRL('z')" */
enum { CTIME = 0 };
/* #define	CDSUSP		CTRL('y') ### string, not number "CTRL('y')" */
/* #define	CSTART		CTRL('q') ### string, not number "CTRL('q')" */
/* #define	CSTOP		CTRL('s') ### string, not number "CTRL('s')" */
/* #define	CLNEXT		CTRL('v') ### string, not number "CTRL('v')" */
/* #define	CDISCARD 	CTRL('o') ### string, not number "CTRL('o')" */
/* #define	CWERASE 	CTRL('w') ### string, not number "CTRL('w')" */
/* #define	CREPRINT 	CTRL('r') ### string, not number "CTRL('r')" */
/* #define	CEOT		CEOF ### string, not number "CEOF" */
/* #define	CBRK		CEOL ### string, not number "CEOL" */
/* #define CRPRNT		CREPRINT ### string, not number "CREPRINT" */
/* #define	CFLUSH		CDISCARD ### string, not number "CDISCARD" */
/* ++ END   /usr/include/x86_64-linux-gnu/sys/ttydefaults.h */
extern int ioctl (int __fd, unsigned long int __request, ...) __attribute__ ((__nothrow__ , __leaf__));
/* + END   /usr/include/x86_64-linux-gnu/sys/ioctl.h */
]]
