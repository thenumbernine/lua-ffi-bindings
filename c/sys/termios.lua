local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/x86_64-linux-gnu/sys/termios.h */
enum { _SYS_TERMIOS_H = 1 };
/* BEGIN /usr/include/termios.h */
enum { _TERMIOS_H = 1 };
/* BEGIN /usr/include/features.h */
]] require 'ffi.c.sys.termios' ffi.cdef[[
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.c.bits.types' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/types.h */
typedef __pid_t pid_t;
enum { __pid_t_defined = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/termios.h */
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;
/* BEGIN /usr/include/x86_64-linux-gnu/bits/termios-struct.h */
enum { NCCS = 32 };
struct termios { tcflag_t c_iflag;
tcflag_t c_oflag;
tcflag_t c_cflag;
tcflag_t c_lflag;
cc_t c_line;
cc_t c_cc[32];
speed_t c_ispeed;
speed_t c_ospeed;
enum { _HAVE_STRUCT_TERMIOS_C_ISPEED = 1 };
enum { _HAVE_STRUCT_TERMIOS_C_OSPEED = 1 };
};
/* END /usr/include/x86_64-1-gnu/bits/termios-struct.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/termios-c_cc.h */
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
/* END /usr/include/x86_64-1-gnu/bits/termios-c_cc.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/termios-c_iflag.h */
enum { IGNBRK = 1 };
enum { BRKINT = 2 };
enum { IGNPAR = 4 };
enum { PARMRK = 10 };
enum { INPCK = 20 };
enum { ISTRIP = 40 };
enum { INLCR = 100 };
enum { IGNCR = 200 };
enum { ICRNL = 400 };
enum { IUCLC = 1000 };
enum { IXON = 2000 };
enum { IXANY = 4000 };
enum { IXOFF = 10000 };
enum { IMAXBEL = 20000 };
enum { IUTF8 = 40000 };
/* END /usr/include/x86_64-1-gnu/bits/termios-c_iflag.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/termios-c_oflag.h */
enum { OPOST = 1 };
enum { OLCUC = 2 };
enum { ONLCR = 4 };
enum { OCRNL = 10 };
enum { ONOCR = 20 };
enum { ONLRET = 40 };
enum { OFILL = 100 };
enum { OFDEL = 200 };
enum { NLDLY = 400 };
enum { NL0 = 0 };
enum { NL1 = 400 };
enum { CRDLY = 3000 };
enum { CR0 = 0 };
enum { CR1 = 1000 };
enum { CR2 = 2000 };
enum { CR3 = 3000 };
enum { TABDLY = 14000 };
enum { TAB0 = 0 };
enum { TAB1 = 4000 };
enum { TAB2 = 10000 };
enum { TAB3 = 14000 };
enum { BSDLY = 20000 };
enum { BS0 = 0 };
enum { BS1 = 20000 };
enum { FFDLY = 100000 };
enum { FF0 = 0 };
enum { FF1 = 100000 };
enum { VTDLY = 40000 };
enum { VT0 = 0 };
enum { VT1 = 40000 };
enum { XTABS = 14000 };
/* END /usr/include/x86_64-1-gnu/bits/termios-c_oflag.h */
enum { B0 = 0 };
enum { B50 = 1 };
enum { B75 = 2 };
enum { B110 = 3 };
enum { B134 = 4 };
enum { B150 = 5 };
enum { B200 = 6 };
enum { B300 = 7 };
enum { B600 = 10 };
enum { B1200 = 11 };
enum { B1800 = 12 };
enum { B2400 = 13 };
enum { B4800 = 14 };
enum { B9600 = 15 };
enum { B19200 = 16 };
enum { B38400 = 17 };
enum { EXTA = 16 };
enum { EXTB = 17 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/termios-baud.h */
enum { CBAUD = 10017 };
enum { CBAUDEX = 10000 };
enum { CIBAUD = 2003600000 };
/* enum { CMSPAR = 10000000000 }; <- >32 bit number */
enum { CRTSCTS = 20000000000 };
enum { B57600 = 10001 };
enum { B115200 = 10002 };
enum { B230400 = 10003 };
enum { B460800 = 10004 };
enum { B500000 = 10005 };
enum { B576000 = 10006 };
enum { B921600 = 10007 };
enum { B1000000 = 10010 };
enum { B1152000 = 10011 };
enum { B1500000 = 10012 };
enum { B2000000 = 10013 };
enum { B2500000 = 10014 };
enum { B3000000 = 10015 };
enum { B3500000 = 10016 };
enum { B4000000 = 10017 };
enum { __MAX_BAUD = 10017 };
/* END /usr/include/x86_64-1-gnu/bits/termios-baud.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/termios-c_cflag.h */
enum { CSIZE = 60 };
enum { CS5 = 0 };
enum { CS6 = 20 };
enum { CS7 = 40 };
enum { CS8 = 60 };
enum { CSTOPB = 100 };
enum { CREAD = 200 };
enum { PARENB = 400 };
enum { PARODD = 1000 };
enum { HUPCL = 2000 };
enum { CLOCAL = 4000 };
/* END /usr/include/x86_64-1-gnu/bits/termios-c_cflag.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/termios-c_lflag.h */
enum { ISIG = 1 };
enum { ICANON = 2 };
enum { XCASE = 4 };
enum { ECHO = 10 };
enum { ECHOE = 20 };
enum { ECHOK = 40 };
enum { ECHONL = 100 };
enum { NOFLSH = 200 };
enum { TOSTOP = 400 };
enum { ECHOCTL = 1000 };
enum { ECHOPRT = 2000 };
enum { ECHOKE = 4000 };
enum { FLUSHO = 10000 };
enum { PENDIN = 40000 };
enum { IEXTEN = 100000 };
enum { EXTPROC = 200000 };
/* END /usr/include/x86_64-1-gnu/bits/termios-c_lflag.h */
enum { TIOCSER_TEMT = 1 };
enum { TCOOFF = 0 };
enum { TCOON = 1 };
enum { TCIOFF = 2 };
enum { TCION = 3 };
enum { TCIFLUSH = 0 };
enum { TCOFLUSH = 1 };
enum { TCIOFLUSH = 2 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/termios-tcflow.h */
enum { TCSANOW = 0 };
enum { TCSADRAIN = 1 };
enum { TCSAFLUSH = 2 };
/* END /usr/include/x86_64-1-gnu/bits/termios-tcflow.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/termios-misc.h */
/* END /usr/include/x86_64-1-gnu/bits/termios-misc.h */
/* END /usr/include/x86_64-1-gnu/bits/termios.h */
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
/* BEGIN /usr/include/x86_64-linux-gnu/sys/ttydefaults.h */
enum { _SYS_TTYDEFAULTS_H_ = 1 };
enum { TTYDEF_IFLAG = 20474 };
enum { TTYDEF_OFLAG = 14005 };
enum { TTYDEF_LFLAG = 102399 };
enum { TTYDEF_CFLAG = 2040 };
enum { TTYDEF_SPEED = 15 };
/* #define	CEOF		CTRL('d') ### string, not number "CTRL('d')" */
/* # define CEOL		'\0' ### string, not number "'\\0'" */
enum { CERASE = 177 };
/* #define	CINTR		CTRL('c') ### string, not number "CTRL('c')" */
/* # define CSTATUS	'\0' ### string, not number "'\\0'" */
/* #define	CKILL		CTRL('u') ### string, not number "CTRL('u')" */
enum { CMIN = 1 };
enum { CQUIT = 34 };
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
/* END /usr/include/x86_64-1-gnu/sys/ttydefaults.h */
/* END /usr/include/termios.h */
/* END /usr/include/x86_64-1-gnu/sys/termios.h */
]]
