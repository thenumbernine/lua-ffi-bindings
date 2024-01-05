local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/fitsio.h */
/* #define CFITSIO_VERSION 4.2.0 ### string, not number "4.2.0" */
enum { CFITSIO_MICRO = 0 };
enum { CFITSIO_MINOR = 2 };
enum { CFITSIO_MAJOR = 4 };
enum { CFITSIO_SONAME = 10 };
enum { CFITS_API = 1 };
/* ++ BEGIN /usr/include/stdio.h */
]] require 'ffi.req' 'c.stdio' ffi.cdef[[
/* ++ END   /usr/include/stdio.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/sys/types.h */
/* ++ BEGIN /usr/include/stdlib.h */
]] require 'ffi.req' 'c.stdlib' ffi.cdef[[
/* ++ END   /usr/include/stdlib.h */
/* ++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* ++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
enum { USE_LL_SUFFIX = 1 };
typedef long long LONGLONG;
typedef unsigned long long ULONGLONG;
enum { LONGLONG_TYPE = 1 };
/* #define LONGLONG_MAX LLONG_MAX ### string, not number "9.2233720368548e+18" */
/* #define LONGLONG_MIN LLONG_MIN ### string, not number "-9.2233720368548e+18" */
/* ++ BEGIN /usr/include/longnam.h */
enum { fits_parse_output_url = 0 };
enum { fits_compress_img = 0 };
/* ++ END   /usr/include/longnam.h */
enum { NIOBUF = 40 };
enum { IOBUFLEN = 2880 };
enum { FLEN_FILENAME = 1025 };
enum { FLEN_KEYWORD = 75 };
enum { FLEN_CARD = 81 };
enum { FLEN_VALUE = 71 };
enum { FLEN_COMMENT = 73 };
enum { FLEN_ERRMSG = 81 };
enum { FLEN_STATUS = 31 };
enum { TBIT = 1 };
enum { TBYTE = 11 };
enum { TSBYTE = 12 };
enum { TLOGICAL = 14 };
enum { TSTRING = 16 };
enum { TUSHORT = 20 };
enum { TSHORT = 21 };
enum { TUINT = 30 };
enum { TINT = 31 };
enum { TULONG = 40 };
enum { TLONG = 41 };
enum { TINT32BIT = 41 };
enum { TFLOAT = 42 };
enum { TULONGLONG = 80 };
enum { TLONGLONG = 81 };
enum { TDOUBLE = 82 };
enum { TCOMPLEX = 83 };
enum { TDBLCOMPLEX = 163 };
enum { TYP_STRUC_KEY = 10 };
enum { TYP_CMPRS_KEY = 20 };
enum { TYP_SCAL_KEY = 30 };
enum { TYP_NULL_KEY = 40 };
enum { TYP_DIM_KEY = 50 };
enum { TYP_RANG_KEY = 60 };
enum { TYP_UNIT_KEY = 70 };
enum { TYP_DISP_KEY = 80 };
enum { TYP_HDUID_KEY = 90 };
enum { TYP_CKSUM_KEY = 100 };
enum { TYP_WCS_KEY = 110 };
enum { TYP_REFSYS_KEY = 120 };
enum { TYP_COMM_KEY = 130 };
enum { TYP_CONT_KEY = 140 };
enum { TYP_USER_KEY = 150 };
enum { INT32BIT = 0 };
enum { BYTE_IMG = 8 };
enum { SHORT_IMG = 16 };
enum { LONG_IMG = 32 };
enum { LONGLONG_IMG = 64 };
enum { FLOAT_IMG = -32 };
enum { DOUBLE_IMG = -64 };
enum { SBYTE_IMG = 10 };
enum { USHORT_IMG = 20 };
enum { ULONG_IMG = 40 };
enum { ULONGLONG_IMG = 80 };
enum { IMAGE_HDU = 0 };
enum { ASCII_TBL = 1 };
enum { BINARY_TBL = 2 };
enum { ANY_HDU = -1 };
enum { READONLY = 0 };
enum { READWRITE = 1 };
/* #define FLOATNULLVALUE -9.11912E-36F ### string, not number "-9.11912E-36F" */
/* #define DOUBLENULLVALUE -9.1191291391491E-36 ### string, not number "-9.1191291391491E-36" */
enum { NO_DITHER = -1 };
enum { SUBTRACTIVE_DITHER_1 = 1 };
enum { SUBTRACTIVE_DITHER_2 = 2 };
enum { MAX_COMPRESS_DIM = 6 };
enum { RICE_1 = 11 };
enum { GZIP_1 = 21 };
enum { GZIP_2 = 22 };
enum { PLIO_1 = 31 };
enum { HCOMPRESS_1 = 41 };
enum { BZIP2_1 = 51 };
enum { NOCOMPRESS = -1 };
enum { TRUE = 1 };
enum { FALSE = 0 };
enum { CASESEN = 1 };
enum { CASEINSEN = 0 };
enum { GT_ID_ALL_URI = 0 };
enum { GT_ID_REF = 1 };
enum { GT_ID_POS = 2 };
enum { GT_ID_ALL = 3 };
enum { GT_ID_REF_URI = 11 };
enum { GT_ID_POS_URI = 12 };
enum { OPT_RM_GPT = 0 };
enum { OPT_RM_ENTRY = 1 };
enum { OPT_RM_MBR = 2 };
enum { OPT_RM_ALL = 3 };
enum { OPT_GCP_GPT = 0 };
enum { OPT_GCP_MBR = 1 };
enum { OPT_GCP_ALL = 2 };
enum { OPT_MCP_ADD = 0 };
enum { OPT_MCP_NADD = 1 };
enum { OPT_MCP_REPL = 2 };
enum { OPT_MCP_MOV = 3 };
enum { OPT_MRG_COPY = 0 };
enum { OPT_MRG_MOV = 1 };
enum { OPT_CMT_MBR = 1 };
enum { OPT_CMT_MBR_DEL = 11 };
typedef struct {
	char ttype[70];
	LONGLONG tbcol;
	int tdatatype;
	LONGLONG trepeat;
	double tscale;
	double tzero;
	LONGLONG tnull;
	char strnull[20];
	char tform[10];
	long twidth;
}tcolumn;
enum { VALIDSTRUC = 555 };
typedef struct {
	int filehandle;
	int driver;
	int open_count;
	char *filename;
	int validcode;
	int only_one;
	int noextsyntax;
	LONGLONG filesize;
	LONGLONG logfilesize;
	int lasthdu;
	LONGLONG bytepos;
	LONGLONG io_pos;
	int curbuf;
	int curhdu;
	int hdutype;
	int writemode;
	int maxhdu;
	int MAXHDU;
	LONGLONG *headstart;
	LONGLONG headend;
	LONGLONG ENDpos;
	LONGLONG nextkey;
	LONGLONG datastart;
	int imgdim;
	LONGLONG imgnaxis[99];
	int tfield;
	int startcol;
	LONGLONG origrows;
	LONGLONG numrows;
	LONGLONG rowlength;
	tcolumn *tableptr;
	LONGLONG heapstart;
	LONGLONG heapsize;
	int request_compress_type;
	long request_tilesize[6];
	float request_quantize_level;
	int request_quantize_method;
	int request_dither_seed;
	int request_lossy_int_compress;
	int request_huge_hdu;
	float request_hcomp_scale;
	int request_hcomp_smooth;
	int compress_type;
	long tilesize[6];
	float quantize_level;
	int quantize_method;
	int dither_seed;
	int compressimg;
	char zcmptype[12];
	int zbitpix;
	int zndim;
	long znaxis[6];
	long maxtilelen;
	long maxelem;
	int cn_compressed;
	int cn_uncompressed;
	int cn_gzip_data;
	int cn_zscale;
	int cn_zzero;
	int cn_zblank;
	double zscale;
	double zzero;
	double cn_bscale;
	double cn_bzero;
	double cn_actual_bzero;
	int zblank;
	int rice_blocksize;
	int rice_bytepix;
	float hcomp_scale;
	int hcomp_smooth;
	int *tilerow;
	long *tiledatasize;
	int *tiletype;
	void **tiledata;
	void **tilenullarray;
	int *tileanynull;
	char *iobuffer;
	long bufrecnum[40];
	int dirty[40];
	int ageindex[40];
} FITSfile;
typedef struct {
	int HDUposition;
	FITSfile *Fptr;
}fitsfile;
typedef struct {
	fitsfile *fptr;
	int colnum;
	char colname[70];
	int datatype;
	int iotype;
	void *array;
	long repeat;
	long tlmin;
	long tlmax;
	char tunit[70];
	char tdisp[70];
} iteratorCol;
enum { InputCol = 0 };
enum { InputOutputCol = 1 };
enum { OutputCol = 2 };
enum { TemporaryCol = 3 };
enum { WCSLIB_GETWCSTAB = 1 };
typedef struct {
	int i;
	int m;
	int kind;
	char extnam[72];
	int extver;
	int extlev;
	char ttype[72];
	long row;
	int ndim;
	int *dimlen;
	double **arrayp;
} wtbarr;
int fits_read_wcstab(fitsfile *fptr, int nwtb, wtbarr *wtb, int *status);
enum { CREATE_DISK_FILE = -106 };
enum { OPEN_DISK_FILE = -105 };
enum { SKIP_TABLE = -104 };
enum { SKIP_IMAGE = -103 };
enum { SKIP_NULL_PRIMARY = -102 };
enum { USE_MEM_BUFF = -101 };
enum { OVERFLOW_ERR = -11 };
enum { PREPEND_PRIMARY = -9 };
enum { SAME_FILE = 101 };
enum { TOO_MANY_FILES = 103 };
enum { FILE_NOT_OPENED = 104 };
enum { FILE_NOT_CREATED = 105 };
enum { WRITE_ERROR = 106 };
enum { END_OF_FILE = 107 };
enum { READ_ERROR = 108 };
enum { FILE_NOT_CLOSED = 110 };
enum { ARRAY_TOO_BIG = 111 };
enum { READONLY_FILE = 112 };
enum { MEMORY_ALLOCATION = 113 };
enum { BAD_FILEPTR = 114 };
enum { NULL_INPUT_PTR = 115 };
enum { SEEK_ERROR = 116 };
enum { BAD_NETTIMEOUT = 117 };
enum { BAD_URL_PREFIX = 121 };
enum { TOO_MANY_DRIVERS = 122 };
enum { DRIVER_INIT_FAILED = 123 };
enum { NO_MATCHING_DRIVER = 124 };
enum { URL_PARSE_ERROR = 125 };
enum { RANGE_PARSE_ERROR = 126 };
enum { SHARED_ERRBASE = 150 };
enum { SHARED_BADARG = 151 };
enum { SHARED_NULPTR = 152 };
enum { SHARED_TABFULL = 153 };
enum { SHARED_NOTINIT = 154 };
enum { SHARED_IPCERR = 155 };
enum { SHARED_NOMEM = 156 };
enum { SHARED_AGAIN = 157 };
enum { SHARED_NOFILE = 158 };
enum { SHARED_NORESIZE = 159 };
enum { HEADER_NOT_EMPTY = 201 };
enum { KEY_NO_EXIST = 202 };
enum { KEY_OUT_BOUNDS = 203 };
enum { VALUE_UNDEFINED = 204 };
enum { NO_QUOTE = 205 };
enum { BAD_INDEX_KEY = 206 };
enum { BAD_KEYCHAR = 207 };
enum { BAD_ORDER = 208 };
enum { NOT_POS_INT = 209 };
enum { NO_END = 210 };
enum { BAD_BITPIX = 211 };
enum { BAD_NAXIS = 212 };
enum { BAD_NAXES = 213 };
enum { BAD_PCOUNT = 214 };
enum { BAD_GCOUNT = 215 };
enum { BAD_TFIELDS = 216 };
enum { NEG_WIDTH = 217 };
enum { NEG_ROWS = 218 };
enum { COL_NOT_FOUND = 219 };
enum { BAD_SIMPLE = 220 };
enum { NO_SIMPLE = 221 };
enum { NO_BITPIX = 222 };
enum { NO_NAXIS = 223 };
enum { NO_NAXES = 224 };
enum { NO_XTENSION = 225 };
enum { NOT_ATABLE = 226 };
enum { NOT_BTABLE = 227 };
enum { NO_PCOUNT = 228 };
enum { NO_GCOUNT = 229 };
enum { NO_TFIELDS = 230 };
enum { NO_TBCOL = 231 };
enum { NO_TFORM = 232 };
enum { NOT_IMAGE = 233 };
enum { BAD_TBCOL = 234 };
enum { NOT_TABLE = 235 };
enum { COL_TOO_WIDE = 236 };
enum { COL_NOT_UNIQUE = 237 };
enum { BAD_ROW_WIDTH = 241 };
enum { UNKNOWN_EXT = 251 };
enum { UNKNOWN_REC = 252 };
enum { END_JUNK = 253 };
enum { BAD_HEADER_FILL = 254 };
enum { BAD_DATA_FILL = 255 };
enum { BAD_TFORM = 261 };
enum { BAD_TFORM_DTYPE = 262 };
enum { BAD_TDIM = 263 };
enum { BAD_HEAP_PTR = 264 };
enum { BAD_HDU_NUM = 301 };
enum { BAD_COL_NUM = 302 };
enum { NEG_FILE_POS = 304 };
enum { NEG_BYTES = 306 };
enum { BAD_ROW_NUM = 307 };
enum { BAD_ELEM_NUM = 308 };
enum { NOT_ASCII_COL = 309 };
enum { NOT_LOGICAL_COL = 310 };
enum { BAD_ATABLE_FORMAT = 311 };
enum { BAD_BTABLE_FORMAT = 312 };
enum { NO_NULL = 314 };
enum { NOT_VARI_LEN = 317 };
enum { BAD_DIMEN = 320 };
enum { BAD_PIX_NUM = 321 };
enum { ZERO_SCALE = 322 };
enum { NEG_AXIS = 323 };
enum { NOT_GROUP_TABLE = 340 };
enum { HDU_ALREADY_MEMBER = 341 };
enum { MEMBER_NOT_FOUND = 342 };
enum { GROUP_NOT_FOUND = 343 };
enum { BAD_GROUP_ID = 344 };
enum { TOO_MANY_HDUS_TRACKED = 345 };
enum { HDU_ALREADY_TRACKED = 346 };
enum { BAD_OPTION = 347 };
enum { IDENTICAL_POINTERS = 348 };
enum { BAD_GROUP_ATTACH = 349 };
enum { BAD_GROUP_DETACH = 350 };
enum { BAD_I2C = 401 };
enum { BAD_F2C = 402 };
enum { BAD_INTKEY = 403 };
enum { BAD_LOGICALKEY = 404 };
enum { BAD_FLOATKEY = 405 };
enum { BAD_DOUBLEKEY = 406 };
enum { BAD_C2I = 407 };
enum { BAD_C2F = 408 };
enum { BAD_C2D = 409 };
enum { BAD_DATATYPE = 410 };
enum { BAD_DECIM = 411 };
enum { NUM_OVERFLOW = 412 };
enum { DATA_COMPRESSION_ERR = 413 };
enum { DATA_DECOMPRESSION_ERR = 414 };
enum { NO_COMPRESSED_TILE = 415 };
enum { BAD_DATE = 420 };
enum { PARSE_SYNTAX_ERR = 431 };
enum { PARSE_BAD_TYPE = 432 };
enum { PARSE_LRG_VECTOR = 433 };
enum { PARSE_NO_OUTPUT = 434 };
enum { PARSE_BAD_COL = 435 };
enum { PARSE_BAD_OUTPUT = 436 };
enum { ANGLE_TOO_BIG = 501 };
enum { BAD_WCS_VAL = 502 };
enum { WCS_ERROR = 503 };
enum { BAD_WCS_PROJ = 504 };
enum { NO_WCS_KEY = 505 };
enum { APPROX_WCS_KEY = 506 };
enum { NO_CLOSE_ERROR = 999 };
enum { NGP_ERRBASE = 360 };
enum { NGP_OK = 0 };
enum { NGP_NO_MEMORY = 360 };
enum { NGP_READ_ERR = 361 };
enum { NGP_NUL_PTR = 362 };
enum { NGP_EMPTY_CURLINE = 363 };
enum { NGP_UNREAD_QUEUE_FULL = 364 };
enum { NGP_INC_NESTING = 365 };
enum { NGP_ERR_FOPEN = 366 };
enum { NGP_EOF = 367 };
enum { NGP_BAD_ARG = 368 };
enum { NGP_TOKEN_NOT_EXPECT = 369 };
int CFITS2Unit( fitsfile *fptr );
fitsfile* CUnit2FITS(int unit);
int fits_get_token (char **ptr, char *delimiter, char *token, int *isanumber);
int fits_get_token2(char **ptr, char *delimiter, char **token, int *isanumber, int *status);
char *fits_split_names(char *list);
int ffiurl( char *url, char *urltype, char *infile, char *outfile, char *extspec, char *rowfilter, char *binspec, char *colspec, int *status);
int ffifile (char *url, char *urltype, char *infile, char *outfile, char *extspec, char *rowfilter, char *binspec, char *colspec, char *pixfilter, int *status);
int ffifile2 (char *url, char *urltype, char *infile, char *outfile, char *extspec, char *rowfilter, char *binspec, char *colspec, char *pixfilter, char *compspec, int *status);
int ffrtnm(char *url, char *rootname, int *status);
int ffexist(const char *infile, int *exists, int *status);
int ffexts(char *extspec, int *extnum, char *extname, int *extvers, int *hdutype, char *colname, char *rowexpress, int *status);
int ffextn(char *url, int *extension_num, int *status);
int ffurlt(fitsfile *fptr, char *urlType, int *status);
int ffbins(char *binspec, int *imagetype, int *haxis, char colname[4][71], double *minin, double *maxin, double *binsizein, char minname[4][71], char maxname[4][71], char binname[4][71], double *weight, char *wtname, int *recip, int *status);
int ffbinr(char **binspec, char *colname, double *minin, double *maxin, double *binsizein, char *minname, char *maxname, char *binname, int *status);
int fits_copy_cell2image(fitsfile *fptr, fitsfile *newptr, char *colname, long rownum, int *status);
int fits_copy_image2cell(fitsfile *fptr, fitsfile *newptr, char *colname, long rownum, int copykeyflag, int *status);
int fits_copy_pixlist2image(fitsfile *infptr, fitsfile *outfptr, int firstkey, int naxis, int *colnum, int *status);
int ffimport_file( char *filename, char **contents, int *status );
int ffrwrg( char *rowlist, LONGLONG maxrows, int maxranges, int *numranges, long *minrow, long *maxrow, int *status);
int ffrwrgll( char *rowlist, LONGLONG maxrows, int maxranges, int *numranges, LONGLONG *minrow, LONGLONG *maxrow, int *status);
int fits_init_cfitsio(void);
int ffomem(fitsfile **fptr, const char *name, int mode, void **buffptr, size_t *buffsize, size_t deltasize, void *(*mem_realloc)(void *p, size_t newsize), int *status);
int ffopen(fitsfile **fptr, const char *filename, int iomode, int *status);
int ffopentest(int soname, fitsfile **fptr, const char *filename, int iomode, int *status);
int ffdopn(fitsfile **fptr, const char *filename, int iomode, int *status);
int ffeopn(fitsfile **fptr, const char *filename, int iomode, char *extlist, int *hdutype, int *status);
int fftopn(fitsfile **fptr, const char *filename, int iomode, int *status);
int ffiopn(fitsfile **fptr, const char *filename, int iomode, int *status);
int ffdkopn(fitsfile **fptr, const char *filename, int iomode, int *status);
int ffreopen(fitsfile *openfptr, fitsfile **newfptr, int *status);
int ffinit( fitsfile **fptr, const char *filename, int *status);
int ffdkinit(fitsfile **fptr, const char *filename, int *status);
int ffimem(fitsfile **fptr, void **buffptr, size_t *buffsize, size_t deltasize, void *(*mem_realloc)(void *p, size_t newsize), int *status);
int fftplt(fitsfile **fptr, const char *filename, const char *tempname, int *status);
int ffflus(fitsfile *fptr, int *status);
int ffflsh(fitsfile *fptr, int clearbuf, int *status);
int ffclos(fitsfile *fptr, int *status);
int ffdelt(fitsfile *fptr, int *status);
int ffflnm(fitsfile *fptr, char *filename, int *status);
int ffflmd(fitsfile *fptr, int *filemode, int *status);
int fits_delete_iraf_file(const char *filename, int *status);
float ffvers(float *version);
void ffupch(char *string);
void ffgerr(int status, char *errtext);
void ffpmsg(const char *err_message);
void ffpmrk(void);
int ffgmsg(char *err_message);
void ffcmsg(void);
void ffcmrk(void);
void ffrprt(FILE *stream, int status);
void ffcmps(char *templt, char *colname, int casesen, int *match, int *exact);
int fftkey(const char *keyword, int *status);
int fftrec(char *card, int *status);
int ffnchk(fitsfile *fptr, int *status);
int ffkeyn(const char *keyroot, int value, char *keyname, int *status);
int ffnkey(int value, const char *keyroot, char *keyname, int *status);
int ffgkcl(char *card);
int ffdtyp(const char *cval, char *dtype, int *status);
int ffinttyp(char *cval, int *datatype, int *negative, int *status);
int ffpsvc(char *card, char *value, char *comm, int *status);
int ffgknm(char *card, char *name, int *length, int *status);
int ffgthd(char *tmplt, char *card, int *hdtype, int *status);
int ffmkky(const char *keyname, char *keyval, const char *comm, char *card, int *status);
int fits_translate_keyword(char *inrec, char *outrec, char *patterns[][2], int npat, int n_value, int n_offset, int n_range, int *pat_num, int *i, int *j, int *m, int *n, int *status);
int fits_translate_keywords(fitsfile *infptr, fitsfile *outfptr, int firstkey, char *patterns[][2], int npat, int n_value, int n_offset, int n_range, int *status);
int ffasfm(char *tform, int *datacode, long *width, int *decim, int *status);
int ffbnfm(char *tform, int *datacode, long *repeat, long *width, int *status);
int ffbnfmll(char *tform, int *datacode, LONGLONG *repeat, long *width, int *status);
int ffgabc(int tfields, char **tform, int space, long *rowlen, long *tbcol, int *status);
int fits_get_section_range(char **ptr,long *secmin,long *secmax,long *incre, int *status);
int ffmbyt(fitsfile *fptr, LONGLONG bytpos, int ignore_err, int *status);
int ffpky(fitsfile *fptr, int datatype, const char *keyname, void *value, const char *comm, int *status);
int ffprec(fitsfile *fptr, const char *card, int *status);
int ffpcom(fitsfile *fptr, const char *comm, int *status);
int ffpunt(fitsfile *fptr, const char *keyname, const char *unit, int *status);
int ffphis(fitsfile *fptr, const char *history, int *status);
int ffpdat(fitsfile *fptr, int *status);
int ffverifydate(int year, int month, int day, int *status);
int ffgstm(char *timestr, int *timeref, int *status);
int ffgsdt(int *day, int *month, int *year, int *status);
int ffdt2s(int year, int month, int day, char *datestr, int *status);
int fftm2s(int year, int month, int day, int hour, int minute, double second, int decimals, char *datestr, int *status);
int ffs2dt(char *datestr, int *year, int *month, int *day, int *status);
int ffs2tm(char *datestr, int *year, int *month, int *day, int *hour, int *minute, double *second, int *status);
int ffpkyu(fitsfile *fptr, const char *keyname, const char *comm, int *status);
int ffpkys(fitsfile *fptr, const char *keyname, const char *value, const char *comm,int *status);
int ffpkls(fitsfile *fptr, const char *keyname, const char *value, const char *comm,int *status);
int ffplsw(fitsfile *fptr, int *status);
int ffpkyl(fitsfile *fptr, const char *keyname, int value, const char *comm, int *status);
int ffpkyj(fitsfile *fptr, const char *keyname, LONGLONG value, const char *comm, int *status);
int ffpkyuj(fitsfile *fptr, const char *keyname, ULONGLONG value, const char *comm, int *status);
int ffpkyf(fitsfile *fptr, const char *keyname, float value, int decim, const char *comm, int *status);
int ffpkye(fitsfile *fptr, const char *keyname, float value, int decim, const char *comm, int *status);
int ffpkyg(fitsfile *fptr, const char *keyname, double value, int decim, const char *comm, int *status);
int ffpkyd(fitsfile *fptr, const char *keyname, double value, int decim, const char *comm, int *status);
int ffpkyc(fitsfile *fptr, const char *keyname, float *value, int decim, const char *comm, int *status);
int ffpkym(fitsfile *fptr, const char *keyname, double *value, int decim, const char *comm, int *status);
int ffpkfc(fitsfile *fptr, const char *keyname, float *value, int decim, const char *comm, int *status);
int ffpkfm(fitsfile *fptr, const char *keyname, double *value, int decim, const char *comm, int *status);
int ffpkyt(fitsfile *fptr, const char *keyname, long intval, double frac, const char *comm, int *status);
int ffptdm( fitsfile *fptr, int colnum, int naxis, long naxes[], int *status);
int ffptdmll( fitsfile *fptr, int colnum, int naxis, LONGLONG naxes[], int *status);
int ffpkns(fitsfile *fptr, const char *keyroot, int nstart, int nkey, char *value[], char *comm[], int *status);
int ffpknl(fitsfile *fptr, const char *keyroot, int nstart, int nkey, int *value, char *comm[], int *status);
int ffpknj(fitsfile *fptr, const char *keyroot, int nstart, int nkey, long *value, char *comm[], int *status);
int ffpknjj(fitsfile *fptr, const char *keyroot, int nstart, int nkey, LONGLONG *value, char *comm[], int *status);
int ffpknf(fitsfile *fptr, const char *keyroot, int nstart, int nkey, float *value, int decim, char *comm[], int *status);
int ffpkne(fitsfile *fptr, const char *keyroot, int nstart, int nkey, float *value, int decim, char *comm[], int *status);
int ffpkng(fitsfile *fptr, const char *keyroot, int nstart, int nkey, double *value, int decim, char *comm[], int *status);
int ffpknd(fitsfile *fptr, const char *keyroot, int nstart, int nkey, double *value, int decim, char *comm[], int *status);
int ffcpky(fitsfile *infptr,fitsfile *outfptr,int incol,int outcol, char *rootname, int *status);
int ffphps( fitsfile *fptr, int bitpix, int naxis, long naxes[], int *status);
int ffphpsll( fitsfile *fptr, int bitpix, int naxis, LONGLONG naxes[], int *status);
int ffphpr( fitsfile *fptr, int simple, int bitpix, int naxis, long naxes[], LONGLONG pcount, LONGLONG gcount, int extend, int *status);
int ffphprll( fitsfile *fptr, int simple, int bitpix, int naxis, LONGLONG naxes[], LONGLONG pcount, LONGLONG gcount, int extend, int *status);
int ffphtb(fitsfile *fptr, LONGLONG naxis1, LONGLONG naxis2, int tfields, char **ttype, long *tbcol, char **tform, char **tunit, const char *extname, int *status);
int ffphbn(fitsfile *fptr, LONGLONG naxis2, int tfields, char **ttype, char **tform, char **tunit, const char *extname, LONGLONG pcount, int *status);
int ffphext( fitsfile *fptr, const char *xtension, int bitpix, int naxis, long naxes[], LONGLONG pcount, LONGLONG gcount, int *status);
int ffpktp(fitsfile *fptr, const char *filename, int *status);
int ffghsp(fitsfile *fptr, int *nexist, int *nmore, int *status);
int ffghps(fitsfile *fptr, int *nexist, int *position, int *status);
int ffmaky(fitsfile *fptr, int nrec, int *status);
int ffmrky(fitsfile *fptr, int nrec, int *status);
int ffgnxk(fitsfile *fptr, char **inclist, int ninc, char **exclist, int nexc, char *card, int *status);
int ffgrec(fitsfile *fptr, int nrec, char *card, int *status);
int ffgcrd(fitsfile *fptr, const char *keyname, char *card, int *status);
int ffgstr(fitsfile *fptr, const char *string, char *card, int *status);
int ffgunt(fitsfile *fptr, const char *keyname, char *unit, int *status);
int ffgkyn(fitsfile *fptr, int nkey, char *keyname, char *keyval, char *comm, int *status);
int ffgkey(fitsfile *fptr, const char *keyname, char *keyval, char *comm, int *status);
int ffgky( fitsfile *fptr, int datatype, const char *keyname, void *value, char *comm, int *status);
int ffgkys(fitsfile *fptr, const char *keyname, char *value, char *comm, int *status);
int ffgksl(fitsfile *fptr, const char *keyname, int *length, int *status);
int ffgkls(fitsfile *fptr, const char *keyname, char **value, char *comm, int *status);
int ffgsky(fitsfile *fptr, const char *keyname, int firstchar, int maxchar, char *value, int *valuelen, char *comm, int *status);
int fffree(void *value, int *status);
int fffkls(char *value, int *status);
int ffgkyl(fitsfile *fptr, const char *keyname, int *value, char *comm, int *status);
int ffgkyj(fitsfile *fptr, const char *keyname, long *value, char *comm, int *status);
int ffgkyjj(fitsfile *fptr, const char *keyname, LONGLONG *value, char *comm, int *status);
int ffgkyujj(fitsfile *fptr, const char *keyname, ULONGLONG *value, char *comm, int *status);
int ffgkye(fitsfile *fptr, const char *keyname, float *value, char *comm,int *status);
int ffgkyd(fitsfile *fptr, const char *keyname, double *value,char *comm,int *status);
int ffgkyc(fitsfile *fptr, const char *keyname, float *value, char *comm,int *status);
int ffgkym(fitsfile *fptr, const char *keyname, double *value,char *comm,int *status);
int ffgkyt(fitsfile *fptr, const char *keyname, long *ivalue, double *dvalue, char *comm, int *status);
int ffgtdm(fitsfile *fptr, int colnum, int maxdim, int *naxis, long naxes[], int *status);
int ffgtdmll(fitsfile *fptr, int colnum, int maxdim, int *naxis, LONGLONG naxes[], int *status);
int ffdtdm(fitsfile *fptr, char *tdimstr, int colnum, int maxdim, int *naxis, long naxes[], int *status);
int ffdtdmll(fitsfile *fptr, char *tdimstr, int colnum, int maxdim, int *naxis, LONGLONG naxes[], int *status);
int ffgkns(fitsfile *fptr, const char *keyname, int nstart, int nmax, char *value[], int *nfound, int *status);
int ffgknl(fitsfile *fptr, const char *keyname, int nstart, int nmax, int *value, int *nfound, int *status);
int ffgknj(fitsfile *fptr, const char *keyname, int nstart, int nmax, long *value, int *nfound, int *status);
int ffgknjj(fitsfile *fptr, const char *keyname, int nstart, int nmax, LONGLONG *value, int *nfound, int *status);
int ffgkne(fitsfile *fptr, const char *keyname, int nstart, int nmax, float *value, int *nfound, int *status);
int ffgknd(fitsfile *fptr, const char *keyname, int nstart, int nmax, double *value, int *nfound, int *status);
int ffh2st(fitsfile *fptr, char **header, int *status);
int ffhdr2str( fitsfile *fptr, int exclude_comm, char **exclist, int nexc, char **header, int *nkeys, int *status);
int ffcnvthdr2str( fitsfile *fptr, int exclude_comm, char **exclist, int nexc, char **header, int *nkeys, int *status);
int ffghpr(fitsfile *fptr, int maxdim, int *simple, int *bitpix, int *naxis, long naxes[], long *pcount, long *gcount, int *extend, int *status);
int ffghprll(fitsfile *fptr, int maxdim, int *simple, int *bitpix, int *naxis, LONGLONG naxes[], long *pcount, long *gcount, int *extend, int *status);
int ffghtb(fitsfile *fptr,int maxfield, long *naxis1, long *naxis2, int *tfields, char **ttype, long *tbcol, char **tform, char **tunit, char *extname, int *status);
int ffghtbll(fitsfile *fptr,int maxfield, LONGLONG *naxis1, LONGLONG *naxis2, int *tfields, char **ttype, LONGLONG *tbcol, char **tform, char **tunit, char *extname, int *status);
int ffghbn(fitsfile *fptr, int maxfield, long *naxis2, int *tfields, char **ttype, char **tform, char **tunit, char *extname, long *pcount, int *status);
int ffghbnll(fitsfile *fptr, int maxfield, LONGLONG *naxis2, int *tfields, char **ttype, char **tform, char **tunit, char *extname, LONGLONG *pcount, int *status);
int ffuky(fitsfile *fptr, int datatype, const char *keyname, void *value, const char *comm, int *status);
int ffucrd(fitsfile *fptr, const char *keyname, const char *card, int *status);
int ffukyu(fitsfile *fptr, const char *keyname, const char *comm, int *status);
int ffukys(fitsfile *fptr, const char *keyname, const char *value, const char *comm, int *status);
int ffukls(fitsfile *fptr, const char *keyname, const char *value, const char *comm, int *status);
int ffukyl(fitsfile *fptr, const char *keyname, int value, const char *comm, int *status);
int ffukyj(fitsfile *fptr, const char *keyname, LONGLONG value, const char *comm, int *status);
int ffukyf(fitsfile *fptr, const char *keyname, float value, int decim, const char *comm, int *status);
int ffukye(fitsfile *fptr, const char *keyname, float value, int decim, const char *comm, int *status);
int ffukyg(fitsfile *fptr, const char *keyname, double value, int decim, const char *comm, int *status);
int ffukyd(fitsfile *fptr, const char *keyname, double value, int decim, const char *comm, int *status);
int ffukyc(fitsfile *fptr, const char *keyname, float *value, int decim, const char *comm, int *status);
int ffukym(fitsfile *fptr, const char *keyname, double *value, int decim, const char *comm, int *status);
int ffukfc(fitsfile *fptr, const char *keyname, float *value, int decim, const char *comm, int *status);
int ffukfm(fitsfile *fptr, const char *keyname, double *value, int decim, const char *comm, int *status);
int ffmrec(fitsfile *fptr, int nkey, const char *card, int *status);
int ffmcrd(fitsfile *fptr, const char *keyname, const char *card, int *status);
int ffmnam(fitsfile *fptr, const char *oldname, const char *newname, int *status);
int ffmcom(fitsfile *fptr, const char *keyname, const char *comm, int *status);
int ffmkyu(fitsfile *fptr, const char *keyname, const char *comm, int *status);
int ffmkys(fitsfile *fptr, const char *keyname, const char *value, const char *comm,int *status);
int ffmkls(fitsfile *fptr, const char *keyname, const char *value, const char *comm,int *status);
int ffmkyl(fitsfile *fptr, const char *keyname, int value, const char *comm, int *status);
int ffmkyj(fitsfile *fptr, const char *keyname, LONGLONG value, const char *comm, int *status);
int ffmkyf(fitsfile *fptr, const char *keyname, float value, int decim, const char *comm, int *status);
int ffmkye(fitsfile *fptr, const char *keyname, float value, int decim, const char *comm, int *status);
int ffmkyg(fitsfile *fptr, const char *keyname, double value, int decim, const char *comm, int *status);
int ffmkyd(fitsfile *fptr, const char *keyname, double value, int decim, const char *comm, int *status);
int ffmkyc(fitsfile *fptr, const char *keyname, float *value, int decim, const char *comm, int *status);
int ffmkym(fitsfile *fptr, const char *keyname, double *value, int decim, const char *comm, int *status);
int ffmkfc(fitsfile *fptr, const char *keyname, float *value, int decim, const char *comm, int *status);
int ffmkfm(fitsfile *fptr, const char *keyname, double *value, int decim, const char *comm, int *status);
int ffirec(fitsfile *fptr, int nkey, const char *card, int *status);
int ffikey(fitsfile *fptr, const char *card, int *status);
int ffikyu(fitsfile *fptr, const char *keyname, const char *comm, int *status);
int ffikys(fitsfile *fptr, const char *keyname, const char *value, const char *comm,int *status);
int ffikls(fitsfile *fptr, const char *keyname, const char *value, const char *comm,int *status);
int ffikyl(fitsfile *fptr, const char *keyname, int value, const char *comm, int *status);
int ffikyj(fitsfile *fptr, const char *keyname, LONGLONG value, const char *comm, int *status);
int ffikyf(fitsfile *fptr, const char *keyname, float value, int decim, const char *comm, int *status);
int ffikye(fitsfile *fptr, const char *keyname, float value, int decim, const char *comm, int *status);
int ffikyg(fitsfile *fptr, const char *keyname, double value, int decim, const char *comm, int *status);
int ffikyd(fitsfile *fptr, const char *keyname, double value, int decim, const char *comm, int *status);
int ffikyc(fitsfile *fptr, const char *keyname, float *value, int decim, const char *comm, int *status);
int ffikym(fitsfile *fptr, const char *keyname, double *value, int decim, const char *comm, int *status);
int ffikfc(fitsfile *fptr, const char *keyname, float *value, int decim, const char *comm, int *status);
int ffikfm(fitsfile *fptr, const char *keyname, double *value, int decim, const char *comm, int *status);
int ffdkey(fitsfile *fptr, const char *keyname, int *status);
int ffdstr(fitsfile *fptr, const char *string, int *status);
int ffdrec(fitsfile *fptr, int keypos, int *status);
int ffghdn(fitsfile *fptr, int *chdunum);
int ffghdt(fitsfile *fptr, int *exttype, int *status);
int ffghad(fitsfile *fptr, long *headstart, long *datastart, long *dataend, int *status);
int ffghadll(fitsfile *fptr, LONGLONG *headstart, LONGLONG *datastart, LONGLONG *dataend, int *status);
int ffghof(fitsfile *fptr, off_t *headstart, off_t *datastart, off_t *dataend, int *status);
int ffgipr(fitsfile *fptr, int maxaxis, int *imgtype, int *naxis, long *naxes, int *status);
int ffgiprll(fitsfile *fptr, int maxaxis, int *imgtype, int *naxis, LONGLONG *naxes, int *status);
int ffgidt(fitsfile *fptr, int *imgtype, int *status);
int ffgiet(fitsfile *fptr, int *imgtype, int *status);
int ffgidm(fitsfile *fptr, int *naxis, int *status);
int ffgisz(fitsfile *fptr, int nlen, long *naxes, int *status);
int ffgiszll(fitsfile *fptr, int nlen, LONGLONG *naxes, int *status);
int ffmahd(fitsfile *fptr, int hdunum, int *exttype, int *status);
int ffmrhd(fitsfile *fptr, int hdumov, int *exttype, int *status);
int ffmnhd(fitsfile *fptr, int exttype, char *hduname, int hduvers, int *status);
int ffthdu(fitsfile *fptr, int *nhdu, int *status);
int ffcrhd(fitsfile *fptr, int *status);
int ffcrim(fitsfile *fptr, int bitpix, int naxis, long *naxes, int *status);
int ffcrimll(fitsfile *fptr, int bitpix, int naxis, LONGLONG *naxes, int *status);
int ffcrtb(fitsfile *fptr, int tbltype, LONGLONG naxis2, int tfields, char **ttype, char **tform, char **tunit, const char *extname, int *status);
int ffiimg(fitsfile *fptr, int bitpix, int naxis, long *naxes, int *status);
int ffiimgll(fitsfile *fptr, int bitpix, int naxis, LONGLONG *naxes, int *status);
int ffitab(fitsfile *fptr, LONGLONG naxis1, LONGLONG naxis2, int tfields, char **ttype, long *tbcol, char **tform, char **tunit, const char *extname, int *status);
int ffibin(fitsfile *fptr, LONGLONG naxis2, int tfields, char **ttype, char **tform, char **tunit, const char *extname, LONGLONG pcount, int *status);
int ffrsim(fitsfile *fptr, int bitpix, int naxis, long *naxes, int *status);
int ffrsimll(fitsfile *fptr, int bitpix, int naxis, LONGLONG *naxes, int *status);
int ffdhdu(fitsfile *fptr, int *hdutype, int *status);
int ffcopy(fitsfile *infptr, fitsfile *outfptr, int morekeys, int *status);
int ffcpfl(fitsfile *infptr, fitsfile *outfptr, int prev, int cur, int follow, int *status);
int ffcphd(fitsfile *infptr, fitsfile *outfptr, int *status);
int ffcpdt(fitsfile *infptr, fitsfile *outfptr, int *status);
int ffchfl(fitsfile *fptr, int *status);
int ffcdfl(fitsfile *fptr, int *status);
int ffwrhdu(fitsfile *fptr, FILE *outstream, int *status);
int ffrdef(fitsfile *fptr, int *status);
int ffrhdu(fitsfile *fptr, int *hdutype, int *status);
int ffhdef(fitsfile *fptr, int morekeys, int *status);
int ffpthp(fitsfile *fptr, long theap, int *status);
int ffcsum(fitsfile *fptr, long nrec, unsigned long *sum, int *status);
void ffesum(unsigned long sum, int complm, char *ascii);
unsigned long ffdsum(char *ascii, int complm, unsigned long *sum);
int ffpcks(fitsfile *fptr, int *status);
int ffupck(fitsfile *fptr, int *status);
int ffvcks(fitsfile *fptr, int *datastatus, int *hdustatus, int *status);
int ffgcks(fitsfile *fptr, unsigned long *datasum, unsigned long *hdusum, int *status);
int ffpscl(fitsfile *fptr, double scale, double zeroval, int *status);
int ffpnul(fitsfile *fptr, LONGLONG nulvalue, int *status);
int fftscl(fitsfile *fptr, int colnum, double scale, double zeroval, int *status);
int fftnul(fitsfile *fptr, int colnum, LONGLONG nulvalue, int *status);
int ffsnul(fitsfile *fptr, int colnum, char *nulstring, int *status);
int ffgcno(fitsfile *fptr, int casesen, char *templt, int *colnum, int *status);
int ffgcnn(fitsfile *fptr, int casesen, char *templt, char *colname, int *colnum, int *status);
int ffgtcl(fitsfile *fptr, int colnum, int *typecode, long *repeat, long *width, int *status);
int ffgtclll(fitsfile *fptr, int colnum, int *typecode, LONGLONG *repeat, LONGLONG *width, int *status);
int ffeqty(fitsfile *fptr, int colnum, int *typecode, long *repeat, long *width, int *status);
int ffeqtyll(fitsfile *fptr, int colnum, int *typecode, LONGLONG *repeat, LONGLONG *width, int *status);
int ffgncl(fitsfile *fptr, int *ncols, int *status);
int ffgnrw(fitsfile *fptr, long *nrows, int *status);
int ffgnrwll(fitsfile *fptr, LONGLONG *nrows, int *status);
int ffgacl(fitsfile *fptr, int colnum, char *ttype, long *tbcol, char *tunit, char *tform, double *tscal, double *tzero, char *tnull, char *tdisp, int *status);
int ffgbcl(fitsfile *fptr, int colnum, char *ttype, char *tunit, char *dtype, long *repeat, double *tscal, double *tzero, long *tnull, char *tdisp, int *status);
int ffgbclll(fitsfile *fptr, int colnum, char *ttype, char *tunit, char *dtype, LONGLONG *repeat, double *tscal, double *tzero, LONGLONG *tnull, char *tdisp, int *status);
int ffgrsz(fitsfile *fptr, long *nrows, int *status);
int ffgcdw(fitsfile *fptr, int colnum, int *width, int *status);
int ffgpxv(fitsfile *fptr, int datatype, long *firstpix, LONGLONG nelem, void *nulval, void *array, int *anynul, int *status);
int ffgpxvll(fitsfile *fptr, int datatype, LONGLONG *firstpix, LONGLONG nelem, void *nulval, void *array, int *anynul, int *status);
int ffgpxf(fitsfile *fptr, int datatype, long *firstpix, LONGLONG nelem, void *array, char *nullarray, int *anynul, int *status);
int ffgpxfll(fitsfile *fptr, int datatype, LONGLONG *firstpix, LONGLONG nelem, void *array, char *nullarray, int *anynul, int *status);
int ffgsv(fitsfile *fptr, int datatype, long *blc, long *trc, long *inc, void *nulval, void *array, int *anynul, int *status);
int ffgpv(fitsfile *fptr, int datatype, LONGLONG firstelem, LONGLONG nelem, void *nulval, void *array, int *anynul, int *status);
int ffgpf(fitsfile *fptr, int datatype, LONGLONG firstelem, LONGLONG nelem, void *array, char *nullarray, int *anynul, int *status);
int ffgpvb(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned char nulval, unsigned char *array, int *anynul, int *status);
int ffgpvsb(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, signed char nulval, signed char *array, int *anynul, int *status);
int ffgpvui(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned short nulval, unsigned short *array, int *anynul, int *status);
int ffgpvi(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, short nulval, short *array, int *anynul, int *status);
int ffgpvuj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned long nulval, unsigned long *array, int *anynul, int *status);
int ffgpvj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, long nulval, long *array, int *anynul, int *status);
int ffgpvujj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, ULONGLONG nulval, ULONGLONG *array, int *anynul, int *status);
int ffgpvjj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, LONGLONG nulval, LONGLONG *array, int *anynul, int *status);
int ffgpvuk(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned int nulval, unsigned int *array, int *anynul, int *status);
int ffgpvk(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, int nulval, int *array, int *anynul, int *status);
int ffgpve(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, float nulval, float *array, int *anynul, int *status);
int ffgpvd(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, double nulval, double *array, int *anynul, int *status);
int ffgpfb(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned char *array, char *nularray, int *anynul, int *status);
int ffgpfsb(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, signed char *array, char *nularray, int *anynul, int *status);
int ffgpfui(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned short *array, char *nularray, int *anynul, int *status);
int ffgpfi(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, short *array, char *nularray, int *anynul, int *status);
int ffgpfuj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned long *array, char *nularray, int *anynul, int *status);
int ffgpfj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, long *array, char *nularray, int *anynul, int *status);
int ffgpfujj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, ULONGLONG *array, char *nularray, int *anynul, int *status);
int ffgpfjj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, LONGLONG *array, char *nularray, int *anynul, int *status);
int ffgpfuk(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned int *array, char *nularray, int *anynul, int *status);
int ffgpfk(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, int *array, char *nularray, int *anynul, int *status);
int ffgpfe(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, float *array, char *nularray, int *anynul, int *status);
int ffgpfd(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, double *array, char *nularray, int *anynul, int *status);
int ffg2db(fitsfile *fptr, long group, unsigned char nulval, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, unsigned char *array, int *anynul, int *status);
int ffg2dsb(fitsfile *fptr, long group, signed char nulval, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, signed char *array, int *anynul, int *status);
int ffg2dui(fitsfile *fptr, long group, unsigned short nulval, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, unsigned short *array, int *anynul, int *status);
int ffg2di(fitsfile *fptr, long group, short nulval, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, short *array, int *anynul, int *status);
int ffg2duj(fitsfile *fptr, long group, unsigned long nulval, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, unsigned long *array, int *anynul, int *status);
int ffg2dj(fitsfile *fptr, long group, long nulval, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, long *array, int *anynul, int *status);
int ffg2dujj(fitsfile *fptr, long group, ULONGLONG nulval, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, ULONGLONG *array, int *anynul, int *status);
int ffg2djj(fitsfile *fptr, long group, LONGLONG nulval, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, LONGLONG *array, int *anynul, int *status);
int ffg2duk(fitsfile *fptr, long group, unsigned int nulval, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, unsigned int *array, int *anynul, int *status);
int ffg2dk(fitsfile *fptr, long group, int nulval, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, int *array, int *anynul, int *status);
int ffg2de(fitsfile *fptr, long group, float nulval, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, float *array, int *anynul, int *status);
int ffg2dd(fitsfile *fptr, long group, double nulval, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, double *array, int *anynul, int *status);
int ffg3db(fitsfile *fptr, long group, unsigned char nulval, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, unsigned char *array, int *anynul, int *status);
int ffg3dsb(fitsfile *fptr, long group, signed char nulval, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, signed char *array, int *anynul, int *status);
int ffg3dui(fitsfile *fptr, long group, unsigned short nulval, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, unsigned short *array, int *anynul, int *status);
int ffg3di(fitsfile *fptr, long group, short nulval, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, short *array, int *anynul, int *status);
int ffg3duj(fitsfile *fptr, long group, unsigned long nulval, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, unsigned long *array, int *anynul, int *status);
int ffg3dj(fitsfile *fptr, long group, long nulval, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, long *array, int *anynul, int *status);
int ffg3dujj(fitsfile *fptr, long group, ULONGLONG nulval, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, ULONGLONG *array, int *anynul, int *status);
int ffg3djj(fitsfile *fptr, long group, LONGLONG nulval, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, LONGLONG *array, int *anynul, int *status);
int ffg3duk(fitsfile *fptr, long group, unsigned int nulval, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, unsigned int *array, int *anynul, int *status);
int ffg3dk(fitsfile *fptr, long group, int nulval, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, int *array, int *anynul, int *status);
int ffg3de(fitsfile *fptr, long group, float nulval, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, float *array, int *anynul, int *status);
int ffg3dd(fitsfile *fptr, long group, double nulval, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, double *array, int *anynul, int *status);
int ffgsvb(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, unsigned char nulval, unsigned char *array, int *anynul, int *status);
int ffgsvsb(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, signed char nulval, signed char *array, int *anynul, int *status);
int ffgsvui(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, unsigned short nulval, unsigned short *array, int *anynul, int *status);
int ffgsvi(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, short nulval, short *array, int *anynul, int *status);
int ffgsvuj(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, unsigned long nulval, unsigned long *array, int *anynul, int *status);
int ffgsvj(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, long nulval, long *array, int *anynul, int *status);
int ffgsvujj(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, ULONGLONG nulval, ULONGLONG *array, int *anynul, int *status);
int ffgsvjj(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, LONGLONG nulval, LONGLONG *array, int *anynul, int *status);
int ffgsvuk(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, unsigned int nulval, unsigned int *array, int *anynul, int *status);
int ffgsvk(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, int nulval, int *array, int *anynul, int *status);
int ffgsve(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, float nulval, float *array, int *anynul, int *status);
int ffgsvd(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, double nulval, double *array, int *anynul, int *status);
int ffgsfb(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, unsigned char *array, char *flagval, int *anynul, int *status);
int ffgsfsb(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, signed char *array, char *flagval, int *anynul, int *status);
int ffgsfui(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, unsigned short *array, char *flagval, int *anynul, int *status);
int ffgsfi(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, short *array, char *flagval, int *anynul, int *status);
int ffgsfuj(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, unsigned long *array, char *flagval, int *anynul, int *status);
int ffgsfj(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, long *array, char *flagval, int *anynul, int *status);
int ffgsfujj(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, ULONGLONG *array, char *flagval, int *anynul, int *status);
int ffgsfjj(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, LONGLONG *array, char *flagval, int *anynul, int *status);
int ffgsfuk(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, unsigned int *array, char *flagval, int *anynul, int *status);
int ffgsfk(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, int *array, char *flagval, int *anynul, int *status);
int ffgsfe(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, float *array, char *flagval, int *anynul, int *status);
int ffgsfd(fitsfile *fptr, int colnum, int naxis, long *naxes, long *blc, long *trc, long *inc, double *array, char *flagval, int *anynul, int *status);
int ffggpb(fitsfile *fptr, long group, long firstelem, long nelem, unsigned char *array, int *status);
int ffggpsb(fitsfile *fptr, long group, long firstelem, long nelem, signed char *array, int *status);
int ffggpui(fitsfile *fptr, long group, long firstelem, long nelem, unsigned short *array, int *status);
int ffggpi(fitsfile *fptr, long group, long firstelem, long nelem, short *array, int *status);
int ffggpuj(fitsfile *fptr, long group, long firstelem, long nelem, unsigned long *array, int *status);
int ffggpj(fitsfile *fptr, long group, long firstelem, long nelem, long *array, int *status);
int ffggpujj(fitsfile *fptr, long group, long firstelem, long nelem, ULONGLONG *array, int *status);
int ffggpjj(fitsfile *fptr, long group, long firstelem, long nelem, LONGLONG *array, int *status);
int ffggpuk(fitsfile *fptr, long group, long firstelem, long nelem, unsigned int *array, int *status);
int ffggpk(fitsfile *fptr, long group, long firstelem, long nelem, int *array, int *status);
int ffggpe(fitsfile *fptr, long group, long firstelem, long nelem, float *array, int *status);
int ffggpd(fitsfile *fptr, long group, long firstelem, long nelem, double *array, int *status);
int ffgcv( fitsfile *fptr, int datatype, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, void *nulval, void *array, int *anynul, int *status);
int ffgcvn (fitsfile *fptr, int ncols, int *datatype, int *colnum, LONGLONG firstrow, LONGLONG nrows, void **nulval, void **array, int *anynul, int *status);
int ffgcf( fitsfile *fptr, int datatype, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, void *array, char *nullarray, int *anynul, int *status);
int ffgcvs(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, char *nulval, char **array, int *anynul, int *status);
int ffgcl (fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, char *array, int *status);
int ffgcvl (fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, char nulval, char *array, int *anynul, int *status);
int ffgcvb(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, unsigned char nulval, unsigned char *array, int *anynul, int *status);
int ffgcvsb(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, signed char nulval, signed char *array, int *anynul, int *status);
int ffgcvui(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, unsigned short nulval, unsigned short *array, int *anynul, int *status);
int ffgcvi(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, short nulval, short *array, int *anynul, int *status);
int ffgcvuj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, unsigned long nulval, unsigned long *array, int *anynul, int *status);
int ffgcvj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, long nulval, long *array, int *anynul, int *status);
int ffgcvujj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, ULONGLONG nulval, ULONGLONG *array, int *anynul, int *status);
int ffgcvjj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, LONGLONG nulval, LONGLONG *array, int *anynul, int *status);
int ffgcvuk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, unsigned int nulval, unsigned int *array, int *anynul, int *status);
int ffgcvk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, int nulval, int *array, int *anynul, int *status);
int ffgcve(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, float nulval, float *array, int *anynul, int *status);
int ffgcvd(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, double nulval, double *array, int *anynul, int *status);
int ffgcvc(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, float nulval, float *array, int *anynul, int *status);
int ffgcvm(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, double nulval, double *array, int *anynul, int *status);
int ffgcx(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstbit, LONGLONG nbits, char *larray, int *status);
int ffgcxui(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG nrows, long firstbit, int nbits, unsigned short *array, int *status);
int ffgcxuk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG nrows, long firstbit, int nbits, unsigned int *array, int *status);
int ffgcfs(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, char **array, char *nularray, int *anynul, int *status);
int ffgcfl(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, char *array, char *nularray, int *anynul, int *status);
int ffgcfb(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, unsigned char *array, char *nularray, int *anynul, int *status);
int ffgcfsb(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, signed char *array, char *nularray, int *anynul, int *status);
int ffgcfui(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, unsigned short *array, char *nularray, int *anynul, int *status);
int ffgcfi(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, short *array, char *nularray, int *anynul, int *status);
int ffgcfuj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, unsigned long *array, char *nularray, int *anynul, int *status);
int ffgcfj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, long *array, char *nularray, int *anynul, int *status);
int ffgcfujj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, ULONGLONG *array, char *nularray, int *anynul, int *status);
int ffgcfjj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, LONGLONG *array, char *nularray, int *anynul, int *status);
int ffgcfuk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, unsigned int *array, char *nularray, int *anynul, int *status);
int ffgcfk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, int *array, char *nularray, int *anynul, int *status);
int ffgcfe(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, float *array, char *nularray, int *anynul, int *status);
int ffgcfd(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, double *array, char *nularray, int *anynul, int *status);
int ffgcfc(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, float *array, char *nularray, int *anynul, int *status);
int ffgcfm(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, double *array, char *nularray, int *anynul, int *status);
int ffgdes(fitsfile *fptr, int colnum, LONGLONG rownum, long *length, long *heapaddr, int *status);
int ffgdesll(fitsfile *fptr, int colnum, LONGLONG rownum, LONGLONG *length, LONGLONG *heapaddr, int *status);
int ffgdess(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG nrows, long *length, long *heapaddr, int *status);
int ffgdessll(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG nrows, LONGLONG *length, LONGLONG *heapaddr, int *status);
int ffpdes(fitsfile *fptr, int colnum, LONGLONG rownum, LONGLONG length, LONGLONG heapaddr, int *status);
int fftheap(fitsfile *fptr, LONGLONG *heapsize, LONGLONG *unused, LONGLONG *overlap, int *valid, int *status);
int ffcmph(fitsfile *fptr, int *status);
int ffgtbb(fitsfile *fptr, LONGLONG firstrow, LONGLONG firstchar, LONGLONG nchars, unsigned char *values, int *status);
int ffgextn(fitsfile *fptr, LONGLONG offset, LONGLONG nelem, void *array, int *status);
int ffpextn(fitsfile *fptr, LONGLONG offset, LONGLONG nelem, void *array, int *status);
int ffppx(fitsfile *fptr, int datatype, long *firstpix, LONGLONG nelem, void *array, int *status);
int ffppxll(fitsfile *fptr, int datatype, LONGLONG *firstpix, LONGLONG nelem, void *array, int *status);
int ffppxn(fitsfile *fptr, int datatype, long *firstpix, LONGLONG nelem, void *array, void *nulval, int *status);
int ffppxnll(fitsfile *fptr, int datatype, LONGLONG *firstpix, LONGLONG nelem, void *array, void *nulval, int *status);
int ffppr(fitsfile *fptr, int datatype, LONGLONG firstelem, LONGLONG nelem, void *array, int *status);
int ffpprb(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned char *array, int *status);
int ffpprsb(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, signed char *array, int *status);
int ffpprui(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned short *array, int *status);
int ffppri(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, short *array, int *status);
int ffppruj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned long *array, int *status);
int ffpprj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, long *array, int *status);
int ffppruk(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned int *array, int *status);
int ffpprk(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, int *array, int *status);
int ffppre(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, float *array, int *status);
int ffpprd(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, double *array, int *status);
int ffpprjj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, LONGLONG *array, int *status);
int ffpprujj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, ULONGLONG *array, int *status);
int ffppru(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, int *status);
int ffpprn(fitsfile *fptr, LONGLONG firstelem, LONGLONG nelem, int *status);
int ffppn(fitsfile *fptr, int datatype, LONGLONG firstelem, LONGLONG nelem, void *array, void *nulval, int *status);
int ffppnb(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned char *array, unsigned char nulval, int *status);
int ffppnsb(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, signed char *array, signed char nulval, int *status);
int ffppnui(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned short *array, unsigned short nulval, int *status);
int ffppni(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, short *array, short nulval, int *status);
int ffppnj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, long *array, long nulval, int *status);
int ffppnuj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned long *array, unsigned long nulval, int *status);
int ffppnuk(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, unsigned int *array, unsigned int nulval, int *status);
int ffppnk(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, int *array, int nulval, int *status);
int ffppne(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, float *array, float nulval, int *status);
int ffppnd(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, double *array, double nulval, int *status);
int ffppnjj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, LONGLONG *array, LONGLONG nulval, int *status);
int ffppnujj(fitsfile *fptr, long group, LONGLONG firstelem, LONGLONG nelem, ULONGLONG *array, ULONGLONG nulval, int *status);
int ffp2db(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, unsigned char *array, int *status);
int ffp2dsb(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, signed char *array, int *status);
int ffp2dui(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, unsigned short *array, int *status);
int ffp2di(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, short *array, int *status);
int ffp2duj(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, unsigned long *array, int *status);
int ffp2dj(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, long *array, int *status);
int ffp2duk(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, unsigned int *array, int *status);
int ffp2dk(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, int *array, int *status);
int ffp2de(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, float *array, int *status);
int ffp2dd(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, double *array, int *status);
int ffp2djj(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, LONGLONG *array, int *status);
int ffp2dujj(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG naxis1, LONGLONG naxis2, ULONGLONG *array, int *status);
int ffp3db(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, unsigned char *array, int *status);
int ffp3dsb(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, signed char *array, int *status);
int ffp3dui(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, unsigned short *array, int *status);
int ffp3di(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, short *array, int *status);
int ffp3duj(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, unsigned long *array, int *status);
int ffp3dj(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, long *array, int *status);
int ffp3duk(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, unsigned int *array, int *status);
int ffp3dk(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, int *array, int *status);
int ffp3de(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, float *array, int *status);
int ffp3dd(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, double *array, int *status);
int ffp3djj(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, LONGLONG *array, int *status);
int ffp3dujj(fitsfile *fptr, long group, LONGLONG ncols, LONGLONG nrows, LONGLONG naxis1, LONGLONG naxis2, LONGLONG naxis3, ULONGLONG *array, int *status);
int ffpss(fitsfile *fptr, int datatype, long *fpixel, long *lpixel, void *array, int *status);
int ffpssb(fitsfile *fptr, long group, long naxis, long *naxes, long *fpixel, long *lpixel, unsigned char *array, int *status);
int ffpsssb(fitsfile *fptr, long group, long naxis, long *naxes, long *fpixel, long *lpixel, signed char *array, int *status);
int ffpssui(fitsfile *fptr, long group, long naxis, long *naxes, long *fpixel, long *lpixel, unsigned short *array, int *status);
int ffpssi(fitsfile *fptr, long group, long naxis, long *naxes, long *fpixel, long *lpixel, short *array, int *status);
int ffpssuj(fitsfile *fptr, long group, long naxis, long *naxes, long *fpixel, long *lpixel, unsigned long *array, int *status);
int ffpssj(fitsfile *fptr, long group, long naxis, long *naxes, long *fpixel, long *lpixel, long *array, int *status);
int ffpssuk(fitsfile *fptr, long group, long naxis, long *naxes, long *fpixel, long *lpixel, unsigned int *array, int *status);
int ffpssk(fitsfile *fptr, long group, long naxis, long *naxes, long *fpixel, long *lpixel, int *array, int *status);
int ffpsse(fitsfile *fptr, long group, long naxis, long *naxes, long *fpixel, long *lpixel, float *array, int *status);
int ffpssd(fitsfile *fptr, long group, long naxis, long *naxes, long *fpixel, long *lpixel, double *array, int *status);
int ffpssjj(fitsfile *fptr, long group, long naxis, long *naxes, long *fpixel, long *lpixel, LONGLONG *array, int *status);
int ffpssujj(fitsfile *fptr, long group, long naxis, long *naxes, long *fpixel, long *lpixel, ULONGLONG *array, int *status);
int ffpgpb(fitsfile *fptr, long group, long firstelem, long nelem, unsigned char *array, int *status);
int ffpgpsb(fitsfile *fptr, long group, long firstelem, long nelem, signed char *array, int *status);
int ffpgpui(fitsfile *fptr, long group, long firstelem, long nelem, unsigned short *array, int *status);
int ffpgpi(fitsfile *fptr, long group, long firstelem, long nelem, short *array, int *status);
int ffpgpuj(fitsfile *fptr, long group, long firstelem, long nelem, unsigned long *array, int *status);
int ffpgpj(fitsfile *fptr, long group, long firstelem, long nelem, long *array, int *status);
int ffpgpuk(fitsfile *fptr, long group, long firstelem, long nelem, unsigned int *array, int *status);
int ffpgpk(fitsfile *fptr, long group, long firstelem, long nelem, int *array, int *status);
int ffpgpe(fitsfile *fptr, long group, long firstelem, long nelem, float *array, int *status);
int ffpgpd(fitsfile *fptr, long group, long firstelem, long nelem, double *array, int *status);
int ffpgpjj(fitsfile *fptr, long group, long firstelem, long nelem, LONGLONG *array, int *status);
int ffpgpujj(fitsfile *fptr, long group, long firstelem, long nelem, ULONGLONG *array, int *status);
int fits_iter_set_by_name(iteratorCol *col, fitsfile *fptr, char *colname, int datatype, int iotype);
int fits_iter_set_by_num(iteratorCol *col, fitsfile *fptr, int colnum, int datatype, int iotype);
int fits_iter_set_file(iteratorCol *col, fitsfile *fptr);
int fits_iter_set_colname(iteratorCol *col, char *colname);
int fits_iter_set_colnum(iteratorCol *col, int colnum);
int fits_iter_set_datatype(iteratorCol *col, int datatype);
int fits_iter_set_iotype(iteratorCol *col, int iotype);
fitsfile * fits_iter_get_file(iteratorCol *col);
char * fits_iter_get_colname(iteratorCol *col);
int fits_iter_get_colnum(iteratorCol *col);
int fits_iter_get_datatype(iteratorCol *col);
int fits_iter_get_iotype(iteratorCol *col);
void *fits_iter_get_array(iteratorCol *col);
long fits_iter_get_tlmin(iteratorCol *col);
long fits_iter_get_tlmax(iteratorCol *col);
long fits_iter_get_repeat(iteratorCol *col);
char *fits_iter_get_tunit(iteratorCol *col);
char *fits_iter_get_tdisp(iteratorCol *col);
int ffiter(int ncols, iteratorCol *data, long offset, long nPerLoop, int (*workFn)( long totaln, long offset, long firstn, long nvalues, int narrays, iteratorCol *data, void *userPointer), void *userPointer, int *status);
int ffpcl(fitsfile *fptr, int datatype, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, void *array, int *status);
int ffpcln(fitsfile *fptr, int ncols, int *datatype, int *colnum, LONGLONG firstrow, LONGLONG nrows, void **array, void **nulval, int *status);
int ffpcls(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, char **array, int *status);
int ffpcll(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, char *array, int *status);
int ffpclb(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, unsigned char *array, int *status);
int ffpclsb(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, signed char *array, int *status);
int ffpclui(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, unsigned short *array, int *status);
int ffpcli(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, short *array, int *status);
int ffpcluj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, unsigned long *array, int *status);
int ffpclj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, long *array, int *status);
int ffpcluk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, unsigned int *array, int *status);
int ffpclk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, int *array, int *status);
int ffpcle(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, float *array, int *status);
int ffpcld(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, double *array, int *status);
int ffpclc(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, float *array, int *status);
int ffpclm(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, double *array, int *status);
int ffpclu(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, int *status);
int ffprwu(fitsfile *fptr, LONGLONG firstrow, LONGLONG nrows, int *status);
int ffpcljj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, LONGLONG *array, int *status);
int ffpclujj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, ULONGLONG *array, int *status);
int ffpclx(fitsfile *fptr, int colnum, LONGLONG frow, long fbit, long nbit, char *larray, int *status);
int ffpcn(fitsfile *fptr, int datatype, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, void *array, void *nulval, int *status);
int ffpcns( fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, char **array, char *nulvalue, int *status);
int ffpcnl( fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, char *array, char nulvalue, int *status);
int ffpcnb(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, unsigned char *array, unsigned char nulvalue, int *status);
int ffpcnsb(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, signed char *array, signed char nulvalue, int *status);
int ffpcnui(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, unsigned short *array, unsigned short nulvalue, int *status);
int ffpcni(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, short *array, short nulvalue, int *status);
int ffpcnuj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, unsigned long *array, unsigned long nulvalue, int *status);
int ffpcnj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, long *array, long nulvalue, int *status);
int ffpcnuk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, unsigned int *array, unsigned int nulvalue, int *status);
int ffpcnk(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, int *array, int nulvalue, int *status);
int ffpcne(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, float *array, float nulvalue, int *status);
int ffpcnd(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, double *array, double nulvalue, int *status);
int ffpcnjj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, LONGLONG *array, LONGLONG nulvalue, int *status);
int ffpcnujj(fitsfile *fptr, int colnum, LONGLONG firstrow, LONGLONG firstelem, LONGLONG nelem, ULONGLONG *array, ULONGLONG nulvalue, int *status);
int ffptbb(fitsfile *fptr, LONGLONG firstrow, LONGLONG firstchar, LONGLONG nchars, unsigned char *values, int *status);
int ffirow(fitsfile *fptr, LONGLONG firstrow, LONGLONG nrows, int *status);
int ffdrow(fitsfile *fptr, LONGLONG firstrow, LONGLONG nrows, int *status);
int ffdrrg(fitsfile *fptr, char *ranges, int *status);
int ffdrws(fitsfile *fptr, long *rownum, long nrows, int *status);
int ffdrwsll(fitsfile *fptr, LONGLONG *rownum, LONGLONG nrows, int *status);
int fficol(fitsfile *fptr, int numcol, char *ttype, char *tform, int *status);
int fficls(fitsfile *fptr, int firstcol, int ncols, char **ttype, char **tform, int *status);
int ffmvec(fitsfile *fptr, int colnum, LONGLONG newveclen, int *status);
int ffdcol(fitsfile *fptr, int numcol, int *status);
int ffcpcl(fitsfile *infptr, fitsfile *outfptr, int incol, int outcol, int create_col, int *status);
int ffccls(fitsfile *infptr, fitsfile *outfptr, int incol, int outcol, int ncols, int create_col, int *status);
int ffcprw(fitsfile *infptr, fitsfile *outfptr, LONGLONG firstrow, LONGLONG nrows, int *status);
int ffcpsr(fitsfile *infptr, fitsfile *outfptr, LONGLONG firstrow, LONGLONG nrows, char *row_status, int *status);
int ffcpht(fitsfile *infptr, fitsfile *outfptr, LONGLONG firstrow, LONGLONG nrows, int *status);
int ffgics(fitsfile *fptr, double *xrval, double *yrval, double *xrpix, double *yrpix, double *xinc, double *yinc, double *rot, char *type, int *status);
int ffgicsa(fitsfile *fptr, char version, double *xrval, double *yrval, double *xrpix, double *yrpix, double *xinc, double *yinc, double *rot, char *type, int *status);
int ffgtcs(fitsfile *fptr, int xcol, int ycol, double *xrval, double *yrval, double *xrpix, double *yrpix, double *xinc, double *yinc, double *rot, char *type, int *status);
int ffwldp(double xpix, double ypix, double xref, double yref, double xrefpix, double yrefpix, double xinc, double yinc, double rot, char *type, double *xpos, double *ypos, int *status);
int ffxypx(double xpos, double ypos, double xref, double yref, double xrefpix, double yrefpix, double xinc, double yinc, double rot, char *type, double *xpix, double *ypix, int *status);
int ffgiwcs(fitsfile *fptr, char **header, int *status);
int ffgtwcs(fitsfile *fptr, int xcol, int ycol, char **header, int *status);
int fftexp( fitsfile *fptr, char *expr, int maxdim, int *datatype, long *nelem, int *naxis, long *naxes, int *status );
int fffrow( fitsfile *infptr, char *expr, long firstrow, long nrows, long *n_good_rows, char *row_status, int *status);
int ffffrw( fitsfile *fptr, char *expr, long *rownum, int *status);
int fffrwc( fitsfile *fptr, char *expr, char *timeCol, char *parCol, char *valCol, long ntimes, double *times, char *time_status, int *status );
int ffsrow( fitsfile *infptr, fitsfile *outfptr, char *expr, int *status);
int ffcrow( fitsfile *fptr, int datatype, char *expr, long firstrow, long nelements, void *nulval, void *array, int *anynul, int *status );
int ffcalc_rng( fitsfile *infptr, char *expr, fitsfile *outfptr, char *parName, char *parInfo, int nRngs, long *start, long *end, int *status );
int ffcalc( fitsfile *infptr, char *expr, fitsfile *outfptr, char *parName, char *parInfo, int *status );
int ffhist(fitsfile **fptr, char *outfile, int imagetype, int naxis, char colname[4][71], double *minin, double *maxin, double *binsizein, char minname[4][71], char maxname[4][71], char binname[4][71], double weightin, char wtcol[71], int recip, char *rowselect, int *status);
int ffhist2(fitsfile **fptr, char *outfile, int imagetype, int naxis, char colname[4][71], double *minin, double *maxin, double *binsizein, char minname[4][71], char maxname[4][71], char binname[4][71], double weightin, char wtcol[71], int recip, char *rowselect, int *status);
fitsfile *ffhist3(fitsfile *fptr, char *outfile, int imagetype, int naxis, char colname[4][71], double *minin, double *maxin, double *binsizein, char minname[4][71], char maxname[4][71], char binname[4][71], double weightin, char wtcol[71], int recip, char *selectrow, int *status);
int fits_select_image_section(fitsfile **fptr, char *outfile, char *imagesection, int *status);
int fits_copy_image_section(fitsfile *infptr, fitsfile *outfile, char *imagesection, int *status);
int fits_calc_binning(fitsfile *fptr, int naxis, char colname[4][71], double *minin, double *maxin, double *binsizein, char minname[4][71], char maxname[4][71], char binname[4][71], int *colnum, long *haxes, float *amin, float *amax, float *binsize, int *status);
int fits_calc_binningd(fitsfile *fptr, int naxis, char colname[4][71], double *minin, double *maxin, double *binsizein, char minname[4][71], char maxname[4][71], char binname[4][71], int *colnum, long *haxes, double *amin, double *amax, double *binsize, int *status);
int fits_write_keys_histo(fitsfile *fptr, fitsfile *histptr, int naxis, int *colnum, int *status);
int fits_rebin_wcs( fitsfile *fptr, int naxis, float *amin, float *binsize, int *status);
int fits_rebin_wcsd( fitsfile *fptr, int naxis, double *amin, double *binsize, int *status);
int fits_make_hist(fitsfile *fptr, fitsfile *histptr, int bitpix,int naxis, long *naxes, int *colnum, float *amin, float *amax, float *binsize, float weight, int wtcolnum, int recip, char *selectrow, int *status);
int fits_make_histd(fitsfile *fptr, fitsfile *histptr, int bitpix,int naxis, long *naxes, int *colnum, double *amin, double *amax, double *binsize, double weight, int wtcolnum, int recip, char *selectrow, int *status);
typedef struct {
	int count;
	char ** path;
	char ** tag;
	fitsfile ** ifptr;
	char * expression;
	int bitpix;
	long blank;
	fitsfile * ofptr;
	char keyword[75];
	char comment[73];
} PixelFilter;
int fits_pixel_filter (PixelFilter * filter, int * status);
int ffgtcr(fitsfile *fptr, char *grpname, int grouptype, int *status);
int ffgtis(fitsfile *fptr, char *grpname, int grouptype, int *status);
int ffgtch(fitsfile *gfptr, int grouptype, int *status);
int ffgtrm(fitsfile *gfptr, int rmopt, int *status);
int ffgtcp(fitsfile *infptr, fitsfile *outfptr, int cpopt, int *status);
int ffgtmg(fitsfile *infptr, fitsfile *outfptr, int mgopt, int *status);
int ffgtcm(fitsfile *gfptr, int cmopt, int *status);
int ffgtvf(fitsfile *gfptr, long *firstfailed, int *status);
int ffgtop(fitsfile *mfptr,int group,fitsfile **gfptr,int *status);
int ffgtam(fitsfile *gfptr, fitsfile *mfptr, int hdupos, int *status);
int ffgtnm(fitsfile *gfptr, long *nmembers, int *status);
int ffgmng(fitsfile *mfptr, long *nmembers, int *status);
int ffgmop(fitsfile *gfptr, long member, fitsfile **mfptr, int *status);
int ffgmcp(fitsfile *gfptr, fitsfile *mfptr, long member, int cpopt, int *status);
int ffgmtf(fitsfile *infptr, fitsfile *outfptr, long member, int tfopt, int *status);
int ffgmrm(fitsfile *fptr, long member, int rmopt, int *status);
int fits_execute_template(fitsfile *ff, char *ngp_template, int *status);
int fits_img_stats_short(short *array,long nx, long ny, int nullcheck, short nullvalue,long *ngoodpix, short *minvalue, short *maxvalue, double *mean, double *sigma, double *noise1, double *noise2, double *noise3, double *noise5, int *status);
int fits_img_stats_int(int *array,long nx, long ny, int nullcheck, int nullvalue,long *ngoodpix, int *minvalue, int *maxvalue, double *mean, double *sigma, double *noise1, double *noise2, double *noise3, double *noise5, int *status);
int fits_img_stats_float(float *array, long nx, long ny, int nullcheck, float nullvalue,long *ngoodpix, float *minvalue, float *maxvalue, double *mean, double *sigma, double *noise1, double *noise2, double *noise3, double *noise5, int *status);
int fits_set_compression_type(fitsfile *fptr, int ctype, int *status);
int fits_set_tile_dim(fitsfile *fptr, int ndim, long *dims, int *status);
int fits_set_noise_bits(fitsfile *fptr, int noisebits, int *status);
int fits_set_quantize_level(fitsfile *fptr, float qlevel, int *status);
int fits_set_hcomp_scale(fitsfile *fptr, float scale, int *status);
int fits_set_hcomp_smooth(fitsfile *fptr, int smooth, int *status);
int fits_set_quantize_method(fitsfile *fptr, int method, int *status);
int fits_set_quantize_dither(fitsfile *fptr, int dither, int *status);
int fits_set_dither_seed(fitsfile *fptr, int seed, int *status);
int fits_set_dither_offset(fitsfile *fptr, int offset, int *status);
int fits_set_lossy_int(fitsfile *fptr, int lossy_int, int *status);
int fits_set_huge_hdu(fitsfile *fptr, int huge, int *status);
int fits_set_compression_pref(fitsfile *infptr, fitsfile *outfptr, int *status);
int fits_get_compression_type(fitsfile *fptr, int *ctype, int *status);
int fits_get_tile_dim(fitsfile *fptr, int ndim, long *dims, int *status);
int fits_get_quantize_level(fitsfile *fptr, float *qlevel, int *status);
int fits_get_noise_bits(fitsfile *fptr, int *noisebits, int *status);
int fits_get_hcomp_scale(fitsfile *fptr, float *scale, int *status);
int fits_get_hcomp_smooth(fitsfile *fptr, int *smooth, int *status);
int fits_get_dither_seed(fitsfile *fptr, int *seed, int *status);
int fits_img_compress(fitsfile *infptr, fitsfile *outfptr, int *status);
int fits_comp_img(fitsfile *infptr, fitsfile *outfptr, int compress_type, long *tilesize, int parm1, int parm2, int *status);
int fits_is_compressed_image(fitsfile *fptr, int *status);
int fits_is_reentrant(void);
int fits_decomp_img (fitsfile *infptr, fitsfile *outfptr, int *status);
int fits_img_decompress_header(fitsfile *infptr, fitsfile *outfptr, int *status);
int fits_img_decompress (fitsfile *infptr, fitsfile *outfptr, int *status);
int fits_hcompress(int *a, int nx, int ny, int scale, char *output, long *nbytes, int *status);
int fits_hcompress64(LONGLONG *a, int nx, int ny, int scale, char *output, long *nbytes, int *status);
int fits_hdecompress(unsigned char *input, int smooth, int *a, int *nx, int *ny, int *scale, int *status);
int fits_hdecompress64(unsigned char *input, int smooth, LONGLONG *a, int *nx, int *ny, int *scale, int *status);
int fits_compress_table (fitsfile *infptr, fitsfile *outfptr, int *status);
int fits_uncompress_table(fitsfile *infptr, fitsfile *outfptr, int *status);
int ffihtps(void);
int ffchtps(void);
void ffvhtps(int flag);
void ffshdwn(int flag);
int ffgtmo(void);
int ffstmo(int sec, int *status);
/* + END   /usr/include/fitsio.h */
]]

