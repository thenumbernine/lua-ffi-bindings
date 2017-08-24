-- #include "tiff.h"
-- #include "tiffvers.h"

local ffi = require( "ffi" )
ffi.cdef [[
  typedef enum TIFFDataType {
    TIFF_NOTYPE,
    TIFF_BYTE,
    TIFF_ASCII,
    TIFF_SHORT,
    TIFF_LONG,
    TIFF_RATIONAL,
    TIFF_SBYTE,
    TIFF_UNDEFINED,
    TIFF_SSHORT,
    TIFF_SLONG,
    TIFF_SRATIONAL,
    TIFF_FLOAT,
    TIFF_DOUBLE,
    TIFF_IFD,
    TIFF_LONG8,
    TIFF_SLONG8,
    TIFF_IFD8
  } TIFFDataType;

  enum {
    TIFF_ANY               = TIFF_NOTYPE,
    TIFF_VARIABLE          = -1,
    TIFF_SPP               = -2,
    TIFF_VARIABLE2         = -3,
    TIFF_FIELD_CUSTOM      = 65,
    TIFFPRINT_NONE         = 0x0,
    TIFFPRINT_STRIPS       = 0x1,
    TIFFPRINT_CURVES       = 0x2,
    TIFFPRINT_COLORMAP     = 0x4,
    TIFFPRINT_JPEGQTABLES  = 0x100,
    TIFFPRINT_JPEGACTABLES = 0x200,
    TIFFPRINT_JPEGDCTABLES = 0x200,
  };

enum {
	_TIFF_ = 1,
	TIFF_VERSION_CLASSIC = 42,	
	TIFF_VERSION_BIG = 43,	
	TIFF_BIGENDIAN      = 0x4d4d,
	TIFF_LITTLEENDIAN   = 0x4949,
	MDI_LITTLEENDIAN    = 0x5045,
	MDI_BIGENDIAN       = 0x4550,
	TIFFTAG_SUBFILETYPE		= 254,		/* subfile data descriptor */
	    FILETYPE_REDUCEDIMAGE	= 0x1,	/* reduced resolution version */
	    FILETYPE_PAGE		= 0x2,	/* one page of many */
	    FILETYPE_MASK		= 0x4,	/* transparency mask */
	TIFFTAG_OSUBFILETYPE		= 255,		/* +kind of data in subfile */
	    OFILETYPE_IMAGE		= 1,		/* full resolution image data */
	    OFILETYPE_REDUCEDIMAGE	= 2,		/* reduced size image data */
	    OFILETYPE_PAGE		= 3,		/* one page of many */
	TIFFTAG_IMAGEWIDTH		= 256,		/* image width in pixels */
	TIFFTAG_IMAGELENGTH		= 257,		/* image height in pixels */
	TIFFTAG_BITSPERSAMPLE		= 258,		/* bits per channel (sample) */
	TIFFTAG_COMPRESSION		= 259,		/* data compression technique */
	    COMPRESSION_NONE		= 1,		/* dump mode */
	    COMPRESSION_CCITTRLE	= 2,		/* CCITT modified Huffman RLE */
	    COMPRESSION_CCITTFAX3	= 3,		/* CCITT Group 3 fax encoding */
	    COMPRESSION_CCITT_T4        = 3,	       /* CCITT T.4 (TIFF 6 name) */
	    COMPRESSION_CCITTFAX4	= 4,		/* CCITT Group 4 fax encoding */
	    COMPRESSION_CCITT_T6        = 4,	       /* CCITT T.6 (TIFF 6 name) */
	    COMPRESSION_LZW		= 5,	       /* Lempel-Ziv  & Welch */
	    COMPRESSION_OJPEG		= 6,		/* !6.0 JPEG */
	    COMPRESSION_JPEG		= 7,		/* %JPEG DCT compression */
	    COMPRESSION_T85			= 9,		/* !TIFF/FX T.85 JBIG compression */
	    COMPRESSION_T43			= 10,		/* !TIFF/FX T.43 colour by layered JBIG compression */
	    COMPRESSION_NEXT		= 32766,		/* NeXT 2-bit RLE */
	    COMPRESSION_CCITTRLEW	= 32771,		/* #1 w/ word alignment */
	    COMPRESSION_PACKBITS	= 32773,		/* Macintosh RLE */
	    COMPRESSION_THUNDERSCAN	= 32809,		/* ThunderScan RLE */
	    COMPRESSION_IT8CTPAD	= 32895,	   /* IT8 CT w/padding */
	    COMPRESSION_IT8LW		= 32896,	   /* IT8 Linework RLE */
	    COMPRESSION_IT8MP		= 32897,	   /* IT8 Monochrome picture */
	    COMPRESSION_IT8BL		= 32898,	   /* IT8 Binary line art */
	    COMPRESSION_PIXARFILM	= 32908,	   /* Pixar companded 10bit LZW */
	    COMPRESSION_PIXARLOG	= 32909,	   /* Pixar companded 11bit ZIP */
	    COMPRESSION_DEFLATE		= 32946,		/* Deflate compression */
	    COMPRESSION_ADOBE_DEFLATE   = 8,	       /* Deflate compression,
	    COMPRESSION_DCS             = 32947,	   /* Kodak DCS encoding */
	    COMPRESSION_JBIG		= 34661,		/* ISO JBIG */
	    COMPRESSION_SGILOG		= 34676,		/* SGI Log Luminance RLE */
	    COMPRESSION_SGILOG24	= 34677,		/* SGI Log 24-bit packed */
	    COMPRESSION_JP2000          = 34712,	   /* Leadtools JPEG2000 */
	    COMPRESSION_LZMA		= 34925,		/* LZMA2 */
	TIFFTAG_PHOTOMETRIC		= 262,		/* photometric interpretation */
	    PHOTOMETRIC_MINISWHITE	= 0,		/* min value is white */
	    PHOTOMETRIC_MINISBLACK	= 1,		/* min value is black */
	    PHOTOMETRIC_RGB		= 2,		/* RGB color model */
	    PHOTOMETRIC_PALETTE		= 3,		/* color map indexed */
	    PHOTOMETRIC_MASK		= 4,		/* $holdout mask */
	    PHOTOMETRIC_SEPARATED	= 5,		/* !color separations */
	    PHOTOMETRIC_YCBCR		= 6,		/* !CCIR 601 */
	    PHOTOMETRIC_CIELAB		= 8,		/* !1976 CIE L*a*b* */
	    PHOTOMETRIC_ICCLAB		= 9,		/* ICC L*a*b* [Adobe TIFF Technote 4] */
	    PHOTOMETRIC_ITULAB		= 10,		/* ITU L*a*b* */
	    PHOTOMETRIC_CFA		= 32803,		/* color filter array */
	    PHOTOMETRIC_LOGL		= 32844,		/* CIE Log2(L) */
	    PHOTOMETRIC_LOGLUV		= 32845,		/* CIE Log2(L) (u',v') */
	TIFFTAG_THRESHHOLDING		= 263,		/* +thresholding used on data */
	    THRESHHOLD_BILEVEL		= 1,		/* b&w art scan */
	    THRESHHOLD_HALFTONE		= 2,		/* or dithered scan */
	    THRESHHOLD_ERRORDIFFUSE	= 3,		/* usually floyd-steinberg */
	TIFFTAG_CELLWIDTH		= 264,		/* +dithering matrix width */
	TIFFTAG_CELLLENGTH		= 265,		/* +dithering matrix height */
	TIFFTAG_FILLORDER		= 266,		/* data order within a byte */
	    FILLORDER_MSB2LSB		= 1,		/* most significant -> least */
	    FILLORDER_LSB2MSB		= 2,		/* least significant -> most */
	TIFFTAG_DOCUMENTNAME		= 269,		/* name of doc. image is from */
	TIFFTAG_IMAGEDESCRIPTION	= 270,		/* info about image */
	TIFFTAG_MAKE			= 271,		/* scanner manufacturer name */
	TIFFTAG_MODEL			= 272,		/* scanner model name/number */
	TIFFTAG_STRIPOFFSETS		= 273,		/* offsets to data strips */
	TIFFTAG_ORIENTATION		= 274,		/* +image orientation */
	    ORIENTATION_TOPLEFT		= 1,		/* row 0 top, col 0 lhs */
	    ORIENTATION_TOPRIGHT	= 2,		/* row 0 top, col 0 rhs */
	    ORIENTATION_BOTRIGHT	= 3,		/* row 0 bottom, col 0 rhs */
	    ORIENTATION_BOTLEFT		= 4,		/* row 0 bottom, col 0 lhs */
	    ORIENTATION_LEFTTOP		= 5,		/* row 0 lhs, col 0 top */
	    ORIENTATION_RIGHTTOP	= 6,		/* row 0 rhs, col 0 top */
	    ORIENTATION_RIGHTBOT	= 7,		/* row 0 rhs, col 0 bottom */
	    ORIENTATION_LEFTBOT		= 8,		/* row 0 lhs, col 0 bottom */
	TIFFTAG_SAMPLESPERPIXEL		= 277,		/* samples per pixel */
	TIFFTAG_ROWSPERSTRIP		= 278,		/* rows per strip of data */
	TIFFTAG_STRIPBYTECOUNTS		= 279,		/* bytes counts for strips */
	TIFFTAG_MINSAMPLEVALUE		= 280,		/* +minimum sample value */
	TIFFTAG_MAXSAMPLEVALUE		= 281,		/* +maximum sample value */
	TIFFTAG_XRESOLUTION		= 282,		/* pixels/resolution in x */
	TIFFTAG_YRESOLUTION		= 283,		/* pixels/resolution in y */
	TIFFTAG_PLANARCONFIG		= 284,		/* storage organization */
	    PLANARCONFIG_CONTIG		= 1,		/* single image plane */
	    PLANARCONFIG_SEPARATE	= 2,		/* separate planes of data */
	TIFFTAG_PAGENAME		= 285,		/* page name image is from */
	TIFFTAG_XPOSITION		= 286,		/* x page offset of image lhs */
	TIFFTAG_YPOSITION		= 287,		/* y page offset of image lhs */
	TIFFTAG_FREEOFFSETS		= 288,		/* +byte offset to free block */
	TIFFTAG_FREEBYTECOUNTS		= 289,		/* +sizes of free blocks */
	TIFFTAG_GRAYRESPONSEUNIT	= 290,		/* $gray scale curve accuracy */
	    GRAYRESPONSEUNIT_10S	= 1,		/* tenths of a unit */
	    GRAYRESPONSEUNIT_100S	= 2,		/* hundredths of a unit */
	    GRAYRESPONSEUNIT_1000S	= 3,		/* thousandths of a unit */
	    GRAYRESPONSEUNIT_10000S	= 4,		/* ten-thousandths of a unit */
	    GRAYRESPONSEUNIT_100000S	= 5,		/* hundred-thousandths */
	TIFFTAG_GRAYRESPONSECURVE	= 291,		/* $gray scale response curve */
	TIFFTAG_GROUP3OPTIONS		= 292,		/* 32 flag bits */
	TIFFTAG_T4OPTIONS		= 292,		/* TIFF 6.0 proper name alias */
	    GROUP3OPT_2DENCODING	= 0x1,	/* 2-dimensional coding */
	    GROUP3OPT_UNCOMPRESSED	= 0x2,	/* data not compressed */
	    GROUP3OPT_FILLBITS		= 0x4,	/* fill to byte boundary */
	TIFFTAG_GROUP4OPTIONS		= 293,		/* 32 flag bits */
	TIFFTAG_T6OPTIONS               = 293,	     /* TIFF 6.0 proper name */
	    GROUP4OPT_UNCOMPRESSED	= 0x2,	/* data not compressed */
	TIFFTAG_RESOLUTIONUNIT		= 296,		/* units of resolutions */
	    RESUNIT_NONE		= 1,		/* no meaningful units */
	    RESUNIT_INCH		= 2,		/* english */
	    RESUNIT_CENTIMETER		= 3,		/* metric */
	TIFFTAG_PAGENUMBER		= 297,		/* page numbers of multi-page */
	TIFFTAG_COLORRESPONSEUNIT	= 300,		/* $color curve accuracy */
	    COLORRESPONSEUNIT_10S	= 1,		/* tenths of a unit */
	    COLORRESPONSEUNIT_100S	= 2,		/* hundredths of a unit */
	    COLORRESPONSEUNIT_1000S	= 3,		/* thousandths of a unit */
	    COLORRESPONSEUNIT_10000S	= 4,		/* ten-thousandths of a unit */
	    COLORRESPONSEUNIT_100000S	= 5,		/* hundred-thousandths */
	TIFFTAG_TRANSFERFUNCTION	= 301,		/* !colorimetry info */
	TIFFTAG_SOFTWARE		= 305,		/* name & release */
	TIFFTAG_DATETIME		= 306,		/* creation date and time */
	TIFFTAG_ARTIST			= 315,		/* creator of image */
	TIFFTAG_HOSTCOMPUTER		= 316,		/* machine where created */
	TIFFTAG_PREDICTOR		= 317,		/* prediction scheme w/ LZW */
	    PREDICTOR_NONE		= 1,		/* no prediction scheme used */
	    PREDICTOR_HORIZONTAL	= 2,		/* horizontal differencing */
	    PREDICTOR_FLOATINGPOINT	= 3,		/* floating point predictor */
	TIFFTAG_WHITEPOINT		= 318,		/* image white point */
	TIFFTAG_PRIMARYCHROMATICITIES	= 319,		/* !primary chromaticities */
	TIFFTAG_COLORMAP		= 320,		/* RGB map for pallette image */
	TIFFTAG_HALFTONEHINTS		= 321,		/* !highlight+shadow info */
	TIFFTAG_TILEWIDTH		= 322,		/* !tile width in pixels */
	TIFFTAG_TILELENGTH		= 323,		/* !tile height in pixels */
	TIFFTAG_TILEOFFSETS		= 324,		/* !offsets to data tiles */
	TIFFTAG_TILEBYTECOUNTS		= 325,		/* !byte counts for tiles */
	TIFFTAG_BADFAXLINES		= 326,		/* lines w/ wrong pixel count */
	TIFFTAG_CLEANFAXDATA		= 327,		/* regenerated line info */
	    CLEANFAXDATA_CLEAN		= 0,		/* no errors detected */
	    CLEANFAXDATA_REGENERATED	= 1,		/* receiver regenerated lines */
	    CLEANFAXDATA_UNCLEAN	= 2,		/* uncorrected errors exist */
	TIFFTAG_CONSECUTIVEBADFAXLINES	= 328,		/* max consecutive bad lines */
	TIFFTAG_SUBIFD			= 330,		/* subimage descriptors */
	TIFFTAG_INKSET			= 332,		/* !inks in separated image */
	    INKSET_CMYK			= 1,		/* !cyan-magenta-yellow-black color */
	    INKSET_MULTIINK		= 2,		/* !multi-ink or hi-fi color */
	TIFFTAG_INKNAMES		= 333,		/* !ascii names of inks */
	TIFFTAG_NUMBEROFINKS		= 334,		/* !number of inks */
	TIFFTAG_DOTRANGE		= 336,		/* !0% and 100% dot codes */
	TIFFTAG_TARGETPRINTER		= 337,		/* !separation target */
	TIFFTAG_EXTRASAMPLES		= 338,		/* !info about extra samples */
	    EXTRASAMPLE_UNSPECIFIED	= 0,		/* !unspecified data */
	    EXTRASAMPLE_ASSOCALPHA	= 1,		/* !associated alpha data */
	    EXTRASAMPLE_UNASSALPHA	= 2,		/* !unassociated alpha data */
	TIFFTAG_SAMPLEFORMAT		= 339,		/* !data sample format */
	    SAMPLEFORMAT_UINT		= 1,		/* !unsigned integer data */
	    SAMPLEFORMAT_INT		= 2,		/* !signed integer data */
	    SAMPLEFORMAT_IEEEFP		= 3,		/* !IEEE floating point data */
	    SAMPLEFORMAT_VOID		= 4,		/* !untyped data */
	    SAMPLEFORMAT_COMPLEXINT	= 5,		/* !complex signed int */
	    SAMPLEFORMAT_COMPLEXIEEEFP	= 6,		/* !complex ieee floating */
	TIFFTAG_SMINSAMPLEVALUE		= 340,		/* !variable MinSampleValue */
	TIFFTAG_SMAXSAMPLEVALUE		= 341,		/* !variable MaxSampleValue */
	TIFFTAG_CLIPPATH		= 343,		/* %ClipPath
	TIFFTAG_XCLIPPATHUNITS		= 344,		/* %XClipPathUnits
	TIFFTAG_YCLIPPATHUNITS		= 345,		/* %YClipPathUnits
	TIFFTAG_INDEXED			= 346,		/* %Indexed
	TIFFTAG_JPEGTABLES		= 347,		/* %JPEG table stream */
	TIFFTAG_OPIPROXY		= 351,		/* %OPI Proxy [Adobe TIFF technote] */
	TIFFTAG_GLOBALPARAMETERSIFD	= 400,		/* ! */
	TIFFTAG_PROFILETYPE			= 401,		/* ! */
	    PROFILETYPE_UNSPECIFIED	= 0,		/* ! */
	    PROFILETYPE_G3_FAX		= 1,		/* ! */
	TIFFTAG_FAXPROFILE			= 402,		/* ! */
	    FAXPROFILE_S			= 1,		/* !TIFF/FX FAX profile S */
	    FAXPROFILE_F			= 2,		/* !TIFF/FX FAX profile F */
	    FAXPROFILE_J			= 3,		/* !TIFF/FX FAX profile J */
	    FAXPROFILE_C			= 4,		/* !TIFF/FX FAX profile C */
	    FAXPROFILE_L			= 5,		/* !TIFF/FX FAX profile L */
	    FAXPROFILE_M			= 6,		/* !TIFF/FX FAX profile LM */
	TIFFTAG_CODINGMETHODS		= 403,		/* !TIFF/FX coding methods */
	    CODINGMETHODS_T4_1D		= (1 << 1),		/* !T.4 1D */
	    CODINGMETHODS_T4_2D		= (1 << 2),		/* !T.4 2D */
	    CODINGMETHODS_T6		= (1 << 3),		/* !T.6 */
	    CODINGMETHODS_T85 		= (1 << 4),		/* !T.85 JBIG */
	    CODINGMETHODS_T42 		= (1 << 5),		/* !T.42 JPEG */
	    CODINGMETHODS_T43		= (1 << 6),		/* !T.43 colour by layered JBIG */
	TIFFTAG_VERSIONYEAR			= 404,		/* !TIFF/FX version year */
	TIFFTAG_MODENUMBER			= 405,		/* !TIFF/FX mode number */
	TIFFTAG_DECODE				= 433,		/* !TIFF/FX decode */
	TIFFTAG_IMAGEBASECOLOR		= 434,		/* !TIFF/FX image base colour */
	TIFFTAG_T82OPTIONS			= 435,		/* !TIFF/FX T.82 options */
	TIFFTAG_JPEGPROC		= 512,		/* !JPEG processing algorithm */
	    JPEGPROC_BASELINE		= 1,		/* !baseline sequential */
	    JPEGPROC_LOSSLESS		= 14,		/* !Huffman coded lossless */
	TIFFTAG_JPEGIFOFFSET		= 513,		/* !pointer to SOI marker */
	TIFFTAG_JPEGIFBYTECOUNT		= 514,		/* !JFIF stream length */
	TIFFTAG_JPEGRESTARTINTERVAL	= 515,		/* !restart interval length */
	TIFFTAG_JPEGLOSSLESSPREDICTORS	= 517,		/* !lossless proc predictor */
	TIFFTAG_JPEGPOINTTRANSFORM	= 518,		/* !lossless point transform */
	TIFFTAG_JPEGQTABLES		= 519,		/* !Q matrice offsets */
	TIFFTAG_JPEGDCTABLES		= 520,		/* !DCT table offsets */
	TIFFTAG_JPEGACTABLES		= 521,		/* !AC coefficient offsets */
	TIFFTAG_YCBCRCOEFFICIENTS	= 529,		/* !RGB -> YCbCr transform */
	TIFFTAG_YCBCRSUBSAMPLING	= 530,		/* !YCbCr subsampling factors */
	TIFFTAG_YCBCRPOSITIONING	= 531,		/* !subsample positioning */
	    YCBCRPOSITION_CENTERED	= 1,		/* !as in PostScript Level 2 */
	    YCBCRPOSITION_COSITED	= 2,		/* !as in CCIR 601-1 */
	TIFFTAG_REFERENCEBLACKWHITE	= 532,		/* !colorimetry info */
	TIFFTAG_STRIPROWCOUNTS		= 559,	 /* !TIFF/FX strip row counts */
	TIFFTAG_XMLPACKET		= 700,		/* %XML packet
	TIFFTAG_OPIIMAGEID		= 32781,		/* %OPI ImageID
	TIFFTAG_REFPTS			= 32953,		/* image reference points */
	TIFFTAG_REGIONTACKPOINT		= 32954,		/* region-xform tack point */
	TIFFTAG_REGIONWARPCORNERS	= 32955,		/* warp quadrilateral */
	TIFFTAG_REGIONAFFINE		= 32956,		/* affine transformation mat */
	TIFFTAG_MATTEING		= 32995,		/* $use ExtraSamples */
	TIFFTAG_DATATYPE		= 32996,		/* $use SampleFormat */
	TIFFTAG_IMAGEDEPTH		= 32997,		/* z depth of image */
	TIFFTAG_TILEDEPTH		= 32998,		/* z depth/data tile */
	TIFFTAG_PIXAR_IMAGEFULLWIDTH    = 33300,	   /* full image size in x */
	TIFFTAG_PIXAR_IMAGEFULLLENGTH   = 33301,	   /* full image size in y */
	TIFFTAG_PIXAR_TEXTUREFORMAT	= 33302,		/* texture map format */
	TIFFTAG_PIXAR_WRAPMODES		= 33303,		/* s & t wrap modes */
	TIFFTAG_PIXAR_FOVCOT		= 33304,		/* cotan(fov) for env. maps */
	TIFFTAG_PIXAR_MATRIX_WORLDTOSCREEN = 33305,	
	TIFFTAG_PIXAR_MATRIX_WORLDTOCAMERA = 33306,	
	TIFFTAG_WRITERSERIALNUMBER      = 33405,	   /* device serial number */
	TIFFTAG_CFAREPEATPATTERNDIM	= 33421,		/* dimensions of CFA pattern */
	TIFFTAG_CFAPATTERN		= 33422,		/* color filter array pattern */
	TIFFTAG_COPYRIGHT		= 33432,		/* copyright string */
	TIFFTAG_RICHTIFFIPTC		= 33723,	
	TIFFTAG_IT8SITE			= 34016,		/* site name */
	TIFFTAG_IT8COLORSEQUENCE	= 34017,		/* color seq. [RGB,CMYK,etc] */
	TIFFTAG_IT8HEADER		= 34018,		/* DDES Header */
	TIFFTAG_IT8RASTERPADDING	= 34019,		/* raster scanline padding */
	TIFFTAG_IT8BITSPERRUNLENGTH	= 34020,		/* # of bits in short run */
	TIFFTAG_IT8BITSPEREXTENDEDRUNLENGTH = 34021,	/* # of bits in long run */
	TIFFTAG_IT8COLORTABLE		= 34022,		/* LW colortable */
	TIFFTAG_IT8IMAGECOLORINDICATOR	= 34023,		/* BP/BL image color switch */
	TIFFTAG_IT8BKGCOLORINDICATOR	= 34024,		/* BP/BL bg color switch */
	TIFFTAG_IT8IMAGECOLORVALUE	= 34025,		/* BP/BL image color value */
	TIFFTAG_IT8BKGCOLORVALUE	= 34026,		/* BP/BL bg color value */
	TIFFTAG_IT8PIXELINTENSITYRANGE	= 34027,		/* MP pixel intensity value */
	TIFFTAG_IT8TRANSPARENCYINDICATOR = 34028,		/* HC transparency switch */
	TIFFTAG_IT8COLORCHARACTERIZATION = 34029,		/* color character. table */
	TIFFTAG_IT8HCUSAGE		= 34030,		/* HC usage indicator */
	TIFFTAG_IT8TRAPINDICATOR	= 34031,		/* Trapping indicator
	TIFFTAG_IT8CMYKEQUIVALENT	= 34032,		/* CMYK color equivalents */
	TIFFTAG_FRAMECOUNT              = 34232,	   /* Sequence Frame Count */
	TIFFTAG_PHOTOSHOP		= 34377,	 
	TIFFTAG_EXIFIFD			= 34665,		/* Pointer to EXIF private directory */
	TIFFTAG_ICCPROFILE		= 34675,		/* ICC profile data */
	TIFFTAG_IMAGELAYER		= 34732,		/* !TIFF/FX image layer information */
	TIFFTAG_JBIGOPTIONS		= 34750,		/* JBIG options */
	TIFFTAG_GPSIFD			= 34853,		/* Pointer to GPS private directory */
	TIFFTAG_FAXRECVPARAMS		= 34908,		/* encoded Class 2 ses. parms */
	TIFFTAG_FAXSUBADDRESS		= 34909,		/* received SubAddr string */
	TIFFTAG_FAXRECVTIME		= 34910,		/* receive time (secs) */
	TIFFTAG_FAXDCS			= 34911,		/* encoded fax ses. params, Table 2/T.30 */
	TIFFTAG_STONITS			= 37439,		/* Sample value to Nits */
	TIFFTAG_FEDEX_EDR		= 34929,		/* unknown use */
	TIFFTAG_INTEROPERABILITYIFD	= 40965,		/* Pointer to Interoperability private directory */
	TIFFTAG_DNGVERSION		= 50706,		/* &DNG version number */
	TIFFTAG_DNGBACKWARDVERSION	= 50707,		/* &DNG compatibility version */
	TIFFTAG_UNIQUECAMERAMODEL	= 50708,		/* &name for the camera model */
	TIFFTAG_LOCALIZEDCAMERAMODEL	= 50709,		/* &localized camera model
	TIFFTAG_CFAPLANECOLOR		= 50710,		/* &CFAPattern->LinearRaw space
	TIFFTAG_CFALAYOUT		= 50711,		/* &spatial layout of the CFA */
	TIFFTAG_LINEARIZATIONTABLE	= 50712,		/* &lookup table description */
	TIFFTAG_BLACKLEVELREPEATDIM	= 50713,		/* &repeat pattern size for
	TIFFTAG_BLACKLEVEL		= 50714,		/* &zero light encoding level */
	TIFFTAG_BLACKLEVELDELTAH	= 50715,		/* &zero light encoding level
	TIFFTAG_BLACKLEVELDELTAV	= 50716,		/* &zero light encoding level
	TIFFTAG_WHITELEVEL		= 50717,		/* &fully saturated encoding
	TIFFTAG_DEFAULTSCALE		= 50718,		/* &default scale factors */
	TIFFTAG_DEFAULTCROPORIGIN	= 50719,		/* &origin of the final image
	TIFFTAG_DEFAULTCROPSIZE		= 50720,		/* &size of the final image 
	TIFFTAG_COLORMATRIX1		= 50721,		/* &XYZ->reference color space
	TIFFTAG_COLORMATRIX2		= 50722,		/* &XYZ->reference color space
	TIFFTAG_CAMERACALIBRATION1	= 50723,		/* &calibration matrix 1 */
	TIFFTAG_CAMERACALIBRATION2	= 50724,		/* &calibration matrix 2 */
	TIFFTAG_REDUCTIONMATRIX1	= 50725,		/* &dimensionality reduction
	TIFFTAG_REDUCTIONMATRIX2	= 50726,		/* &dimensionality reduction
	TIFFTAG_ANALOGBALANCE		= 50727,		/* &gain applied the stored raw
	TIFFTAG_ASSHOTNEUTRAL		= 50728,		/* &selected white balance in
	TIFFTAG_ASSHOTWHITEXY		= 50729,		/* &selected white balance in
	TIFFTAG_BASELINEEXPOSURE	= 50730,		/* &how much to move the zero
	TIFFTAG_BASELINENOISE		= 50731,		/* &relative noise level */
	TIFFTAG_BASELINESHARPNESS	= 50732,		/* &relative amount of
	TIFFTAG_BAYERGREENSPLIT		= 50733,		/* &how closely the values of
	TIFFTAG_LINEARRESPONSELIMIT	= 50734,		/* &non-linear encoding range */
	TIFFTAG_CAMERASERIALNUMBER	= 50735,		/* &camera's serial number */
	TIFFTAG_LENSINFO		= 50736,		/* info about the lens */
	TIFFTAG_CHROMABLURRADIUS	= 50737,		/* &chroma blur radius */
	TIFFTAG_ANTIALIASSTRENGTH	= 50738,		/* &relative strength of the
	TIFFTAG_SHADOWSCALE		= 50739,		/* &used by Adobe Camera Raw */
	TIFFTAG_DNGPRIVATEDATA		= 50740,		/* &manufacturer's private data */
	TIFFTAG_MAKERNOTESAFETY		= 50741,		/* &whether the EXIF MakerNote
	TIFFTAG_CALIBRATIONILLUMINANT1	= 50778,		/* &illuminant 1 */
	TIFFTAG_CALIBRATIONILLUMINANT2	= 50779,		/* &illuminant 2 */
	TIFFTAG_BESTQUALITYSCALE	= 50780,		/* &best quality multiplier */
	TIFFTAG_RAWDATAUNIQUEID		= 50781,		/* &unique identifier for
	TIFFTAG_ORIGINALRAWFILENAME	= 50827,		/* &file name of the original
	TIFFTAG_ORIGINALRAWFILEDATA	= 50828,		/* &contents of the original
	TIFFTAG_ACTIVEAREA		= 50829,		/* &active (non-masked) pixels
	TIFFTAG_MASKEDAREAS		= 50830,		/* &list of coordinates
	TIFFTAG_ASSHOTICCPROFILE	= 50831,		/* &these two tags used to */
	TIFFTAG_ASSHOTPREPROFILEMATRIX	= 50832,		/* map cameras's color space
	TIFFTAG_CURRENTICCPROFILE	= 50833,		/* & */
	TIFFTAG_CURRENTPREPROFILEMATRIX	= 50834,		/* & */
	/* tag = 65535,	 is an undefined tag used by Eastman Kodak */
	TIFFTAG_DCSHUESHIFTVALUES       = 65535,	   /* hue shift correction data */
	TIFFTAG_FAXMODE			= 65536,		/* Group 3/4 format control */
	    FAXMODE_CLASSIC	= 0x0000,		/* default, include RTC */
	    FAXMODE_NORTC	= 0x0001,		/* no RTC at end of data */
	    FAXMODE_NOEOL	= 0x0002,		/* no EOL code at end of row */
	    FAXMODE_BYTEALIGN	= 0x0004,		/* byte align row */
	    FAXMODE_WORDALIGN	= 0x0008,		/* word align row */
	    FAXMODE_CLASSF	= 0x0001,	/*FAXMODE_NORTC*/	/* TIFF Class F */
	TIFFTAG_JPEGQUALITY		= 65537,		/* Compression quality level */
	TIFFTAG_JPEGCOLORMODE		= 65538,		/* Auto RGB<=>YCbCr convert? */
	    JPEGCOLORMODE_RAW	= 0x0000,		/* no conversion (default) */
	    JPEGCOLORMODE_RGB	= 0x0001,		/* do auto conversion */
	TIFFTAG_JPEGTABLESMODE		= 65539,		/* What to put in JPEGTables */
	    JPEGTABLESMODE_QUANT = 0x0001,		/* include quantization tbls */
	    JPEGTABLESMODE_HUFF	= 0x0002,		/* include Huffman tbls */
	TIFFTAG_FAXFILLFUNC		= 65540,		/* G3/G4 fill function */
	TIFFTAG_PIXARLOGDATAFMT		= 65549,		/* PixarLogCodec I/O data sz */
	    PIXARLOGDATAFMT_8BIT	= 0,		/* regular u_char samples */
	    PIXARLOGDATAFMT_8BITABGR	= 1,		/* ABGR-order u_chars */
	    PIXARLOGDATAFMT_11BITLOG	= 2,		/* 11-bit log-encoded (raw) */
	    PIXARLOGDATAFMT_12BITPICIO	= 3,		/* as per PICIO (1.0==2048) */
	    PIXARLOGDATAFMT_16BIT	= 4,		/* signed short samples */
	    PIXARLOGDATAFMT_FLOAT	= 5,		/* IEEE float samples */
	TIFFTAG_DCSIMAGERTYPE           = 65550,	   /* imager model & filter */
	    DCSIMAGERMODEL_M3           = 0,	       /* M3 chip (1280 x 1024) */
	    DCSIMAGERMODEL_M5           = 1,	       /* M5 chip (1536 x 1024) */
	    DCSIMAGERMODEL_M6           = 2,	       /* M6 chip (3072 x 2048) */
	    DCSIMAGERFILTER_IR          = 0,	       /* infrared filter */
	    DCSIMAGERFILTER_MONO        = 1,	       /* monochrome filter */
	    DCSIMAGERFILTER_CFA         = 2,	       /* color filter array */
	    DCSIMAGERFILTER_OTHER       = 3,	       /* other filter */
	TIFFTAG_DCSINTERPMODE           = 65551,	   /* interpolation mode */
	    DCSINTERPMODE_NORMAL        = 0x0,     /* whole image, default */
	    DCSINTERPMODE_PREVIEW       = 0x1,     /* preview of image (384x256) */
	TIFFTAG_DCSBALANCEARRAY         = 65552,	   /* color balance values */
	TIFFTAG_DCSCORRECTMATRIX        = 65553,	   /* color correction values */
	TIFFTAG_DCSGAMMA                = 65554,	   /* gamma value */
	TIFFTAG_DCSTOESHOULDERPTS       = 65555,	   /* toe & shoulder points */
	TIFFTAG_DCSCALIBRATIONFD        = 65556,	   /* calibration file desc */
	TIFFTAG_ZIPQUALITY		= 65557,		/* compression quality level */
	TIFFTAG_PIXARLOGQUALITY		= 65558,		/* PixarLog uses same scale */
	TIFFTAG_DCSCLIPRECTANGLE	= 65559,		/* area of image to acquire */
	TIFFTAG_SGILOGDATAFMT		= 65560,		/* SGILog user data format */
	    SGILOGDATAFMT_FLOAT		= 0,		/* IEEE float samples */
	    SGILOGDATAFMT_16BIT		= 1,		/* 16-bit samples */
	    SGILOGDATAFMT_RAW		= 2,		/* uninterpreted data */
	    SGILOGDATAFMT_8BIT		= 3,		/* 8-bit RGB monitor values */
	TIFFTAG_SGILOGENCODE		= 65561,	 /* SGILog data encoding control*/
	    SGILOGENCODE_NODITHER	= 0,	     /* do not dither encoded values*/
	    SGILOGENCODE_RANDITHER	= 1,	     /* randomly dither encd values */
	TIFFTAG_LZMAPRESET		= 65562,		/* LZMA2 preset (compression level) */
	TIFFTAG_PERSAMPLE       = 65563,		/* interface for per sample tags */
	    PERSAMPLE_MERGED        = 0,		/* present as a single value */
	    PERSAMPLE_MULTI         = 1,		/* present as multiple values */
	EXIFTAG_EXPOSURETIME		= 33434,		/* Exposure time */
	EXIFTAG_FNUMBER			= 33437,		/* F number */
	EXIFTAG_EXPOSUREPROGRAM		= 34850,		/* Exposure program */
	EXIFTAG_SPECTRALSENSITIVITY	= 34852,		/* Spectral sensitivity */
	EXIFTAG_ISOSPEEDRATINGS		= 34855,		/* ISO speed rating */
	EXIFTAG_OECF			= 34856,		/* Optoelectric conversion
	EXIFTAG_EXIFVERSION		= 36864,		/* Exif version */
	EXIFTAG_DATETIMEORIGINAL	= 36867,		/* Date and time of original
	EXIFTAG_DATETIMEDIGITIZED	= 36868,		/* Date and time of digital
	EXIFTAG_COMPONENTSCONFIGURATION	= 37121,		/* Meaning of each component */
	EXIFTAG_COMPRESSEDBITSPERPIXEL	= 37122,		/* Image compression mode */
	EXIFTAG_SHUTTERSPEEDVALUE	= 37377,		/* Shutter speed */
	EXIFTAG_APERTUREVALUE		= 37378,		/* Aperture */
	EXIFTAG_BRIGHTNESSVALUE		= 37379,		/* Brightness */
	EXIFTAG_EXPOSUREBIASVALUE	= 37380,		/* Exposure bias */
	EXIFTAG_MAXAPERTUREVALUE	= 37381,		/* Maximum lens aperture */
	EXIFTAG_SUBJECTDISTANCE		= 37382,		/* Subject distance */
	EXIFTAG_METERINGMODE		= 37383,		/* Metering mode */
	EXIFTAG_LIGHTSOURCE		= 37384,		/* Light source */
	EXIFTAG_FLASH			= 37385,		/* Flash */
	EXIFTAG_FOCALLENGTH		= 37386,		/* Lens focal length */
	EXIFTAG_SUBJECTAREA		= 37396,		/* Subject area */
	EXIFTAG_MAKERNOTE		= 37500,		/* Manufacturer notes */
	EXIFTAG_USERCOMMENT		= 37510,		/* User comments */
	EXIFTAG_SUBSECTIME		= 37520,		/* DateTime subseconds */
	EXIFTAG_SUBSECTIMEORIGINAL	= 37521,		/* DateTimeOriginal subseconds */
	EXIFTAG_SUBSECTIMEDIGITIZED	= 37522,		/* DateTimeDigitized subseconds */
	EXIFTAG_FLASHPIXVERSION		= 40960,		/* Supported Flashpix version */
	EXIFTAG_COLORSPACE		= 40961,		/* Color space information */
	EXIFTAG_PIXELXDIMENSION		= 40962,		/* Valid image width */
	EXIFTAG_PIXELYDIMENSION		= 40963,		/* Valid image height */
	EXIFTAG_RELATEDSOUNDFILE	= 40964,		/* Related audio file */
	EXIFTAG_FLASHENERGY		= 41483,		/* Flash energy */
	EXIFTAG_SPATIALFREQUENCYRESPONSE = 41484,		/* Spatial frequency response */
	EXIFTAG_FOCALPLANEXRESOLUTION	= 41486,		/* Focal plane X resolution */
	EXIFTAG_FOCALPLANEYRESOLUTION	= 41487,		/* Focal plane Y resolution */
	EXIFTAG_FOCALPLANERESOLUTIONUNIT = 41488,		/* Focal plane resolution unit */
	EXIFTAG_SUBJECTLOCATION		= 41492,		/* Subject location */
	EXIFTAG_EXPOSUREINDEX		= 41493,		/* Exposure index */
	EXIFTAG_SENSINGMETHOD		= 41495,		/* Sensing method */
	EXIFTAG_FILESOURCE		= 41728,		/* File source */
	EXIFTAG_SCENETYPE		= 41729,		/* Scene type */
	EXIFTAG_CFAPATTERN		= 41730,		/* CFA pattern */
	EXIFTAG_CUSTOMRENDERED		= 41985,		/* Custom image processing */
	EXIFTAG_EXPOSUREMODE		= 41986,		/* Exposure mode */
	EXIFTAG_WHITEBALANCE		= 41987,		/* White balance */
	EXIFTAG_DIGITALZOOMRATIO	= 41988,		/* Digital zoom ratio */
	EXIFTAG_FOCALLENGTHIN35MMFILM	= 41989,		/* Focal length in 35 mm film */
	EXIFTAG_SCENECAPTURETYPE	= 41990,		/* Scene capture type */
	EXIFTAG_GAINCONTROL		= 41991,		/* Gain control */
	EXIFTAG_CONTRAST		= 41992,		/* Contrast */
	EXIFTAG_SATURATION		= 41993,		/* Saturation */
	EXIFTAG_SHARPNESS		= 41994,		/* Sharpness */
	EXIFTAG_DEVICESETTINGDESCRIPTION = 41995,		/* Device settings description */
	EXIFTAG_SUBJECTDISTANCERANGE	= 41996,		/* Subject distance range */
	EXIFTAG_IMAGEUNIQUEID		= 42016,		/* Unique image ID */
};

  typedef struct tiff TIFF;
  typedef intptr_t ssize_t;
  typedef void* tiff_handle_t;
  
  typedef struct TIFFDisplay {
    float    d_mat[3][3];
    float    d_YCR;
    float    d_YCG;
    float    d_YCB;
    uint32_t d_Vrwr;
    uint32_t d_Vrwg;
    uint32_t d_Vrwb;
    float    d_Y0R;
    float    d_Y0G;
    float    d_Y0B;
    float    d_gammaR;
    float    d_gammaG;
    float    d_gammaB;
  } TIFFDisplay;

  typedef struct TIFFYCbCrToRGB {
   uint8_t*      clamptab;
   int*          Cr_r_tab;
   int*          Cb_b_tab;
   int32_t*      Cr_g_tab;
   int32_t*      Cb_g_tab;
   int32_t*      Y_tab;
  } TIFFYCbCrToRGB;

  typedef struct TIFFCIELabToRGB {
    int range;
    float rstep, gstep, bstep;
    float X0, Y0, Z0;
    TIFFDisplay display;
    float Yr2r[1500 + 1];
    float Yg2g[1500 + 1];
    float Yb2b[1500 + 1];
  } TIFFCIELabToRGB;

  typedef struct TIFFRGBAImage TIFFRGBAImage;
  typedef struct TIFFField TIFFField;
  typedef struct TIFFFieldArray TIFFFieldArray;

  typedef void (*TIFFTileContigRoutine)(   TIFFRGBAImage*, uint32_t*, uint32_t, uint32_t, uint32_t, uint32_t, int32_t, int32_t, unsigned char* );
  typedef void (*TIFFTileSeparateRoutine)( TIFFRGBAImage*, uint32_t*, uint32_t, uint32_t, uint32_t, uint32_t, int32_t, int32_t, unsigned char*, unsigned char*, unsigned char*, unsigned char* );
  
  struct TIFFRGBAImage {
    TIFF*            tif;
    int              stoponerr;
    int              isContig;
    int              alpha;
    uint32_t         width;
    uint32_t         height;
    uint16_t         bitspersample;
    uint16_t         samplesperpixel;
    uint16_t         orientation;
    uint16_t         req_orientation;
    uint16_t         photometric;
    uint16_t*        redcmap;
    uint16_t*        greencmap;
    uint16_t*        bluecmap;
    int    (* get )( TIFFRGBAImage*, uint32_t*, uint32_t, uint32_t );
    union {
      void (* any )( TIFFRGBAImage* );
      TIFFTileContigRoutine   contig;
      TIFFTileSeparateRoutine separate;
    } put;
    uint8_t*         Map;
    uint32_t**       BWmap;
    uint32_t**       PALmap;
    TIFFYCbCrToRGB*  ycbcr;
    TIFFCIELabToRGB* cielab;
    uint8_t*         UaToAa;
    uint8_t*         Bitdepth16To8;
    int              row_offset;
    int              col_offset;
  };

  typedef int (*TIFFInitMethod)(TIFF*, int);
  typedef struct TIFFCodec {
    char*          name;
    uint16_t       scheme;
    TIFFInitMethod init;
  } TIFFCodec;

  typedef void     (* TIFFErrorHandler )(    const char*, const char*, va_list);
  typedef void     (* TIFFErrorHandlerExt )( tiff_handle_t, const char*, const char*, va_list);
  typedef ssize_t  (* TIFFReadWriteProc )(   tiff_handle_t, void*, ssize_t);
  typedef uint64_t (* TIFFSeekProc )(        tiff_handle_t, uint64_t, int);
  typedef int      (* TIFFCloseProc )(       tiff_handle_t);
  typedef uint64_t (* TIFFSizeProc )(        tiff_handle_t);
  typedef int      (* TIFFMapFileProc )(     tiff_handle_t, void** base, uint64_t* size);
  typedef void     (* TIFFUnmapFileProc )(   tiff_handle_t, void* base, uint64_t size);
  typedef void     (* TIFFExtendProc )(      TIFF*  );
  typedef int      (* TIFFVSetMethod )(      TIFF*, uint32_t, va_list );
  typedef int      (* TIFFVGetMethod )(      TIFF*, uint32_t, va_list );
  typedef void     (* TIFFPrintMethod )(     TIFF*, void* /* FILE* */, long );

  typedef struct TIFFTagMethods {
    TIFFVSetMethod vsetfield; /* tag set routine */
    TIFFVGetMethod vgetfield; /* tag get routine */
    TIFFPrintMethod printdir; /* directory print routine */
  } TIFFTagMethods;

  const char*          TIFFGetVersion(            );
  const TIFFCodec*     TIFFFindCODEC(             uint16_t );
  TIFFCodec*           TIFFRegisterCODEC(         uint16_t, const char*, TIFFInitMethod);
  void                 TIFFUnRegisterCODEC(       TIFFCodec* );
  int                  TIFFIsCODECConfigured(     uint16_t );
  TIFFCodec*           TIFFGetConfiguredCODECs(   );
  void*               _TIFFmalloc(                ssize_t s );
  void*               _TIFFrealloc(               void* p, ssize_t s );
  void                _TIFFmemset(                void* p, int v, ssize_t c );
  void                _TIFFmemcpy(                void* d, const void*  s, ssize_t c );
  int                 _TIFFmemcmp(          const void* p, const void* p2, ssize_t c );
  void                _TIFFfree(                  void* p );
  int                  TIFFGetTagListCount(       TIFF*  );
  uint32_t             TIFFGetTagListEntry(       TIFF*, int tag_index );
  const TIFFField*     TIFFFindField(             TIFF *, uint32_t, TIFFDataType);
  const TIFFField*     TIFFFieldWithTag(          TIFF*, uint32_t);
  const TIFFField*     TIFFFieldWithName(         TIFF*, const char *);
  uint32_t             TIFFFieldTag(        const TIFFField* );
  const char*          TIFFFieldName(       const TIFFField* );
  TIFFDataType         TIFFFieldDataType(   const TIFFField* );
  int                  TIFFFieldPassCount(  const TIFFField* );
  int                  TIFFFieldReadCount(  const TIFFField* );
  int                  TIFFFieldWriteCount( const TIFFField* );
  TIFFTagMethods*      TIFFAccessTagMethods(      TIFF*  );
  void*                TIFFGetClientInfo(         TIFF*, const char *);
  void                 TIFFSetClientInfo(         TIFF*, void *, const char *);
  void                 TIFFCleanup(               TIFF*  );
  void                 TIFFClose(                 TIFF*  );
  int                  TIFFFlush(                 TIFF*  );
  int                  TIFFFlushData(             TIFF*  );
  int                  TIFFGetField(              TIFF*, uint32_t tag, ... );
  int                  TIFFVGetField(             TIFF*, uint32_t tag, va_list );
  int                  TIFFGetFieldDefaulted(     TIFF*, uint32_t tag, ...);
  int                  TIFFVGetFieldDefaulted(    TIFF*, uint32_t tag, va_list );
  int                  TIFFReadDirectory(         TIFF*  );
  int                  TIFFReadCustomDirectory(   TIFF*, uint64_t diroff, const TIFFFieldArray* infoarray );
  int                  TIFFReadEXIFDirectory(     TIFF*, uint64_t diroff  );
  uint64_t             TIFFScanlineSize64(        TIFF*  );
  ssize_t              TIFFScanlineSize(          TIFF*  );
  uint64_t             TIFFRasterScanlineSize64(  TIFF*  );
  ssize_t              TIFFRasterScanlineSize(    TIFF*  );
  uint64_t             TIFFStripSize64(           TIFF*  );
  ssize_t              TIFFStripSize(             TIFF*  );
  uint64_t             TIFFRawStripSize64(        TIFF*, uint32_t strip);
  ssize_t              TIFFRawStripSize(          TIFF*, uint32_t strip);
  uint64_t             TIFFVStripSize64(          TIFF*, uint32_t nrows);
  ssize_t              TIFFVStripSize(            TIFF*, uint32_t nrows);
  uint64_t             TIFFTileRowSize64(         TIFF*  );
  ssize_t              TIFFTileRowSize(           TIFF*  );
  uint64_t             TIFFTileSize64(            TIFF*  );
  ssize_t              TIFFTileSize(              TIFF*  );
  uint64_t             TIFFVTileSize64(           TIFF*, uint32_t nrows );
  ssize_t              TIFFVTileSize(             TIFF*, uint32_t nrows );
  uint32_t             TIFFDefaultStripSize(      TIFF*, uint32_t request );
  void                 TIFFDefaultTileSize(       TIFF*, uint32_t*, uint32_t* );
  int                  TIFFFileno(                TIFF*  );
  int                  TIFFSetFileno(             TIFF*, int );
  tiff_handle_t        TIFFClientdata(            TIFF*  );
  tiff_handle_t        TIFFSetClientdata(         TIFF*, tiff_handle_t );
  int                  TIFFGetMode(               TIFF*  );
  int                  TIFFSetMode(               TIFF*, int );
  int                  TIFFIsTiled(               TIFF*  );
  int                  TIFFIsByteSwapped(         TIFF*  );
  int                  TIFFIsUpSampled(           TIFF*  );
  int                  TIFFIsMSB2LSB(             TIFF*  );
  int                  TIFFIsBigEndian(           TIFF*  );
  TIFFReadWriteProc    TIFFGetReadProc(           TIFF*  );
  TIFFReadWriteProc    TIFFGetWriteProc(          TIFF*  );
  TIFFSeekProc         TIFFGetSeekProc(           TIFF*  );                                                          
  TIFFCloseProc        TIFFGetCloseProc(          TIFF*  );
  TIFFSizeProc         TIFFGetSizeProc(           TIFF*  );
  TIFFMapFileProc      TIFFGetMapFileProc(        TIFF*  );
  TIFFUnmapFileProc    TIFFGetUnmapFileProc(      TIFF*  );
  uint32_t             TIFFCurrentRow(            TIFF*  );
  uint16_t             TIFFCurrentDirectory(      TIFF*  );
  uint16_t             TIFFNumberOfDirectories(   TIFF*  );
  uint64_t             TIFFCurrentDirOffset(      TIFF*  );
  uint32_t             TIFFCurrentStrip(          TIFF*  );
  uint32_t             TIFFCurrentTile(           TIFF*  );
  int                  TIFFReadBufferSetup(       TIFF*, void* bp, ssize_t size);
  int                  TIFFWriteBufferSetup(      TIFF*, void* bp, ssize_t size);  
  int                  TIFFSetupStrips(           TIFF*  );
  int                  TIFFWriteCheck(            TIFF*, int, const char *);
  void                 TIFFFreeDirectory(         TIFF*  );
  int                  TIFFCreateDirectory(       TIFF*  );
  int                  TIFFCreateCustomDirectory( TIFF*, const TIFFFieldArray*);
  int                  TIFFCreateEXIFDirectory(   TIFF*  );
  int                  TIFFLastDirectory(         TIFF*  );
  int                  TIFFSetDirectory(          TIFF*, uint16_t );
  int                  TIFFSetSubDirectory(       TIFF*, uint64_t );
  int                  TIFFUnlinkDirectory(       TIFF*, uint16_t );
  int                  TIFFSetField(              TIFF*, uint32_t, ...);
  int                  TIFFVSetField(             TIFF*, uint32_t, va_list);
  int                  TIFFUnsetField(            TIFF*, uint32_t);
  int                  TIFFWriteDirectory(        TIFF* );
  int                  TIFFWriteCustomDirectory(  TIFF *, uint64_t *);
  int                  TIFFCheckpointDirectory(   TIFF *);
  int                  TIFFRewriteDirectory(      TIFF *);
  void                 TIFFPrintDirectory(        TIFF*, void* /* FILE* */, long);
  int                  TIFFReadScanline(          TIFF*, void* buf, uint32_t row, uint16_t sample);
  int                  TIFFWriteScanline(         TIFF*, void* buf, uint32_t row, uint16_t sample);
  int                  TIFFReadRGBAImage(         TIFF*, uint32_t, uint32_t, uint32_t*, int);
  int                  TIFFReadRGBAImageOriented( TIFF*, uint32_t, uint32_t, uint32_t*, int, int);
  int                  TIFFReadRGBAStrip(         TIFF*, uint32_t, uint32_t * );
  int                  TIFFReadRGBATile(          TIFF*, uint32_t, uint32_t, uint32_t * );
  int                  TIFFRGBAImageOK(           TIFF*, char [1024]);
  int                  TIFFRGBAImageBegin(        TIFFRGBAImage*, TIFF*, int, char [1024]);
  int                  TIFFRGBAImageGet(          TIFFRGBAImage*, uint32_t*, uint32_t, uint32_t);
  void                 TIFFRGBAImageEnd(          TIFFRGBAImage*  );
  TIFF*                TIFFOpen(            const char*, const char* );
  TIFF*                TIFFFdOpen(                int, const char*, const char* );
  TIFF*                TIFFClientOpen(      const char*, const char*, tiff_handle_t, TIFFReadWriteProc, TIFFReadWriteProc, TIFFSeekProc, TIFFCloseProc, TIFFSizeProc, TIFFMapFileProc, TIFFUnmapFileProc );
  const char*          TIFFFileName(              TIFF*  );
  const char*          TIFFSetFileName(           TIFF*, const char *);
  void                 TIFFError(           const char*, const char*, ...) __attribute__((__format__ (__printf__,2,3)));
  void                 TIFFErrorExt(              tiff_handle_t, const char*, const char*, ...) __attribute__((__format__ (__printf__,3,4)));
  void                 TIFFWarning(         const char*, const char*, ...) __attribute__((__format__ (__printf__,2,3)));
  void                 TIFFWarningExt(            tiff_handle_t, const char*, const char*, ...) __attribute__((__format__ (__printf__,3,4)));
  TIFFErrorHandler     TIFFSetErrorHandler(       TIFFErrorHandler );
  TIFFErrorHandlerExt  TIFFSetErrorHandlerExt(    TIFFErrorHandlerExt );
  TIFFErrorHandler     TIFFSetWarningHandler(     TIFFErrorHandler );
  TIFFErrorHandlerExt  TIFFSetWarningHandlerExt(  TIFFErrorHandlerExt );
  TIFFExtendProc       TIFFSetTagExtender(        TIFFExtendProc );
  uint32_t             TIFFComputeTile(           TIFF*, uint32_t x, uint32_t y, uint32_t z, uint16_t s );
  int                  TIFFCheckTile(             TIFF*, uint32_t x, uint32_t y, uint32_t z, uint16_t s);
  uint32_t             TIFFNumberOfTiles(         TIFF*);
  ssize_t              TIFFReadTile(              TIFF*, void* buf, uint32_t x, uint32_t y, uint32_t z, uint16_t s);  
  ssize_t              TIFFWriteTile(             TIFF*, void* buf, uint32_t x, uint32_t y, uint32_t z, uint16_t s);
  uint32_t             TIFFComputeStrip(          TIFF*, uint32_t, uint16_t);
  uint32_t             TIFFNumberOfStrips(        TIFF*);
  ssize_t              TIFFReadEncodedStrip(      TIFF*, uint32_t strip, void* buf, ssize_t size);
  ssize_t              TIFFReadRawStrip(          TIFF*, uint32_t strip, void* buf, ssize_t size);  
  ssize_t              TIFFReadEncodedTile(       TIFF*, uint32_t tile, void* buf, ssize_t size);  
  ssize_t              TIFFReadRawTile(           TIFF*, uint32_t tile, void* buf, ssize_t size);  
  ssize_t              TIFFWriteEncodedStrip(     TIFF*, uint32_t strip, void* data, ssize_t cc);
  ssize_t              TIFFWriteRawStrip(         TIFF*, uint32_t strip, void* data, ssize_t cc);  
  ssize_t              TIFFWriteEncodedTile(      TIFF*, uint32_t tile, void* data, ssize_t cc);  
  ssize_t              TIFFWriteRawTile(          TIFF*, uint32_t tile, void* data, ssize_t cc);  
  int                  TIFFDataWidth(             TIFFDataType );    /* table of tag datatype widths */
  void                 TIFFSetWriteOffset(        TIFF*, uint64_t off );
  void                 TIFFSwabShort(             uint16_t* );
  void                 TIFFSwabLong(              uint32_t* );
  void                 TIFFSwabLong8(             uint64_t* );
  void                 TIFFSwabFloat(             float* );
  void                 TIFFSwabDouble(            double* );
  void                 TIFFSwabArrayOfShort(      uint16_t* wp, ssize_t n );
  void                 TIFFSwabArrayOfTriples(    uint8_t* tp, ssize_t n);
  void                 TIFFSwabArrayOfLong(       uint32_t* lp, ssize_t n);
  void                 TIFFSwabArrayOfLong8(      uint64_t* lp, ssize_t n);
  void                 TIFFSwabArrayOfFloat(      float* fp, ssize_t n);
  void                 TIFFSwabArrayOfDouble(     double* dp, ssize_t n);
  void                 TIFFReverseBits(           uint8_t* cp, ssize_t n);
  const unsigned char* TIFFGetBitRevTable(        int );
  int                  TIFFCIELabToRGBInit(       TIFFCIELabToRGB*, const TIFFDisplay *, float*);
  void                 TIFFCIELabToXYZ(           TIFFCIELabToRGB *, uint32_t, int32_t, int32_t, float *, float *, float *);
  void                 TIFFXYZToRGB(              TIFFCIELabToRGB *, float, float, float, uint32_t *, uint32_t *, uint32_t *);
  int                  TIFFYCbCrToRGBInit(        TIFFYCbCrToRGB*, float*, float*);
  void                 TIFFYCbCrtoRGB(            TIFFYCbCrToRGB *, uint32_t, int32_t, int32_t, uint32_t *, uint32_t *, uint32_t *);
]]

return ffi.load( "tiff" ) 

