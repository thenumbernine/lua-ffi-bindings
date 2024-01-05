local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/gif_lib.h */
enum { GIFLIB_MAJOR = 5 };
enum { GIFLIB_MINOR = 2 };
enum { GIFLIB_RELEASE = 1 };
enum { GIF_ERROR = 0 };
enum { GIF_OK = 1 };
/* ++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
/* ++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stdbool.h */
]] require 'ffi.req' 'c.stdbool' ffi.cdef[[
/* ++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stdbool.h */
/* #define GIF_STAMP "GIFVER" ### string, not number "\"GIFVER\"" */
/* #define GIF_STAMP_LEN sizeof(GIF_STAMP) - 1 ### string, not number "sizeof(GIF_STAMP) - 1" */
enum { GIF_VERSION_POS = 3 };
/* #define GIF87_STAMP "GIF87a" ### string, not number "\"GIF87a\"" */
/* #define GIF89_STAMP "GIF89a" ### string, not number "\"GIF89a\"" */
typedef unsigned char GifPixelType;
typedef unsigned char *GifRowType;
typedef unsigned char GifByteType;
typedef unsigned int GifPrefixType;
typedef int GifWord;
typedef struct GifColorType {
	GifByteType Red, Green, Blue;
} GifColorType;
typedef struct ColorMapObject {
	int ColorCount;
	int BitsPerPixel;
	_Bool SortFlag;
	GifColorType *Colors;
} ColorMapObject;
typedef struct GifImageDesc {
	GifWord Left, Top, Width, Height;
	_Bool Interlace;
	ColorMapObject *ColorMap;
} GifImageDesc;
typedef struct ExtensionBlock {
	int ByteCount;
	GifByteType *Bytes;
	int Function;
	enum { CONTINUE_EXT_FUNC_CODE = 0 };
	enum { COMMENT_EXT_FUNC_CODE = 254 };
	enum { GRAPHICS_EXT_FUNC_CODE = 249 };
	enum { PLAINTEXT_EXT_FUNC_CODE = 1 };
	enum { APPLICATION_EXT_FUNC_CODE = 255 };
} ExtensionBlock;
typedef struct SavedImage {
	GifImageDesc ImageDesc;
	GifByteType *RasterBits;
	int ExtensionBlockCount;
	ExtensionBlock *ExtensionBlocks;
} SavedImage;
typedef struct GifFileType {
	GifWord SWidth, SHeight;
	GifWord SColorResolution;
	GifWord SBackGroundColor;
	GifByteType AspectByte;
	ColorMapObject *SColorMap;
	int ImageCount;
	GifImageDesc Image;
	SavedImage *SavedImages;
	int ExtensionBlockCount;
	ExtensionBlock *ExtensionBlocks;
	int Error;
	void *UserData;
	void *Private;
} GifFileType;
typedef enum { UNDEFINED_RECORD_TYPE, SCREEN_DESC_RECORD_TYPE, IMAGE_DESC_RECORD_TYPE, EXTENSION_RECORD_TYPE, TERMINATE_RECORD_TYPE } GifRecordType;
typedef int (*InputFunc) (GifFileType *, GifByteType *, int);
typedef int (*OutputFunc) (GifFileType *, const GifByteType *, int);
typedef struct GraphicsControlBlock {
	int DisposalMode;
	enum { DISPOSAL_UNSPECIFIED = 0 };
	enum { DISPOSE_DO_NOT = 1 };
	enum { DISPOSE_BACKGROUND = 2 };
	enum { DISPOSE_PREVIOUS = 3 };
	_Bool UserInputFlag;
	int DelayTime;
	int TransparentColor;
	enum { NO_TRANSPARENT_COLOR = -1 };
} GraphicsControlBlock;
GifFileType *EGifOpenFileName(const char *GifFileName, const _Bool GifTestExistence, int *Error);
GifFileType *EGifOpenFileHandle(const int GifFileHandle, int *Error);
GifFileType *EGifOpen(void *userPtr, OutputFunc writeFunc, int *Error);
int EGifSpew(GifFileType * GifFile);
const char *EGifGetGifVersion(GifFileType *GifFile);
int EGifCloseFile(GifFileType *GifFile, int *ErrorCode);
enum { E_GIF_SUCCEEDED = 0 };
enum { E_GIF_ERR_OPEN_FAILED = 1 };
enum { E_GIF_ERR_WRITE_FAILED = 2 };
enum { E_GIF_ERR_HAS_SCRN_DSCR = 3 };
enum { E_GIF_ERR_HAS_IMAG_DSCR = 4 };
enum { E_GIF_ERR_NO_COLOR_MAP = 5 };
enum { E_GIF_ERR_DATA_TOO_BIG = 6 };
enum { E_GIF_ERR_NOT_ENOUGH_MEM = 7 };
enum { E_GIF_ERR_DISK_IS_FULL = 8 };
enum { E_GIF_ERR_CLOSE_FAILED = 9 };
enum { E_GIF_ERR_NOT_WRITEABLE = 10 };
int EGifPutScreenDesc(GifFileType *GifFile, const int GifWidth, const int GifHeight, const int GifColorRes, const int GifBackGround, const ColorMapObject *GifColorMap);
int EGifPutImageDesc(GifFileType *GifFile, const int GifLeft, const int GifTop, const int GifWidth, const int GifHeight, const _Bool GifInterlace, const ColorMapObject *GifColorMap);
void EGifSetGifVersion(GifFileType *GifFile, const _Bool gif89);
int EGifPutLine(GifFileType *GifFile, GifPixelType *GifLine, int GifLineLen);
int EGifPutPixel(GifFileType *GifFile, const GifPixelType GifPixel);
int EGifPutComment(GifFileType *GifFile, const char *GifComment);
int EGifPutExtensionLeader(GifFileType *GifFile, const int GifExtCode);
int EGifPutExtensionBlock(GifFileType *GifFile, const int GifExtLen, const void *GifExtension);
int EGifPutExtensionTrailer(GifFileType *GifFile);
int EGifPutExtension(GifFileType *GifFile, const int GifExtCode, const int GifExtLen, const void *GifExtension);
int EGifPutCode(GifFileType *GifFile, int GifCodeSize, const GifByteType *GifCodeBlock);
int EGifPutCodeNext(GifFileType *GifFile, const GifByteType *GifCodeBlock);
GifFileType *DGifOpenFileName(const char *GifFileName, int *Error);
GifFileType *DGifOpenFileHandle(int GifFileHandle, int *Error);
int DGifSlurp(GifFileType * GifFile);
GifFileType *DGifOpen(void *userPtr, InputFunc readFunc, int *Error);
int DGifCloseFile(GifFileType * GifFile, int *ErrorCode);
enum { D_GIF_SUCCEEDED = 0 };
enum { D_GIF_ERR_OPEN_FAILED = 101 };
enum { D_GIF_ERR_READ_FAILED = 102 };
enum { D_GIF_ERR_NOT_GIF_FILE = 103 };
enum { D_GIF_ERR_NO_SCRN_DSCR = 104 };
enum { D_GIF_ERR_NO_IMAG_DSCR = 105 };
enum { D_GIF_ERR_NO_COLOR_MAP = 106 };
enum { D_GIF_ERR_WRONG_RECORD = 107 };
enum { D_GIF_ERR_DATA_TOO_BIG = 108 };
enum { D_GIF_ERR_NOT_ENOUGH_MEM = 109 };
enum { D_GIF_ERR_CLOSE_FAILED = 110 };
enum { D_GIF_ERR_NOT_READABLE = 111 };
enum { D_GIF_ERR_IMAGE_DEFECT = 112 };
enum { D_GIF_ERR_EOF_TOO_SOON = 113 };
int DGifGetScreenDesc(GifFileType *GifFile);
int DGifGetRecordType(GifFileType *GifFile, GifRecordType *GifType);
int DGifGetImageHeader(GifFileType *GifFile);
int DGifGetImageDesc(GifFileType *GifFile);
int DGifGetLine(GifFileType *GifFile, GifPixelType *GifLine, int GifLineLen);
int DGifGetPixel(GifFileType *GifFile, GifPixelType GifPixel);
int DGifGetExtension(GifFileType *GifFile, int *GifExtCode, GifByteType **GifExtension);
int DGifGetExtensionNext(GifFileType *GifFile, GifByteType **GifExtension);
int DGifGetCode(GifFileType *GifFile, int *GifCodeSize, GifByteType **GifCodeBlock);
int DGifGetCodeNext(GifFileType *GifFile, GifByteType **GifCodeBlock);
int DGifGetLZCodes(GifFileType *GifFile, int *GifCode);
const char *DGifGetGifVersion(GifFileType *GifFile);
int GifQuantizeBuffer(unsigned int Width, unsigned int Height, int *ColorMapSize, GifByteType * RedInput, GifByteType * GreenInput, GifByteType * BlueInput, GifByteType * OutputBuffer, GifColorType * OutputColorMap);
extern const char *GifErrorString(int ErrorCode);
extern ColorMapObject *GifMakeMapObject(int ColorCount, const GifColorType *ColorMap);
extern void GifFreeMapObject(ColorMapObject *Object);
extern ColorMapObject *GifUnionColorMap(const ColorMapObject *ColorIn1, const ColorMapObject *ColorIn2, GifPixelType ColorTransIn2[]);
extern int GifBitSize(int n);
extern void GifApplyTranslation(SavedImage *Image, GifPixelType Translation[]);
extern int GifAddExtensionBlock(int *ExtensionBlock_Count, ExtensionBlock **ExtensionBlocks, int Function, unsigned int Len, unsigned char ExtData[]);
extern void GifFreeExtensions(int *ExtensionBlock_Count, ExtensionBlock **ExtensionBlocks);
extern SavedImage *GifMakeSavedImage(GifFileType *GifFile, const SavedImage *CopyFrom);
extern void GifFreeSavedImages(GifFileType *GifFile);
int DGifExtensionToGCB(const size_t GifExtensionLength, const GifByteType *GifExtension, GraphicsControlBlock *GCB);
size_t EGifGCBToExtension(const GraphicsControlBlock *GCB, GifByteType *GifExtension);
int DGifSavedExtensionToGCB(GifFileType *GifFile, int ImageIndex, GraphicsControlBlock *GCB);
int EGifGCBToSavedExtension(const GraphicsControlBlock *GCB, GifFileType *GifFile, int ImageIndex);
enum { GIF_FONT_WIDTH = 8 };
enum { GIF_FONT_HEIGHT = 8 };
extern const unsigned char GifAsciiTable8x8[][8];
extern void GifDrawText8x8(SavedImage *Image, const int x, const int y, const char *legend, const int color);
extern void GifDrawBox(SavedImage *Image, const int x, const int y, const int w, const int d, const int color);
extern void GifDrawRectangle(SavedImage *Image, const int x, const int y, const int w, const int d, const int color);
extern void GifDrawBoxedText8x8(SavedImage *Image, const int x, const int y, const char *legend, const int border, const int bg, const int fg);
/* + END   /usr/include/gif_lib.h */
]]
return require 'ffi.load' 'gif'