-- since macro functions are the weak point of my binding code generator,
-- here's the fitsio longnam.h file contents manually:
local lib = require 'ffi.load' 'cfitsio'
local wrapper = setmetatable({
	fits_parse_input_url = lib.ffiurl,
	fits_parse_input_filename = lib.ffifile,
	fits_parse_rootname = lib.ffrtnm,
	fits_file_exists = lib.ffexist,
	fits_parse_extspec = lib.ffexts,
	fits_parse_extnum = lib.ffextn,
	fits_parse_binspec = lib.ffbins,
	fits_parse_binrange = lib.ffbinr,
	fits_parse_range = lib.ffrwrg,
	fits_parse_rangell = lib.ffrwrgll,
	fits_open_memfile = lib.ffomem,
	fits_open_data = lib.ffdopn,
	fits_open_extlist = lib.ffeopn,
	fits_open_table = lib.fftopn,
	fits_open_image = lib.ffiopn,
	fits_open_diskfile = lib.ffdkopn,
	fits_reopen_file = lib.ffreopen,
	fits_create_file = lib.ffinit,
	fits_create_diskfile = lib.ffdkinit,
	fits_create_memfile = lib.ffimem,
	fits_create_template = lib.fftplt,
	fits_flush_file = lib.ffflus,
	fits_flush_buffer = lib.ffflsh,
	fits_close_file = lib.ffclos,
	fits_delete_file = lib.ffdelt,
	fits_file_name = lib.ffflnm,
	fits_file_mode = lib.ffflmd,
	fits_url_type = lib.ffurlt,
	fits_get_version = lib.ffvers,
	fits_uppercase = lib.ffupch,
	fits_get_errstatus = lib.ffgerr,
	fits_write_errmsg = lib.ffpmsg,
	fits_write_errmark = lib.ffpmrk,
	fits_read_errmsg = lib.ffgmsg,
	fits_clear_errmsg = lib.ffcmsg,
	fits_clear_errmark = lib.ffcmrk,
	fits_report_error = lib.ffrprt,
	fits_compare_str = lib.ffcmps,
	fits_test_keyword = lib.fftkey,
	fits_test_record = lib.fftrec,
	fits_null_check = lib.ffnchk,
	fits_make_keyn = lib.ffkeyn,
	fits_make_nkey = lib.ffnkey,
	fits_make_key = lib.ffmkky,
	fits_get_keyclass = lib.ffgkcl,
	fits_get_keytype = lib.ffdtyp,
	fits_get_inttype = lib.ffinttyp,
	fits_parse_value = lib.ffpsvc,
	fits_get_keyname = lib.ffgknm,
	fits_parse_template = lib.ffgthd,
	fits_ascii_tform = lib.ffasfm,
	fits_binary_tform = lib.ffbnfm,
	fits_binary_tformll = lib.ffbnfmll,
	fits_get_tbcol = lib.ffgabc,
	fits_get_rowsize = lib.ffgrsz,
	fits_get_col_display_width = lib.ffgcdw,
	fits_write_record = lib.ffprec,
	fits_write_key = lib.ffpky,
	fits_write_key_unit = lib.ffpunt,
	fits_write_comment = lib.ffpcom,
	fits_write_history = lib.ffphis,
	fits_write_date = lib.ffpdat,
	fits_get_system_time = lib.ffgstm,
	fits_get_system_date = lib.ffgsdt,
	fits_date2str = lib.ffdt2s,
	fits_time2str = lib.fftm2s,
	fits_str2date = lib.ffs2dt,
	fits_str2time = lib.ffs2tm,
	fits_write_key_longstr = lib.ffpkls,
	fits_write_key_longwarn = lib.ffplsw,
	fits_write_key_null = lib.ffpkyu,
	fits_write_key_str = lib.ffpkys,
	fits_write_key_log = lib.ffpkyl,
	fits_write_key_lng = lib.ffpkyj,
	fits_write_key_ulng = lib.ffpkyuj,
	fits_write_key_fixflt = lib.ffpkyf,
	fits_write_key_flt = lib.ffpkye,
	fits_write_key_fixdbl = lib.ffpkyg,
	fits_write_key_dbl = lib.ffpkyd,
	fits_write_key_fixcmp = lib.ffpkfc,
	fits_write_key_cmp = lib.ffpkyc,
	fits_write_key_fixdblcmp = lib.ffpkfm,
	fits_write_key_dblcmp = lib.ffpkym,
	fits_write_key_triple = lib.ffpkyt,
	fits_write_tdim = lib.ffptdm,
	fits_write_tdimll = lib.ffptdmll,
	fits_write_keys_str = lib.ffpkns,
	fits_write_keys_log = lib.ffpknl,
	fits_write_keys_lng = lib.ffpknj,
	fits_write_keys_fixflt = lib.ffpknf,
	fits_write_keys_flt = lib.ffpkne,
	fits_write_keys_fixdbl = lib.ffpkng,
	fits_write_keys_dbl = lib.ffpknd,
	fits_copy_key = lib.ffcpky,
	fits_write_imghdr = lib.ffphps,
	fits_write_imghdrll = lib.ffphpsll,
	fits_write_grphdr = lib.ffphpr,
	fits_write_grphdrll = lib.ffphprll,
	fits_write_atblhdr = lib.ffphtb,
	fits_write_btblhdr = lib.ffphbn,
	fits_write_exthdr = lib.ffphext,
	fits_write_key_template = lib.ffpktp,
	fits_get_hdrspace = lib.ffghsp,
	fits_get_hdrpos = lib.ffghps,
	fits_movabs_key = lib.ffmaky,
	fits_movrel_key = lib.ffmrky,
	fits_find_nextkey = lib.ffgnxk,
	fits_read_record = lib.ffgrec,
	fits_read_card = lib.ffgcrd,
	fits_read_str = lib.ffgstr,
	fits_read_key_unit = lib.ffgunt,
	fits_read_keyn = lib.ffgkyn,
	fits_read_key = lib.ffgky,
	fits_read_keyword = lib.ffgkey,
	fits_read_key_str = lib.ffgkys,
	fits_read_key_log = lib.ffgkyl,
	fits_read_key_lng = lib.ffgkyj,
	fits_read_key_lnglng = lib.ffgkyjj,
	fits_read_key_ulnglng = lib.ffgkyujj,
	fits_read_key_flt = lib.ffgkye,
	fits_read_key_dbl = lib.ffgkyd,
	fits_read_key_cmp = lib.ffgkyc,
	fits_read_key_dblcmp = lib.ffgkym,
	fits_read_key_triple = lib.ffgkyt,
	fits_get_key_strlen = lib.ffgksl,
	fits_read_key_longstr = lib.ffgkls,
	fits_read_string_key = lib.ffgsky,
	fits_free_memory = lib.fffree,
	fits_read_tdim = lib.ffgtdm,
	fits_read_tdimll = lib.ffgtdmll,
	fits_decode_tdim = lib.ffdtdm,
	fits_decode_tdimll = lib.ffdtdmll,
	fits_read_keys_str = lib.ffgkns,
	fits_read_keys_log = lib.ffgknl,
	fits_read_keys_lng = lib.ffgknj,
	fits_read_keys_lnglng = lib.ffgknjj,
	fits_read_keys_flt = lib.ffgkne,
	fits_read_keys_dbl = lib.ffgknd,
	fits_read_imghdr = lib.ffghpr,
	fits_read_imghdrll = lib.ffghprll,
	fits_read_atblhdr = lib.ffghtb,
	fits_read_btblhdr = lib.ffghbn,
	fits_read_atblhdrll = lib.ffghtbll,
	fits_read_btblhdrll = lib.ffghbnll,
	fits_hdr2str = lib.ffhdr2str,
	fits_convert_hdr2str = lib.ffcnvthdr2str,
	fits_update_card = lib.ffucrd,
	fits_update_key = lib.ffuky,
	fits_update_key_null = lib.ffukyu,
	fits_update_key_str = lib.ffukys,
	fits_update_key_longstr = lib.ffukls,
	fits_update_key_log = lib.ffukyl,
	fits_update_key_lng = lib.ffukyj,
	fits_update_key_fixflt = lib.ffukyf,
	fits_update_key_flt = lib.ffukye,
	fits_update_key_fixdbl = lib.ffukyg,
	fits_update_key_dbl = lib.ffukyd,
	fits_update_key_fixcmp = lib.ffukfc,
	fits_update_key_cmp = lib.ffukyc,
	fits_update_key_fixdblcmp = lib.ffukfm,
	fits_update_key_dblcmp = lib.ffukym,
	fits_modify_record = lib.ffmrec,
	fits_modify_card = lib.ffmcrd,
	fits_modify_name = lib.ffmnam,
	fits_modify_comment = lib.ffmcom,
	fits_modify_key_null = lib.ffmkyu,
	fits_modify_key_str = lib.ffmkys,
	fits_modify_key_longstr = lib.ffmkls,
	fits_modify_key_log = lib.ffmkyl,
	fits_modify_key_lng = lib.ffmkyj,
	fits_modify_key_fixflt = lib.ffmkyf,
	fits_modify_key_flt = lib.ffmkye,
	fits_modify_key_fixdbl = lib.ffmkyg,
	fits_modify_key_dbl = lib.ffmkyd,
	fits_modify_key_fixcmp = lib.ffmkfc,
	fits_modify_key_cmp = lib.ffmkyc,
	fits_modify_key_fixdblcmp = lib.ffmkfm,
	fits_modify_key_dblcmp = lib.ffmkym,
	fits_insert_record = lib.ffirec,
	fits_insert_card = lib.ffikey,
	fits_insert_key_null = lib.ffikyu,
	fits_insert_key_str = lib.ffikys,
	fits_insert_key_longstr = lib.ffikls,
	fits_insert_key_log = lib.ffikyl,
	fits_insert_key_lng = lib.ffikyj,
	fits_insert_key_fixflt = lib.ffikyf,
	fits_insert_key_flt = lib.ffikye,
	fits_insert_key_fixdbl = lib.ffikyg,
	fits_insert_key_dbl = lib.ffikyd,
	fits_insert_key_fixcmp = lib.ffikfc,
	fits_insert_key_cmp = lib.ffikyc,
	fits_insert_key_fixdblcmp = lib.ffikfm,
	fits_insert_key_dblcmp = lib.ffikym,
	fits_delete_key = lib.ffdkey,
	fits_delete_str = lib.ffdstr,
	fits_delete_record = lib.ffdrec,
	fits_get_hdu_num = lib.ffghdn,
	fits_get_hdu_type = lib.ffghdt,
	fits_get_hduaddr = lib.ffghad,
	fits_get_hduaddrll = lib.ffghadll,
	fits_get_hduoff = lib.ffghof,
	fits_get_img_param = lib.ffgipr,
	fits_get_img_paramll = lib.ffgiprll,
	fits_get_img_type = lib.ffgidt,
	fits_get_img_equivtype = lib.ffgiet,
	fits_get_img_dim = lib.ffgidm,
	fits_get_img_size = lib.ffgisz,
	fits_get_img_sizell = lib.ffgiszll,
	fits_movabs_hdu = lib.ffmahd,
	fits_movrel_hdu = lib.ffmrhd,
	fits_movnam_hdu = lib.ffmnhd,
	fits_get_num_hdus = lib.ffthdu,
	fits_create_img = lib.ffcrim,
	fits_create_imgll = lib.ffcrimll,
	fits_create_tbl = lib.ffcrtb,
	fits_create_hdu = lib.ffcrhd,
	fits_insert_img = lib.ffiimg,
	fits_insert_imgll = lib.ffiimgll,
	fits_insert_atbl = lib.ffitab,
	fits_insert_btbl = lib.ffibin,
	fits_resize_img = lib.ffrsim,
	fits_resize_imgll = lib.ffrsimll,
	fits_delete_hdu = lib.ffdhdu,
	fits_copy_hdu = lib.ffcopy,
	fits_copy_file = lib.ffcpfl,
	fits_copy_header = lib.ffcphd,
	fits_copy_hdutab = lib.ffcpht,
	fits_copy_data = lib.ffcpdt,
	fits_write_hdu = lib.ffwrhdu,
	fits_set_hdustruc = lib.ffrdef,
	fits_set_hdrsize = lib.ffhdef,
	fits_write_theap = lib.ffpthp,
	fits_encode_chksum = lib.ffesum,
	fits_decode_chksum = lib.ffdsum,
	fits_write_chksum = lib.ffpcks,
	fits_update_chksum = lib.ffupck,
	fits_verify_chksum = lib.ffvcks,
	fits_get_chksum = lib.ffgcks,
	fits_set_bscale = lib.ffpscl,
	fits_set_tscale = lib.fftscl,
	fits_set_imgnull = lib.ffpnul,
	fits_set_btblnull = lib.fftnul,
	fits_set_atblnull = lib.ffsnul,
	fits_get_colnum = lib.ffgcno,
	fits_get_colname = lib.ffgcnn,
	fits_get_coltype = lib.ffgtcl,
	fits_get_coltypell = lib.ffgtclll,
	fits_get_eqcoltype = lib.ffeqty,
	fits_get_eqcoltypell = lib.ffeqtyll,
	fits_get_num_rows = lib.ffgnrw,
	fits_get_num_rowsll = lib.ffgnrwll,
	fits_get_num_cols = lib.ffgncl,
	fits_get_acolparms = lib.ffgacl,
	fits_get_bcolparms = lib.ffgbcl,
	fits_get_bcolparmsll = lib.ffgbclll,
	fits_iterate_data = lib.ffiter,
	fits_read_grppar_byt = lib.ffggpb,
	fits_read_grppar_sbyt = lib.ffggpsb,
	fits_read_grppar_usht = lib.ffggpui,
	fits_read_grppar_ulng = lib.ffggpuj,
	fits_read_grppar_ulnglng = lib.ffggpujj,
	fits_read_grppar_sht = lib.ffggpi,
	fits_read_grppar_lng = lib.ffggpj,
	fits_read_grppar_lnglng = lib.ffggpjj,
	fits_read_grppar_int = lib.ffggpk,
	fits_read_grppar_uint = lib.ffggpuk,
	fits_read_grppar_flt = lib.ffggpe,
	fits_read_grppar_dbl = lib.ffggpd,
	fits_read_pix = lib.ffgpxv,
	fits_read_pixll = lib.ffgpxvll,
	fits_read_pixnull = lib.ffgpxf,
	fits_read_pixnullll = lib.ffgpxfll,
	fits_read_img = lib.ffgpv,
	fits_read_imgnull = lib.ffgpf,
	fits_read_img_byt = lib.ffgpvb,
	fits_read_img_sbyt = lib.ffgpvsb,
	fits_read_img_usht = lib.ffgpvui,
	fits_read_img_ulng = lib.ffgpvuj,
	fits_read_img_sht = lib.ffgpvi,
	fits_read_img_lng = lib.ffgpvj,
	fits_read_img_ulnglng = lib.ffgpvujj,
	fits_read_img_lnglng = lib.ffgpvjj,
	fits_read_img_uint = lib.ffgpvuk,
	fits_read_img_int = lib.ffgpvk,
	fits_read_img_flt = lib.ffgpve,
	fits_read_img_dbl = lib.ffgpvd,
	fits_read_imgnull_byt = lib.ffgpfb,
	fits_read_imgnull_sbyt = lib.ffgpfsb,
	fits_read_imgnull_usht = lib.ffgpfui,
	fits_read_imgnull_ulng = lib.ffgpfuj,
	fits_read_imgnull_sht = lib.ffgpfi,
	fits_read_imgnull_lng = lib.ffgpfj,
	fits_read_imgnull_ulnglng = lib.ffgpfujj,
	fits_read_imgnull_lnglng = lib.ffgpfjj,
	fits_read_imgnull_uint = lib.ffgpfuk,
	fits_read_imgnull_int = lib.ffgpfk,
	fits_read_imgnull_flt = lib.ffgpfe,
	fits_read_imgnull_dbl = lib.ffgpfd,
	fits_read_2d_byt = lib.ffg2db,
	fits_read_2d_sbyt = lib.ffg2dsb,
	fits_read_2d_usht = lib.ffg2dui,
	fits_read_2d_ulng = lib.ffg2duj,
	fits_read_2d_sht = lib.ffg2di,
	fits_read_2d_lng = lib.ffg2dj,
	fits_read_2d_ulnglng = lib.ffg2dujj,
	fits_read_2d_lnglng = lib.ffg2djj,
	fits_read_2d_uint = lib.ffg2duk,
	fits_read_2d_int = lib.ffg2dk,
	fits_read_2d_flt = lib.ffg2de,
	fits_read_2d_dbl = lib.ffg2dd,
	fits_read_3d_byt = lib.ffg3db,
	fits_read_3d_sbyt = lib.ffg3dsb,
	fits_read_3d_usht = lib.ffg3dui,
	fits_read_3d_ulng = lib.ffg3duj,
	fits_read_3d_sht = lib.ffg3di,
	fits_read_3d_lng = lib.ffg3dj,
	fits_read_3d_ulnglng = lib.ffg3dujj,
	fits_read_3d_lnglng = lib.ffg3djj,
	fits_read_3d_uint = lib.ffg3duk,
	fits_read_3d_int = lib.ffg3dk,
	fits_read_3d_flt = lib.ffg3de,
	fits_read_3d_dbl = lib.ffg3dd,
	fits_read_subset = lib.ffgsv,
	fits_read_subset_byt = lib.ffgsvb,
	fits_read_subset_sbyt = lib.ffgsvsb,
	fits_read_subset_usht = lib.ffgsvui,
	fits_read_subset_ulng = lib.ffgsvuj,
	fits_read_subset_sht = lib.ffgsvi,
	fits_read_subset_lng = lib.ffgsvj,
	fits_read_subset_ulnglng = lib.ffgsvujj,
	fits_read_subset_lnglng = lib.ffgsvjj,
	fits_read_subset_uint = lib.ffgsvuk,
	fits_read_subset_int = lib.ffgsvk,
	fits_read_subset_flt = lib.ffgsve,
	fits_read_subset_dbl = lib.ffgsvd,
	fits_read_subsetnull_byt = lib.ffgsfb,
	fits_read_subsetnull_sbyt = lib.ffgsfsb,
	fits_read_subsetnull_usht = lib.ffgsfui,
	fits_read_subsetnull_ulng = lib.ffgsfuj,
	fits_read_subsetnull_sht = lib.ffgsfi,
	fits_read_subsetnull_lng = lib.ffgsfj,
	fits_read_subsetnull_ulnglng = lib.ffgsfujj,
	fits_read_subsetnull_lnglng = lib.ffgsfjj,
	fits_read_subsetnull_uint = lib.ffgsfuk,
	fits_read_subsetnull_int = lib.ffgsfk,
	fits_read_subsetnull_flt = lib.ffgsfe,
	fits_read_subsetnull_dbl = lib.ffgsfd,
	ffcpimg = lib.fits_copy_image_section,
	fits_decompress_img = lib.fits_decomp_img,
	fits_read_col = lib.ffgcv,
	fits_read_cols = lib.ffgcvn,
	fits_read_colnull = lib.ffgcf,
	fits_read_col_str = lib.ffgcvs,
	fits_read_col_log = lib.ffgcvl,
	fits_read_col_byt = lib.ffgcvb,
	fits_read_col_sbyt = lib.ffgcvsb,
	fits_read_col_usht = lib.ffgcvui,
	fits_read_col_ulng = lib.ffgcvuj,
	fits_read_col_sht = lib.ffgcvi,
	fits_read_col_lng = lib.ffgcvj,
	fits_read_col_ulnglng = lib.ffgcvujj,
	fits_read_col_lnglng = lib.ffgcvjj,
	fits_read_col_uint = lib.ffgcvuk,
	fits_read_col_int = lib.ffgcvk,
	fits_read_col_flt = lib.ffgcve,
	fits_read_col_dbl = lib.ffgcvd,
	fits_read_col_cmp = lib.ffgcvc,
	fits_read_col_dblcmp = lib.ffgcvm,
	fits_read_col_bit = lib.ffgcx,
	fits_read_col_bit_usht = lib.ffgcxui,
	fits_read_col_bit_uint = lib.ffgcxuk,
	fits_read_colnull_str = lib.ffgcfs,
	fits_read_colnull_log = lib.ffgcfl,
	fits_read_colnull_byt = lib.ffgcfb,
	fits_read_colnull_sbyt = lib.ffgcfsb,
	fits_read_colnull_usht = lib.ffgcfui,
	fits_read_colnull_ulng = lib.ffgcfuj,
	fits_read_colnull_sht = lib.ffgcfi,
	fits_read_colnull_lng = lib.ffgcfj,
	fits_read_colnull_ulnglng = lib.ffgcfujj,
	fits_read_colnull_lnglng = lib.ffgcfjj,
	fits_read_colnull_uint = lib.ffgcfuk,
	fits_read_colnull_int = lib.ffgcfk,
	fits_read_colnull_flt = lib.ffgcfe,
	fits_read_colnull_dbl = lib.ffgcfd,
	fits_read_colnull_cmp = lib.ffgcfc,
	fits_read_colnull_dblcmp = lib.ffgcfm,
	fits_read_descript = lib.ffgdes,
	fits_read_descriptll = lib.ffgdesll,
	fits_read_descripts = lib.ffgdess,
	fits_read_descriptsll = lib.ffgdessll,
	fits_read_tblbytes = lib.ffgtbb,
	fits_write_grppar_byt = lib.ffpgpb,
	fits_write_grppar_sbyt = lib.ffpgpsb,
	fits_write_grppar_usht = lib.ffpgpui,
	fits_write_grppar_ulng = lib.ffpgpuj,
	fits_write_grppar_sht = lib.ffpgpi,
	fits_write_grppar_lng = lib.ffpgpj,
	fits_write_grppar_ulnglng = lib.ffpgpujj,
	fits_write_grppar_lnglng = lib.ffpgpjj,
	fits_write_grppar_uint = lib.ffpgpuk,
	fits_write_grppar_int = lib.ffpgpk,
	fits_write_grppar_flt = lib.ffpgpe,
	fits_write_grppar_dbl = lib.ffpgpd,
	fits_write_pix = lib.ffppx,
	fits_write_pixll = lib.ffppxll,
	fits_write_pixnull = lib.ffppxn,
	fits_write_pixnullll = lib.ffppxnll,
	fits_write_img = lib.ffppr,
	fits_write_img_byt = lib.ffpprb,
	fits_write_img_sbyt = lib.ffpprsb,
	fits_write_img_usht = lib.ffpprui,
	fits_write_img_ulng = lib.ffppruj,
	fits_write_img_sht = lib.ffppri,
	fits_write_img_lng = lib.ffpprj,
	fits_write_img_ulnglng = lib.ffpprujj,
	fits_write_img_lnglng = lib.ffpprjj,
	fits_write_img_uint = lib.ffppruk,
	fits_write_img_int = lib.ffpprk,
	fits_write_img_flt = lib.ffppre,
	fits_write_img_dbl = lib.ffpprd,
	fits_write_imgnull = lib.ffppn,
	fits_write_imgnull_byt = lib.ffppnb,
	fits_write_imgnull_sbyt = lib.ffppnsb,
	fits_write_imgnull_usht = lib.ffppnui,
	fits_write_imgnull_ulng = lib.ffppnuj,
	fits_write_imgnull_sht = lib.ffppni,
	fits_write_imgnull_lng = lib.ffppnj,
	fits_write_imgnull_ulnglng = lib.ffppnujj,
	fits_write_imgnull_lnglng = lib.ffppnjj,
	fits_write_imgnull_uint = lib.ffppnuk,
	fits_write_imgnull_int = lib.ffppnk,
	fits_write_imgnull_flt = lib.ffppne,
	fits_write_imgnull_dbl = lib.ffppnd,
	fits_write_img_null = lib.ffppru,
	fits_write_null_img = lib.ffpprn,
	fits_write_2d_byt = lib.ffp2db,
	fits_write_2d_sbyt = lib.ffp2dsb,
	fits_write_2d_usht = lib.ffp2dui,
	fits_write_2d_ulng = lib.ffp2duj,
	fits_write_2d_sht = lib.ffp2di,
	fits_write_2d_lng = lib.ffp2dj,
	fits_write_2d_ulnglng = lib.ffp2dujj,
	fits_write_2d_lnglng = lib.ffp2djj,
	fits_write_2d_uint = lib.ffp2duk,
	fits_write_2d_int = lib.ffp2dk,
	fits_write_2d_flt = lib.ffp2de,
	fits_write_2d_dbl = lib.ffp2dd,
	fits_write_3d_byt = lib.ffp3db,
	fits_write_3d_sbyt = lib.ffp3dsb,
	fits_write_3d_usht = lib.ffp3dui,
	fits_write_3d_ulng = lib.ffp3duj,
	fits_write_3d_sht = lib.ffp3di,
	fits_write_3d_lng = lib.ffp3dj,
	fits_write_3d_ulnglng = lib.ffp3dujj,
	fits_write_3d_lnglng = lib.ffp3djj,
	fits_write_3d_uint = lib.ffp3duk,
	fits_write_3d_int = lib.ffp3dk,
	fits_write_3d_flt = lib.ffp3de,
	fits_write_3d_dbl = lib.ffp3dd,
	fits_write_subset = lib.ffpss,
	fits_write_subset_byt = lib.ffpssb,
	fits_write_subset_sbyt = lib.ffpsssb,
	fits_write_subset_usht = lib.ffpssui,
	fits_write_subset_ulng = lib.ffpssuj,
	fits_write_subset_sht = lib.ffpssi,
	fits_write_subset_lng = lib.ffpssj,
	fits_write_subset_ulnglng = lib.ffpssujj,
	fits_write_subset_lnglng = lib.ffpssjj,
	fits_write_subset_uint = lib.ffpssuk,
	fits_write_subset_int = lib.ffpssk,
	fits_write_subset_flt = lib.ffpsse,
	fits_write_subset_dbl = lib.ffpssd,
	fits_write_col = lib.ffpcl,
	fits_write_cols = lib.ffpcln,
	fits_write_col_str = lib.ffpcls,
	fits_write_col_log = lib.ffpcll,
	fits_write_col_byt = lib.ffpclb,
	fits_write_col_sbyt = lib.ffpclsb,
	fits_write_col_usht = lib.ffpclui,
	fits_write_col_ulng = lib.ffpcluj,
	fits_write_col_sht = lib.ffpcli,
	fits_write_col_lng = lib.ffpclj,
	fits_write_col_ulnglng = lib.ffpclujj,
	fits_write_col_lnglng = lib.ffpcljj,
	fits_write_col_uint = lib.ffpcluk,
	fits_write_col_int = lib.ffpclk,
	fits_write_col_flt = lib.ffpcle,
	fits_write_col_dbl = lib.ffpcld,
	fits_write_col_cmp = lib.ffpclc,
	fits_write_col_dblcmp = lib.ffpclm,
	fits_write_col_null = lib.ffpclu,
	fits_write_col_bit = lib.ffpclx,
	fits_write_nulrows = lib.ffprwu,
	fits_write_nullrows = lib.ffprwu,
	fits_write_colnull = lib.ffpcn,
	fits_write_colnull_str = lib.ffpcns,
	fits_write_colnull_log = lib.ffpcnl,
	fits_write_colnull_byt = lib.ffpcnb,
	fits_write_colnull_sbyt = lib.ffpcnsb,
	fits_write_colnull_usht = lib.ffpcnui,
	fits_write_colnull_ulng = lib.ffpcnuj,
	fits_write_colnull_sht = lib.ffpcni,
	fits_write_colnull_lng = lib.ffpcnj,
	fits_write_colnull_ulnglng = lib.ffpcnujj,
	fits_write_colnull_lnglng = lib.ffpcnjj,
	fits_write_colnull_uint = lib.ffpcnuk,
	fits_write_colnull_int = lib.ffpcnk,
	fits_write_colnull_flt = lib.ffpcne,
	fits_write_colnull_dbl = lib.ffpcnd,
	fits_write_ext = lib.ffpextn,
	fits_read_ext = lib.ffgextn,
	fits_write_descript = lib.ffpdes,
	fits_compress_heap = lib.ffcmph,
	fits_test_heap = lib.fftheap,
	fits_write_tblbytes = lib.ffptbb,
	fits_insert_rows = lib.ffirow,
	fits_delete_rows = lib.ffdrow,
	fits_delete_rowrange = lib.ffdrrg,
	fits_delete_rowlist = lib.ffdrws,
	fits_delete_rowlistll = lib.ffdrwsll,
	fits_insert_col = lib.fficol,
	fits_insert_cols = lib.fficls,
	fits_delete_col = lib.ffdcol,
	fits_copy_col = lib.ffcpcl,
	fits_copy_cols = lib.ffccls,
	fits_copy_rows = lib.ffcprw,
	fits_copy_selrows = lib.ffcpsr,
	fits_modify_vector_len = lib.ffmvec,
	fits_read_img_coord = lib.ffgics,
	fits_read_img_coord_version = lib.ffgicsa,
	fits_read_tbl_coord = lib.ffgtcs,
	fits_pix_to_world = lib.ffwldp,
	fits_world_to_pix = lib.ffxypx,
	fits_get_image_wcs_keys = lib.ffgiwcs,
	fits_get_table_wcs_keys = lib.ffgtwcs,
	fits_find_rows = lib.fffrow,
	fits_find_first_row = lib.ffffrw,
	fits_find_rows_cmp = lib.fffrwc,
	fits_select_rows = lib.ffsrow,
	fits_calc_rows = lib.ffcrow,
	fits_calculator = lib.ffcalc,
	fits_calculator_rng = lib.ffcalc_rng,
	fits_test_expr = lib.fftexp,
	fits_create_group = lib.ffgtcr,
	fits_insert_group = lib.ffgtis,
	fits_change_group = lib.ffgtch,
	fits_remove_group = lib.ffgtrm,
	fits_copy_group = lib.ffgtcp,
	fits_merge_groups = lib.ffgtmg,
	fits_compact_group = lib.ffgtcm,
	fits_verify_group = lib.ffgtvf,
	fits_open_group = lib.ffgtop,
	fits_add_group_member = lib.ffgtam,
	fits_get_num_members = lib.ffgtnm,
	fits_get_num_groups = lib.ffgmng,
	fits_open_member = lib.ffgmop,
	fits_copy_member = lib.ffgmcp,
	fits_transfer_member = lib.ffgmtf,
	fits_remove_member = lib.ffgmrm,
	fits_init_https = lib.ffihtps,
	fits_cleanup_https = lib.ffchtps,
	fits_verbose_https = lib.ffvhtps,
	fits_show_download_progress = lib.ffshdwn,
	fits_get_timeout = lib.ffgtmo,
	fits_set_timeout = lib.ffstmo,
	fits_open_file = function(...)
		return lib.ffopentest(lib.CFITSIO_SONAME, ...)
	end,
}, {
	__index = lib
})
return wrapper
