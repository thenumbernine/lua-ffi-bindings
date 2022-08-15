local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/x86_64-linux-gnu/tiffio.h */
/* BEGIN /usr/include/x86_64-linux-gnu/tiff.h */
/* BEGIN /usr/include/x86_64-linux-gnu/tiffconf.h */
enum { HAVE_IEEEFP = 1 };
enum { HOST_BIGENDIAN = 0 };
enum { CCITT_SUPPORT = 1 };
enum { JPEG_SUPPORT = 1 };
enum { JBIG_SUPPORT = 1 };
enum { LOGLUV_SUPPORT = 1 };
enum { LZW_SUPPORT = 1 };
enum { NEXT_SUPPORT = 1 };
enum { OJPEG_SUPPORT = 1 };
enum { PACKBITS_SUPPORT = 1 };
enum { PIXARLOG_SUPPORT = 1 };
enum { THUNDER_SUPPORT = 1 };
enum { ZIP_SUPPORT = 1 };
enum { SUBIFD_SUPPORT = 1 };
enum { DEFAULT_EXTRASAMPLE_AS_ALPHA = 1 };
enum { CHECK_JPEG_YCBCR_SUBSAMPLING = 1 };
enum { MDI_SUPPORT = 1 };
/* END /usr/include/x86_64-1-gnu/tiffconf.h */
enum { TIFF_VERSION_CLASSIC = 42 };
enum { TIFF_VERSION_BIG = 43 };
enum { TIFF_BIGENDIAN = 0x4d4d };
enum { TIFF_LITTLEENDIAN = 0x4949 };
enum { MDI_LITTLEENDIAN = 0x5045 };
enum { MDI_BIGENDIAN = 0x4550 };
typedef signed char int8;
typedef unsigned char uint8;
typedef signed short int16;
typedef unsigned short uint16;
typedef signed int int32;
typedef unsigned int uint32;
typedef signed long int64;
typedef unsigned long uint64;
typedef int uint16_vap;
typedef struct { uint16 tiff_magic;
uint16 tiff_version;
} TIFFHeaderCommon;
typedef struct { uint16 tiff_magic;
uint16 tiff_version;
uint32 tiff_diroff;
} TIFFHeaderClassic;
typedef struct { uint16 tiff_magic;
uint16 tiff_version;
uint16 tiff_offsetsize;
uint16 tiff_unused;
uint64 tiff_diroff;
} TIFFHeaderBig;
typedef enum { TIFF_NOTYPE = 0, TIFF_BYTE = 1, TIFF_ASCII = 2, TIFF_SHORT = 3, TIFF_LONG = 4, TIFF_RATIONAL = 5, TIFF_SBYTE = 6, TIFF_UNDEFINED = 7, TIFF_SSHORT = 8, TIFF_SLONG = 9, TIFF_SRATIONAL = 10, TIFF_FLOAT = 11, TIFF_DOUBLE = 12, TIFF_IFD = 13, TIFF_LONG8 = 16, TIFF_SLONG8 = 17, TIFF_IFD8 = 18 } TIFFDataType;
enum { TIFFTAG_SUBFILETYPE = 254 };
enum { FILETYPE_REDUCEDIMAGE = 0x1 };
enum { FILETYPE_PAGE = 0x2 };
enum { FILETYPE_MASK = 0x4 };
enum { TIFFTAG_OSUBFILETYPE = 255 };
enum { OFILETYPE_IMAGE = 1 };
enum { OFILETYPE_REDUCEDIMAGE = 2 };
enum { OFILETYPE_PAGE = 3 };
enum { TIFFTAG_IMAGEWIDTH = 256 };
enum { TIFFTAG_IMAGELENGTH = 257 };
enum { TIFFTAG_BITSPERSAMPLE = 258 };
enum { TIFFTAG_COMPRESSION = 259 };
enum { COMPRESSION_NONE = 1 };
enum { COMPRESSION_CCITTRLE = 2 };
enum { COMPRESSION_CCITTFAX3 = 3 };
enum { COMPRESSION_CCITT_T4 = 3 };
enum { COMPRESSION_CCITTFAX4 = 4 };
enum { COMPRESSION_CCITT_T6 = 4 };
enum { COMPRESSION_LZW = 5 };
enum { COMPRESSION_OJPEG = 6 };
enum { COMPRESSION_JPEG = 7 };
enum { COMPRESSION_T85 = 9 };
enum { COMPRESSION_T43 = 10 };
enum { COMPRESSION_NEXT = 32766 };
enum { COMPRESSION_CCITTRLEW = 32771 };
enum { COMPRESSION_PACKBITS = 32773 };
enum { COMPRESSION_THUNDERSCAN = 32809 };
enum { COMPRESSION_IT8CTPAD = 32895 };
enum { COMPRESSION_IT8LW = 32896 };
enum { COMPRESSION_IT8MP = 32897 };
enum { COMPRESSION_IT8BL = 32898 };
enum { COMPRESSION_PIXARFILM = 32908 };
enum { COMPRESSION_PIXARLOG = 32909 };
enum { COMPRESSION_DEFLATE = 32946 };
enum { COMPRESSION_ADOBE_DEFLATE = 8 };
enum { COMPRESSION_DCS = 32947 };
enum { COMPRESSION_JBIG = 34661 };
enum { COMPRESSION_SGILOG = 34676 };
enum { COMPRESSION_SGILOG24 = 34677 };
enum { COMPRESSION_JP2000 = 34712 };
enum { COMPRESSION_LERC = 34887 };
enum { COMPRESSION_LZMA = 34925 };
enum { COMPRESSION_ZSTD = 50000 };
enum { COMPRESSION_WEBP = 50001 };
enum { TIFFTAG_PHOTOMETRIC = 262 };
enum { PHOTOMETRIC_MINISWHITE = 0 };
enum { PHOTOMETRIC_MINISBLACK = 1 };
enum { PHOTOMETRIC_RGB = 2 };
enum { PHOTOMETRIC_PALETTE = 3 };
enum { PHOTOMETRIC_MASK = 4 };
enum { PHOTOMETRIC_SEPARATED = 5 };
enum { PHOTOMETRIC_YCBCR = 6 };
enum { PHOTOMETRIC_CIELAB = 8 };
enum { PHOTOMETRIC_ICCLAB = 9 };
enum { PHOTOMETRIC_ITULAB = 10 };
enum { PHOTOMETRIC_CFA = 32803 };
enum { PHOTOMETRIC_LOGL = 32844 };
enum { PHOTOMETRIC_LOGLUV = 32845 };
enum { TIFFTAG_THRESHHOLDING = 263 };
enum { THRESHHOLD_BILEVEL = 1 };
enum { THRESHHOLD_HALFTONE = 2 };
enum { THRESHHOLD_ERRORDIFFUSE = 3 };
enum { TIFFTAG_CELLWIDTH = 264 };
enum { TIFFTAG_CELLLENGTH = 265 };
enum { TIFFTAG_FILLORDER = 266 };
enum { FILLORDER_MSB2LSB = 1 };
enum { FILLORDER_LSB2MSB = 2 };
enum { TIFFTAG_DOCUMENTNAME = 269 };
enum { TIFFTAG_IMAGEDESCRIPTION = 270 };
enum { TIFFTAG_MAKE = 271 };
enum { TIFFTAG_MODEL = 272 };
enum { TIFFTAG_STRIPOFFSETS = 273 };
enum { TIFFTAG_ORIENTATION = 274 };
enum { ORIENTATION_TOPLEFT = 1 };
enum { ORIENTATION_TOPRIGHT = 2 };
enum { ORIENTATION_BOTRIGHT = 3 };
enum { ORIENTATION_BOTLEFT = 4 };
enum { ORIENTATION_LEFTTOP = 5 };
enum { ORIENTATION_RIGHTTOP = 6 };
enum { ORIENTATION_RIGHTBOT = 7 };
enum { ORIENTATION_LEFTBOT = 8 };
enum { TIFFTAG_SAMPLESPERPIXEL = 277 };
enum { TIFFTAG_ROWSPERSTRIP = 278 };
enum { TIFFTAG_STRIPBYTECOUNTS = 279 };
enum { TIFFTAG_MINSAMPLEVALUE = 280 };
enum { TIFFTAG_MAXSAMPLEVALUE = 281 };
enum { TIFFTAG_XRESOLUTION = 282 };
enum { TIFFTAG_YRESOLUTION = 283 };
enum { TIFFTAG_PLANARCONFIG = 284 };
enum { PLANARCONFIG_CONTIG = 1 };
enum { PLANARCONFIG_SEPARATE = 2 };
enum { TIFFTAG_PAGENAME = 285 };
enum { TIFFTAG_XPOSITION = 286 };
enum { TIFFTAG_YPOSITION = 287 };
enum { TIFFTAG_FREEOFFSETS = 288 };
enum { TIFFTAG_FREEBYTECOUNTS = 289 };
enum { TIFFTAG_GRAYRESPONSEUNIT = 290 };
enum { GRAYRESPONSEUNIT_10S = 1 };
enum { GRAYRESPONSEUNIT_100S = 2 };
enum { GRAYRESPONSEUNIT_1000S = 3 };
enum { GRAYRESPONSEUNIT_10000S = 4 };
enum { GRAYRESPONSEUNIT_100000S = 5 };
enum { TIFFTAG_GRAYRESPONSECURVE = 291 };
enum { TIFFTAG_GROUP3OPTIONS = 292 };
enum { TIFFTAG_T4OPTIONS = 292 };
enum { GROUP3OPT_2DENCODING = 0x1 };
enum { GROUP3OPT_UNCOMPRESSED = 0x2 };
enum { GROUP3OPT_FILLBITS = 0x4 };
enum { TIFFTAG_GROUP4OPTIONS = 293 };
enum { TIFFTAG_T6OPTIONS = 293 };
enum { GROUP4OPT_UNCOMPRESSED = 0x2 };
enum { TIFFTAG_RESOLUTIONUNIT = 296 };
enum { RESUNIT_NONE = 1 };
enum { RESUNIT_INCH = 2 };
enum { RESUNIT_CENTIMETER = 3 };
enum { TIFFTAG_PAGENUMBER = 297 };
enum { TIFFTAG_COLORRESPONSEUNIT = 300 };
enum { COLORRESPONSEUNIT_10S = 1 };
enum { COLORRESPONSEUNIT_100S = 2 };
enum { COLORRESPONSEUNIT_1000S = 3 };
enum { COLORRESPONSEUNIT_10000S = 4 };
enum { COLORRESPONSEUNIT_100000S = 5 };
enum { TIFFTAG_TRANSFERFUNCTION = 301 };
enum { TIFFTAG_SOFTWARE = 305 };
enum { TIFFTAG_DATETIME = 306 };
enum { TIFFTAG_ARTIST = 315 };
enum { TIFFTAG_HOSTCOMPUTER = 316 };
enum { TIFFTAG_PREDICTOR = 317 };
enum { PREDICTOR_NONE = 1 };
enum { PREDICTOR_HORIZONTAL = 2 };
enum { PREDICTOR_FLOATINGPOINT = 3 };
enum { TIFFTAG_WHITEPOINT = 318 };
enum { TIFFTAG_PRIMARYCHROMATICITIES = 319 };
enum { TIFFTAG_COLORMAP = 320 };
enum { TIFFTAG_HALFTONEHINTS = 321 };
enum { TIFFTAG_TILEWIDTH = 322 };
enum { TIFFTAG_TILELENGTH = 323 };
enum { TIFFTAG_TILEOFFSETS = 324 };
enum { TIFFTAG_TILEBYTECOUNTS = 325 };
enum { TIFFTAG_BADFAXLINES = 326 };
enum { TIFFTAG_CLEANFAXDATA = 327 };
enum { CLEANFAXDATA_CLEAN = 0 };
enum { CLEANFAXDATA_REGENERATED = 1 };
enum { CLEANFAXDATA_UNCLEAN = 2 };
enum { TIFFTAG_CONSECUTIVEBADFAXLINES = 328 };
enum { TIFFTAG_SUBIFD = 330 };
enum { TIFFTAG_INKSET = 332 };
enum { INKSET_CMYK = 1 };
enum { INKSET_MULTIINK = 2 };
enum { TIFFTAG_INKNAMES = 333 };
enum { TIFFTAG_NUMBEROFINKS = 334 };
enum { TIFFTAG_DOTRANGE = 336 };
enum { TIFFTAG_TARGETPRINTER = 337 };
enum { TIFFTAG_EXTRASAMPLES = 338 };
enum { EXTRASAMPLE_UNSPECIFIED = 0 };
enum { EXTRASAMPLE_ASSOCALPHA = 1 };
enum { EXTRASAMPLE_UNASSALPHA = 2 };
enum { TIFFTAG_SAMPLEFORMAT = 339 };
enum { SAMPLEFORMAT_UINT = 1 };
enum { SAMPLEFORMAT_INT = 2 };
enum { SAMPLEFORMAT_IEEEFP = 3 };
enum { SAMPLEFORMAT_VOID = 4 };
enum { SAMPLEFORMAT_COMPLEXINT = 5 };
enum { SAMPLEFORMAT_COMPLEXIEEEFP = 6 };
enum { TIFFTAG_SMINSAMPLEVALUE = 340 };
enum { TIFFTAG_SMAXSAMPLEVALUE = 341 };
enum { TIFFTAG_CLIPPATH = 343 };
enum { TIFFTAG_XCLIPPATHUNITS = 344 };
enum { TIFFTAG_YCLIPPATHUNITS = 345 };
enum { TIFFTAG_INDEXED = 346 };
enum { TIFFTAG_JPEGTABLES = 347 };
enum { TIFFTAG_OPIPROXY = 351 };
enum { TIFFTAG_GLOBALPARAMETERSIFD = 400 };
enum { TIFFTAG_PROFILETYPE = 401 };
enum { PROFILETYPE_UNSPECIFIED = 0 };
enum { PROFILETYPE_G3_FAX = 1 };
enum { TIFFTAG_FAXPROFILE = 402 };
enum { FAXPROFILE_S = 1 };
enum { FAXPROFILE_F = 2 };
enum { FAXPROFILE_J = 3 };
enum { FAXPROFILE_C = 4 };
enum { FAXPROFILE_L = 5 };
enum { FAXPROFILE_M = 6 };
enum { TIFFTAG_CODINGMETHODS = 403 };
enum { TIFFTAG_VERSIONYEAR = 404 };
enum { TIFFTAG_MODENUMBER = 405 };
enum { TIFFTAG_DECODE = 433 };
enum { TIFFTAG_IMAGEBASECOLOR = 434 };
enum { TIFFTAG_T82OPTIONS = 435 };
enum { TIFFTAG_JPEGPROC = 512 };
enum { JPEGPROC_BASELINE = 1 };
enum { JPEGPROC_LOSSLESS = 14 };
enum { TIFFTAG_JPEGIFOFFSET = 513 };
enum { TIFFTAG_JPEGIFBYTECOUNT = 514 };
enum { TIFFTAG_JPEGRESTARTINTERVAL = 515 };
enum { TIFFTAG_JPEGLOSSLESSPREDICTORS = 517 };
enum { TIFFTAG_JPEGPOINTTRANSFORM = 518 };
enum { TIFFTAG_JPEGQTABLES = 519 };
enum { TIFFTAG_JPEGDCTABLES = 520 };
enum { TIFFTAG_JPEGACTABLES = 521 };
enum { TIFFTAG_YCBCRCOEFFICIENTS = 529 };
enum { TIFFTAG_YCBCRSUBSAMPLING = 530 };
enum { TIFFTAG_YCBCRPOSITIONING = 531 };
enum { YCBCRPOSITION_CENTERED = 1 };
enum { YCBCRPOSITION_COSITED = 2 };
enum { TIFFTAG_REFERENCEBLACKWHITE = 532 };
enum { TIFFTAG_STRIPROWCOUNTS = 559 };
enum { TIFFTAG_XMLPACKET = 700 };
enum { TIFFTAG_OPIIMAGEID = 32781 };
enum { TIFFTAG_REFPTS = 32953 };
enum { TIFFTAG_REGIONTACKPOINT = 32954 };
enum { TIFFTAG_REGIONWARPCORNERS = 32955 };
enum { TIFFTAG_REGIONAFFINE = 32956 };
enum { TIFFTAG_MATTEING = 32995 };
enum { TIFFTAG_DATATYPE = 32996 };
enum { TIFFTAG_IMAGEDEPTH = 32997 };
enum { TIFFTAG_TILEDEPTH = 32998 };
enum { TIFFTAG_PIXAR_IMAGEFULLWIDTH = 33300 };
enum { TIFFTAG_PIXAR_IMAGEFULLLENGTH = 33301 };
enum { TIFFTAG_PIXAR_TEXTUREFORMAT = 33302 };
enum { TIFFTAG_PIXAR_WRAPMODES = 33303 };
enum { TIFFTAG_PIXAR_FOVCOT = 33304 };
enum { TIFFTAG_PIXAR_MATRIX_WORLDTOSCREEN = 33305 };
enum { TIFFTAG_PIXAR_MATRIX_WORLDTOCAMERA = 33306 };
enum { TIFFTAG_WRITERSERIALNUMBER = 33405 };
enum { TIFFTAG_CFAREPEATPATTERNDIM = 33421 };
enum { TIFFTAG_CFAPATTERN = 33422 };
enum { TIFFTAG_COPYRIGHT = 33432 };
enum { TIFFTAG_RICHTIFFIPTC = 33723 };
enum { TIFFTAG_IT8SITE = 34016 };
enum { TIFFTAG_IT8COLORSEQUENCE = 34017 };
enum { TIFFTAG_IT8HEADER = 34018 };
enum { TIFFTAG_IT8RASTERPADDING = 34019 };
enum { TIFFTAG_IT8BITSPERRUNLENGTH = 34020 };
enum { TIFFTAG_IT8BITSPEREXTENDEDRUNLENGTH = 34021 };
enum { TIFFTAG_IT8COLORTABLE = 34022 };
enum { TIFFTAG_IT8IMAGECOLORINDICATOR = 34023 };
enum { TIFFTAG_IT8BKGCOLORINDICATOR = 34024 };
enum { TIFFTAG_IT8IMAGECOLORVALUE = 34025 };
enum { TIFFTAG_IT8BKGCOLORVALUE = 34026 };
enum { TIFFTAG_IT8PIXELINTENSITYRANGE = 34027 };
enum { TIFFTAG_IT8TRANSPARENCYINDICATOR = 34028 };
enum { TIFFTAG_IT8COLORCHARACTERIZATION = 34029 };
enum { TIFFTAG_IT8HCUSAGE = 34030 };
enum { TIFFTAG_IT8TRAPINDICATOR = 34031 };
enum { TIFFTAG_IT8CMYKEQUIVALENT = 34032 };
enum { TIFFTAG_FRAMECOUNT = 34232 };
enum { TIFFTAG_PHOTOSHOP = 34377 };
enum { TIFFTAG_EXIFIFD = 34665 };
enum { TIFFTAG_ICCPROFILE = 34675 };
enum { TIFFTAG_IMAGELAYER = 34732 };
enum { TIFFTAG_JBIGOPTIONS = 34750 };
enum { TIFFTAG_GPSIFD = 34853 };
enum { TIFFTAG_FAXRECVPARAMS = 34908 };
enum { TIFFTAG_FAXSUBADDRESS = 34909 };
enum { TIFFTAG_FAXRECVTIME = 34910 };
enum { TIFFTAG_FAXDCS = 34911 };
enum { TIFFTAG_STONITS = 37439 };
enum { TIFFTAG_FEDEX_EDR = 34929 };
enum { TIFFTAG_INTEROPERABILITYIFD = 40965 };
enum { TIFFTAG_LERC_PARAMETERS = 50674 };
enum { TIFFTAG_DNGVERSION = 50706 };
enum { TIFFTAG_DNGBACKWARDVERSION = 50707 };
enum { TIFFTAG_UNIQUECAMERAMODEL = 50708 };
enum { TIFFTAG_LOCALIZEDCAMERAMODEL = 50709 };
enum { TIFFTAG_CFAPLANECOLOR = 50710 };
enum { TIFFTAG_CFALAYOUT = 50711 };
enum { TIFFTAG_LINEARIZATIONTABLE = 50712 };
enum { TIFFTAG_BLACKLEVELREPEATDIM = 50713 };
enum { TIFFTAG_BLACKLEVEL = 50714 };
enum { TIFFTAG_BLACKLEVELDELTAH = 50715 };
enum { TIFFTAG_BLACKLEVELDELTAV = 50716 };
enum { TIFFTAG_WHITELEVEL = 50717 };
enum { TIFFTAG_DEFAULTSCALE = 50718 };
enum { TIFFTAG_DEFAULTCROPORIGIN = 50719 };
enum { TIFFTAG_DEFAULTCROPSIZE = 50720 };
enum { TIFFTAG_COLORMATRIX1 = 50721 };
enum { TIFFTAG_COLORMATRIX2 = 50722 };
enum { TIFFTAG_CAMERACALIBRATION1 = 50723 };
enum { TIFFTAG_CAMERACALIBRATION2 = 50724 };
enum { TIFFTAG_REDUCTIONMATRIX1 = 50725 };
enum { TIFFTAG_REDUCTIONMATRIX2 = 50726 };
enum { TIFFTAG_ANALOGBALANCE = 50727 };
enum { TIFFTAG_ASSHOTNEUTRAL = 50728 };
enum { TIFFTAG_ASSHOTWHITEXY = 50729 };
enum { TIFFTAG_BASELINEEXPOSURE = 50730 };
enum { TIFFTAG_BASELINENOISE = 50731 };
enum { TIFFTAG_BASELINESHARPNESS = 50732 };
enum { TIFFTAG_BAYERGREENSPLIT = 50733 };
enum { TIFFTAG_LINEARRESPONSELIMIT = 50734 };
enum { TIFFTAG_CAMERASERIALNUMBER = 50735 };
enum { TIFFTAG_LENSINFO = 50736 };
enum { TIFFTAG_CHROMABLURRADIUS = 50737 };
enum { TIFFTAG_ANTIALIASSTRENGTH = 50738 };
enum { TIFFTAG_SHADOWSCALE = 50739 };
enum { TIFFTAG_DNGPRIVATEDATA = 50740 };
enum { TIFFTAG_MAKERNOTESAFETY = 50741 };
enum { TIFFTAG_CALIBRATIONILLUMINANT1 = 50778 };
enum { TIFFTAG_CALIBRATIONILLUMINANT2 = 50779 };
enum { TIFFTAG_BESTQUALITYSCALE = 50780 };
enum { TIFFTAG_RAWDATAUNIQUEID = 50781 };
enum { TIFFTAG_ORIGINALRAWFILENAME = 50827 };
enum { TIFFTAG_ORIGINALRAWFILEDATA = 50828 };
enum { TIFFTAG_ACTIVEAREA = 50829 };
enum { TIFFTAG_MASKEDAREAS = 50830 };
enum { TIFFTAG_ASSHOTICCPROFILE = 50831 };
enum { TIFFTAG_ASSHOTPREPROFILEMATRIX = 50832 };
enum { TIFFTAG_CURRENTICCPROFILE = 50833 };
enum { TIFFTAG_CURRENTPREPROFILEMATRIX = 50834 };
enum { TIFFTAG_DCSHUESHIFTVALUES = 65535 };
enum { TIFFTAG_FAXMODE = 65536 };
enum { FAXMODE_CLASSIC = 0x0000 };
enum { FAXMODE_NORTC = 0x0001 };
enum { FAXMODE_NOEOL = 0x0002 };
enum { FAXMODE_BYTEALIGN = 0x0004 };
enum { FAXMODE_WORDALIGN = 0x0008 };
enum { FAXMODE_CLASSF = 0x0001 };
enum { TIFFTAG_JPEGQUALITY = 65537 };
enum { TIFFTAG_JPEGCOLORMODE = 65538 };
enum { JPEGCOLORMODE_RAW = 0x0000 };
enum { JPEGCOLORMODE_RGB = 0x0001 };
enum { TIFFTAG_JPEGTABLESMODE = 65539 };
enum { JPEGTABLESMODE_QUANT = 0x0001 };
enum { JPEGTABLESMODE_HUFF = 0x0002 };
enum { TIFFTAG_FAXFILLFUNC = 65540 };
enum { TIFFTAG_PIXARLOGDATAFMT = 65549 };
enum { PIXARLOGDATAFMT_8BIT = 0 };
enum { PIXARLOGDATAFMT_8BITABGR = 1 };
enum { PIXARLOGDATAFMT_11BITLOG = 2 };
enum { PIXARLOGDATAFMT_12BITPICIO = 3 };
enum { PIXARLOGDATAFMT_16BIT = 4 };
enum { PIXARLOGDATAFMT_FLOAT = 5 };
enum { TIFFTAG_DCSIMAGERTYPE = 65550 };
enum { DCSIMAGERMODEL_M3 = 0 };
enum { DCSIMAGERMODEL_M5 = 1 };
enum { DCSIMAGERMODEL_M6 = 2 };
enum { DCSIMAGERFILTER_IR = 0 };
enum { DCSIMAGERFILTER_MONO = 1 };
enum { DCSIMAGERFILTER_CFA = 2 };
enum { DCSIMAGERFILTER_OTHER = 3 };
enum { TIFFTAG_DCSINTERPMODE = 65551 };
enum { DCSINTERPMODE_NORMAL = 0x0 };
enum { DCSINTERPMODE_PREVIEW = 0x1 };
enum { TIFFTAG_DCSBALANCEARRAY = 65552 };
enum { TIFFTAG_DCSCORRECTMATRIX = 65553 };
enum { TIFFTAG_DCSGAMMA = 65554 };
enum { TIFFTAG_DCSTOESHOULDERPTS = 65555 };
enum { TIFFTAG_DCSCALIBRATIONFD = 65556 };
enum { TIFFTAG_ZIPQUALITY = 65557 };
enum { TIFFTAG_PIXARLOGQUALITY = 65558 };
enum { TIFFTAG_DCSCLIPRECTANGLE = 65559 };
enum { TIFFTAG_SGILOGDATAFMT = 65560 };
enum { SGILOGDATAFMT_FLOAT = 0 };
enum { SGILOGDATAFMT_16BIT = 1 };
enum { SGILOGDATAFMT_RAW = 2 };
enum { SGILOGDATAFMT_8BIT = 3 };
enum { TIFFTAG_SGILOGENCODE = 65561 };
enum { SGILOGENCODE_NODITHER = 0 };
enum { SGILOGENCODE_RANDITHER = 1 };
enum { TIFFTAG_LZMAPRESET = 65562 };
enum { TIFFTAG_PERSAMPLE = 65563 };
enum { PERSAMPLE_MERGED = 0 };
enum { PERSAMPLE_MULTI = 1 };
enum { TIFFTAG_ZSTD_LEVEL = 65564 };
enum { TIFFTAG_LERC_VERSION = 65565 };
enum { LERC_VERSION_2_4 = 4 };
enum { TIFFTAG_LERC_ADD_COMPRESSION = 65566 };
enum { LERC_ADD_COMPRESSION_NONE = 0 };
enum { LERC_ADD_COMPRESSION_DEFLATE = 1 };
enum { LERC_ADD_COMPRESSION_ZSTD = 2 };
enum { TIFFTAG_LERC_MAXZERROR = 65567 };
enum { TIFFTAG_WEBP_LEVEL = 65568 };
enum { TIFFTAG_WEBP_LOSSLESS = 65569 };
enum { EXIFTAG_EXPOSURETIME = 33434 };
enum { EXIFTAG_FNUMBER = 33437 };
enum { EXIFTAG_EXPOSUREPROGRAM = 34850 };
enum { EXIFTAG_SPECTRALSENSITIVITY = 34852 };
enum { EXIFTAG_ISOSPEEDRATINGS = 34855 };
enum { EXIFTAG_OECF = 34856 };
enum { EXIFTAG_EXIFVERSION = 36864 };
enum { EXIFTAG_DATETIMEORIGINAL = 36867 };
enum { EXIFTAG_DATETIMEDIGITIZED = 36868 };
enum { EXIFTAG_COMPONENTSCONFIGURATION = 37121 };
enum { EXIFTAG_COMPRESSEDBITSPERPIXEL = 37122 };
enum { EXIFTAG_SHUTTERSPEEDVALUE = 37377 };
enum { EXIFTAG_APERTUREVALUE = 37378 };
enum { EXIFTAG_BRIGHTNESSVALUE = 37379 };
enum { EXIFTAG_EXPOSUREBIASVALUE = 37380 };
enum { EXIFTAG_MAXAPERTUREVALUE = 37381 };
enum { EXIFTAG_SUBJECTDISTANCE = 37382 };
enum { EXIFTAG_METERINGMODE = 37383 };
enum { EXIFTAG_LIGHTSOURCE = 37384 };
enum { EXIFTAG_FLASH = 37385 };
enum { EXIFTAG_FOCALLENGTH = 37386 };
enum { EXIFTAG_SUBJECTAREA = 37396 };
enum { EXIFTAG_MAKERNOTE = 37500 };
enum { EXIFTAG_USERCOMMENT = 37510 };
enum { EXIFTAG_SUBSECTIME = 37520 };
enum { EXIFTAG_SUBSECTIMEORIGINAL = 37521 };
enum { EXIFTAG_SUBSECTIMEDIGITIZED = 37522 };
enum { EXIFTAG_FLASHPIXVERSION = 40960 };
enum { EXIFTAG_COLORSPACE = 40961 };
enum { EXIFTAG_PIXELXDIMENSION = 40962 };
enum { EXIFTAG_PIXELYDIMENSION = 40963 };
enum { EXIFTAG_RELATEDSOUNDFILE = 40964 };
enum { EXIFTAG_FLASHENERGY = 41483 };
enum { EXIFTAG_SPATIALFREQUENCYRESPONSE = 41484 };
enum { EXIFTAG_FOCALPLANEXRESOLUTION = 41486 };
enum { EXIFTAG_FOCALPLANEYRESOLUTION = 41487 };
enum { EXIFTAG_FOCALPLANERESOLUTIONUNIT = 41488 };
enum { EXIFTAG_SUBJECTLOCATION = 41492 };
enum { EXIFTAG_EXPOSUREINDEX = 41493 };
enum { EXIFTAG_SENSINGMETHOD = 41495 };
enum { EXIFTAG_FILESOURCE = 41728 };
enum { EXIFTAG_SCENETYPE = 41729 };
enum { EXIFTAG_CFAPATTERN = 41730 };
enum { EXIFTAG_CUSTOMRENDERED = 41985 };
enum { EXIFTAG_EXPOSUREMODE = 41986 };
enum { EXIFTAG_WHITEBALANCE = 41987 };
enum { EXIFTAG_DIGITALZOOMRATIO = 41988 };
enum { EXIFTAG_FOCALLENGTHIN35MMFILM = 41989 };
enum { EXIFTAG_SCENECAPTURETYPE = 41990 };
enum { EXIFTAG_GAINCONTROL = 41991 };
enum { EXIFTAG_CONTRAST = 41992 };
enum { EXIFTAG_SATURATION = 41993 };
enum { EXIFTAG_SHARPNESS = 41994 };
enum { EXIFTAG_DEVICESETTINGDESCRIPTION = 41995 };
enum { EXIFTAG_SUBJECTDISTANCERANGE = 41996 };
enum { EXIFTAG_IMAGEUNIQUEID = 42016 };
/* END /usr/include/x86_64-1-gnu/tiff.h */
/* BEGIN /usr/include/x86_64-linux-gnu/tiffvers.h */
enum { TIFFLIB_VERSION = 20191103 };
/* END /usr/include/x86_64-1-gnu/tiffvers.h */
typedef struct tiff TIFF;
typedef signed long tmsize_t;
typedef uint64 toff_t;
typedef uint32 ttag_t;
typedef uint16 tdir_t;
typedef uint16 tsample_t;
typedef uint32 tstrile_t;
typedef tstrile_t tstrip_t;
typedef tstrile_t ttile_t;
typedef tmsize_t tsize_t;
typedef void* tdata_t;
typedef void* thandle_t;
enum { TIFFPRINT_NONE = 0x0 };
enum { TIFFPRINT_STRIPS = 0x1 };
enum { TIFFPRINT_CURVES = 0x2 };
enum { TIFFPRINT_COLORMAP = 0x4 };
enum { TIFFPRINT_JPEGQTABLES = 0x100 };
enum { TIFFPRINT_JPEGACTABLES = 0x200 };
enum { TIFFPRINT_JPEGDCTABLES = 0x200 };
typedef unsigned char TIFFRGBValue;
typedef struct { float d_mat[3][3];
float d_YCR;
float d_YCG;
float d_YCB;
uint32 d_Vrwr;
uint32 d_Vrwg;
uint32 d_Vrwb;
float d_Y0R;
float d_Y0G;
float d_Y0B;
float d_gammaR;
float d_gammaG;
float d_gammaB;
} TIFFDisplay;
typedef struct { TIFFRGBValue* clamptab;
int* Cr_r_tab;
int* Cb_b_tab;
int32* Cr_g_tab;
int32* Cb_g_tab;
int32* Y_tab;
} TIFFYCbCrToRGB;
typedef struct { int range;
enum { CIELABTORGB_TABLE_RANGE = 1500 };
float rstep, gstep, bstep;
float X0, Y0, Z0;
TIFFDisplay display;
float Yr2r[1500 + 1];
float Yg2g[1500 + 1];
float Yb2b[1500 + 1];
} TIFFCIELabToRGB;
typedef struct _TIFFRGBAImage TIFFRGBAImage;
typedef void (*tileContigRoutine) (TIFFRGBAImage*, uint32*, uint32, uint32, uint32, uint32, int32, int32, unsigned char*);
typedef void (*tileSeparateRoutine) (TIFFRGBAImage*, uint32*, uint32, uint32, uint32, uint32, int32, int32, unsigned char*, unsigned char*, unsigned char*, unsigned char*);
struct _TIFFRGBAImage { TIFF* tif;
int stoponerr;
int isContig;
int alpha;
uint32 width;
uint32 height;
uint16 bitspersample;
uint16 samplesperpixel;
uint16 orientation;
uint16 req_orientation;
uint16 photometric;
uint16* redcmap;
uint16* greencmap;
uint16* bluecmap;
int (*get)(TIFFRGBAImage*, uint32*, uint32, uint32);
union { void (*any)(TIFFRGBAImage*);
tileContigRoutine contig;
tileSeparateRoutine separate;
} put;
TIFFRGBValue* Map;
uint32** BWmap;
uint32** PALmap;
TIFFYCbCrToRGB* ycbcr;
TIFFCIELabToRGB* cielab;
uint8* UaToAa;
uint8* Bitdepth16To8;
int row_offset;
int col_offset;
};
typedef int (*TIFFInitMethod)(TIFF*, int);
typedef struct { char* name;
uint16 scheme;
TIFFInitMethod init;
} TIFFCodec;
/* BEGIN /usr/include/stdio.h */
]] require 'ffi.c.stdio' ffi.cdef[[
/* END /usr/include/stdio.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h */
]] require 'ffi.c.stdarg' ffi.cdef[[
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stdarg.h */
enum { LOGLUV_PUBLIC = 1 };
typedef void (*TIFFErrorHandler)(const char*, const char*, va_list);
typedef void (*TIFFErrorHandlerExt)(thandle_t, const char*, const char*, va_list);
typedef tmsize_t (*TIFFReadWriteProc)(thandle_t, void*, tmsize_t);
typedef toff_t (*TIFFSeekProc)(thandle_t, toff_t, int);
typedef int (*TIFFCloseProc)(thandle_t);
typedef toff_t (*TIFFSizeProc)(thandle_t);
typedef int (*TIFFMapFileProc)(thandle_t, void** base, toff_t* size);
typedef void (*TIFFUnmapFileProc)(thandle_t, void* base, toff_t size);
typedef void (*TIFFExtendProc)(TIFF*);
extern const char* TIFFGetVersion(void);
extern const TIFFCodec* TIFFFindCODEC(uint16);
extern TIFFCodec* TIFFRegisterCODEC(uint16, const char*, TIFFInitMethod);
extern void TIFFUnRegisterCODEC(TIFFCodec*);
extern int TIFFIsCODECConfigured(uint16);
extern TIFFCodec* TIFFGetConfiguredCODECs(void);
extern void* _TIFFmalloc(tmsize_t s);
extern void* _TIFFcalloc(tmsize_t nmemb, tmsize_t siz);
extern void* _TIFFrealloc(void* p, tmsize_t s);
extern void _TIFFmemset(void* p, int v, tmsize_t c);
extern void _TIFFmemcpy(void* d, const void* s, tmsize_t c);
extern int _TIFFmemcmp(const void* p1, const void* p2, tmsize_t c);
extern void _TIFFfree(void* p);
extern int TIFFGetTagListCount( TIFF * );
extern uint32 TIFFGetTagListEntry( TIFF *, int tag_index );
enum { TIFF_VARIABLE = -1 };
enum { TIFF_SPP = -2 };
enum { TIFF_VARIABLE2 = -3 };
enum { FIELD_CUSTOM = 65 };
typedef struct _TIFFField TIFFField;
typedef struct _TIFFFieldArray TIFFFieldArray;
extern const TIFFField* TIFFFindField(TIFF *, uint32, TIFFDataType);
extern const TIFFField* TIFFFieldWithTag(TIFF*, uint32);
extern const TIFFField* TIFFFieldWithName(TIFF*, const char *);
extern uint32 TIFFFieldTag(const TIFFField*);
extern const char* TIFFFieldName(const TIFFField*);
extern TIFFDataType TIFFFieldDataType(const TIFFField*);
extern int TIFFFieldPassCount(const TIFFField*);
extern int TIFFFieldReadCount(const TIFFField*);
extern int TIFFFieldWriteCount(const TIFFField*);
typedef int (*TIFFVSetMethod)(TIFF*, uint32, va_list);
typedef int (*TIFFVGetMethod)(TIFF*, uint32, va_list);
typedef void (*TIFFPrintMethod)(TIFF*, FILE*, long);
typedef struct { TIFFVSetMethod vsetfield;
TIFFVGetMethod vgetfield;
TIFFPrintMethod printdir;
} TIFFTagMethods;
extern TIFFTagMethods *TIFFAccessTagMethods(TIFF *);
extern void *TIFFGetClientInfo(TIFF *, const char *);
extern void TIFFSetClientInfo(TIFF *, void *, const char *);
extern void TIFFCleanup(TIFF* tif);
extern void TIFFClose(TIFF* tif);
extern int TIFFFlush(TIFF* tif);
extern int TIFFFlushData(TIFF* tif);
extern int TIFFGetField(TIFF* tif, uint32 tag, ...);
extern int TIFFVGetField(TIFF* tif, uint32 tag, va_list ap);
extern int TIFFGetFieldDefaulted(TIFF* tif, uint32 tag, ...);
extern int TIFFVGetFieldDefaulted(TIFF* tif, uint32 tag, va_list ap);
extern int TIFFReadDirectory(TIFF* tif);
extern int TIFFReadCustomDirectory(TIFF* tif, toff_t diroff, const TIFFFieldArray* infoarray);
extern int TIFFReadEXIFDirectory(TIFF* tif, toff_t diroff);
extern uint64 TIFFScanlineSize64(TIFF* tif);
extern tmsize_t TIFFScanlineSize(TIFF* tif);
extern uint64 TIFFRasterScanlineSize64(TIFF* tif);
extern tmsize_t TIFFRasterScanlineSize(TIFF* tif);
extern uint64 TIFFStripSize64(TIFF* tif);
extern tmsize_t TIFFStripSize(TIFF* tif);
extern uint64 TIFFRawStripSize64(TIFF* tif, uint32 strip);
extern tmsize_t TIFFRawStripSize(TIFF* tif, uint32 strip);
extern uint64 TIFFVStripSize64(TIFF* tif, uint32 nrows);
extern tmsize_t TIFFVStripSize(TIFF* tif, uint32 nrows);
extern uint64 TIFFTileRowSize64(TIFF* tif);
extern tmsize_t TIFFTileRowSize(TIFF* tif);
extern uint64 TIFFTileSize64(TIFF* tif);
extern tmsize_t TIFFTileSize(TIFF* tif);
extern uint64 TIFFVTileSize64(TIFF* tif, uint32 nrows);
extern tmsize_t TIFFVTileSize(TIFF* tif, uint32 nrows);
extern uint32 TIFFDefaultStripSize(TIFF* tif, uint32 request);
extern void TIFFDefaultTileSize(TIFF*, uint32*, uint32*);
extern int TIFFFileno(TIFF*);
extern int TIFFSetFileno(TIFF*, int);
extern thandle_t TIFFClientdata(TIFF*);
extern thandle_t TIFFSetClientdata(TIFF*, thandle_t);
extern int TIFFGetMode(TIFF*);
extern int TIFFSetMode(TIFF*, int);
extern int TIFFIsTiled(TIFF*);
extern int TIFFIsByteSwapped(TIFF*);
extern int TIFFIsUpSampled(TIFF*);
extern int TIFFIsMSB2LSB(TIFF*);
extern int TIFFIsBigEndian(TIFF*);
extern TIFFReadWriteProc TIFFGetReadProc(TIFF*);
extern TIFFReadWriteProc TIFFGetWriteProc(TIFF*);
extern TIFFSeekProc TIFFGetSeekProc(TIFF*);
extern TIFFCloseProc TIFFGetCloseProc(TIFF*);
extern TIFFSizeProc TIFFGetSizeProc(TIFF*);
extern TIFFMapFileProc TIFFGetMapFileProc(TIFF*);
extern TIFFUnmapFileProc TIFFGetUnmapFileProc(TIFF*);
extern uint32 TIFFCurrentRow(TIFF*);
extern uint16 TIFFCurrentDirectory(TIFF*);
extern uint16 TIFFNumberOfDirectories(TIFF*);
extern uint64 TIFFCurrentDirOffset(TIFF*);
extern uint32 TIFFCurrentStrip(TIFF*);
extern uint32 TIFFCurrentTile(TIFF* tif);
extern int TIFFReadBufferSetup(TIFF* tif, void* bp, tmsize_t size);
extern int TIFFWriteBufferSetup(TIFF* tif, void* bp, tmsize_t size);
extern int TIFFSetupStrips(TIFF *);
extern int TIFFWriteCheck(TIFF*, int, const char *);
extern void TIFFFreeDirectory(TIFF*);
extern int TIFFCreateDirectory(TIFF*);
extern int TIFFCreateCustomDirectory(TIFF*,const TIFFFieldArray*);
extern int TIFFCreateEXIFDirectory(TIFF*);
extern int TIFFLastDirectory(TIFF*);
extern int TIFFSetDirectory(TIFF*, uint16);
extern int TIFFSetSubDirectory(TIFF*, uint64);
extern int TIFFUnlinkDirectory(TIFF*, uint16);
extern int TIFFSetField(TIFF*, uint32, ...);
extern int TIFFVSetField(TIFF*, uint32, va_list);
extern int TIFFUnsetField(TIFF*, uint32);
extern int TIFFWriteDirectory(TIFF *);
extern int TIFFWriteCustomDirectory(TIFF *, uint64 *);
extern int TIFFCheckpointDirectory(TIFF *);
extern int TIFFRewriteDirectory(TIFF *);
extern int TIFFDeferStrileArrayWriting(TIFF *);
extern int TIFFForceStrileArrayWriting(TIFF* );
extern void TIFFPrintDirectory(TIFF*, FILE*, long);
extern int TIFFReadScanline(TIFF* tif, void* buf, uint32 row, uint16 sample);
extern int TIFFWriteScanline(TIFF* tif, void* buf, uint32 row, uint16 sample);
extern int TIFFReadRGBAImage(TIFF*, uint32, uint32, uint32*, int);
extern int TIFFReadRGBAImageOriented(TIFF*, uint32, uint32, uint32*, int, int);
extern int TIFFReadRGBAStrip(TIFF*, uint32, uint32 * );
extern int TIFFReadRGBATile(TIFF*, uint32, uint32, uint32 * );
extern int TIFFReadRGBAStripExt(TIFF*, uint32, uint32 *, int stop_on_error );
extern int TIFFReadRGBATileExt(TIFF*, uint32, uint32, uint32 *, int stop_on_error );
extern int TIFFRGBAImageOK(TIFF*, char [1024]);
extern int TIFFRGBAImageBegin(TIFFRGBAImage*, TIFF*, int, char [1024]);
extern int TIFFRGBAImageGet(TIFFRGBAImage*, uint32*, uint32, uint32);
extern void TIFFRGBAImageEnd(TIFFRGBAImage*);
extern TIFF* TIFFOpen(const char*, const char*);
extern TIFF* TIFFFdOpen(int, const char*, const char*);
extern TIFF* TIFFClientOpen(const char*, const char*, thandle_t, TIFFReadWriteProc, TIFFReadWriteProc, TIFFSeekProc, TIFFCloseProc, TIFFSizeProc, TIFFMapFileProc, TIFFUnmapFileProc);
extern const char* TIFFFileName(TIFF*);
extern const char* TIFFSetFileName(TIFF*, const char *);
extern void TIFFError(const char*, const char*, ...) __attribute__((__format__ (__printf__,2,3)));
extern void TIFFErrorExt(thandle_t, const char*, const char*, ...) __attribute__((__format__ (__printf__,3,4)));
extern void TIFFWarning(const char*, const char*, ...) __attribute__((__format__ (__printf__,2,3)));
extern void TIFFWarningExt(thandle_t, const char*, const char*, ...) __attribute__((__format__ (__printf__,3,4)));
extern TIFFErrorHandler TIFFSetErrorHandler(TIFFErrorHandler);
extern TIFFErrorHandlerExt TIFFSetErrorHandlerExt(TIFFErrorHandlerExt);
extern TIFFErrorHandler TIFFSetWarningHandler(TIFFErrorHandler);
extern TIFFErrorHandlerExt TIFFSetWarningHandlerExt(TIFFErrorHandlerExt);
extern TIFFExtendProc TIFFSetTagExtender(TIFFExtendProc);
extern uint32 TIFFComputeTile(TIFF* tif, uint32 x, uint32 y, uint32 z, uint16 s);
extern int TIFFCheckTile(TIFF* tif, uint32 x, uint32 y, uint32 z, uint16 s);
extern uint32 TIFFNumberOfTiles(TIFF*);
extern tmsize_t TIFFReadTile(TIFF* tif, void* buf, uint32 x, uint32 y, uint32 z, uint16 s);
extern tmsize_t TIFFWriteTile(TIFF* tif, void* buf, uint32 x, uint32 y, uint32 z, uint16 s);
extern uint32 TIFFComputeStrip(TIFF*, uint32, uint16);
extern uint32 TIFFNumberOfStrips(TIFF*);
extern tmsize_t TIFFReadEncodedStrip(TIFF* tif, uint32 strip, void* buf, tmsize_t size);
extern tmsize_t TIFFReadRawStrip(TIFF* tif, uint32 strip, void* buf, tmsize_t size);
extern tmsize_t TIFFReadEncodedTile(TIFF* tif, uint32 tile, void* buf, tmsize_t size);
extern tmsize_t TIFFReadRawTile(TIFF* tif, uint32 tile, void* buf, tmsize_t size);
extern int TIFFReadFromUserBuffer(TIFF* tif, uint32 strile, void* inbuf, tmsize_t insize, void* outbuf, tmsize_t outsize);
extern tmsize_t TIFFWriteEncodedStrip(TIFF* tif, uint32 strip, void* data, tmsize_t cc);
extern tmsize_t TIFFWriteRawStrip(TIFF* tif, uint32 strip, void* data, tmsize_t cc);
extern tmsize_t TIFFWriteEncodedTile(TIFF* tif, uint32 tile, void* data, tmsize_t cc);
extern tmsize_t TIFFWriteRawTile(TIFF* tif, uint32 tile, void* data, tmsize_t cc);
extern int TIFFDataWidth(TIFFDataType);
extern void TIFFSetWriteOffset(TIFF* tif, toff_t off);
extern void TIFFSwabShort(uint16*);
extern void TIFFSwabLong(uint32*);
extern void TIFFSwabLong8(uint64*);
extern void TIFFSwabFloat(float*);
extern void TIFFSwabDouble(double*);
extern void TIFFSwabArrayOfShort(uint16* wp, tmsize_t n);
extern void TIFFSwabArrayOfTriples(uint8* tp, tmsize_t n);
extern void TIFFSwabArrayOfLong(uint32* lp, tmsize_t n);
extern void TIFFSwabArrayOfLong8(uint64* lp, tmsize_t n);
extern void TIFFSwabArrayOfFloat(float* fp, tmsize_t n);
extern void TIFFSwabArrayOfDouble(double* dp, tmsize_t n);
extern void TIFFReverseBits(uint8* cp, tmsize_t n);
extern const unsigned char* TIFFGetBitRevTable(int);
extern uint64 TIFFGetStrileOffset(TIFF *tif, uint32 strile);
extern uint64 TIFFGetStrileByteCount(TIFF *tif, uint32 strile);
extern uint64 TIFFGetStrileOffsetWithErr(TIFF *tif, uint32 strile, int *pbErr);
extern uint64 TIFFGetStrileByteCountWithErr(TIFF *tif, uint32 strile, int *pbErr);
/* #define U_NEU		0.210526316 */
/* #define V_NEU		0.473684211 */
/* #define UVSCALE		410. */
extern double LogL16toY(int);
extern double LogL10toY(int);
extern void XYZtoRGB24(float*, uint8*);
extern int uv_decode(double*, double*, int);
extern void LogLuv24toXYZ(uint32, float*);
extern void LogLuv32toXYZ(uint32, float*);
extern int LogL16fromY(double, int);
extern int LogL10fromY(double, int);
extern int uv_encode(double, double, int);
extern uint32 LogLuv24fromXYZ(float*, int);
extern uint32 LogLuv32fromXYZ(float*, int);
extern int TIFFCIELabToRGBInit(TIFFCIELabToRGB*, const TIFFDisplay *, float*);
extern void TIFFCIELabToXYZ(TIFFCIELabToRGB *, uint32, int32, int32, float *, float *, float *);
extern void TIFFXYZToRGB(TIFFCIELabToRGB *, float, float, float, uint32 *, uint32 *, uint32 *);
extern int TIFFYCbCrToRGBInit(TIFFYCbCrToRGB*, float*, float*);
extern void TIFFYCbCrtoRGB(TIFFYCbCrToRGB *, uint32, int32, int32, uint32 *, uint32 *, uint32 *);
typedef struct { ttag_t field_tag;
short field_readcount;
short field_writecount;
TIFFDataType field_type;
unsigned short field_bit;
unsigned char field_oktochange;
unsigned char field_passcount;
char *field_name;
} TIFFFieldInfo;
extern int TIFFMergeFieldInfo(TIFF*, const TIFFFieldInfo[], uint32);
/* END /usr/include/x86_64-1-gnu/tiffio.h */
]]
return ffi.load 'tiff'
