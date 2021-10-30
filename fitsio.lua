local ffi = require 'ffi'

ffi.cdef[[

enum {
	READONLY = 0,

	TBYTE = 11,
	TSBYTE = 12,
	TUSHORT = 20,
	TSHORT = 21,
	TUINT = 30,
	TINT = 31,
	TULONG = 40,
	TLONG = 41,
	TLONGLONG = 81,
	TFLOAT = 42,
	TDOUBLE = 82,
	
	BYTE_IMG = 8,
	SBYTE_IMG = 10,
	SHORT_IMG = 16,
	USHORT_IMG = 20,
	LONG_IMG = 32,
	ULONG_IMG = 40,
	LONGLONG_IMG = 64,
	FLOAT_IMG = -32,
	DOUBLE_IMG  = -64,
};

typedef void fitsfile;
typedef long long LONGLONG;

int ffopen(fitsfile **fptr, const char *filename, int iomode, int *status);
int ffgidt(fitsfile *fptr, int *imgtype, int *status);
int ffgidm(fitsfile *fptr, int *naxis,  int *status);
int ffgisz(fitsfile *fptr, int nlen, long *naxes, int *status);
int ffgpxv(fitsfile *fptr, int  datatype, long *firstpix, LONGLONG nelem,
          void *nulval, void *array, int *anynul, int *status);
int ffclos(fitsfile *fptr, int *status);

int ffinit(  fitsfile **fptr, const char *filename, int *status);
int ffphps( fitsfile *fptr, int bitpix, int naxis, long naxes[], int *status);
int ffppx(fitsfile *fptr, int datatype, long *firstpix, LONGLONG nelem,
          void *array, int *status);

]]

return ffi.load('cfitsio')
