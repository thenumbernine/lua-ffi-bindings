/* BEGIN /usr/include/termios.h */
enum { _TERMIOS_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/termios.h */
typedef unsigned char	cc_t;
typedef unsigned int	speed_t;
typedef unsigned int	tcflag_t;
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
enum { IGNBRK = 0000001 };
enum { BRKINT = 0000002 };
enum { IGNPAR = 0000004 };
enum { PARMRK = 0000010 };
enum { INPCK = 0000020 };
enum { ISTRIP = 0000040 };
enum { INLCR = 0000100 };
enum { IGNCR = 0000200 };
enum { ICRNL = 0000400 };
enum { IUCLC = 0001000 };
enum { IXON = 0002000 };
enum { IXANY = 0004000 };
enum { IXOFF = 0010000 };
enum { IMAXBEL = 0020000 };
enum { IUTF8 = 0040000 };
/* END /usr/include/x86_64-1-gnu/bits/termios-c_iflag.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/termios-c_oflag.h */
enum { OPOST = 0000001 };
enum { OLCUC = 0000002 };
enum { ONLCR = 0000004 };
enum { OCRNL = 0000010 };
enum { ONOCR = 0000020 };
enum { ONLRET = 0000040 };
enum { OFILL = 0000100 };
enum { OFDEL = 0000200 };
enum { VTDLY = 0040000 };
enum { VT0 = 0000000 };
enum { VT1 = 0040000 };
/* END /usr/include/x86_64-1-gnu/bits/termios-c_oflag.h */
enum { B0 = 0000000 };
enum { B50 = 0000001 };
enum { B75 = 0000002 };
enum { B110 = 0000003 };
enum { B134 = 0000004 };
enum { B150 = 0000005 };
enum { B200 = 0000006 };
enum { B300 = 0000007 };
enum { B600 = 0000010 };
enum { B1200 = 0000011 };
enum { B1800 = 0000012 };
enum { B2400 = 0000013 };
enum { B4800 = 0000014 };
enum { B9600 = 0000015 };
enum { B19200 = 0000016 };
enum { B38400 = 0000017 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/termios-baud.h */
enum { B57600 = 0010001 };
enum { B115200 = 0010002 };
enum { B230400 = 0010003 };
enum { B460800 = 0010004 };
enum { B500000 = 0010005 };
enum { B576000 = 0010006 };
enum { B921600 = 0010007 };
enum { B1000000 = 0010010 };
enum { B1152000 = 0010011 };
enum { B1500000 = 0010012 };
enum { B2000000 = 0010013 };
enum { B2500000 = 0010014 };
enum { B3000000 = 0010015 };
enum { B3500000 = 0010016 };
enum { B4000000 = 0010017 };
enum { __MAX_BAUD = 0010017 };
/* END /usr/include/x86_64-1-gnu/bits/termios-baud.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/termios-c_cflag.h */
enum { CSIZE = 0000060 };
enum { CS5 = 0000000 };
enum { CS6 = 0000020 };
enum { CS7 = 0000040 };
enum { CS8 = 0000060 };
enum { CSTOPB = 0000100 };
enum { CREAD = 0000200 };
enum { PARENB = 0000400 };
enum { PARODD = 0001000 };
enum { HUPCL = 0002000 };
enum { CLOCAL = 0004000 };
/* END /usr/include/x86_64-1-gnu/bits/termios-c_cflag.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/termios-c_lflag.h */
enum { ISIG = 0000001 };
enum { ICANON = 0000002 };
enum { ECHO = 0000010 };
enum { ECHOE = 0000020 };
enum { ECHOK = 0000040 };
enum { ECHONL = 0000100 };
enum { NOFLSH = 0000200 };
enum { TOSTOP = 0000400 };
enum { IEXTEN = 0100000 };
/* END /usr/include/x86_64-1-gnu/bits/termios-c_lflag.h */
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
extern int tcgetattr (int __fd, struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));
extern int tcsetattr (int __fd, int __optional_actions, const struct termios *__termios_p) __attribute__ ((__nothrow__ , __leaf__));
extern int tcsendbreak (int __fd, int __duration) __attribute__ ((__nothrow__ , __leaf__));
extern int tcdrain (int __fd);
extern int tcflush (int __fd, int __queue_selector) __attribute__ ((__nothrow__ , __leaf__));
extern int tcflow (int __fd, int __action) __attribute__ ((__nothrow__ , __leaf__));
/* END /usr/include/termios.h */