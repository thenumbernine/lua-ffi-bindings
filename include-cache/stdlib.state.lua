{
	alreadyIncludedFiles={},
	macros={
		B0="0000000",
		B1000000="0010010",
		B110="0000003",
		B115200="0010002",
		B1152000="0010011",
		B1200="0000011",
		B134="0000004",
		B150="0000005",
		B1500000="0010012",
		B1800="0000012",
		B19200="0000016",
		B200="0000006",
		B2000000="0010013",
		B230400="0010003",
		B2400="0000013",
		B2500000="0010014",
		B300="0000007",
		B3000000="0010015",
		B3500000="0010016",
		B38400="0000017",
		B4000000="0010017",
		B460800="0010004",
		B4800="0000014",
		B50="0000001",
		B500000="0010005",
		B57600="0010001",
		B576000="0010006",
		B600="0000010",
		B75="0000002",
		B921600="0010007",
		B9600="0000015",
		BRKINT="0000002",
		BUFSIZ="8192",
		CBRK="'\\0'",
		CDISCARD=" ('o'&037) ",
		CDSUSP=" ('y'&037) ",
		CEOF=" ('d'&037) ",
		CEOL="'\\0'",
		CEOT=" ('d'&037) ",
		CERASE="0177",
		CFLUSH=" ('o'&037) ",
		CINTR=" ('c'&037) ",
		CKILL=" ('u'&037) ",
		CLNEXT=" ('v'&037) ",
		CLOCAL="0004000",
		CMIN="1",
		CQUIT="034",
		CREAD="0000200",
		CREPRINT=" ('r'&037) ",
		CRPRNT=" ('r'&037) ",
		CS5="0000000",
		CS6="0000020",
		CS7="0000040",
		CS8="0000060",
		CSIZE="0000060",
		CSTART=" ('q'&037) ",
		CSTATUS="'\\0'",
		CSTOP=" ('s'&037) ",
		CSTOPB="0000100",
		CSUSP=" ('z'&037) ",
		CTIME="0",
		CTRL={
			def="(x&037)",
			params={"x"}
		},
		CWERASE=" ('w'&037) ",
		ECHO="0000010",
		ECHOE="0000020",
		ECHOK="0000040",
		ECHONL="0000100",
		EOF="(-1)",
		EXIT_FAILURE="1",
		EXIT_SUCCESS="0",
		FD_CLR={
			def="__FD_CLR (fd, fdsetp)",
			params={"fd", "fdsetp"}
		},
		FD_ISSET={
			def="__FD_ISSET (fd, fdsetp)",
			params={"fd", "fdsetp"}
		},
		FD_SET={
			def="__FD_SET (fd, fdsetp)",
			params={"fd", "fdsetp"}
		},
		FD_SETSIZE="1024",
		FD_ZERO={
			def="__FD_ZERO (fdsetp)",
			params={"fdsetp"}
		},
		FILENAME_MAX="4096",
		FIOASYNC="0x5452",
		FIOCLEX="0x5451",
		FIONBIO="0x5421",
		FIONCLEX="0x5450",
		FIONREAD="0x541B",
		FIOQSIZE="0x5460",
		FOPEN_MAX="16",
		HUPCL="0002000",
		ICANON="0000002",
		ICRNL="0000400",
		IEXTEN="0100000",
		IGNBRK="0000001",
		IGNCR="0000200",
		IGNPAR="0000004",
		IMAXBEL="0020000",
		INLCR="0000100",
		INPCK="0000020",
		INT16_C={
			def="c",
			params={"c"}
		},
		INT16_MAX="(32767)",
		INT16_MIN="(-32767-1)",
		INT32_C={
			def="c",
			params={"c"}
		},
		INT32_MAX="(2147483647)",
		INT32_MIN="(-2147483647-1)",
		INT64_C={
			def="c ## L",
			params={"c"}
		},
		INT64_MAX="( 9223372036854775807L )",
		INT64_MIN="(- 9223372036854775807L -1)",
		INT8_C={
			def="c",
			params={"c"}
		},
		INT8_MAX="(127)",
		INT8_MIN="(-128)",
		INTMAX_C={
			def="c ## L",
			params={"c"}
		},
		INTMAX_MAX="( 9223372036854775807L )",
		INTMAX_MIN="(- 9223372036854775807L -1)",
		INTPTR_MAX="(9223372036854775807L)",
		INTPTR_MIN="(-9223372036854775807L-1)",
		INT_FAST16_MAX="(9223372036854775807L)",
		INT_FAST16_MIN="(-9223372036854775807L-1)",
		INT_FAST32_MAX="(9223372036854775807L)",
		INT_FAST32_MIN="(-9223372036854775807L-1)",
		INT_FAST64_MAX="( 9223372036854775807L )",
		INT_FAST64_MIN="(- 9223372036854775807L -1)",
		INT_FAST8_MAX="(127)",
		INT_FAST8_MIN="(-128)",
		INT_LEAST16_MAX="(32767)",
		INT_LEAST16_MIN="(-32767-1)",
		INT_LEAST32_MAX="(2147483647)",
		INT_LEAST32_MIN="(-2147483647-1)",
		INT_LEAST64_MAX="( 9223372036854775807L )",
		INT_LEAST64_MIN="(- 9223372036854775807L -1)",
		INT_LEAST8_MAX="(127)",
		INT_LEAST8_MIN="(-128)",
		IOCSIZE_MASK="(((1 << 14)-1) << ((0+8)+8))",
		IOCSIZE_SHIFT="(((0+8)+8))",
		IOC_IN="(1U << (((0+8)+8)+14))",
		IOC_INOUT="((1U|2U) << (((0+8)+8)+14))",
		IOC_OUT="(2U << (((0+8)+8)+14))",
		ISIG="0000001",
		ISTRIP="0000040",
		ITIMER_PROF="ITIMER_PROF",
		ITIMER_REAL="ITIMER_REAL",
		ITIMER_VIRTUAL="ITIMER_VIRTUAL",
		IUCLC="0001000",
		IUTF8="0040000",
		IXANY="0004000",
		IXOFF="0010000",
		IXON="0002000",
		L_tmpnam="20",
		MB_CUR_MAX="(__ctype_get_mb_cur_max ())",
		NCC="8",
		NCCS="32",
		NOFLSH="0000200",
		NULL="((void *)0)",
		N_6PACK="7",
		N_AX25="5",
		N_HCI="15",
		N_HDLC="13",
		N_IRDA="11",
		N_MASC="8",
		N_MOUSE="2",
		N_PPP="3",
		N_PROFIBUS_FDL="10",
		N_R3964="9",
		N_SLIP="1",
		N_SMSBLOCK="12",
		N_STRIP="4",
		N_SYNC_PPP="14",
		N_TTY="0",
		N_X25="6",
		OCRNL="0000010",
		OFDEL="0000200",
		OFILL="0000100",
		OLCUC="0000002",
		ONLCR="0000004",
		ONLRET="0000040",
		ONOCR="0000020",
		OPOST="0000001",
		PARENB="0000400",
		PARMRK="0000010",
		PARODD="0001000",
		PTRDIFF_MAX="(9223372036854775807L)",
		PTRDIFF_MIN="(-9223372036854775807L-1)",
		RAND_MAX="2147483647",
		SEEK_CUR="1",
		SEEK_END="2",
		SEEK_SET="0",
		SIG_ATOMIC_MAX="(2147483647)",
		SIG_ATOMIC_MIN="(-2147483647-1)",
		SIOCADDDLCI="0x8980",
		SIOCADDMULTI="0x8931",
		SIOCADDRT="0x890B",
		SIOCDARP="0x8953",
		SIOCDELDLCI="0x8981",
		SIOCDELMULTI="0x8932",
		SIOCDELRT="0x890C",
		SIOCDEVPRIVATE="0x89F0",
		SIOCDIFADDR="0x8936",
		SIOCDRARP="0x8960",
		SIOCGARP="0x8954",
		SIOCGIFADDR="0x8915",
		SIOCGIFBR="0x8940",
		SIOCGIFBRDADDR="0x8919",
		SIOCGIFCONF="0x8912",
		SIOCGIFCOUNT="0x8938",
		SIOCGIFDSTADDR="0x8917",
		SIOCGIFENCAP="0x8925",
		SIOCGIFFLAGS="0x8913",
		SIOCGIFHWADDR="0x8927",
		SIOCGIFINDEX="0x8933",
		SIOCGIFMAP="0x8970",
		SIOCGIFMEM="0x891f",
		SIOCGIFMETRIC="0x891d",
		SIOCGIFMTU="0x8921",
		SIOCGIFNAME="0x8910",
		SIOCGIFNETMASK="0x891b",
		SIOCGIFPFLAGS="0x8935",
		SIOCGIFSLAVE="0x8929",
		SIOCGIFTXQLEN="0x8942",
		SIOCGRARP="0x8961",
		SIOCPROTOPRIVATE="0x89E0",
		SIOCRTMSG="0x890D",
		SIOCSARP="0x8955",
		SIOCSIFADDR="0x8916",
		SIOCSIFBR="0x8941",
		SIOCSIFBRDADDR="0x891a",
		SIOCSIFDSTADDR="0x8918",
		SIOCSIFENCAP="0x8926",
		SIOCSIFFLAGS="0x8914",
		SIOCSIFHWADDR="0x8924",
		SIOCSIFHWBROADCAST="0x8937",
		SIOCSIFLINK="0x8911",
		SIOCSIFMAP="0x8971",
		SIOCSIFMEM="0x8920",
		SIOCSIFMETRIC="0x891e",
		SIOCSIFMTU="0x8922",
		SIOCSIFNAME="0x8923",
		SIOCSIFNETMASK="0x891c",
		SIOCSIFPFLAGS="0x8934",
		SIOCSIFSLAVE="0x8930",
		SIOCSIFTXQLEN="0x8943",
		SIOCSRARP="0x8962",
		SIOGIFINDEX="0x8933",
		SIZE_MAX="(18446744073709551615UL)",
		TCFLSH="0x540B",
		TCGETA="0x5405",
		TCGETS="0x5401",
		TCGETS2="  (((2U)  << (((0+8)+8)+14)) |  \9 ((('T')) << (0+8)) |  \9 ((( 0x2A))   << 0) |  \9 ((( (sizeof( struct termios2)) )) << ((0+8)+8)))  ",
		TCGETX="0x5432",
		TCIFLUSH="0",
		TCIOFF="2",
		TCIOFLUSH="2",
		TCION="3",
		TCOFLUSH="1",
		TCOOFF="0",
		TCOON="1",
		TCSADRAIN="1",
		TCSAFLUSH="2",
		TCSANOW="0",
		TCSBRK="0x5409",
		TCSBRKP="0x5425",
		TCSETA="0x5406",
		TCSETAF="0x5408",
		TCSETAW="0x5407",
		TCSETS="0x5402",
		TCSETS2="  (((1U)  << (((0+8)+8)+14)) |  \9 ((('T')) << (0+8)) |  \9 ((( 0x2B))   << 0) |  \9 ((( (sizeof( struct termios2)) )) << ((0+8)+8)))  ",
		TCSETSF="0x5404",
		TCSETSF2="  (((1U)  << (((0+8)+8)+14)) |  \9 ((('T')) << (0+8)) |  \9 ((( 0x2D))   << 0) |  \9 ((( (sizeof( struct termios2)) )) << ((0+8)+8)))  ",
		TCSETSW="0x5403",
		TCSETSW2="  (((1U)  << (((0+8)+8)+14)) |  \9 ((('T')) << (0+8)) |  \9 ((( 0x2C))   << 0) |  \9 ((( (sizeof( struct termios2)) )) << ((0+8)+8)))  ",
		TCSETX="0x5433",
		TCSETXF="0x5434",
		TCSETXW="0x5435",
		TCXONC="0x540A",
		TIOCCBRK="0x5428",
		TIOCCONS="0x541D",
		TIOCEXCL="0x540C",
		TIOCGDEV="  (((2U)  << (((0+8)+8)+14)) |  \9 ((('T')) << (0+8)) |  \9 ((( 0x32))   << 0) |  \9 ((( (sizeof( unsigned int)) )) << ((0+8)+8)))  ",
		TIOCGETD="0x5424",
		TIOCGEXCL="  (((2U)  << (((0+8)+8)+14)) |  \9 ((('T')) << (0+8)) |  \9 ((( 0x40))   << 0) |  \9 ((( (sizeof( int)) )) << ((0+8)+8)))  ",
		TIOCGICOUNT="0x545D",
		TIOCGISO7816="  (((2U)  << (((0+8)+8)+14)) |  \9 ((('T')) << (0+8)) |  \9 ((( 0x42))   << 0) |  \9 ((( (sizeof( struct serial_iso7816)) )) << ((0+8)+8)))  ",
		TIOCGLCKTRMIOS="0x5456",
		TIOCGPGRP="0x540F",
		TIOCGPKT="  (((2U)  << (((0+8)+8)+14)) |  \9 ((('T')) << (0+8)) |  \9 ((( 0x38))   << 0) |  \9 ((( (sizeof( int)) )) << ((0+8)+8)))  ",
		TIOCGPTLCK="  (((2U)  << (((0+8)+8)+14)) |  \9 ((('T')) << (0+8)) |  \9 ((( 0x39))   << 0) |  \9 ((( (sizeof( int)) )) << ((0+8)+8)))  ",
		TIOCGPTN="  (((2U)  << (((0+8)+8)+14)) |  \9 ((('T')) << (0+8)) |  \9 ((( 0x30))   << 0) |  \9 ((( (sizeof( unsigned int)) )) << ((0+8)+8)))  ",
		TIOCGPTPEER="  (((0U)  << (((0+8)+8)+14)) |  \9 ((('T')) << (0+8)) |  \9 ((( 0x41))   << 0) |  \9 ((0) << ((0+8)+8)))  ",
		TIOCGRS485="0x542E",
		TIOCGSERIAL="0x541E",
		TIOCGSID="0x5429",
		TIOCGSOFTCAR="0x5419",
		TIOCGWINSZ="0x5413",
		TIOCINQ="0x541B",
		TIOCLINUX="0x541C",
		TIOCMBIC="0x5417",
		TIOCMBIS="0x5416",
		TIOCMGET="0x5415",
		TIOCMIWAIT="0x545C",
		TIOCMSET="0x5418",
		TIOCM_CAR="0x040",
		TIOCM_CD="0x040",
		TIOCM_CTS="0x020",
		TIOCM_DSR="0x100",
		TIOCM_DTR="0x002",
		TIOCM_LE="0x001",
		TIOCM_RI="0x080",
		TIOCM_RNG="0x080",
		TIOCM_RTS="0x004",
		TIOCM_SR="0x010",
		TIOCM_ST="0x008",
		TIOCNOTTY="0x5422",
		TIOCNXCL="0x540D",
		TIOCOUTQ="0x5411",
		TIOCPKT="0x5420",
		TIOCPKT_DATA="0",
		TIOCPKT_DOSTOP="32",
		TIOCPKT_FLUSHREAD="1",
		TIOCPKT_FLUSHWRITE="2",
		TIOCPKT_IOCTL="64",
		TIOCPKT_NOSTOP="16",
		TIOCPKT_START="8",
		TIOCPKT_STOP="4",
		TIOCSBRK="0x5427",
		TIOCSCTTY="0x540E",
		TIOCSERCONFIG="0x5453",
		TIOCSERGETLSR="0x5459",
		TIOCSERGETMULTI="0x545A",
		TIOCSERGSTRUCT="0x5458",
		TIOCSERGWILD="0x5454",
		TIOCSERSETMULTI="0x545B",
		TIOCSERSWILD="0x5455",
		TIOCSER_TEMT="0x01",
		TIOCSETD="0x5423",
		TIOCSIG="  (((1U)  << (((0+8)+8)+14)) |  \9 ((('T')) << (0+8)) |  \9 ((( 0x36))   << 0) |  \9 ((( (sizeof( int)) )) << ((0+8)+8)))  ",
		TIOCSISO7816="  (((2U|1U)  << (((0+8)+8)+14)) |  \9 ((('T')) << (0+8)) |  \9 ((( 0x43))   << 0) |  \9 ((( (sizeof( struct serial_iso7816)) )) << ((0+8)+8)))  ",
		TIOCSLCKTRMIOS="0x5457",
		TIOCSPGRP="0x5410",
		TIOCSPTLCK="  (((1U)  << (((0+8)+8)+14)) |  \9 ((('T')) << (0+8)) |  \9 ((( 0x31))   << 0) |  \9 ((( (sizeof( int)) )) << ((0+8)+8)))  ",
		TIOCSRS485="0x542F",
		TIOCSSERIAL="0x541F",
		TIOCSSOFTCAR="0x541A",
		TIOCSTI="0x5412",
		TIOCSWINSZ="0x5414",
		TIOCVHANGUP="0x5437",
		TMP_MAX="238328",
		TOSTOP="0000400",
		TTYDEF_CFLAG="(CREAD | CS7 | PARENB | HUPCL)",
		TTYDEF_IFLAG="(BRKINT | ISTRIP | ICRNL | IMAXBEL | IXON | IXANY)",
		TTYDEF_LFLAG="(ECHO | ICANON | ISIG | IEXTEN | ECHOE|ECHOKE|ECHOCTL)",
		TTYDEF_OFLAG="(OPOST | ONLCR | XTABS)",
		TTYDEF_SPEED="(B9600)",
		UINT16_C={
			def="c",
			params={"c"}
		},
		UINT16_MAX="(65535)",
		UINT32_C={
			def="c ## U",
			params={"c"}
		},
		UINT32_MAX="(4294967295U)",
		UINT64_C={
			def="c ## UL",
			params={"c"}
		},
		UINT64_MAX="( 18446744073709551615UL )",
		UINT8_C={
			def="c",
			params={"c"}
		},
		UINT8_MAX="(255)",
		UINTMAX_C={
			def="c ## UL",
			params={"c"}
		},
		UINTMAX_MAX="( 18446744073709551615UL )",
		UINTPTR_MAX="(18446744073709551615UL)",
		UINT_FAST16_MAX="(18446744073709551615UL)",
		UINT_FAST32_MAX="(18446744073709551615UL)",
		UINT_FAST64_MAX="( 18446744073709551615UL )",
		UINT_FAST8_MAX="(255)",
		UINT_LEAST16_MAX="(65535)",
		UINT_LEAST32_MAX="(4294967295U)",
		UINT_LEAST64_MAX="( 18446744073709551615UL )",
		UINT_LEAST8_MAX="(255)",
		VDISCARD="13",
		VEOF="4",
		VEOL="11",
		VEOL2="16",
		VERASE="2",
		VINTR="0",
		VKILL="3",
		VLNEXT="15",
		VMIN="6",
		VQUIT="1",
		VREPRINT="12",
		VSTART="8",
		VSTOP="9",
		VSUSP="10",
		VSWTC="7",
		VT0="0000000",
		VT1="0040000",
		VTDLY="0040000",
		VTIME="5",
		VWERASE="14",
		WCHAR_MAX="0x7fffffff",
		WCHAR_MIN="(-0x7fffffff - 1)",
		WINT_MAX="(4294967295u)",
		WINT_MIN="(0u)",
		_ASM_GENERIC_IOCTL_H="",
		_BITS_FLOATN_COMMON_H="",
		_BITS_FLOATN_H="",
		_BITS_SETJMP_H="1",
		_BITS_STDINT_INTN_H="1",
		_BITS_STDINT_UINTN_H="1",
		_BITS_STDIO_LIM_H="1",
		_BITS_TIME64_H="1",
		_BITS_TYPESIZES_H="1",
		_BITS_TYPES_H="1",
		_BITS_WCHAR_H="1",
		_BSD_SIZE_T_DEFINED_="",
		_DIRENT_H="1",
		_DIRENT_HAVE_D_OFF="",
		_DIRENT_HAVE_D_RECLEN="",
		_DIRENT_HAVE_D_TYPE="",
		_DIRENT_MATCHES_DIRENT64="1",
		_D_ALLOC_NAMLEN={
			def="(((char *) (d) + (d)->d_reclen) - &(d)->d_name[0])",
			params={"d"}
		},
		_D_EXACT_NAMLEN={
			def="(strlen ((d)->d_name))",
			params={"d"}
		},
		_FEATURES_H="1",
		_GCC_SIZE_T="",
		_GCC_WCHAR_T="",
		_GCC_WRAP_STDINT_H="",
		_HAVE_STRUCT_TERMIOS_C_ISPEED="1",
		_HAVE_STRUCT_TERMIOS_C_OSPEED="1",
		_IO={
			def="_IOC(_IOC_NONE,(type),(nr),0)",
			params={"type", "nr"}
		},
		_IOC={
			def="(((dir)  << _IOC_DIRSHIFT) |  \9 ((type) << _IOC_TYPESHIFT) |  \9 ((nr)   << _IOC_NRSHIFT) |  \9 ((size) << _IOC_SIZESHIFT))",
			params={"dir", "type", "nr", "size"}
		},
		_IOC_DIR={
			def="(((nr) >> _IOC_DIRSHIFT) & _IOC_DIRMASK)",
			params={"nr"}
		},
		_IOC_DIRBITS="2",
		_IOC_DIRMASK="((1 << 2)-1)",
		_IOC_DIRSHIFT="(((0+8)+8)+14)",
		_IOC_NONE="0U",
		_IOC_NR={
			def="(((nr) >> _IOC_NRSHIFT) & _IOC_NRMASK)",
			params={"nr"}
		},
		_IOC_NRBITS="8",
		_IOC_NRMASK="((1 << 8)-1)",
		_IOC_NRSHIFT="0",
		_IOC_READ="2U",
		_IOC_SIZE={
			def="(((nr) >> _IOC_SIZESHIFT) & _IOC_SIZEMASK)",
			params={"nr"}
		},
		_IOC_SIZEBITS="14",
		_IOC_SIZEMASK="((1 << 14)-1)",
		_IOC_SIZESHIFT="((0+8)+8)",
		_IOC_TYPE={
			def="(((nr) >> _IOC_TYPESHIFT) & _IOC_TYPEMASK)",
			params={"nr"}
		},
		_IOC_TYPEBITS="8",
		_IOC_TYPECHECK={
			def="(sizeof(t))",
			params={"t"}
		},
		_IOC_TYPEMASK="((1 << 8)-1)",
		_IOC_TYPESHIFT="(0+8)",
		_IOC_WRITE="1U",
		_IOFBF="0",
		_IOLBF="1",
		_IONBF="2",
		_IOR={
			def="_IOC(_IOC_READ,(type),(nr),(_IOC_TYPECHECK(size)))",
			params={"type", "nr", "size"}
		},
		_IOR_BAD={
			def="_IOC(_IOC_READ,(type),(nr),sizeof(size))",
			params={"type", "nr", "size"}
		},
		_IOW={
			def="_IOC(_IOC_WRITE,(type),(nr),(_IOC_TYPECHECK(size)))",
			params={"type", "nr", "size"}
		},
		_IOWR={
			def="_IOC(_IOC_READ|_IOC_WRITE,(type),(nr),(_IOC_TYPECHECK(size)))",
			params={"type", "nr", "size"}
		},
		_IOWR_BAD={
			def="_IOC(_IOC_READ|_IOC_WRITE,(type),(nr),sizeof(size))",
			params={"type", "nr", "size"}
		},
		_IOW_BAD={
			def="_IOC(_IOC_WRITE,(type),(nr),sizeof(size))",
			params={"type", "nr", "size"}
		},
		_IO_EOF_SEEN="0x0010",
		_IO_ERR_SEEN="0x0020",
		_IO_USER_LOCK="0x8000",
		_LINUX_IOCTL_H="",
		_LP64="1",
		_SETJMP_H="1",
		_SIGSET_NWORDS="(1024 / (8 * sizeof (unsigned long int)))",
		_SIZET_="",
		_SIZE_T="",
		_SIZE_T_DECLARED="",
		_SIZE_T_DEFINED="",
		_SIZE_T_DEFINED_="",
		_STDC_PREDEF_H="1",
		_STDINT_H="1",
		_STDIO_H="1",
		_STDLIB_H="1",
		_SYS_CDEFS_H="1",
		_SYS_IOCTL_H="1",
		_SYS_SELECT_H="1",
		_SYS_SIZE_T_H="",
		_SYS_TERMIOS_H="",
		_SYS_TIME_H="1",
		_SYS_TTYDEFAULTS_H_="",
		_TERMIOS_H="1",
		_T_SIZE="",
		_T_SIZE_="",
		_T_WCHAR="",
		_T_WCHAR_="",
		_WCHAR_T="",
		_WCHAR_T_DECLARED="",
		_WCHAR_T_DEFINED="",
		_WCHAR_T_DEFINED_="",
		_WCHAR_T_H="",
		__ASMNAME={
			def="__ASMNAME2 (__USER_LABEL_PREFIX__, cname)",
			params={"cname"}
		},
		__ASMNAME2={
			def="__STRING (prefix) cname",
			params={"prefix", "cname"}
		},
		__ASM_GENERIC_IOCTLS_H="",
		__ATOMIC_ACQUIRE="2",
		__ATOMIC_ACQ_REL="4",
		__ATOMIC_CONSUME="1",
		__ATOMIC_HLE_ACQUIRE="65536",
		__ATOMIC_HLE_RELEASE="131072",
		__ATOMIC_RELAXED="0",
		__ATOMIC_RELEASE="3",
		__ATOMIC_SEQ_CST="5",
		__BEGIN_DECLS="",
		__BIGGEST_ALIGNMENT__="16",
		__BLKCNT64_T_TYPE="long int",
		__BLKCNT_T_TYPE="long int",
		__BLKSIZE_T_TYPE="long int",
		__BYTE_ORDER__="1234",
		__CET__="3",
		__CFLOAT128="_Complex _Float128",
		__CFLOAT32="_Complex _Float32",
		__CFLOAT32X="_Complex _Float32x",
		__CFLOAT64="_Complex _Float64",
		__CFLOAT64X="_Complex _Float64x",
		__CHAR16_TYPE__="short unsigned int",
		__CHAR32_TYPE__="unsigned int",
		__CHAR_BIT__="8",
		__CLOCKID_T_TYPE="int",
		__CLOCK_T_TYPE="long int",
		__COMPAR_FN_T="",
		__CONCAT={
			def="x ## y",
			params={"x", "y"}
		},
		__CPU_MASK_TYPE="unsigned long int",
		__DADDR_T_TYPE="int",
		__DBL_DECIMAL_DIG__="17",
		__DBL_DENORM_MIN__="((double)4.94065645841246544176568792868221372e-324L)",
		__DBL_DIG__="15",
		__DBL_EPSILON__="((double)2.22044604925031308084726333618164062e-16L)",
		__DBL_HAS_DENORM__="1",
		__DBL_HAS_INFINITY__="1",
		__DBL_HAS_QUIET_NAN__="1",
		__DBL_MANT_DIG__="53",
		__DBL_MAX_10_EXP__="308",
		__DBL_MAX_EXP__="1024",
		__DBL_MAX__="((double)1.79769313486231570814527423731704357e+308L)",
		__DBL_MIN_10_EXP__="(-307)",
		__DBL_MIN_EXP__="(-1021)",
		__DBL_MIN__="((double)2.22507385850720138309023271733240406e-308L)",
		__DEC128_EPSILON__="1E-33DL",
		__DEC128_MANT_DIG__="34",
		__DEC128_MAX_EXP__="6145",
		__DEC128_MAX__="9.999999999999999999999999999999999E6144DL",
		__DEC128_MIN_EXP__="(-6142)",
		__DEC128_MIN__="1E-6143DL",
		__DEC128_SUBNORMAL_MIN__="0.000000000000000000000000000000001E-6143DL",
		__DEC32_EPSILON__="1E-6DF",
		__DEC32_MANT_DIG__="7",
		__DEC32_MAX_EXP__="97",
		__DEC32_MAX__="9.999999E96DF",
		__DEC32_MIN_EXP__="(-94)",
		__DEC32_MIN__="1E-95DF",
		__DEC32_SUBNORMAL_MIN__="0.000001E-95DF",
		__DEC64_EPSILON__="1E-15DD",
		__DEC64_MANT_DIG__="16",
		__DEC64_MAX_EXP__="385",
		__DEC64_MAX__="9.999999999999999E384DD",
		__DEC64_MIN_EXP__="(-382)",
		__DEC64_MIN__="1E-383DD",
		__DEC64_SUBNORMAL_MIN__="0.000000000000001E-383DD",
		__DECIMAL_BID_FORMAT__="1",
		__DECIMAL_DIG__="21",
		__DEC_EVAL_METHOD__="2",
		__DEV_T_TYPE="unsigned long int",
		__ELF__="1",
		__END_DECLS="",
		__FDS_BITS={
			def="((set)->__fds_bits)",
			params={"set"}
		},
		__FD_CLR={
			def="((void) (__FDS_BITS (set)[__FD_ELT (d)] &= ~__FD_MASK (d)))",
			params={"d", "set"}
		},
		__FD_ELT={
			def="((d) / __NFDBITS)",
			params={"d"}
		},
		__FD_ISSET={
			def="((__FDS_BITS (set)[__FD_ELT (d)] & __FD_MASK (d)) != 0)",
			params={"d", "set"}
		},
		__FD_MASK={
			def="((__fd_mask) (1UL << ((d) % __NFDBITS)))",
			params={"d"}
		},
		__FD_SET={
			def="((void) (__FDS_BITS (set)[__FD_ELT (d)] |= __FD_MASK (d)))",
			params={"d", "set"}
		},
		__FD_SETSIZE="1024",
		__FD_ZERO={
			def="do {\9\9\9\9\9\9\9\9\9           int __d0, __d1;\9\9\9\9\9\9\9           __asm__ __volatile__ (\"cld; rep; \" __FD_ZERO_STOS\9\9\9       \9\9\9  : \"=c\" (__d0), \"=D\" (__d1)\9\9\9       \9\9\9  : \"a\" (0), \"0\" (sizeof (fd_set)\9\9       \9\9\9\9\9  / sizeof (__fd_mask)),\9       \9\9\9    \"1\" (&__FDS_BITS (fdsp)[0])\9\9\9       \9\9\9  : \"memory\");\9\9\9\9\9         } while (0)",
			params={"fdsp"}
		},
		__FD_ZERO_STOS="\"stosq\"",
		__FILE_defined="1",
		__FINITE_MATH_ONLY__="0",
		__FLOAT_WORD_ORDER__="1234",
		__FLT128_DECIMAL_DIG__="36",
		__FLT128_DENORM_MIN__="6.47517511943802511092443895822764655e-4966F128",
		__FLT128_DIG__="33",
		__FLT128_EPSILON__="1.92592994438723585305597794258492732e-34F128",
		__FLT128_HAS_DENORM__="1",
		__FLT128_HAS_INFINITY__="1",
		__FLT128_HAS_QUIET_NAN__="1",
		__FLT128_MANT_DIG__="113",
		__FLT128_MAX_10_EXP__="4932",
		__FLT128_MAX_EXP__="16384",
		__FLT128_MAX__="1.18973149535723176508575932662800702e+4932F128",
		__FLT128_MIN_10_EXP__="(-4931)",
		__FLT128_MIN_EXP__="(-16381)",
		__FLT128_MIN__="3.36210314311209350626267781732175260e-4932F128",
		__FLT32X_DECIMAL_DIG__="17",
		__FLT32X_DENORM_MIN__="4.94065645841246544176568792868221372e-324F32x",
		__FLT32X_DIG__="15",
		__FLT32X_EPSILON__="2.22044604925031308084726333618164062e-16F32x",
		__FLT32X_HAS_DENORM__="1",
		__FLT32X_HAS_INFINITY__="1",
		__FLT32X_HAS_QUIET_NAN__="1",
		__FLT32X_MANT_DIG__="53",
		__FLT32X_MAX_10_EXP__="308",
		__FLT32X_MAX_EXP__="1024",
		__FLT32X_MAX__="1.79769313486231570814527423731704357e+308F32x",
		__FLT32X_MIN_10_EXP__="(-307)",
		__FLT32X_MIN_EXP__="(-1021)",
		__FLT32X_MIN__="2.22507385850720138309023271733240406e-308F32x",
		__FLT32_DECIMAL_DIG__="9",
		__FLT32_DENORM_MIN__="1.40129846432481707092372958328991613e-45F32",
		__FLT32_DIG__="6",
		__FLT32_EPSILON__="1.19209289550781250000000000000000000e-7F32",
		__FLT32_HAS_DENORM__="1",
		__FLT32_HAS_INFINITY__="1",
		__FLT32_HAS_QUIET_NAN__="1",
		__FLT32_MANT_DIG__="24",
		__FLT32_MAX_10_EXP__="38",
		__FLT32_MAX_EXP__="128",
		__FLT32_MAX__="3.40282346638528859811704183484516925e+38F32",
		__FLT32_MIN_10_EXP__="(-37)",
		__FLT32_MIN_EXP__="(-125)",
		__FLT32_MIN__="1.17549435082228750796873653722224568e-38F32",
		__FLT64X_DECIMAL_DIG__="21",
		__FLT64X_DENORM_MIN__="3.64519953188247460252840593361941982e-4951F64x",
		__FLT64X_DIG__="18",
		__FLT64X_EPSILON__="1.08420217248550443400745280086994171e-19F64x",
		__FLT64X_HAS_DENORM__="1",
		__FLT64X_HAS_INFINITY__="1",
		__FLT64X_HAS_QUIET_NAN__="1",
		__FLT64X_MANT_DIG__="64",
		__FLT64X_MAX_10_EXP__="4932",
		__FLT64X_MAX_EXP__="16384",
		__FLT64X_MAX__="1.18973149535723176502126385303097021e+4932F64x",
		__FLT64X_MIN_10_EXP__="(-4931)",
		__FLT64X_MIN_EXP__="(-16381)",
		__FLT64X_MIN__="3.36210314311209350626267781732175260e-4932F64x",
		__FLT64_DECIMAL_DIG__="17",
		__FLT64_DENORM_MIN__="4.94065645841246544176568792868221372e-324F64",
		__FLT64_DIG__="15",
		__FLT64_EPSILON__="2.22044604925031308084726333618164062e-16F64",
		__FLT64_HAS_DENORM__="1",
		__FLT64_HAS_INFINITY__="1",
		__FLT64_HAS_QUIET_NAN__="1",
		__FLT64_MANT_DIG__="53",
		__FLT64_MAX_10_EXP__="308",
		__FLT64_MAX_EXP__="1024",
		__FLT64_MAX__="1.79769313486231570814527423731704357e+308F64",
		__FLT64_MIN_10_EXP__="(-307)",
		__FLT64_MIN_EXP__="(-1021)",
		__FLT64_MIN__="2.22507385850720138309023271733240406e-308F64",
		__FLT_DECIMAL_DIG__="9",
		__FLT_DENORM_MIN__="1.40129846432481707092372958328991613e-45F",
		__FLT_DIG__="6",
		__FLT_EPSILON__="1.19209289550781250000000000000000000e-7F",
		__FLT_EVAL_METHOD_TS_18661_3__="0",
		__FLT_EVAL_METHOD__="0",
		__FLT_HAS_DENORM__="1",
		__FLT_HAS_INFINITY__="1",
		__FLT_HAS_QUIET_NAN__="1",
		__FLT_MANT_DIG__="24",
		__FLT_MAX_10_EXP__="38",
		__FLT_MAX_EXP__="128",
		__FLT_MAX__="3.40282346638528859811704183484516925e+38F",
		__FLT_MIN_10_EXP__="(-37)",
		__FLT_MIN_EXP__="(-125)",
		__FLT_MIN__="1.17549435082228750796873653722224568e-38F",
		__FLT_RADIX__="2",
		__FSBLKCNT64_T_TYPE="unsigned long int",
		__FSBLKCNT_T_TYPE="unsigned long int",
		__FSFILCNT64_T_TYPE="unsigned long int",
		__FSFILCNT_T_TYPE="unsigned long int",
		__FSID_T_TYPE="struct { int __val[2]; }",
		__FSWORD_T_TYPE="long int",
		__FXSR__="1",
		__GCC_ASM_FLAG_OUTPUTS__="1",
		__GCC_ATOMIC_BOOL_LOCK_FREE="2",
		__GCC_ATOMIC_CHAR16_T_LOCK_FREE="2",
		__GCC_ATOMIC_CHAR32_T_LOCK_FREE="2",
		__GCC_ATOMIC_CHAR_LOCK_FREE="2",
		__GCC_ATOMIC_INT_LOCK_FREE="2",
		__GCC_ATOMIC_LLONG_LOCK_FREE="2",
		__GCC_ATOMIC_LONG_LOCK_FREE="2",
		__GCC_ATOMIC_POINTER_LOCK_FREE="2",
		__GCC_ATOMIC_SHORT_LOCK_FREE="2",
		__GCC_ATOMIC_TEST_AND_SET_TRUEVAL="1",
		__GCC_ATOMIC_WCHAR_T_LOCK_FREE="2",
		__GCC_HAVE_DWARF2_CFI_ASM="1",
		__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1="1",
		__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2="1",
		__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4="1",
		__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8="1",
		__GCC_IEC_559="2",
		__GCC_IEC_559_COMPLEX="2",
		__GID_T_TYPE="unsigned int",
		__GLIBC_MINOR__="31",
		__GLIBC_PREREQ={
			def="((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))",
			params={"maj", "min"}
		},
		__GLIBC_USE={
			def="__GLIBC_USE_ ## F",
			params={"F"}
		},
		__GLIBC_USE_IEC_60559_BFP_EXT="0",
		__GLIBC_USE_IEC_60559_BFP_EXT_C2X="0",
		__GLIBC_USE_IEC_60559_FUNCS_EXT="0",
		__GLIBC_USE_IEC_60559_FUNCS_EXT_C2X="0",
		__GLIBC_USE_IEC_60559_TYPES_EXT="0",
		__GLIBC_USE_LIB_EXT2="0",
		__GLIBC__="2",
		__GNUC_MINOR__="4",
		__GNUC_PATCHLEVEL__="0",
		__GNUC_PREREQ={
			def="((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))",
			params={"maj", "min"}
		},
		__GNUC_STDC_INLINE__="1",
		__GNUC_VA_LIST="",
		__GNUC__="9",
		__GXX_ABI_VERSION="1013",
		__HAVE_DISTINCT_FLOAT128="1",
		__HAVE_DISTINCT_FLOAT128X="0",
		__HAVE_DISTINCT_FLOAT16="0",
		__HAVE_DISTINCT_FLOAT32="0",
		__HAVE_DISTINCT_FLOAT32X="0",
		__HAVE_DISTINCT_FLOAT64="0",
		__HAVE_DISTINCT_FLOAT64X="0",
		__HAVE_FLOAT128="1",
		__HAVE_FLOAT128X="0",
		__HAVE_FLOAT128_UNLIKE_LDBL="(1\9 \9\9\9\9     && 64 != 113)",
		__HAVE_FLOAT16="0",
		__HAVE_FLOAT32="1",
		__HAVE_FLOAT32X="1",
		__HAVE_FLOAT64="1",
		__HAVE_FLOAT64X="1",
		__HAVE_FLOAT64X_LONG_DOUBLE="1",
		__HAVE_FLOATN_NOT_TYPEDEF="1",
		__HAVE_GENERIC_SELECTION="1",
		__HAVE_SPECULATION_SAFE_VALUE="1",
		__ID_T_TYPE="unsigned int",
		__INO64_T_TYPE="unsigned long int",
		__INO_T_MATCHES_INO64_T="1",
		__INO_T_TYPE="unsigned long int",
		__INT16_C={
			def="c",
			params={"c"}
		},
		__INT16_MAX__="0x7fff",
		__INT16_TYPE__="short int",
		__INT32_C={
			def="c",
			params={"c"}
		},
		__INT32_MAX__="0x7fffffff",
		__INT32_TYPE__="int",
		__INT64_C={
			def="c ## L",
			params={"c"}
		},
		__INT64_MAX__="0x7fffffffffffffffL",
		__INT64_TYPE__="long int",
		__INT8_C={
			def="c",
			params={"c"}
		},
		__INT8_MAX__="0x7f",
		__INT8_TYPE__="signed char",
		__INTMAX_C={
			def="c ## L",
			params={"c"}
		},
		__INTMAX_MAX__="0x7fffffffffffffffL",
		__INTMAX_TYPE__="long int",
		__INTMAX_WIDTH__="64",
		__INTPTR_MAX__="0x7fffffffffffffffL",
		__INTPTR_TYPE__="long int",
		__INTPTR_WIDTH__="64",
		__INT_FAST16_MAX__="0x7fffffffffffffffL",
		__INT_FAST16_TYPE__="long int",
		__INT_FAST16_WIDTH__="64",
		__INT_FAST32_MAX__="0x7fffffffffffffffL",
		__INT_FAST32_TYPE__="long int",
		__INT_FAST32_WIDTH__="64",
		__INT_FAST64_MAX__="0x7fffffffffffffffL",
		__INT_FAST64_TYPE__="long int",
		__INT_FAST64_WIDTH__="64",
		__INT_FAST8_MAX__="0x7f",
		__INT_FAST8_TYPE__="signed char",
		__INT_FAST8_WIDTH__="8",
		__INT_LEAST16_MAX__="0x7fff",
		__INT_LEAST16_TYPE__="short int",
		__INT_LEAST16_WIDTH__="16",
		__INT_LEAST32_MAX__="0x7fffffff",
		__INT_LEAST32_TYPE__="int",
		__INT_LEAST32_WIDTH__="32",
		__INT_LEAST64_MAX__="0x7fffffffffffffffL",
		__INT_LEAST64_TYPE__="long int",
		__INT_LEAST64_WIDTH__="64",
		__INT_LEAST8_MAX__="0x7f",
		__INT_LEAST8_TYPE__="signed char",
		__INT_LEAST8_WIDTH__="8",
		__INT_MAX__="0x7fffffff",
		__INT_WCHAR_T_H="",
		__INT_WIDTH__="32",
		__KEY_T_TYPE="int",
		__LDBL_DECIMAL_DIG__="21",
		__LDBL_DENORM_MIN__="3.64519953188247460252840593361941982e-4951L",
		__LDBL_DIG__="18",
		__LDBL_EPSILON__="1.08420217248550443400745280086994171e-19L",
		__LDBL_HAS_DENORM__="1",
		__LDBL_HAS_INFINITY__="1",
		__LDBL_HAS_QUIET_NAN__="1",
		__LDBL_MANT_DIG__="64",
		__LDBL_MAX_10_EXP__="4932",
		__LDBL_MAX_EXP__="16384",
		__LDBL_MAX__="1.18973149535723176502126385303097021e+4932L",
		__LDBL_MIN_10_EXP__="(-4931)",
		__LDBL_MIN_EXP__="(-16381)",
		__LDBL_MIN__="3.36210314311209350626267781732175260e-4932L",
		__LDBL_REDIR={
			def="name proto",
			params={"name", "proto"}
		},
		__LDBL_REDIR1={
			def="name proto",
			params={"name", "proto", "alias"}
		},
		__LDBL_REDIR1_NTH={
			def="name proto __THROW",
			params={"name", "proto", "alias"}
		},
		__LDBL_REDIR_DECL={
			def="",
			params={"name"}
		},
		__LDBL_REDIR_NTH={
			def="name proto __THROW",
			params={"name", "proto"}
		},
		__LEAF=", __leaf__",
		__LEAF_ATTR="__attribute__ ((__leaf__))",
		__LONG_DOUBLE_USES_FLOAT128="0",
		__LONG_LONG_MAX__="0x7fffffffffffffffLL",
		__LONG_LONG_WIDTH__="64",
		__LONG_MAX__="0x7fffffffffffffffL",
		__LONG_WIDTH__="64",
		__LP64__="1",
		__MAX_BAUD="0010017",
		__MMX__="1",
		__MODE_T_TYPE="unsigned int",
		__NLINK_T_TYPE="unsigned long int",
		__NO_INLINE__="1",
		__NTH={
			def="__attribute__ ((__nothrow__ __LEAF)) fct",
			params={"fct"}
		},
		__NTHNL={
			def="__attribute__ ((__nothrow__)) fct",
			params={"fct"}
		},
		__OFF64_T_TYPE="long int",
		__OFF_T_MATCHES_OFF64_T="1",
		__OFF_T_TYPE="long int",
		__ORDER_BIG_ENDIAN__="4321",
		__ORDER_LITTLE_ENDIAN__="1234",
		__ORDER_PDP_ENDIAN__="3412",
		__P={
			def="args",
			params={"args"}
		},
		__PIC__="2",
		__PID_T_TYPE="int",
		__PIE__="2",
		__PMT={
			def="args",
			params={"args"}
		},
		__PRAGMA_REDEFINE_EXTNAME="1",
		__PTRDIFF_MAX__="0x7fffffffffffffffL",
		__PTRDIFF_TYPE__="long int",
		__PTRDIFF_WIDTH__="64",
		__REDIRECT={
			def="name proto __asm__ (__ASMNAME (#alias))",
			params={"name", "proto", "alias"}
		},
		__REDIRECT_LDBL={
			def="__REDIRECT (name, proto, alias)",
			params={"name", "proto", "alias"}
		},
		__REDIRECT_NTH={
			def="name proto __asm__ (__ASMNAME (#alias)) __THROW",
			params={"name", "proto", "alias"}
		},
		__REDIRECT_NTHNL={
			def="name proto __asm__ (__ASMNAME (#alias)) __THROWNL",
			params={"name", "proto", "alias"}
		},
		__REDIRECT_NTH_LDBL={
			def="__REDIRECT_NTH (name, proto, alias)",
			params={"name", "proto", "alias"}
		},
		__REGISTER_PREFIX__="",
		__RLIM64_T_TYPE="unsigned long int",
		__RLIM_T_MATCHES_RLIM64_T="1",
		__RLIM_T_TYPE="unsigned long int",
		__S16_TYPE="short int",
		__S32_TYPE="int",
		__S64_TYPE="long int",
		__SCHAR_MAX__="0x7f",
		__SCHAR_WIDTH__="8",
		__SEG_FS="1",
		__SEG_GS="1",
		__SHRT_MAX__="0x7fff",
		__SHRT_WIDTH__="16",
		__SIG_ATOMIC_MAX__="0x7fffffff",
		__SIG_ATOMIC_MIN__="(-0x7fffffff - 1)",
		__SIG_ATOMIC_TYPE__="int",
		__SIG_ATOMIC_WIDTH__="32",
		__SIZEOF_DOUBLE__="8",
		__SIZEOF_FLOAT128__="16",
		__SIZEOF_FLOAT80__="16",
		__SIZEOF_FLOAT__="4",
		__SIZEOF_INT128__="16",
		__SIZEOF_INT__="4",
		__SIZEOF_LONG_DOUBLE__="16",
		__SIZEOF_LONG_LONG__="8",
		__SIZEOF_LONG__="8",
		__SIZEOF_POINTER__="8",
		__SIZEOF_PTRDIFF_T__="8",
		__SIZEOF_SHORT__="2",
		__SIZEOF_SIZE_T__="8",
		__SIZEOF_WCHAR_T__="4",
		__SIZEOF_WINT_T__="4",
		__SIZE_MAX__="0xffffffffffffffffUL",
		__SIZE_T="",
		__SIZE_TYPE__="long unsigned int",
		__SIZE_T__="",
		__SIZE_WIDTH__="64",
		__SLONG32_TYPE="int",
		__SLONGWORD_TYPE="long int",
		__SQUAD_TYPE="long int",
		__SSE2_MATH__="1",
		__SSE2__="1",
		__SSE_MATH__="1",
		__SSE__="1",
		__SSIZE_T_TYPE="long int",
		__SSP_STRONG__="3",
		__STATFS_MATCHES_STATFS64="1",
		__STDC_HOSTED__="1",
		__STDC_IEC_559_COMPLEX__="1",
		__STDC_IEC_559__="1",
		__STDC_ISO_10646__="201706L",
		__STDC_UTF_16__="1",
		__STDC_UTF_32__="1",
		__STDC_VERSION__="201710L",
		__STDC__="1",
		__STRING={
			def="#x",
			params={"x"}
		},
		__SUSECONDS_T_TYPE="long int",
		__SWORD_TYPE="long int",
		__SYSCALL_SLONG_TYPE="long int",
		__SYSCALL_ULONG_TYPE="unsigned long int",
		__SYSCALL_WORDSIZE="64",
		__THROW="__attribute__ ((__nothrow__ , __leaf__))",
		__THROWNL="__attribute__ ((__nothrow__))",
		__TIME64_T_TYPE="long int",
		__TIMER_T_TYPE="void *",
		__TIMESIZE="64",
		__TIME_T_TYPE="long int",
		__U16_TYPE="unsigned short int",
		__U32_TYPE="unsigned int",
		__U64_TYPE="unsigned long int",
		__UID_T_TYPE="unsigned int",
		__UINT16_C={
			def="c",
			params={"c"}
		},
		__UINT16_MAX__="0xffff",
		__UINT16_TYPE__="short unsigned int",
		__UINT32_C={
			def="c ## U",
			params={"c"}
		},
		__UINT32_MAX__="0xffffffffU",
		__UINT32_TYPE__="unsigned int",
		__UINT64_C={
			def="c ## UL",
			params={"c"}
		},
		__UINT64_MAX__="0xffffffffffffffffUL",
		__UINT64_TYPE__="long unsigned int",
		__UINT8_C={
			def="c",
			params={"c"}
		},
		__UINT8_MAX__="0xff",
		__UINT8_TYPE__="unsigned char",
		__UINTMAX_C={
			def="c ## UL",
			params={"c"}
		},
		__UINTMAX_MAX__="0xffffffffffffffffUL",
		__UINTMAX_TYPE__="long unsigned int",
		__UINTPTR_MAX__="0xffffffffffffffffUL",
		__UINTPTR_TYPE__="long unsigned int",
		__UINT_FAST16_MAX__="0xffffffffffffffffUL",
		__UINT_FAST16_TYPE__="long unsigned int",
		__UINT_FAST32_MAX__="0xffffffffffffffffUL",
		__UINT_FAST32_TYPE__="long unsigned int",
		__UINT_FAST64_MAX__="0xffffffffffffffffUL",
		__UINT_FAST64_TYPE__="long unsigned int",
		__UINT_FAST8_MAX__="0xff",
		__UINT_FAST8_TYPE__="unsigned char",
		__UINT_LEAST16_MAX__="0xffff",
		__UINT_LEAST16_TYPE__="short unsigned int",
		__UINT_LEAST32_MAX__="0xffffffffU",
		__UINT_LEAST32_TYPE__="unsigned int",
		__UINT_LEAST64_MAX__="0xffffffffffffffffUL",
		__UINT_LEAST64_TYPE__="long unsigned int",
		__UINT_LEAST8_MAX__="0xff",
		__UINT_LEAST8_TYPE__="unsigned char",
		__ULONG32_TYPE="unsigned int",
		__ULONGWORD_TYPE="unsigned long int",
		__UQUAD_TYPE="unsigned long int",
		__USECONDS_T_TYPE="unsigned int",
		__USER_LABEL_PREFIX__="",
		__USE_POSIX_IMPLICITLY="1",
		__UWORD_TYPE="unsigned long int",
		__VERSION__="\"9.4.0\"",
		__WCHAR_MAX="0x7fffffff",
		__WCHAR_MAX__="0x7fffffff",
		__WCHAR_MIN="(-0x7fffffff - 1)",
		__WCHAR_MIN__="(-0x7fffffff - 1)",
		__WCHAR_T="",
		__WCHAR_TYPE__="int",
		__WCHAR_T__="",
		__WCHAR_WIDTH__="32",
		__WINT_MAX__="0xffffffffU",
		__WINT_MIN__="0U",
		__WINT_TYPE__="unsigned int",
		__WINT_WIDTH__="32",
		__WORDSIZE="64",
		__WORDSIZE_TIME64_COMPAT32="1",
		____FILE_defined="1",
		_____fpos64_t_defined="1",
		_____fpos_t_defined="1",
		____mbstate_t_defined="1",
		____sigset_t_defined="",
		___int_size_t_h="",
		___int_wchar_t_h="",
		__amd64="1",
		__amd64__="1",
		__asm__={
			def="",
			params={"x"}
		},
		__attribute_alloc_size__={
			def="__attribute__ ((__alloc_size__ params))",
			params={"params"}
		},
		__attribute_artificial__="__attribute__ ((__artificial__))",
		__attribute_const__="__attribute__ ((__const__))",
		__attribute_copy__={
			def="__attribute__ ((__copy__ (arg)))",
			params={"arg"}
		},
		__attribute_deprecated__="__attribute__ ((__deprecated__))",
		__attribute_deprecated_msg__={
			def="__attribute__ ((__deprecated__ (msg)))",
			params={"msg"}
		},
		__attribute_format_arg__={
			def="__attribute__ ((__format_arg__ (x)))",
			params={"x"}
		},
		__attribute_format_strfmon__={
			def="__attribute__ ((__format__ (__strfmon__, a, b)))",
			params={"a", "b"}
		},
		__attribute_malloc__="__attribute__ ((__malloc__))",
		__attribute_noinline__="__attribute__ ((__noinline__))",
		__attribute_nonstring__="__attribute__ ((__nonstring__))",
		__attribute_pure__="__attribute__ ((__pure__))",
		__attribute_used__="__attribute__ ((__used__))",
		__attribute_warn_unused_result__="__attribute__ ((__warn_unused_result__))",
		__bos={
			def="__builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)",
			params={"ptr"}
		},
		__bos0={
			def="__builtin_object_size (ptr, 0)",
			params={"ptr"}
		},
		__code_model_small__="1",
		__errordecl={
			def="extern void name (void) __attribute__((__error__ (msg)))",
			params={"name", "msg"}
		},
		__extern_always_inline="extern __always_inline __attribute__ ((__gnu_inline__))",
		__extern_inline="extern __inline __attribute__ ((__gnu_inline__))",
		__f128={
			def="x##f128",
			params={"x"}
		},
		__f32={
			def="x##f32",
			params={"x"}
		},
		__f32x={
			def="x##f32x",
			params={"x"}
		},
		__f64={
			def="x##f64",
			params={"x"}
		},
		__f64x={
			def="x##f64x",
			params={"x"}
		},
		__feof_unlocked_body={
			def="(((_fp)->_flags & _IO_EOF_SEEN) != 0)",
			params={"_fp"}
		},
		__ferror_unlocked_body={
			def="(((_fp)->_flags & _IO_ERR_SEEN) != 0)",
			params={"_fp"}
		},
		__flexarr="[]",
		__fortify_function="extern __always_inline __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__))",
		__getc_unlocked_body={
			def="(__glibc_unlikely ((_fp)->_IO_read_ptr >= (_fp)->_IO_read_end)\9    ? __uflow (_fp) : *(unsigned char *) (_fp)->_IO_read_ptr++)",
			params={"_fp"}
		},
		__glibc_c99_flexarr_available="1",
		__glibc_clang_has_extension={
			def="0",
			params={"ext"}
		},
		__glibc_clang_prereq={
			def="0",
			params={"maj", "min"}
		},
		__glibc_has_attribute={
			def="__has_attribute (attr)",
			params={"attr"}
		},
		__glibc_likely={
			def="__builtin_expect ((cond), 1)",
			params={"cond"}
		},
		__glibc_macro_warning={
			def="__glibc_macro_warning1 (GCC warning message)",
			params={"message"}
		},
		__glibc_macro_warning1={
			def="_Pragma (#message)",
			params={"message"}
		},
		__glibc_unlikely={
			def="__builtin_expect ((cond), 0)",
			params={"cond"}
		},
		__gnu_linux__="1",
		__has_attribute={
			def="0",
			params={"x"}
		},
		__has_builtin={
			def="0",
			params={"x"}
		},
		__has_c_attribute={
			def="0",
			params={"x"}
		},
		__has_cpp_attribute={
			def="0",
			params={"x"}
		},
		__has_extension={
			def="0",
			params={"x"}
		},
		__has_feature={
			def="0",
			params={"x"}
		},
		__has_include={
			def="0",
			params={"x"}
		},
		__has_include_next={
			def="__has_include_next__(STR)",
			params={"STR"}
		},
		__intptr_t_defined="",
		__k8="1",
		__k8__="1",
		__ldiv_t_defined="1",
		__linux="1",
		__linux__="1",
		__nonnull={
			def="__attribute__ ((__nonnull__ params))",
			params={"params"}
		},
		__pic__="2",
		__pie__="2",
		__ptr_t="void *",
		__putc_unlocked_body={
			def="(__glibc_unlikely ((_fp)->_IO_write_ptr >= (_fp)->_IO_write_end)\9    ? __overflow (_fp, (unsigned char) (_ch))\9\9\9\9    : (unsigned char) (*(_fp)->_IO_write_ptr++ = (_ch)))",
			params={"_ch", "_fp"}
		},
		__restrict="",
		__restrict__="",
		__restrict_arr="",
		__sigset_t_defined="1",
		__size_t="",
		__size_t__="",
		__struct_FILE_defined="1",
		__stub___compat_bdflush="",
		__stub_chflags="",
		__stub_fchflags="",
		__stub_gtty="",
		__stub_lchmod="",
		__stub_revoke="",
		__stub_setlogin="",
		__stub_sigreturn="",
		__stub_sstk="",
		__stub_stty="",
		__suseconds_t_defined="",
		__time_t_defined="1",
		__timeval_defined="1",
		__unix="1",
		__unix__="1",
		__va_arg_pack={
			def="__builtin_va_arg_pack ()",
			params={}
		},
		__va_arg_pack_len={
			def="__builtin_va_arg_pack_len ()",
			params={}
		},
		__warnattr={
			def="__attribute__((__warning__ (msg)))",
			params={"msg"}
		},
		__warndecl={
			def="extern void name (void) __attribute__((__warning__ (msg)))",
			params={"name", "msg"}
		},
		__wchar_t__="",
		__wur="",
		__x86_64="1",
		__x86_64__="1",
		d_fileno="d_ino",
		linux="1",
		setjmp={
			def="_setjmp (env)",
			params={"env"}
		},
		stderr="stderr",
		stdin="stdin",
		stdout="stdout",
		unix="1"
	}
}