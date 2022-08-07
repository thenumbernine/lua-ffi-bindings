enum { _SYS_IOCTL_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/ioctls.h */
/* BEGIN /usr/include/x86_64-linux-gnu/asm/ioctls.h */
/* BEGIN /usr/include/asm-generic/ioctls.h */
/* BEGIN /usr/include/linux/ioctl.h */
/* BEGIN /usr/include/x86_64-linux-gnu/asm/ioctl.h */
/* BEGIN /usr/include/asm-generic/ioctl.h */
enum { _IOC_NRBITS = 8 };
enum { _IOC_TYPEBITS = 8 };
enum { _IOC_SIZEBITS = 14 };
enum { _IOC_DIRBITS = 2 };
enum { _IOC_NRSHIFT = 0 };
/* END /usr/include/asm-generic/ioctl.h */
/* END /usr/include/x86_64-1-gnu/asm/ioctl.h */
/* END /usr/include/1/ioctl.h */
enum { TCGETS = 0x5401 };
enum { TCSETS = 0x5402 };
enum { TCSETSW = 0x5403 };
enum { TCSETSF = 0x5404 };
enum { TCGETA = 0x5405 };
enum { TCSETA = 0x5406 };
enum { TCSETAW = 0x5407 };
enum { TCSETAF = 0x5408 };
enum { TCSBRK = 0x5409 };
enum { TCXONC = 0x540A };
enum { TCFLSH = 0x540B };
enum { TIOCEXCL = 0x540C };
enum { TIOCNXCL = 0x540D };
enum { TIOCSCTTY = 0x540E };
enum { TIOCGPGRP = 0x540F };
enum { TIOCSPGRP = 0x5410 };
enum { TIOCOUTQ = 0x5411 };
enum { TIOCSTI = 0x5412 };
enum { TIOCGWINSZ = 0x5413 };
enum { TIOCSWINSZ = 0x5414 };
enum { TIOCMGET = 0x5415 };
enum { TIOCMBIS = 0x5416 };
enum { TIOCMBIC = 0x5417 };
enum { TIOCMSET = 0x5418 };
enum { TIOCGSOFTCAR = 0x5419 };
enum { TIOCSSOFTCAR = 0x541A };
enum { FIONREAD = 0x541B };
enum { TIOCINQ = 0x541B };
enum { TIOCLINUX = 0x541C };
enum { TIOCCONS = 0x541D };
enum { TIOCGSERIAL = 0x541E };
enum { TIOCSSERIAL = 0x541F };
enum { TIOCPKT = 0x5420 };
enum { FIONBIO = 0x5421 };
enum { TIOCNOTTY = 0x5422 };
enum { TIOCSETD = 0x5423 };
enum { TIOCGETD = 0x5424 };
enum { TCSBRKP = 0x5425 };
enum { TIOCSBRK = 0x5427 };
enum { TIOCCBRK = 0x5428 };
enum { TIOCGSID = 0x5429 };
enum { TIOCGRS485 = 0x542E };
enum { TIOCSRS485 = 0x542F };
enum { TCGETX = 0x5432 };
enum { TCSETX = 0x5433 };
enum { TCSETXF = 0x5434 };
enum { TCSETXW = 0x5435 };
enum { TIOCVHANGUP = 0x5437 };
enum { FIONCLEX = 0x5450 };
enum { FIOCLEX = 0x5451 };
enum { FIOASYNC = 0x5452 };
enum { TIOCSERCONFIG = 0x5453 };
enum { TIOCSERGWILD = 0x5454 };
enum { TIOCSERSWILD = 0x5455 };
enum { TIOCGLCKTRMIOS = 0x5456 };
enum { TIOCSLCKTRMIOS = 0x5457 };
enum { TIOCSERGSTRUCT = 0x5458 };
enum { TIOCSERGETLSR = 0x5459 };
enum { TIOCSERGETMULTI = 0x545A };
enum { TIOCSERSETMULTI = 0x545B };
enum { TIOCMIWAIT = 0x545C };
enum { TIOCGICOUNT = 0x545D };
enum { FIOQSIZE = 0x5460 };
enum { TIOCPKT_DATA = 0 };
enum { TIOCPKT_FLUSHREAD = 1 };
enum { TIOCPKT_FLUSHWRITE = 2 };
enum { TIOCPKT_STOP = 4 };
enum { TIOCPKT_START = 8 };
enum { TIOCPKT_NOSTOP = 16 };
enum { TIOCPKT_DOSTOP = 32 };
enum { TIOCPKT_IOCTL = 64 };
enum { TIOCSER_TEMT = 0x01 };
/* END /usr/include/asm-generic/ioctls.h */
/* END /usr/include/x86_64-1-gnu/asm/ioctls.h */
enum { SIOCADDRT = 0x890B };
enum { SIOCDELRT = 0x890C };
enum { SIOCRTMSG = 0x890D };
enum { SIOCGIFNAME = 0x8910 };
enum { SIOCSIFLINK = 0x8911 };
enum { SIOCGIFCONF = 0x8912 };
enum { SIOCGIFFLAGS = 0x8913 };
enum { SIOCSIFFLAGS = 0x8914 };
enum { SIOCGIFADDR = 0x8915 };
enum { SIOCSIFADDR = 0x8916 };
enum { SIOCGIFDSTADDR = 0x8917 };
enum { SIOCSIFDSTADDR = 0x8918 };
enum { SIOCGIFBRDADDR = 0x8919 };
enum { SIOCSIFBRDADDR = 0x891a };
enum { SIOCGIFNETMASK = 0x891b };
enum { SIOCSIFNETMASK = 0x891c };
enum { SIOCGIFMETRIC = 0x891d };
enum { SIOCSIFMETRIC = 0x891e };
enum { SIOCGIFMEM = 0x891f };
enum { SIOCSIFMEM = 0x8920 };
enum { SIOCGIFMTU = 0x8921 };
enum { SIOCSIFMTU = 0x8922 };
enum { SIOCSIFNAME = 0x8923 };
enum { SIOCSIFHWADDR = 0x8924 };
enum { SIOCGIFENCAP = 0x8925 };
enum { SIOCSIFENCAP = 0x8926 };
enum { SIOCGIFHWADDR = 0x8927 };
enum { SIOCGIFSLAVE = 0x8929 };
enum { SIOCSIFSLAVE = 0x8930 };
enum { SIOCADDMULTI = 0x8931 };
enum { SIOCDELMULTI = 0x8932 };
enum { SIOCGIFINDEX = 0x8933 };
enum { SIOGIFINDEX = 0x8933 };
enum { SIOCSIFPFLAGS = 0x8934 };
enum { SIOCGIFPFLAGS = 0x8935 };
enum { SIOCDIFADDR = 0x8936 };
enum { SIOCSIFHWBROADCAST = 0x8937 };
enum { SIOCGIFCOUNT = 0x8938 };
enum { SIOCGIFBR = 0x8940 };
enum { SIOCSIFBR = 0x8941 };
enum { SIOCGIFTXQLEN = 0x8942 };
enum { SIOCSIFTXQLEN = 0x8943 };
enum { SIOCDARP = 0x8953 };
enum { SIOCGARP = 0x8954 };
enum { SIOCSARP = 0x8955 };
enum { SIOCDRARP = 0x8960 };
enum { SIOCGRARP = 0x8961 };
enum { SIOCSRARP = 0x8962 };
enum { SIOCGIFMAP = 0x8970 };
enum { SIOCSIFMAP = 0x8971 };
enum { SIOCADDDLCI = 0x8980 };
enum { SIOCDELDLCI = 0x8981 };
enum { SIOCDEVPRIVATE = 0x89F0 };
enum { SIOCPROTOPRIVATE = 0x89E0 };
/* END /usr/include/x86_64-1-gnu/bits/ioctls.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/ioctl-types.h */
/* BEGIN /usr/include/x86_64-linux-gnu/asm/ioctls.h */
/* BEGIN /usr/include/asm-generic/ioctls.h */
/* END /usr/include/asm-generic/ioctls.h */
/* END /usr/include/x86_64-1-gnu/asm/ioctls.h */
struct winsize { unsigned short int ws_row;
unsigned short int ws_col;
unsigned short int ws_xpixel;
unsigned short int ws_ypixel;
};
enum { NCC = 8 };
struct termio { unsigned short int c_iflag;
unsigned short int c_oflag;
unsigned short int c_cflag;
unsigned short int c_lflag;
unsigned char c_line;
unsigned char c_cc[8];
};
enum { TIOCM_LE = 0x001 };
enum { TIOCM_DTR = 0x002 };
enum { TIOCM_RTS = 0x004 };
enum { TIOCM_ST = 0x008 };
enum { TIOCM_SR = 0x010 };
enum { TIOCM_CTS = 0x020 };
enum { TIOCM_CAR = 0x040 };
enum { TIOCM_RNG = 0x080 };
enum { TIOCM_DSR = 0x100 };
enum { TIOCM_CD = 0x040 };
enum { TIOCM_RI = 0x080 };
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
/* END /usr/include/x86_64-1-gnu/bits/ioctl-types.h */
/* BEGIN /usr/include/x86_64-linux-gnu/sys/ttydefaults.h */
enum { CERASE = 0177 };
enum { CMIN = 1 };
enum { CQUIT = 034 };
enum { CTIME = 0 };
/* END /usr/include/x86_64-1-gnu/sys/ttydefaults.h */
extern int ioctl (int __fd, unsigned long int __request, ...) __attribute__ ((__nothrow__ , __leaf__));