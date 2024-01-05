local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/sys/termios.h */
/* ++ BEGIN /usr/include/termios.h */
/* +++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* +++ END   /usr/include/features.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types.pid_t' ffi.cdef[[
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/termios.h */
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/termios-struct.h */
enum { NCCS = 32 };
struct termios {
	tcflag_t c_iflag;
	tcflag_t c_oflag;
	tcflag_t c_cflag;
	tcflag_t c_lflag;
	cc_t c_line;
	cc_t c_cc[32];
	speed_t c_ispeed;
	speed_t c_ospeed;
};
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/termios-struct.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/termios-c_cc.h */
enum { VINTR = 0 };
enum { VQUIT = 1 };
enum { VERASE = 2 };
enum { VKILL = 3 };
enum { VEOF = 4 };
enum { VTIME = 5 };
enum { VMIN = 6 };
enum { VSWTC = 7 };
enum { VSTART = 8 };
enum { VSTOP = 9 };
enum { VSUSP = 10 };
enum { VEOL = 11 };
enum { VREPRINT = 12 };
enum { VDISCARD = 13 };
enum { VWERASE = 14 };
enum { VLNEXT = 15 };
enum { VEOL2 = 16 };
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/termios-c_cc.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/termios-c_iflag.h */
enum { IGNBRK = 1 };
enum { BRKINT = 2 };
enum { IGNPAR = 4 };
enum { PARMRK = 8 };
enum { INPCK = 16 };
enum { ISTRIP = 32 };
enum { INLCR = 64 };
enum { IGNCR = 128 };
enum { ICRNL = 256 };
enum { IUCLC = 512 };
enum { IXON = 1024 };
enum { IXANY = 2048 };
enum { IXOFF = 4096 };
enum { IMAXBEL = 8192 };
enum { IUTF8 = 16384 };
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/termios-c_iflag.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/termios-c_oflag.h */
enum { OPOST = 1 };
enum { OLCUC = 2 };
enum { ONLCR = 4 };
enum { OCRNL = 8 };
enum { ONOCR = 16 };
enum { ONLRET = 32 };
enum { OFILL = 64 };
enum { OFDEL = 128 };
enum { NLDLY = 256 };
enum { NL0 = 0 };
enum { NL1 = 256 };
enum { CRDLY = 1536 };
enum { CR0 = 0 };
enum { CR1 = 512 };
enum { CR2 = 1024 };
enum { CR3 = 1536 };
enum { TABDLY = 6144 };
enum { TAB0 = 0 };
enum { TAB1 = 2048 };
enum { TAB2 = 4096 };
enum { TAB3 = 6144 };
enum { BSDLY = 8192 };
enum { BS0 = 0 };
enum { BS1 = 8192 };
enum { FFDLY = 32768 };
enum { FF0 = 0 };
enum { FF1 = 32768 };
enum { VTDLY = 16384 };
enum { VT0 = 0 };
enum { VT1 = 16384 };
enum { XTABS = 6144 };
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/termios-c_oflag.h */
enum { B0 = 0 };
enum { B50 = 1 };
enum { B75 = 2 };
enum { B110 = 3 };
enum { B134 = 4 };
enum { B150 = 5 };
enum { B200 = 6 };
enum { B300 = 7 };
enum { B600 = 8 };
enum { B1200 = 9 };
enum { B1800 = 10 };
enum { B2400 = 11 };
enum { B4800 = 12 };
enum { B9600 = 13 };
enum { B19200 = 14 };
enum { B38400 = 15 };
enum { EXTA = 14 };
enum { EXTB = 15 };
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/termios-baud.h */
enum { CBAUD = 4111 };
enum { CBAUDEX = 4096 };
enum { CIBAUD = 269418496 };
enum { CMSPAR = 1073741824 };
enum { CRTSCTS = 2147483648 };
enum { B57600 = 4097 };
enum { B115200 = 4098 };
enum { B230400 = 4099 };
enum { B460800 = 4100 };
enum { B500000 = 4101 };
enum { B576000 = 4102 };
enum { B921600 = 4103 };
enum { B1000000 = 4104 };
enum { B1152000 = 4105 };
enum { B1500000 = 4106 };
enum { B2000000 = 4107 };
enum { B2500000 = 4108 };
enum { B3000000 = 4109 };
enum { B3500000 = 4110 };
enum { B4000000 = 4111 };
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/termios-baud.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/termios-c_cflag.h */
enum { CSIZE = 48 };
enum { CS5 = 0 };
enum { CS6 = 16 };
enum { CS7 = 32 };
enum { CS8 = 48 };
enum { CSTOPB = 64 };
enum { CREAD = 128 };
enum { PARENB = 256 };
enum { PARODD = 512 };
enum { HUPCL = 1024 };
enum { CLOCAL = 2048 };
enum { ADDRB = 536870912 };
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/termios-c_cflag.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/termios-c_lflag.h */
enum { ISIG = 1 };
enum { ICANON = 2 };
enum { XCASE = 4 };
enum { ECHO = 8 };
enum { ECHOE = 16 };
enum { ECHOK = 32 };
enum { ECHONL = 64 };
enum { NOFLSH = 128 };
enum { TOSTOP = 256 };
enum { ECHOCTL = 512 };
enum { ECHOPRT = 1024 };
enum { ECHOKE = 2048 };
enum { FLUSHO = 4096 };
enum { PENDIN = 16384 };
enum { IEXTEN = 32768 };
enum { EXTPROC = 65536 };
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/termios-c_lflag.h */
enum { TIOCSER_TEMT = 1 };
enum { TCOOFF = 0 };
enum { TCOON = 1 };
enum { TCIOFF = 2 };
enum { TCION = 3 };
enum { TCIFLUSH = 0 };
enum { TCOFLUSH = 1 };
enum { TCIOFLUSH = 2 };
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/termios-tcflow.h */
enum { TCSANOW = 0 };
enum { TCSADRAIN = 1 };
enum { TCSAFLUSH = 2 };
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/termios-tcflow.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/bits/termios-misc.h */
/* ++++ END   /usr/include/x86_64-linux-gnu/bits/termios-misc.h */
/* +++ END   /usr/include/x86_64-linux-gnu/bits/termios.h */
extern speed_t cfgetospeed (const struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));
extern speed_t cfgetispeed (const struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));
extern int cfsetospeed (struct termios *__termios_p, speed_t __speed) __attribute__ ((__nothrow__ , __leaf__));
extern int cfsetispeed (struct termios *__termios_p, speed_t __speed) __attribute__ ((__nothrow__ , __leaf__));
extern int cfsetspeed (struct termios *__termios_p, speed_t __speed) __attribute__ ((__nothrow__ , __leaf__));
extern int tcgetattr (int __fd, struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));
extern int tcsetattr (int __fd, int __optional_actions, const struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));
extern void cfmakeraw (struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));
extern int tcsendbreak (int __fd, int __duration) __attribute__ ((__nothrow__ , __leaf__));
extern int tcdrain (int __fd);
extern int tcflush (int __fd, int __queue_selector) __attribute__ ((__nothrow__ , __leaf__));
extern int tcflow (int __fd, int __action) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t tcgetsid (int __fd) __attribute__ ((__nothrow__ , __leaf__));
/* +++ BEGIN /usr/include/x86_64-linux-gnu/sys/ttydefaults.h */
enum { TTYDEF_IFLAG = 11554 };
enum { TTYDEF_OFLAG = 6149 };
enum { TTYDEF_LFLAG = 35355 };
enum { TTYDEF_CFLAG = 1440 };
enum { TTYDEF_SPEED = 13 };
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
/* +++ END   /usr/include/x86_64-linux-gnu/sys/ttydefaults.h */
/* ++ END   /usr/include/termios.h */
/* + END   /usr/include/x86_64-linux-gnu/sys/termios.h */
]]
