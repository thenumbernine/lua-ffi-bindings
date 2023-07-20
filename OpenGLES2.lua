local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/GLES2/gl2.h */
enum { __gles2_gl2_h_ = 1 };
/* BEGIN /usr/include/GLES2/gl2platform.h */
enum { __gl2platform_h_ = 1 };
/* BEGIN /usr/include/KHR/khrplatform.h */
]] require 'ffi.KHR.khrplatform' ffi.cdef[[
/* END   /usr/include/KHR/khrplatform.h */
/* #define GL_APICALL  KHRONOS_APICALL ### string, not number "KHRONOS_APICALL" */
/* #define GL_APIENTRY KHRONOS_APIENTRY ### string, not number "KHRONOS_APIENTRY" */
/* END   /usr/include/GLES2/gl2platform.h */
/* #define GL_APIENTRYP GL_APIENTRY* ### string, not number "GL_APIENTRY*" */
enum { GL_GLES_PROTOTYPES = 1 };
enum { GL_ES_VERSION_2_0 = 1 };
/* BEGIN /usr/include/KHR/khrplatform.h */
]] require 'ffi.KHR.khrplatform' ffi.cdef[[
/* END   /usr/include/KHR/khrplatform.h */
typedef khronos_int8_t GLbyte;
typedef khronos_float_t GLclampf;
typedef khronos_int32_t GLfixed;
typedef khronos_int16_t GLshort;
typedef khronos_uint16_t GLushort;
typedef void GLvoid;
typedef struct __GLsync *GLsync;
typedef khronos_int64_t GLint64;
typedef khronos_uint64_t GLuint64;
typedef unsigned int GLenum;
typedef unsigned int GLuint;
typedef char GLchar;
typedef khronos_float_t GLfloat;
typedef khronos_ssize_t GLsizeiptr;
typedef khronos_intptr_t GLintptr;
typedef unsigned int GLbitfield;
typedef int GLint;
typedef unsigned char GLboolean;
typedef int GLsizei;
typedef khronos_uint8_t GLubyte;
enum { GL_DEPTH_BUFFER_BIT = 256 };
enum { GL_STENCIL_BUFFER_BIT = 1024 };
enum { GL_COLOR_BUFFER_BIT = 16384 };
enum { GL_FALSE = 0 };
enum { GL_TRUE = 1 };
enum { GL_POINTS = 0 };
enum { GL_LINES = 1 };
enum { GL_LINE_LOOP = 2 };
enum { GL_LINE_STRIP = 3 };
enum { GL_TRIANGLES = 4 };
enum { GL_TRIANGLE_STRIP = 5 };
enum { GL_TRIANGLE_FAN = 6 };
enum { GL_ZERO = 0 };
enum { GL_ONE = 1 };
enum { GL_SRC_COLOR = 768 };
enum { GL_ONE_MINUS_SRC_COLOR = 769 };
enum { GL_SRC_ALPHA = 770 };
enum { GL_ONE_MINUS_SRC_ALPHA = 771 };
enum { GL_DST_ALPHA = 772 };
enum { GL_ONE_MINUS_DST_ALPHA = 773 };
enum { GL_DST_COLOR = 774 };
enum { GL_ONE_MINUS_DST_COLOR = 775 };
enum { GL_SRC_ALPHA_SATURATE = 776 };
enum { GL_FUNC_ADD = 32774 };
enum { GL_BLEND_EQUATION = 32777 };
enum { GL_BLEND_EQUATION_RGB = 32777 };
enum { GL_BLEND_EQUATION_ALPHA = 34877 };
enum { GL_FUNC_SUBTRACT = 32778 };
enum { GL_FUNC_REVERSE_SUBTRACT = 32779 };
enum { GL_BLEND_DST_RGB = 32968 };
enum { GL_BLEND_SRC_RGB = 32969 };
enum { GL_BLEND_DST_ALPHA = 32970 };
enum { GL_BLEND_SRC_ALPHA = 32971 };
enum { GL_CONSTANT_COLOR = 32769 };
enum { GL_ONE_MINUS_CONSTANT_COLOR = 32770 };
enum { GL_CONSTANT_ALPHA = 32771 };
enum { GL_ONE_MINUS_CONSTANT_ALPHA = 32772 };
enum { GL_BLEND_COLOR = 32773 };
enum { GL_ARRAY_BUFFER = 34962 };
enum { GL_ELEMENT_ARRAY_BUFFER = 34963 };
enum { GL_ARRAY_BUFFER_BINDING = 34964 };
enum { GL_ELEMENT_ARRAY_BUFFER_BINDING = 34965 };
enum { GL_STREAM_DRAW = 35040 };
enum { GL_STATIC_DRAW = 35044 };
enum { GL_DYNAMIC_DRAW = 35048 };
enum { GL_BUFFER_SIZE = 34660 };
enum { GL_BUFFER_USAGE = 34661 };
enum { GL_CURRENT_VERTEX_ATTRIB = 34342 };
enum { GL_FRONT = 1028 };
enum { GL_BACK = 1029 };
enum { GL_FRONT_AND_BACK = 1032 };
enum { GL_TEXTURE_2D = 3553 };
enum { GL_CULL_FACE = 2884 };
enum { GL_BLEND = 3042 };
enum { GL_DITHER = 3024 };
enum { GL_STENCIL_TEST = 2960 };
enum { GL_DEPTH_TEST = 2929 };
enum { GL_SCISSOR_TEST = 3089 };
enum { GL_POLYGON_OFFSET_FILL = 32823 };
enum { GL_SAMPLE_ALPHA_TO_COVERAGE = 32926 };
enum { GL_SAMPLE_COVERAGE = 32928 };
enum { GL_NO_ERROR = 0 };
enum { GL_INVALID_ENUM = 1280 };
enum { GL_INVALID_VALUE = 1281 };
enum { GL_INVALID_OPERATION = 1282 };
enum { GL_OUT_OF_MEMORY = 1285 };
enum { GL_CW = 2304 };
enum { GL_CCW = 2305 };
enum { GL_LINE_WIDTH = 2849 };
enum { GL_ALIASED_POINT_SIZE_RANGE = 33901 };
enum { GL_ALIASED_LINE_WIDTH_RANGE = 33902 };
enum { GL_CULL_FACE_MODE = 2885 };
enum { GL_FRONT_FACE = 2886 };
enum { GL_DEPTH_RANGE = 2928 };
enum { GL_DEPTH_WRITEMASK = 2930 };
enum { GL_DEPTH_CLEAR_VALUE = 2931 };
enum { GL_DEPTH_FUNC = 2932 };
enum { GL_STENCIL_CLEAR_VALUE = 2961 };
enum { GL_STENCIL_FUNC = 2962 };
enum { GL_STENCIL_FAIL = 2964 };
enum { GL_STENCIL_PASS_DEPTH_FAIL = 2965 };
enum { GL_STENCIL_PASS_DEPTH_PASS = 2966 };
enum { GL_STENCIL_REF = 2967 };
enum { GL_STENCIL_VALUE_MASK = 2963 };
enum { GL_STENCIL_WRITEMASK = 2968 };
enum { GL_STENCIL_BACK_FUNC = 34816 };
enum { GL_STENCIL_BACK_FAIL = 34817 };
enum { GL_STENCIL_BACK_PASS_DEPTH_FAIL = 34818 };
enum { GL_STENCIL_BACK_PASS_DEPTH_PASS = 34819 };
enum { GL_STENCIL_BACK_REF = 36003 };
enum { GL_STENCIL_BACK_VALUE_MASK = 36004 };
enum { GL_STENCIL_BACK_WRITEMASK = 36005 };
enum { GL_VIEWPORT = 2978 };
enum { GL_SCISSOR_BOX = 3088 };
enum { GL_COLOR_CLEAR_VALUE = 3106 };
enum { GL_COLOR_WRITEMASK = 3107 };
enum { GL_UNPACK_ALIGNMENT = 3317 };
enum { GL_PACK_ALIGNMENT = 3333 };
enum { GL_MAX_TEXTURE_SIZE = 3379 };
enum { GL_MAX_VIEWPORT_DIMS = 3386 };
enum { GL_SUBPIXEL_BITS = 3408 };
enum { GL_RED_BITS = 3410 };
enum { GL_GREEN_BITS = 3411 };
enum { GL_BLUE_BITS = 3412 };
enum { GL_ALPHA_BITS = 3413 };
enum { GL_DEPTH_BITS = 3414 };
enum { GL_STENCIL_BITS = 3415 };
enum { GL_POLYGON_OFFSET_UNITS = 10752 };
enum { GL_POLYGON_OFFSET_FACTOR = 32824 };
enum { GL_TEXTURE_BINDING_2D = 32873 };
enum { GL_SAMPLE_BUFFERS = 32936 };
enum { GL_SAMPLES = 32937 };
enum { GL_SAMPLE_COVERAGE_VALUE = 32938 };
enum { GL_SAMPLE_COVERAGE_INVERT = 32939 };
enum { GL_NUM_COMPRESSED_TEXTURE_FORMATS = 34466 };
enum { GL_COMPRESSED_TEXTURE_FORMATS = 34467 };
enum { GL_DONT_CARE = 4352 };
enum { GL_FASTEST = 4353 };
enum { GL_NICEST = 4354 };
enum { GL_GENERATE_MIPMAP_HINT = 33170 };
enum { GL_BYTE = 5120 };
enum { GL_UNSIGNED_BYTE = 5121 };
enum { GL_SHORT = 5122 };
enum { GL_UNSIGNED_SHORT = 5123 };
enum { GL_INT = 5124 };
enum { GL_UNSIGNED_INT = 5125 };
enum { GL_FLOAT = 5126 };
enum { GL_FIXED = 5132 };
enum { GL_DEPTH_COMPONENT = 6402 };
enum { GL_ALPHA = 6406 };
enum { GL_RGB = 6407 };
enum { GL_RGBA = 6408 };
enum { GL_LUMINANCE = 6409 };
enum { GL_LUMINANCE_ALPHA = 6410 };
enum { GL_UNSIGNED_SHORT_4_4_4_4 = 32819 };
enum { GL_UNSIGNED_SHORT_5_5_5_1 = 32820 };
enum { GL_UNSIGNED_SHORT_5_6_5 = 33635 };
enum { GL_FRAGMENT_SHADER = 35632 };
enum { GL_VERTEX_SHADER = 35633 };
enum { GL_MAX_VERTEX_ATTRIBS = 34921 };
enum { GL_MAX_VERTEX_UNIFORM_VECTORS = 36347 };
enum { GL_MAX_VARYING_VECTORS = 36348 };
enum { GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = 35661 };
enum { GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = 35660 };
enum { GL_MAX_TEXTURE_IMAGE_UNITS = 34930 };
enum { GL_MAX_FRAGMENT_UNIFORM_VECTORS = 36349 };
enum { GL_SHADER_TYPE = 35663 };
enum { GL_DELETE_STATUS = 35712 };
enum { GL_LINK_STATUS = 35714 };
enum { GL_VALIDATE_STATUS = 35715 };
enum { GL_ATTACHED_SHADERS = 35717 };
enum { GL_ACTIVE_UNIFORMS = 35718 };
enum { GL_ACTIVE_UNIFORM_MAX_LENGTH = 35719 };
enum { GL_ACTIVE_ATTRIBUTES = 35721 };
enum { GL_ACTIVE_ATTRIBUTE_MAX_LENGTH = 35722 };
enum { GL_SHADING_LANGUAGE_VERSION = 35724 };
enum { GL_CURRENT_PROGRAM = 35725 };
enum { GL_NEVER = 512 };
enum { GL_LESS = 513 };
enum { GL_EQUAL = 514 };
enum { GL_LEQUAL = 515 };
enum { GL_GREATER = 516 };
enum { GL_NOTEQUAL = 517 };
enum { GL_GEQUAL = 518 };
enum { GL_ALWAYS = 519 };
enum { GL_KEEP = 7680 };
enum { GL_REPLACE = 7681 };
enum { GL_INCR = 7682 };
enum { GL_DECR = 7683 };
enum { GL_INVERT = 5386 };
enum { GL_INCR_WRAP = 34055 };
enum { GL_DECR_WRAP = 34056 };
enum { GL_VENDOR = 7936 };
enum { GL_RENDERER = 7937 };
enum { GL_VERSION = 7938 };
enum { GL_EXTENSIONS = 7939 };
enum { GL_NEAREST = 9728 };
enum { GL_LINEAR = 9729 };
enum { GL_NEAREST_MIPMAP_NEAREST = 9984 };
enum { GL_LINEAR_MIPMAP_NEAREST = 9985 };
enum { GL_NEAREST_MIPMAP_LINEAR = 9986 };
enum { GL_LINEAR_MIPMAP_LINEAR = 9987 };
enum { GL_TEXTURE_MAG_FILTER = 10240 };
enum { GL_TEXTURE_MIN_FILTER = 10241 };
enum { GL_TEXTURE_WRAP_S = 10242 };
enum { GL_TEXTURE_WRAP_T = 10243 };
enum { GL_TEXTURE = 5890 };
enum { GL_TEXTURE_CUBE_MAP = 34067 };
enum { GL_TEXTURE_BINDING_CUBE_MAP = 34068 };
enum { GL_TEXTURE_CUBE_MAP_POSITIVE_X = 34069 };
enum { GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 34070 };
enum { GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 34071 };
enum { GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 34072 };
enum { GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 34073 };
enum { GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 34074 };
enum { GL_MAX_CUBE_MAP_TEXTURE_SIZE = 34076 };
enum { GL_TEXTURE0 = 33984 };
enum { GL_TEXTURE1 = 33985 };
enum { GL_TEXTURE2 = 33986 };
enum { GL_TEXTURE3 = 33987 };
enum { GL_TEXTURE4 = 33988 };
enum { GL_TEXTURE5 = 33989 };
enum { GL_TEXTURE6 = 33990 };
enum { GL_TEXTURE7 = 33991 };
enum { GL_TEXTURE8 = 33992 };
enum { GL_TEXTURE9 = 33993 };
enum { GL_TEXTURE10 = 33994 };
enum { GL_TEXTURE11 = 33995 };
enum { GL_TEXTURE12 = 33996 };
enum { GL_TEXTURE13 = 33997 };
enum { GL_TEXTURE14 = 33998 };
enum { GL_TEXTURE15 = 33999 };
enum { GL_TEXTURE16 = 34000 };
enum { GL_TEXTURE17 = 34001 };
enum { GL_TEXTURE18 = 34002 };
enum { GL_TEXTURE19 = 34003 };
enum { GL_TEXTURE20 = 34004 };
enum { GL_TEXTURE21 = 34005 };
enum { GL_TEXTURE22 = 34006 };
enum { GL_TEXTURE23 = 34007 };
enum { GL_TEXTURE24 = 34008 };
enum { GL_TEXTURE25 = 34009 };
enum { GL_TEXTURE26 = 34010 };
enum { GL_TEXTURE27 = 34011 };
enum { GL_TEXTURE28 = 34012 };
enum { GL_TEXTURE29 = 34013 };
enum { GL_TEXTURE30 = 34014 };
enum { GL_TEXTURE31 = 34015 };
enum { GL_ACTIVE_TEXTURE = 34016 };
enum { GL_REPEAT = 10497 };
enum { GL_CLAMP_TO_EDGE = 33071 };
enum { GL_MIRRORED_REPEAT = 33648 };
enum { GL_FLOAT_VEC2 = 35664 };
enum { GL_FLOAT_VEC3 = 35665 };
enum { GL_FLOAT_VEC4 = 35666 };
enum { GL_INT_VEC2 = 35667 };
enum { GL_INT_VEC3 = 35668 };
enum { GL_INT_VEC4 = 35669 };
enum { GL_BOOL = 35670 };
enum { GL_BOOL_VEC2 = 35671 };
enum { GL_BOOL_VEC3 = 35672 };
enum { GL_BOOL_VEC4 = 35673 };
enum { GL_FLOAT_MAT2 = 35674 };
enum { GL_FLOAT_MAT3 = 35675 };
enum { GL_FLOAT_MAT4 = 35676 };
enum { GL_SAMPLER_2D = 35678 };
enum { GL_SAMPLER_CUBE = 35680 };
enum { GL_VERTEX_ATTRIB_ARRAY_ENABLED = 34338 };
enum { GL_VERTEX_ATTRIB_ARRAY_SIZE = 34339 };
enum { GL_VERTEX_ATTRIB_ARRAY_STRIDE = 34340 };
enum { GL_VERTEX_ATTRIB_ARRAY_TYPE = 34341 };
enum { GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = 34922 };
enum { GL_VERTEX_ATTRIB_ARRAY_POINTER = 34373 };
enum { GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 34975 };
enum { GL_IMPLEMENTATION_COLOR_READ_TYPE = 35738 };
enum { GL_IMPLEMENTATION_COLOR_READ_FORMAT = 35739 };
enum { GL_COMPILE_STATUS = 35713 };
enum { GL_INFO_LOG_LENGTH = 35716 };
enum { GL_SHADER_SOURCE_LENGTH = 35720 };
enum { GL_SHADER_COMPILER = 36346 };
enum { GL_SHADER_BINARY_FORMATS = 36344 };
enum { GL_NUM_SHADER_BINARY_FORMATS = 36345 };
enum { GL_LOW_FLOAT = 36336 };
enum { GL_MEDIUM_FLOAT = 36337 };
enum { GL_HIGH_FLOAT = 36338 };
enum { GL_LOW_INT = 36339 };
enum { GL_MEDIUM_INT = 36340 };
enum { GL_HIGH_INT = 36341 };
enum { GL_FRAMEBUFFER = 36160 };
enum { GL_RENDERBUFFER = 36161 };
enum { GL_RGBA4 = 32854 };
enum { GL_RGB5_A1 = 32855 };
enum { GL_RGB565 = 36194 };
enum { GL_DEPTH_COMPONENT16 = 33189 };
enum { GL_STENCIL_INDEX8 = 36168 };
enum { GL_RENDERBUFFER_WIDTH = 36162 };
enum { GL_RENDERBUFFER_HEIGHT = 36163 };
enum { GL_RENDERBUFFER_INTERNAL_FORMAT = 36164 };
enum { GL_RENDERBUFFER_RED_SIZE = 36176 };
enum { GL_RENDERBUFFER_GREEN_SIZE = 36177 };
enum { GL_RENDERBUFFER_BLUE_SIZE = 36178 };
enum { GL_RENDERBUFFER_ALPHA_SIZE = 36179 };
enum { GL_RENDERBUFFER_DEPTH_SIZE = 36180 };
enum { GL_RENDERBUFFER_STENCIL_SIZE = 36181 };
enum { GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 36048 };
enum { GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 36049 };
enum { GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 36050 };
enum { GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 36051 };
enum { GL_COLOR_ATTACHMENT0 = 36064 };
enum { GL_DEPTH_ATTACHMENT = 36096 };
enum { GL_STENCIL_ATTACHMENT = 36128 };
enum { GL_NONE = 0 };
enum { GL_FRAMEBUFFER_COMPLETE = 36053 };
enum { GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 36054 };
enum { GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 36055 };
enum { GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 36057 };
enum { GL_FRAMEBUFFER_UNSUPPORTED = 36061 };
enum { GL_FRAMEBUFFER_BINDING = 36006 };
enum { GL_RENDERBUFFER_BINDING = 36007 };
enum { GL_MAX_RENDERBUFFER_SIZE = 34024 };
enum { GL_INVALID_FRAMEBUFFER_OPERATION = 1286 };
typedef void (* PFNGLACTIVETEXTUREPROC) (GLenum texture);
typedef void (* PFNGLATTACHSHADERPROC) (GLuint program, GLuint shader);
typedef void (* PFNGLBINDATTRIBLOCATIONPROC) (GLuint program, GLuint index, const GLchar *name);
typedef void (* PFNGLBINDBUFFERPROC) (GLenum target, GLuint buffer);
typedef void (* PFNGLBINDFRAMEBUFFERPROC) (GLenum target, GLuint framebuffer);
typedef void (* PFNGLBINDRENDERBUFFERPROC) (GLenum target, GLuint renderbuffer);
typedef void (* PFNGLBINDTEXTUREPROC) (GLenum target, GLuint texture);
typedef void (* PFNGLBLENDCOLORPROC) (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
typedef void (* PFNGLBLENDEQUATIONPROC) (GLenum mode);
typedef void (* PFNGLBLENDEQUATIONSEPARATEPROC) (GLenum modeRGB, GLenum modeAlpha);
typedef void (* PFNGLBLENDFUNCPROC) (GLenum sfactor, GLenum dfactor);
typedef void (* PFNGLBLENDFUNCSEPARATEPROC) (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
typedef void (* PFNGLBUFFERDATAPROC) (GLenum target, GLsizeiptr size, const void *data, GLenum usage);
typedef void (* PFNGLBUFFERSUBDATAPROC) (GLenum target, GLintptr offset, GLsizeiptr size, const void *data);
typedef GLenum (* PFNGLCHECKFRAMEBUFFERSTATUSPROC) (GLenum target);
typedef void (* PFNGLCLEARPROC) (GLbitfield mask);
typedef void (* PFNGLCLEARCOLORPROC) (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
typedef void (* PFNGLCLEARDEPTHFPROC) (GLfloat d);
typedef void (* PFNGLCLEARSTENCILPROC) (GLint s);
typedef void (* PFNGLCOLORMASKPROC) (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
typedef void (* PFNGLCOMPILESHADERPROC) (GLuint shader);
typedef void (* PFNGLCOMPRESSEDTEXIMAGE2DPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const void *data);
typedef void (* PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const void *data);
typedef void (* PFNGLCOPYTEXIMAGE2DPROC) (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
typedef void (* PFNGLCOPYTEXSUBIMAGE2DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
typedef GLuint (* PFNGLCREATEPROGRAMPROC) (void);
typedef GLuint (* PFNGLCREATESHADERPROC) (GLenum type);
typedef void (* PFNGLCULLFACEPROC) (GLenum mode);
typedef void (* PFNGLDELETEBUFFERSPROC) (GLsizei n, const GLuint *buffers);
typedef void (* PFNGLDELETEFRAMEBUFFERSPROC) (GLsizei n, const GLuint *framebuffers);
typedef void (* PFNGLDELETEPROGRAMPROC) (GLuint program);
typedef void (* PFNGLDELETERENDERBUFFERSPROC) (GLsizei n, const GLuint *renderbuffers);
typedef void (* PFNGLDELETESHADERPROC) (GLuint shader);
typedef void (* PFNGLDELETETEXTURESPROC) (GLsizei n, const GLuint *textures);
typedef void (* PFNGLDEPTHFUNCPROC) (GLenum func);
typedef void (* PFNGLDEPTHMASKPROC) (GLboolean flag);
typedef void (* PFNGLDEPTHRANGEFPROC) (GLfloat n, GLfloat f);
typedef void (* PFNGLDETACHSHADERPROC) (GLuint program, GLuint shader);
typedef void (* PFNGLDISABLEPROC) (GLenum cap);
typedef void (* PFNGLDISABLEVERTEXATTRIBARRAYPROC) (GLuint index);
typedef void (* PFNGLDRAWARRAYSPROC) (GLenum mode, GLint first, GLsizei count);
typedef void (* PFNGLDRAWELEMENTSPROC) (GLenum mode, GLsizei count, GLenum type, const void *indices);
typedef void (* PFNGLENABLEPROC) (GLenum cap);
typedef void (* PFNGLENABLEVERTEXATTRIBARRAYPROC) (GLuint index);
typedef void (* PFNGLFINISHPROC) (void);
typedef void (* PFNGLFLUSHPROC) (void);
typedef void (* PFNGLFRAMEBUFFERRENDERBUFFERPROC) (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
typedef void (* PFNGLFRAMEBUFFERTEXTURE2DPROC) (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
typedef void (* PFNGLFRONTFACEPROC) (GLenum mode);
typedef void (* PFNGLGENBUFFERSPROC) (GLsizei n, GLuint *buffers);
typedef void (* PFNGLGENERATEMIPMAPPROC) (GLenum target);
typedef void (* PFNGLGENFRAMEBUFFERSPROC) (GLsizei n, GLuint *framebuffers);
typedef void (* PFNGLGENRENDERBUFFERSPROC) (GLsizei n, GLuint *renderbuffers);
typedef void (* PFNGLGENTEXTURESPROC) (GLsizei n, GLuint *textures);
typedef void (* PFNGLGETACTIVEATTRIBPROC) (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLint *size, GLenum *type, GLchar *name);
typedef void (* PFNGLGETACTIVEUNIFORMPROC) (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLint *size, GLenum *type, GLchar *name);
typedef void (* PFNGLGETATTACHEDSHADERSPROC) (GLuint program, GLsizei maxCount, GLsizei *count, GLuint *shaders);
typedef GLint (* PFNGLGETATTRIBLOCATIONPROC) (GLuint program, const GLchar *name);
typedef void (* PFNGLGETBOOLEANVPROC) (GLenum pname, GLboolean *data);
typedef void (* PFNGLGETBUFFERPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
typedef GLenum (* PFNGLGETERRORPROC) (void);
typedef void (* PFNGLGETFLOATVPROC) (GLenum pname, GLfloat *data);
typedef void (* PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC) (GLenum target, GLenum attachment, GLenum pname, GLint *params);
typedef void (* PFNGLGETINTEGERVPROC) (GLenum pname, GLint *data);
typedef void (* PFNGLGETPROGRAMIVPROC) (GLuint program, GLenum pname, GLint *params);
typedef void (* PFNGLGETPROGRAMINFOLOGPROC) (GLuint program, GLsizei bufSize, GLsizei *length, GLchar *infoLog);
typedef void (* PFNGLGETRENDERBUFFERPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
typedef void (* PFNGLGETSHADERIVPROC) (GLuint shader, GLenum pname, GLint *params);
typedef void (* PFNGLGETSHADERINFOLOGPROC) (GLuint shader, GLsizei bufSize, GLsizei *length, GLchar *infoLog);
typedef void (* PFNGLGETSHADERPRECISIONFORMATPROC) (GLenum shadertype, GLenum precisiontype, GLint *range, GLint *precision);
typedef void (* PFNGLGETSHADERSOURCEPROC) (GLuint shader, GLsizei bufSize, GLsizei *length, GLchar *source);
typedef const GLubyte *(* PFNGLGETSTRINGPROC) (GLenum name);
typedef void (* PFNGLGETTEXPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
typedef void (* PFNGLGETTEXPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
typedef void (* PFNGLGETUNIFORMFVPROC) (GLuint program, GLint location, GLfloat *params);
typedef void (* PFNGLGETUNIFORMIVPROC) (GLuint program, GLint location, GLint *params);
typedef GLint (* PFNGLGETUNIFORMLOCATIONPROC) (GLuint program, const GLchar *name);
typedef void (* PFNGLGETVERTEXATTRIBFVPROC) (GLuint index, GLenum pname, GLfloat *params);
typedef void (* PFNGLGETVERTEXATTRIBIVPROC) (GLuint index, GLenum pname, GLint *params);
typedef void (* PFNGLGETVERTEXATTRIBPOINTERVPROC) (GLuint index, GLenum pname, void **pointer);
typedef void (* PFNGLHINTPROC) (GLenum target, GLenum mode);
typedef GLboolean (* PFNGLISBUFFERPROC) (GLuint buffer);
typedef GLboolean (* PFNGLISENABLEDPROC) (GLenum cap);
typedef GLboolean (* PFNGLISFRAMEBUFFERPROC) (GLuint framebuffer);
typedef GLboolean (* PFNGLISPROGRAMPROC) (GLuint program);
typedef GLboolean (* PFNGLISRENDERBUFFERPROC) (GLuint renderbuffer);
typedef GLboolean (* PFNGLISSHADERPROC) (GLuint shader);
typedef GLboolean (* PFNGLISTEXTUREPROC) (GLuint texture);
typedef void (* PFNGLLINEWIDTHPROC) (GLfloat width);
typedef void (* PFNGLLINKPROGRAMPROC) (GLuint program);
typedef void (* PFNGLPIXELSTOREIPROC) (GLenum pname, GLint param);
typedef void (* PFNGLPOLYGONOFFSETPROC) (GLfloat factor, GLfloat units);
typedef void (* PFNGLREADPIXELSPROC) (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, void *pixels);
typedef void (* PFNGLRELEASESHADERCOMPILERPROC) (void);
typedef void (* PFNGLRENDERBUFFERSTORAGEPROC) (GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
typedef void (* PFNGLSAMPLECOVERAGEPROC) (GLfloat value, GLboolean invert);
typedef void (* PFNGLSCISSORPROC) (GLint x, GLint y, GLsizei width, GLsizei height);
typedef void (* PFNGLSHADERBINARYPROC) (GLsizei count, const GLuint *shaders, GLenum binaryFormat, const void *binary, GLsizei length);
typedef void (* PFNGLSHADERSOURCEPROC) (GLuint shader, GLsizei count, const GLchar *const*string, const GLint *length);
typedef void (* PFNGLSTENCILFUNCPROC) (GLenum func, GLint ref, GLuint mask);
typedef void (* PFNGLSTENCILFUNCSEPARATEPROC) (GLenum face, GLenum func, GLint ref, GLuint mask);
typedef void (* PFNGLSTENCILMASKPROC) (GLuint mask);
typedef void (* PFNGLSTENCILMASKSEPARATEPROC) (GLenum face, GLuint mask);
typedef void (* PFNGLSTENCILOPPROC) (GLenum fail, GLenum zfail, GLenum zpass);
typedef void (* PFNGLSTENCILOPSEPARATEPROC) (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
typedef void (* PFNGLTEXIMAGE2DPROC) (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const void *pixels);
typedef void (* PFNGLTEXPARAMETERFPROC) (GLenum target, GLenum pname, GLfloat param);
typedef void (* PFNGLTEXPARAMETERFVPROC) (GLenum target, GLenum pname, const GLfloat *params);
typedef void (* PFNGLTEXPARAMETERIPROC) (GLenum target, GLenum pname, GLint param);
typedef void (* PFNGLTEXPARAMETERIVPROC) (GLenum target, GLenum pname, const GLint *params);
typedef void (* PFNGLTEXSUBIMAGE2DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
typedef void (* PFNGLUNIFORM1FPROC) (GLint location, GLfloat v0);
typedef void (* PFNGLUNIFORM1FVPROC) (GLint location, GLsizei count, const GLfloat *value);
typedef void (* PFNGLUNIFORM1IPROC) (GLint location, GLint v0);
typedef void (* PFNGLUNIFORM1IVPROC) (GLint location, GLsizei count, const GLint *value);
typedef void (* PFNGLUNIFORM2FPROC) (GLint location, GLfloat v0, GLfloat v1);
typedef void (* PFNGLUNIFORM2FVPROC) (GLint location, GLsizei count, const GLfloat *value);
typedef void (* PFNGLUNIFORM2IPROC) (GLint location, GLint v0, GLint v1);
typedef void (* PFNGLUNIFORM2IVPROC) (GLint location, GLsizei count, const GLint *value);
typedef void (* PFNGLUNIFORM3FPROC) (GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
typedef void (* PFNGLUNIFORM3FVPROC) (GLint location, GLsizei count, const GLfloat *value);
typedef void (* PFNGLUNIFORM3IPROC) (GLint location, GLint v0, GLint v1, GLint v2);
typedef void (* PFNGLUNIFORM3IVPROC) (GLint location, GLsizei count, const GLint *value);
typedef void (* PFNGLUNIFORM4FPROC) (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
typedef void (* PFNGLUNIFORM4FVPROC) (GLint location, GLsizei count, const GLfloat *value);
typedef void (* PFNGLUNIFORM4IPROC) (GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
typedef void (* PFNGLUNIFORM4IVPROC) (GLint location, GLsizei count, const GLint *value);
typedef void (* PFNGLUNIFORMMATRIX2FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void (* PFNGLUNIFORMMATRIX3FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void (* PFNGLUNIFORMMATRIX4FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void (* PFNGLUSEPROGRAMPROC) (GLuint program);
typedef void (* PFNGLVALIDATEPROGRAMPROC) (GLuint program);
typedef void (* PFNGLVERTEXATTRIB1FPROC) (GLuint index, GLfloat x);
typedef void (* PFNGLVERTEXATTRIB1FVPROC) (GLuint index, const GLfloat *v);
typedef void (* PFNGLVERTEXATTRIB2FPROC) (GLuint index, GLfloat x, GLfloat y);
typedef void (* PFNGLVERTEXATTRIB2FVPROC) (GLuint index, const GLfloat *v);
typedef void (* PFNGLVERTEXATTRIB3FPROC) (GLuint index, GLfloat x, GLfloat y, GLfloat z);
typedef void (* PFNGLVERTEXATTRIB3FVPROC) (GLuint index, const GLfloat *v);
typedef void (* PFNGLVERTEXATTRIB4FPROC) (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void (* PFNGLVERTEXATTRIB4FVPROC) (GLuint index, const GLfloat *v);
typedef void (* PFNGLVERTEXATTRIBPOINTERPROC) (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const void *pointer);
typedef void (* PFNGLVIEWPORTPROC) (GLint x, GLint y, GLsizei width, GLsizei height);
void glActiveTexture (GLenum texture);
void glAttachShader (GLuint program, GLuint shader);
void glBindAttribLocation (GLuint program, GLuint index, const GLchar *name);
void glBindBuffer (GLenum target, GLuint buffer);
void glBindFramebuffer (GLenum target, GLuint framebuffer);
void glBindRenderbuffer (GLenum target, GLuint renderbuffer);
void glBindTexture (GLenum target, GLuint texture);
void glBlendColor (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glBlendEquation (GLenum mode);
void glBlendEquationSeparate (GLenum modeRGB, GLenum modeAlpha);
void glBlendFunc (GLenum sfactor, GLenum dfactor);
void glBlendFuncSeparate (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
void glBufferData (GLenum target, GLsizeiptr size, const void *data, GLenum usage);
void glBufferSubData (GLenum target, GLintptr offset, GLsizeiptr size, const void *data);
GLenum glCheckFramebufferStatus (GLenum target);
void glClear (GLbitfield mask);
void glClearColor (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glClearDepthf (GLfloat d);
void glClearStencil (GLint s);
void glColorMask (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
void glCompileShader (GLuint shader);
void glCompressedTexImage2D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const void *data);
void glCompressedTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const void *data);
void glCopyTexImage2D (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void glCopyTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
GLuint glCreateProgram (void);
GLuint glCreateShader (GLenum type);
void glCullFace (GLenum mode);
void glDeleteBuffers (GLsizei n, const GLuint *buffers);
void glDeleteFramebuffers (GLsizei n, const GLuint *framebuffers);
void glDeleteProgram (GLuint program);
void glDeleteRenderbuffers (GLsizei n, const GLuint *renderbuffers);
void glDeleteShader (GLuint shader);
void glDeleteTextures (GLsizei n, const GLuint *textures);
void glDepthFunc (GLenum func);
void glDepthMask (GLboolean flag);
void glDepthRangef (GLfloat n, GLfloat f);
void glDetachShader (GLuint program, GLuint shader);
void glDisable (GLenum cap);
void glDisableVertexAttribArray (GLuint index);
void glDrawArrays (GLenum mode, GLint first, GLsizei count);
void glDrawElements (GLenum mode, GLsizei count, GLenum type, const void *indices);
void glEnable (GLenum cap);
void glEnableVertexAttribArray (GLuint index);
void glFinish (void);
void glFlush (void);
void glFramebufferRenderbuffer (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
void glFramebufferTexture2D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glFrontFace (GLenum mode);
void glGenBuffers (GLsizei n, GLuint *buffers);
void glGenerateMipmap (GLenum target);
void glGenFramebuffers (GLsizei n, GLuint *framebuffers);
void glGenRenderbuffers (GLsizei n, GLuint *renderbuffers);
void glGenTextures (GLsizei n, GLuint *textures);
void glGetActiveAttrib (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLint *size, GLenum *type, GLchar *name);
void glGetActiveUniform (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLint *size, GLenum *type, GLchar *name);
void glGetAttachedShaders (GLuint program, GLsizei maxCount, GLsizei *count, GLuint *shaders);
GLint glGetAttribLocation (GLuint program, const GLchar *name);
void glGetBooleanv (GLenum pname, GLboolean *data);
void glGetBufferParameteriv (GLenum target, GLenum pname, GLint *params);
GLenum glGetError (void);
void glGetFloatv (GLenum pname, GLfloat *data);
void glGetFramebufferAttachmentParameteriv (GLenum target, GLenum attachment, GLenum pname, GLint *params);
void glGetIntegerv (GLenum pname, GLint *data);
void glGetProgramiv (GLuint program, GLenum pname, GLint *params);
void glGetProgramInfoLog (GLuint program, GLsizei bufSize, GLsizei *length, GLchar *infoLog);
void glGetRenderbufferParameteriv (GLenum target, GLenum pname, GLint *params);
void glGetShaderiv (GLuint shader, GLenum pname, GLint *params);
void glGetShaderInfoLog (GLuint shader, GLsizei bufSize, GLsizei *length, GLchar *infoLog);
void glGetShaderPrecisionFormat (GLenum shadertype, GLenum precisiontype, GLint *range, GLint *precision);
void glGetShaderSource (GLuint shader, GLsizei bufSize, GLsizei *length, GLchar *source);
const GLubyte * glGetString (GLenum name);
void glGetTexParameterfv (GLenum target, GLenum pname, GLfloat *params);
void glGetTexParameteriv (GLenum target, GLenum pname, GLint *params);
void glGetUniformfv (GLuint program, GLint location, GLfloat *params);
void glGetUniformiv (GLuint program, GLint location, GLint *params);
GLint glGetUniformLocation (GLuint program, const GLchar *name);
void glGetVertexAttribfv (GLuint index, GLenum pname, GLfloat *params);
void glGetVertexAttribiv (GLuint index, GLenum pname, GLint *params);
void glGetVertexAttribPointerv (GLuint index, GLenum pname, void **pointer);
void glHint (GLenum target, GLenum mode);
GLboolean glIsBuffer (GLuint buffer);
GLboolean glIsEnabled (GLenum cap);
GLboolean glIsFramebuffer (GLuint framebuffer);
GLboolean glIsProgram (GLuint program);
GLboolean glIsRenderbuffer (GLuint renderbuffer);
GLboolean glIsShader (GLuint shader);
GLboolean glIsTexture (GLuint texture);
void glLineWidth (GLfloat width);
void glLinkProgram (GLuint program);
void glPixelStorei (GLenum pname, GLint param);
void glPolygonOffset (GLfloat factor, GLfloat units);
void glReadPixels (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, void *pixels);
void glReleaseShaderCompiler (void);
void glRenderbufferStorage (GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
void glSampleCoverage (GLfloat value, GLboolean invert);
void glScissor (GLint x, GLint y, GLsizei width, GLsizei height);
void glShaderBinary (GLsizei count, const GLuint *shaders, GLenum binaryFormat, const void *binary, GLsizei length);
void glShaderSource (GLuint shader, GLsizei count, const GLchar *const*string, const GLint *length);
void glStencilFunc (GLenum func, GLint ref, GLuint mask);
void glStencilFuncSeparate (GLenum face, GLenum func, GLint ref, GLuint mask);
void glStencilMask (GLuint mask);
void glStencilMaskSeparate (GLenum face, GLuint mask);
void glStencilOp (GLenum fail, GLenum zfail, GLenum zpass);
void glStencilOpSeparate (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
void glTexImage2D (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const void *pixels);
void glTexParameterf (GLenum target, GLenum pname, GLfloat param);
void glTexParameterfv (GLenum target, GLenum pname, const GLfloat *params);
void glTexParameteri (GLenum target, GLenum pname, GLint param);
void glTexParameteriv (GLenum target, GLenum pname, const GLint *params);
void glTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void glUniform1f (GLint location, GLfloat v0);
void glUniform1fv (GLint location, GLsizei count, const GLfloat *value);
void glUniform1i (GLint location, GLint v0);
void glUniform1iv (GLint location, GLsizei count, const GLint *value);
void glUniform2f (GLint location, GLfloat v0, GLfloat v1);
void glUniform2fv (GLint location, GLsizei count, const GLfloat *value);
void glUniform2i (GLint location, GLint v0, GLint v1);
void glUniform2iv (GLint location, GLsizei count, const GLint *value);
void glUniform3f (GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
void glUniform3fv (GLint location, GLsizei count, const GLfloat *value);
void glUniform3i (GLint location, GLint v0, GLint v1, GLint v2);
void glUniform3iv (GLint location, GLsizei count, const GLint *value);
void glUniform4f (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
void glUniform4fv (GLint location, GLsizei count, const GLfloat *value);
void glUniform4i (GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
void glUniform4iv (GLint location, GLsizei count, const GLint *value);
void glUniformMatrix2fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glUniformMatrix3fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glUniformMatrix4fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glUseProgram (GLuint program);
void glValidateProgram (GLuint program);
void glVertexAttrib1f (GLuint index, GLfloat x);
void glVertexAttrib1fv (GLuint index, const GLfloat *v);
void glVertexAttrib2f (GLuint index, GLfloat x, GLfloat y);
void glVertexAttrib2fv (GLuint index, const GLfloat *v);
void glVertexAttrib3f (GLuint index, GLfloat x, GLfloat y, GLfloat z);
void glVertexAttrib3fv (GLuint index, const GLfloat *v);
void glVertexAttrib4f (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertexAttrib4fv (GLuint index, const GLfloat *v);
void glVertexAttribPointer (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const void *pointer);
void glViewport (GLint x, GLint y, GLsizei width, GLsizei height);
/* END   /usr/include/GLES2/gl2.h */
]]
return ffi.load'GLESv2'
