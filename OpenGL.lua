-- first taken from malkia's ufo's ffi/OpenGL.lua
-- then adjusted to allow metatables on windows for glew-like loading in my glapp project
-- then sorted out a bit based on glext.h

local ffi  = require( "ffi" )

local libs = ffi_OpenGL_libs or {
	OSX     = { x86 = "OpenGL.framework/OpenGL",   x64 = "OpenGL.framework/OpenGL" },

	-- not loading UFO's SDL
	Windows = { x86 = "OPENGL32.DLL",              x64 = "OPENGL32.DLL" },
	
	-- not loading UFO's Regal
	--Windows = { x86 = os.getenv'LUAJIT_LIBPATH'.."\\bin\\Windows\\x86\\regal.dll", x64 = os.getenv'LUAJIT_LIBPATH'.."\\bin\\Windows\\x64\\regal.dll" },
	
	Linux   = { x86 = "libGL.so",                  x64 = "libGL.so", arm = "libGL.so" },
	BSD     = { x86 = "libGL.so",                  x64 = "libGL.so" },
	POSIX   = { x86 = "libGL.so",                  x64 = "libGL.so" },
	Other   = { x86 = "libGL.so",                  x64 = "libGL.so" },
}

if ffi.os == "Windows" then
   -- weird workaround for XP
   -- Have to investigate more
   -- It's something due to REGAL, but not sure...
	ffi.load( "GLU32" )
end

local lib  = ffi_OpenGL_lib or libs[ ffi.os ][ ffi.arch ]

local gl   = ffi.load( lib )

local opengl_defines_1_0 = [[

typedef void GLvoid;
typedef unsigned int GLenum;

//#include <KHR/khrplatform.h>

//typedef khronos_float_t GLfloat;
typedef float GLfloat;

typedef int GLint;
typedef int GLsizei;
typedef unsigned int GLbitfield;
typedef double GLdouble;
typedef unsigned int GLuint;
typedef unsigned char GLboolean;

//typedef khronos_uint8_t GLubyte;
typedef unsigned char GLubyte;


//glcorearb.h defines these for 2.0, but they are used in gl.h 1.0 headers:

//typedef khronos_int16_t GLshort;
typedef short GLshort;

//typedef khronos_int8_t GLbyte;
typedef signed char GLbyte;

//typedef khronos_uint16_t GLushort;
typedef unsigned short GLushort;

//should go down below, but wgl/glapp wants it here
typedef char GLchar;


enum {
	GL_DEPTH_BUFFER_BIT               = 0x00000100,
	GL_STENCIL_BUFFER_BIT             = 0x00000400,
	GL_COLOR_BUFFER_BIT               = 0x00004000,
	GL_FALSE                          = 0x0,
	GL_TRUE                           = 0x1,
	GL_POINTS                         = 0x0000,
	GL_LINES                          = 0x0001,
	GL_LINE_LOOP                      = 0x0002,
	GL_LINE_STRIP                     = 0x0003,
	GL_TRIANGLES                      = 0x0004,
	GL_TRIANGLE_STRIP                 = 0x0005,
	GL_TRIANGLE_FAN                   = 0x0006,
	GL_QUADS                          = 0x0007,
	GL_NEVER                          = 0x0200,
	GL_LESS                           = 0x0201,
	GL_EQUAL                          = 0x0202,
	GL_LEQUAL                         = 0x0203,
	GL_GREATER                        = 0x0204,
	GL_NOTEQUAL                       = 0x0205,
	GL_GEQUAL                         = 0x0206,
	GL_ALWAYS                         = 0x0207,
	GL_ZERO                           = 0x0,
	GL_ONE                            = 0x1,
	GL_SRC_COLOR                      = 0x0300,
	GL_ONE_MINUS_SRC_COLOR            = 0x0301,
	GL_SRC_ALPHA                      = 0x0302,
	GL_ONE_MINUS_SRC_ALPHA            = 0x0303,
	GL_DST_ALPHA                      = 0x0304,
	GL_ONE_MINUS_DST_ALPHA            = 0x0305,
	GL_DST_COLOR                      = 0x0306,
	GL_ONE_MINUS_DST_COLOR            = 0x0307,
	GL_SRC_ALPHA_SATURATE             = 0x0308,
	GL_NONE                           = 0x0,
	GL_FRONT_LEFT                     = 0x0400,
	GL_FRONT_RIGHT                    = 0x0401,
	GL_BACK_LEFT                      = 0x0402,
	GL_BACK_RIGHT                     = 0x0403,
	GL_FRONT                          = 0x0404,
	GL_BACK                           = 0x0405,
	GL_LEFT                           = 0x0406,
	GL_RIGHT                          = 0x0407,
	GL_FRONT_AND_BACK                 = 0x0408,
	GL_NO_ERROR                       = 0x0,
	GL_INVALID_ENUM                   = 0x0500,
	GL_INVALID_VALUE                  = 0x0501,
	GL_INVALID_OPERATION              = 0x0502,
	GL_OUT_OF_MEMORY                  = 0x0505,
	GL_CW                             = 0x0900,
	GL_CCW                            = 0x0901,
	GL_POINT_SIZE                     = 0x0B11,
	GL_POINT_SIZE_RANGE               = 0x0B12,
	GL_POINT_SIZE_GRANULARITY         = 0x0B13,
	GL_LINE_SMOOTH                    = 0x0B20,
	GL_LINE_WIDTH                     = 0x0B21,
	GL_LINE_WIDTH_RANGE               = 0x0B22,
	GL_LINE_WIDTH_GRANULARITY         = 0x0B23,
	GL_POLYGON_MODE                   = 0x0B40,
	GL_POLYGON_SMOOTH                 = 0x0B41,
	GL_CULL_FACE                      = 0x0B44,
	GL_CULL_FACE_MODE                 = 0x0B45,
	GL_FRONT_FACE                     = 0x0B46,
	GL_DEPTH_RANGE                    = 0x0B70,
	GL_DEPTH_TEST                     = 0x0B71,
	GL_DEPTH_WRITEMASK                = 0x0B72,
	GL_DEPTH_CLEAR_VALUE              = 0x0B73,
	GL_DEPTH_FUNC                     = 0x0B74,
	GL_STENCIL_TEST                   = 0x0B90,
	GL_STENCIL_CLEAR_VALUE            = 0x0B91,
	GL_STENCIL_FUNC                   = 0x0B92,
	GL_STENCIL_VALUE_MASK             = 0x0B93,
	GL_STENCIL_FAIL                   = 0x0B94,
	GL_STENCIL_PASS_DEPTH_FAIL        = 0x0B95,
	GL_STENCIL_PASS_DEPTH_PASS        = 0x0B96,
	GL_STENCIL_REF                    = 0x0B97,
	GL_STENCIL_WRITEMASK              = 0x0B98,
	GL_VIEWPORT                       = 0x0BA2,
	GL_DITHER                         = 0x0BD0,
	GL_BLEND_DST                      = 0x0BE0,
	GL_BLEND_SRC                      = 0x0BE1,
	GL_BLEND                          = 0x0BE2,
	GL_LOGIC_OP_MODE                  = 0x0BF0,
	GL_DRAW_BUFFER                    = 0x0C01,
	GL_READ_BUFFER                    = 0x0C02,
	GL_SCISSOR_BOX                    = 0x0C10,
	GL_SCISSOR_TEST                   = 0x0C11,
	GL_COLOR_CLEAR_VALUE              = 0x0C22,
	GL_COLOR_WRITEMASK                = 0x0C23,
	GL_DOUBLEBUFFER                   = 0x0C32,
	GL_STEREO                         = 0x0C33,
	GL_LINE_SMOOTH_HINT               = 0x0C52,
	GL_POLYGON_SMOOTH_HINT            = 0x0C53,
	GL_UNPACK_SWAP_BYTES              = 0x0CF0,
	GL_UNPACK_LSB_FIRST               = 0x0CF1,
	GL_UNPACK_ROW_LENGTH              = 0x0CF2,
	GL_UNPACK_SKIP_ROWS               = 0x0CF3,
	GL_UNPACK_SKIP_PIXELS             = 0x0CF4,
	GL_UNPACK_ALIGNMENT               = 0x0CF5,
	GL_PACK_SWAP_BYTES                = 0x0D00,
	GL_PACK_LSB_FIRST                 = 0x0D01,
	GL_PACK_ROW_LENGTH                = 0x0D02,
	GL_PACK_SKIP_ROWS                 = 0x0D03,
	GL_PACK_SKIP_PIXELS               = 0x0D04,
	GL_PACK_ALIGNMENT                 = 0x0D05,
	GL_MAX_TEXTURE_SIZE               = 0x0D33,
	GL_MAX_VIEWPORT_DIMS              = 0x0D3A,
	GL_SUBPIXEL_BITS                  = 0x0D50,
	GL_TEXTURE_1D                     = 0x0DE0,
	GL_TEXTURE_2D                     = 0x0DE1,
	GL_TEXTURE_WIDTH                  = 0x1000,
	GL_TEXTURE_HEIGHT                 = 0x1001,
	GL_TEXTURE_BORDER_COLOR           = 0x1004,
	GL_DONT_CARE                      = 0x1100,
	GL_FASTEST                        = 0x1101,
	GL_NICEST                         = 0x1102,
	GL_BYTE                           = 0x1400,
	GL_UNSIGNED_BYTE                  = 0x1401,
	GL_SHORT                          = 0x1402,
	GL_UNSIGNED_SHORT                 = 0x1403,
	GL_INT                            = 0x1404,
	GL_UNSIGNED_INT                   = 0x1405,
	GL_FLOAT                          = 0x1406,
	GL_STACK_OVERFLOW                 = 0x0503,
	GL_STACK_UNDERFLOW                = 0x0504,
	GL_CLEAR                          = 0x1500,
	GL_AND                            = 0x1501,
	GL_AND_REVERSE                    = 0x1502,
	GL_COPY                           = 0x1503,
	GL_AND_INVERTED                   = 0x1504,
	GL_NOOP                           = 0x1505,
	GL_XOR                            = 0x1506,
	GL_OR                             = 0x1507,
	GL_NOR                            = 0x1508,
	GL_EQUIV                          = 0x1509,
	GL_INVERT                         = 0x150A,
	GL_OR_REVERSE                     = 0x150B,
	GL_COPY_INVERTED                  = 0x150C,
	GL_OR_INVERTED                    = 0x150D,
	GL_NAND                           = 0x150E,
	GL_SET                            = 0x150F,
	GL_TEXTURE                        = 0x1702,
	GL_COLOR                          = 0x1800,
	GL_DEPTH                          = 0x1801,
	GL_STENCIL                        = 0x1802,
	GL_STENCIL_INDEX                  = 0x1901,
	GL_DEPTH_COMPONENT                = 0x1902,
	GL_RED                            = 0x1903,
	GL_GREEN                          = 0x1904,
	GL_BLUE                           = 0x1905,
	GL_ALPHA                          = 0x1906,
	GL_RGB                            = 0x1907,
	GL_RGBA                           = 0x1908,
	GL_POINT                          = 0x1B00,
	GL_LINE                           = 0x1B01,
	GL_FILL                           = 0x1B02,
	GL_KEEP                           = 0x1E00,
	GL_REPLACE                        = 0x1E01,
	GL_INCR                           = 0x1E02,
	GL_DECR                           = 0x1E03,
	GL_VENDOR                         = 0x1F00,
	GL_RENDERER                       = 0x1F01,
	GL_VERSION                        = 0x1F02,
	GL_EXTENSIONS                     = 0x1F03,
	GL_NEAREST                        = 0x2600,
	GL_LINEAR                         = 0x2601,
	GL_NEAREST_MIPMAP_NEAREST         = 0x2700,
	GL_LINEAR_MIPMAP_NEAREST          = 0x2701,
	GL_NEAREST_MIPMAP_LINEAR          = 0x2702,
	GL_LINEAR_MIPMAP_LINEAR           = 0x2703,
	GL_TEXTURE_MAG_FILTER             = 0x2800,
	GL_TEXTURE_MIN_FILTER             = 0x2801,
	GL_TEXTURE_WRAP_S                 = 0x2802,
	GL_TEXTURE_WRAP_T                 = 0x2803,
	GL_REPEAT                         = 0x2901,
};
]]

local opengl_symbols_1_0 = [[
void glCullFace (GLenum mode);
void glFrontFace (GLenum mode);
void glHint (GLenum target, GLenum mode);
void glLineWidth (GLfloat width);
void glPointSize (GLfloat size);
void glPolygonMode (GLenum face, GLenum mode);
void glScissor (GLint x, GLint y, GLsizei width, GLsizei height);
void glTexParameterf (GLenum target, GLenum pname, GLfloat param);
void glTexParameterfv (GLenum target, GLenum pname, const GLfloat *params);
void glTexParameteri (GLenum target, GLenum pname, GLint param);
void glTexParameteriv (GLenum target, GLenum pname, const GLint *params);
void glTexImage1D (GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const void *pixels);
void glTexImage2D (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const void *pixels);
void glDrawBuffer (GLenum buf);
void glClear (GLbitfield mask);
void glClearColor (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glClearStencil (GLint s);
void glClearDepth (GLdouble depth);
void glStencilMask (GLuint mask);
void glColorMask (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
void glDepthMask (GLboolean flag);
void glDisable (GLenum cap);
void glEnable (GLenum cap);
void glFinish (void);
void glFlush (void);
void glBlendFunc (GLenum sfactor, GLenum dfactor);
void glLogicOp (GLenum opcode);
void glStencilFunc (GLenum func, GLint ref, GLuint mask);
void glStencilOp (GLenum fail, GLenum zfail, GLenum zpass);
void glDepthFunc (GLenum func);
void glPixelStoref (GLenum pname, GLfloat param);
void glPixelStorei (GLenum pname, GLint param);
void glReadBuffer (GLenum src);
void glReadPixels (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, void *pixels);
void glGetBooleanv (GLenum pname, GLboolean *data);
void glGetDoublev (GLenum pname, GLdouble *data);
GLenum glGetError (void);
void glGetFloatv (GLenum pname, GLfloat *data);
void glGetIntegerv (GLenum pname, GLint *data);
const GLubyte *glGetString (GLenum name);
void glGetTexImage (GLenum target, GLint level, GLenum format, GLenum type, void *pixels);
void glGetTexParameterfv (GLenum target, GLenum pname, GLfloat *params);
void glGetTexParameteriv (GLenum target, GLenum pname, GLint *params);
void glGetTexLevelParameterfv (GLenum target, GLint level, GLenum pname, GLfloat *params);
void glGetTexLevelParameteriv (GLenum target, GLint level, GLenum pname, GLint *params);
GLboolean glIsEnabled (GLenum cap);
void glDepthRange (GLdouble n, GLdouble f);
void glViewport (GLint x, GLint y, GLsizei width, GLsizei height);
]]

local opengl_defines_1_1 = [[
typedef float GLclampf;
typedef double GLclampd;

enum {
	GL_COLOR_LOGIC_OP                 = 0x0BF2,
	GL_POLYGON_OFFSET_UNITS           = 0x2A00,
	GL_POLYGON_OFFSET_POINT           = 0x2A01,
	GL_POLYGON_OFFSET_LINE            = 0x2A02,
	GL_POLYGON_OFFSET_FILL            = 0x8037,
	GL_POLYGON_OFFSET_FACTOR          = 0x8038,
	GL_TEXTURE_BINDING_1D             = 0x8068,
	GL_TEXTURE_BINDING_2D             = 0x8069,
	GL_TEXTURE_INTERNAL_FORMAT        = 0x1003,
	GL_TEXTURE_RED_SIZE               = 0x805C,
	GL_TEXTURE_GREEN_SIZE             = 0x805D,
	GL_TEXTURE_BLUE_SIZE              = 0x805E,
	GL_TEXTURE_ALPHA_SIZE             = 0x805F,
	GL_DOUBLE                         = 0x140A,
	GL_PROXY_TEXTURE_1D               = 0x8063,
	GL_PROXY_TEXTURE_2D               = 0x8064,
	GL_R3_G3_B2                       = 0x2A10,
	GL_RGB4                           = 0x804F,
	GL_RGB5                           = 0x8050,
	GL_RGB8                           = 0x8051,
	GL_RGB10                          = 0x8052,
	GL_RGB12                          = 0x8053,
	GL_RGB16                          = 0x8054,
	GL_RGBA2                          = 0x8055,
	GL_RGBA4                          = 0x8056,
	GL_RGB5_A1                        = 0x8057,
	GL_RGBA8                          = 0x8058,
	GL_RGB10_A2                       = 0x8059,
	GL_RGBA12                         = 0x805A,
	GL_RGBA16                         = 0x805B,
	GL_VERTEX_ARRAY                   = 0x8074,
};
]]

local opengl_symbols_1_1 = [[
void glDrawArrays (GLenum mode, GLint first, GLsizei count);
void glDrawElements (GLenum mode, GLsizei count, GLenum type, const void *indices);
void glGetPointerv (GLenum pname, void **params);
void glPolygonOffset (GLfloat factor, GLfloat units);
void glCopyTexImage1D (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void glCopyTexImage2D (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void glCopyTexSubImage1D (GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void glCopyTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glTexSubImage1D (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const void *pixels);
void glTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void glBindTexture (GLenum target, GLuint texture);
void glDeleteTextures (GLsizei n, const GLuint *textures);
void glGenTextures (GLsizei n, GLuint *textures);
GLboolean glIsTexture (GLuint texture);
]]

-- TODO sort please
-- This is actually some 1.1 stuff, some extensions mixed together
-- maybe some GLUT in there too
local opengl_extra_cdef = [[
typedef char GLcharARB;
typedef void *GLhandleARB;
typedef long GLintptrARB;
typedef long GLsizeiptrARB;
typedef unsigned short GLhalfARB;

enum {
 GL_ACCUM                          = 0x0100,
 GL_LOAD                           = 0x0101,
 GL_RETURN                         = 0x0102,
 GL_MULT                           = 0x0103,
 GL_ADD                            = 0x0104,
 GL_CURRENT_BIT                    = 0x00000001,
 GL_POINT_BIT                      = 0x00000002,
 GL_LINE_BIT                       = 0x00000004,
 GL_POLYGON_BIT                    = 0x00000008,
 GL_POLYGON_STIPPLE_BIT            = 0x00000010,
 GL_PIXEL_MODE_BIT                 = 0x00000020,
 GL_LIGHTING_BIT                   = 0x00000040,
 GL_FOG_BIT                        = 0x00000080,
 GL_ACCUM_BUFFER_BIT               = 0x00000200,
 GL_VIEWPORT_BIT                   = 0x00000800,
 GL_TRANSFORM_BIT                  = 0x00001000,
 GL_ENABLE_BIT                     = 0x00002000,
 GL_HINT_BIT                       = 0x00008000,
 GL_EVAL_BIT                       = 0x00010000,
 GL_LIST_BIT                       = 0x00020000,
 GL_TEXTURE_BIT                    = 0x00040000,
 GL_SCISSOR_BIT                    = 0x00080000,
 GL_ALL_ATTRIB_BITS                = 0x000fffff,
 GL_QUAD_STRIP                     = 0x0008,
 GL_POLYGON                        = 0x0009,
 GL_CLIP_PLANE0                    = 0x3000,
 GL_CLIP_PLANE1                    = 0x3001,
 GL_CLIP_PLANE2                    = 0x3002,
 GL_CLIP_PLANE3                    = 0x3003,
 GL_CLIP_PLANE4                    = 0x3004,
 GL_CLIP_PLANE5                    = 0x3005,
 GL_2_BYTES                        = 0x1407,
 GL_3_BYTES                        = 0x1408,
 GL_4_BYTES                        = 0x1409,
 GL_AUX0                           = 0x0409,
 GL_AUX1                           = 0x040A,
 GL_AUX2                           = 0x040B,
 GL_AUX3                           = 0x040C,
 GL_2D                             = 0x0600,
 GL_3D                             = 0x0601,
 GL_3D_COLOR                       = 0x0602,
 GL_3D_COLOR_TEXTURE               = 0x0603,
 GL_4D_COLOR_TEXTURE               = 0x0604,
 GL_PASS_THROUGH_TOKEN             = 0x0700,
 GL_POINT_TOKEN                    = 0x0701,
 GL_LINE_TOKEN                     = 0x0702,
 GL_POLYGON_TOKEN                  = 0x0703,
 GL_BITMAP_TOKEN                   = 0x0704,
 GL_DRAW_PIXEL_TOKEN               = 0x0705,
 GL_COPY_PIXEL_TOKEN               = 0x0706,
 GL_LINE_RESET_TOKEN               = 0x0707,
 GL_EXP                            = 0x0800,
 GL_EXP2                           = 0x0801,
 GL_COEFF                          = 0x0A00,
 GL_ORDER                          = 0x0A01,
 GL_DOMAIN                         = 0x0A02,
 GL_CURRENT_COLOR                  = 0x0B00,
 GL_CURRENT_INDEX                  = 0x0B01,
 GL_CURRENT_NORMAL                 = 0x0B02,
 GL_CURRENT_TEXTURE_COORDS         = 0x0B03,
 GL_CURRENT_RASTER_COLOR           = 0x0B04,
 GL_CURRENT_RASTER_INDEX           = 0x0B05,
 GL_CURRENT_RASTER_TEXTURE_COORDS  = 0x0B06,
 GL_CURRENT_RASTER_POSITION        = 0x0B07,
 GL_CURRENT_RASTER_POSITION_VALID  = 0x0B08,
 GL_CURRENT_RASTER_DISTANCE        = 0x0B09,
 GL_POINT_SMOOTH                   = 0x0B10,
 GL_LINE_STIPPLE                   = 0x0B24,
 GL_LINE_STIPPLE_PATTERN           = 0x0B25,
 GL_LINE_STIPPLE_REPEAT            = 0x0B26,
 GL_LIST_MODE                      = 0x0B30,
 GL_MAX_LIST_NESTING               = 0x0B31,
 GL_LIST_BASE                      = 0x0B32,
 GL_LIST_INDEX                     = 0x0B33,
 GL_POLYGON_STIPPLE                = 0x0B42,
 GL_EDGE_FLAG                      = 0x0B43,
 GL_LIGHTING                       = 0x0B50,
 GL_LIGHT_MODEL_LOCAL_VIEWER       = 0x0B51,
 GL_LIGHT_MODEL_TWO_SIDE           = 0x0B52,
 GL_LIGHT_MODEL_AMBIENT            = 0x0B53,
 GL_SHADE_MODEL                    = 0x0B54,
 GL_COLOR_MATERIAL_FACE            = 0x0B55,
 GL_COLOR_MATERIAL_PARAMETER       = 0x0B56,
 GL_COLOR_MATERIAL                 = 0x0B57,
 GL_FOG                            = 0x0B60,
 GL_FOG_INDEX                      = 0x0B61,
 GL_FOG_DENSITY                    = 0x0B62,
 GL_FOG_START                      = 0x0B63,
 GL_FOG_END                        = 0x0B64,
 GL_FOG_MODE                       = 0x0B65,
 GL_FOG_COLOR                      = 0x0B66,
 GL_ACCUM_CLEAR_VALUE              = 0x0B80,
 GL_MATRIX_MODE                    = 0x0BA0,
 GL_NORMALIZE                      = 0x0BA1,
 GL_MODELVIEW_STACK_DEPTH          = 0x0BA3,
 GL_PROJECTION_STACK_DEPTH         = 0x0BA4,
 GL_TEXTURE_STACK_DEPTH            = 0x0BA5,
 GL_MODELVIEW_MATRIX               = 0x0BA6,
 GL_PROJECTION_MATRIX              = 0x0BA7,
 GL_TEXTURE_MATRIX                 = 0x0BA8,
 GL_ATTRIB_STACK_DEPTH             = 0x0BB0,
 GL_CLIENT_ATTRIB_STACK_DEPTH      = 0x0BB1,
 GL_ALPHA_TEST                     = 0x0BC0,
 GL_ALPHA_TEST_FUNC                = 0x0BC1,
 GL_ALPHA_TEST_REF                 = 0x0BC2,
 GL_INDEX_LOGIC_OP                 = 0x0BF1,
 GL_AUX_BUFFERS                    = 0x0C00,
 GL_INDEX_CLEAR_VALUE              = 0x0C20,
 GL_INDEX_WRITEMASK                = 0x0C21,
 GL_INDEX_MODE                     = 0x0C30,
 GL_RGBA_MODE                      = 0x0C31,
 GL_RENDER_MODE                    = 0x0C40,
 GL_PERSPECTIVE_CORRECTION_HINT    = 0x0C50,
 GL_POINT_SMOOTH_HINT              = 0x0C51,
 GL_FOG_HINT                       = 0x0C54,
 GL_TEXTURE_GEN_S                  = 0x0C60,
 GL_TEXTURE_GEN_T                  = 0x0C61,
 GL_TEXTURE_GEN_R                  = 0x0C62,
 GL_TEXTURE_GEN_Q                  = 0x0C63,
 GL_PIXEL_MAP_I_TO_I               = 0x0C70,
 GL_PIXEL_MAP_S_TO_S               = 0x0C71,
 GL_PIXEL_MAP_I_TO_R               = 0x0C72,
 GL_PIXEL_MAP_I_TO_G               = 0x0C73,
 GL_PIXEL_MAP_I_TO_B               = 0x0C74,
 GL_PIXEL_MAP_I_TO_A               = 0x0C75,
 GL_PIXEL_MAP_R_TO_R               = 0x0C76,
 GL_PIXEL_MAP_G_TO_G               = 0x0C77,
 GL_PIXEL_MAP_B_TO_B               = 0x0C78,
 GL_PIXEL_MAP_A_TO_A               = 0x0C79,
 GL_PIXEL_MAP_I_TO_I_SIZE          = 0x0CB0,
 GL_PIXEL_MAP_S_TO_S_SIZE          = 0x0CB1,
 GL_PIXEL_MAP_I_TO_R_SIZE          = 0x0CB2,
 GL_PIXEL_MAP_I_TO_G_SIZE          = 0x0CB3,
 GL_PIXEL_MAP_I_TO_B_SIZE          = 0x0CB4,
 GL_PIXEL_MAP_I_TO_A_SIZE          = 0x0CB5,
 GL_PIXEL_MAP_R_TO_R_SIZE          = 0x0CB6,
 GL_PIXEL_MAP_G_TO_G_SIZE          = 0x0CB7,
 GL_PIXEL_MAP_B_TO_B_SIZE          = 0x0CB8,
 GL_PIXEL_MAP_A_TO_A_SIZE          = 0x0CB9,
 GL_MAP_COLOR                      = 0x0D10,
 GL_MAP_STENCIL                    = 0x0D11,
 GL_INDEX_SHIFT                    = 0x0D12,
 GL_INDEX_OFFSET                   = 0x0D13,
 GL_RED_SCALE                      = 0x0D14,
 GL_RED_BIAS                       = 0x0D15,
 GL_ZOOM_X                         = 0x0D16,
 GL_ZOOM_Y                         = 0x0D17,
 GL_GREEN_SCALE                    = 0x0D18,
 GL_GREEN_BIAS                     = 0x0D19,
 GL_BLUE_SCALE                     = 0x0D1A,
 GL_BLUE_BIAS                      = 0x0D1B,
 GL_ALPHA_SCALE                    = 0x0D1C,
 GL_ALPHA_BIAS                     = 0x0D1D,
 GL_DEPTH_SCALE                    = 0x0D1E,
 GL_DEPTH_BIAS                     = 0x0D1F,
 GL_MAX_EVAL_ORDER                 = 0x0D30,
 GL_MAX_LIGHTS                     = 0x0D31,
 GL_MAX_CLIP_PLANES                = 0x0D32,
 GL_MAX_PIXEL_MAP_TABLE            = 0x0D34,
 GL_MAX_ATTRIB_STACK_DEPTH         = 0x0D35,
 GL_MAX_MODELVIEW_STACK_DEPTH      = 0x0D36,
 GL_MAX_NAME_STACK_DEPTH           = 0x0D37,
 GL_MAX_PROJECTION_STACK_DEPTH     = 0x0D38,
 GL_MAX_TEXTURE_STACK_DEPTH        = 0x0D39,
 GL_MAX_CLIENT_ATTRIB_STACK_DEPTH  = 0x0D3B,
 GL_INDEX_BITS                     = 0x0D51,
 GL_RED_BITS                       = 0x0D52,
 GL_GREEN_BITS                     = 0x0D53,
 GL_BLUE_BITS                      = 0x0D54,
 GL_ALPHA_BITS                     = 0x0D55,
 GL_DEPTH_BITS                     = 0x0D56,
 GL_STENCIL_BITS                   = 0x0D57,
 GL_ACCUM_RED_BITS                 = 0x0D58,
 GL_ACCUM_GREEN_BITS               = 0x0D59,
 GL_ACCUM_BLUE_BITS                = 0x0D5A,
 GL_ACCUM_ALPHA_BITS               = 0x0D5B,
 GL_NAME_STACK_DEPTH               = 0x0D70,
 GL_AUTO_NORMAL                    = 0x0D80,
 GL_MAP1_COLOR_4                   = 0x0D90,
 GL_MAP1_INDEX                     = 0x0D91,
 GL_MAP1_NORMAL                    = 0x0D92,
 GL_MAP1_TEXTURE_COORD_1           = 0x0D93,
 GL_MAP1_TEXTURE_COORD_2           = 0x0D94,
 GL_MAP1_TEXTURE_COORD_3           = 0x0D95,
 GL_MAP1_TEXTURE_COORD_4           = 0x0D96,
 GL_MAP1_VERTEX_3                  = 0x0D97,
 GL_MAP1_VERTEX_4                  = 0x0D98,
 GL_MAP2_COLOR_4                   = 0x0DB0,
 GL_MAP2_INDEX                     = 0x0DB1,
 GL_MAP2_NORMAL                    = 0x0DB2,
 GL_MAP2_TEXTURE_COORD_1           = 0x0DB3,
 GL_MAP2_TEXTURE_COORD_2           = 0x0DB4,
 GL_MAP2_TEXTURE_COORD_3           = 0x0DB5,
 GL_MAP2_TEXTURE_COORD_4           = 0x0DB6,
 GL_MAP2_VERTEX_3                  = 0x0DB7,
 GL_MAP2_VERTEX_4                  = 0x0DB8,
 GL_MAP1_GRID_DOMAIN               = 0x0DD0,
 GL_MAP1_GRID_SEGMENTS             = 0x0DD1,
 GL_MAP2_GRID_DOMAIN               = 0x0DD2,
 GL_MAP2_GRID_SEGMENTS             = 0x0DD3,
 GL_FEEDBACK_BUFFER_POINTER        = 0x0DF0,
 GL_FEEDBACK_BUFFER_SIZE           = 0x0DF1,
 GL_FEEDBACK_BUFFER_TYPE           = 0x0DF2,
 GL_SELECTION_BUFFER_POINTER       = 0x0DF3,
 GL_SELECTION_BUFFER_SIZE          = 0x0DF4,
 GL_TEXTURE_BORDER                 = 0x1005,
 GL_LIGHT0                         = 0x4000,
 GL_LIGHT1                         = 0x4001,
 GL_LIGHT2                         = 0x4002,
 GL_LIGHT3                         = 0x4003,
 GL_LIGHT4                         = 0x4004,
 GL_LIGHT5                         = 0x4005,
 GL_LIGHT6                         = 0x4006,
 GL_LIGHT7                         = 0x4007,
 GL_AMBIENT                        = 0x1200,
 GL_DIFFUSE                        = 0x1201,
 GL_SPECULAR                       = 0x1202,
 GL_POSITION                       = 0x1203,
 GL_SPOT_DIRECTION                 = 0x1204,
 GL_SPOT_EXPONENT                  = 0x1205,
 GL_SPOT_CUTOFF                    = 0x1206,
 GL_CONSTANT_ATTENUATION           = 0x1207,
 GL_LINEAR_ATTENUATION             = 0x1208,
 GL_QUADRATIC_ATTENUATION          = 0x1209,
 GL_COMPILE                        = 0x1300,
 GL_COMPILE_AND_EXECUTE            = 0x1301,
 GL_EMISSION                       = 0x1600,
 GL_SHININESS                      = 0x1601,
 GL_AMBIENT_AND_DIFFUSE            = 0x1602,
 GL_COLOR_INDEXES                  = 0x1603,
 GL_MODELVIEW                      = 0x1700,
 GL_PROJECTION                     = 0x1701,
 GL_COLOR_INDEX                    = 0x1900,
 GL_LUMINANCE                      = 0x1909,
 GL_LUMINANCE_ALPHA                = 0x190A,
 GL_BITMAP                         = 0x1A00,
 GL_RENDER                         = 0x1C00,
 GL_FEEDBACK                       = 0x1C01,
 GL_SELECT                         = 0x1C02,
 GL_FLAT                           = 0x1D00,
 GL_SMOOTH                         = 0x1D01,
 GL_S                              = 0x2000,
 GL_T                              = 0x2001,
 GL_R                              = 0x2002,
 GL_Q                              = 0x2003,
 GL_MODULATE                       = 0x2100,
 GL_DECAL                          = 0x2101,
 GL_TEXTURE_ENV_MODE               = 0x2200,
 GL_TEXTURE_ENV_COLOR              = 0x2201,
 GL_TEXTURE_ENV                    = 0x2300,
 GL_EYE_LINEAR                     = 0x2400,
 GL_OBJECT_LINEAR                  = 0x2401,
 GL_SPHERE_MAP                     = 0x2402,
 GL_TEXTURE_GEN_MODE               = 0x2500,
 GL_OBJECT_PLANE                   = 0x2501,
 GL_EYE_PLANE                      = 0x2502,
 GL_CLAMP                          = 0x2900,
 GL_CLIENT_PIXEL_STORE_BIT         = 0x00000001,
 GL_CLIENT_VERTEX_ARRAY_BIT        = 0x00000002,
 GL_CLIENT_ALL_ATTRIB_BITS         = 0xffffffff,
 GL_ALPHA4                         = 0x803B,
 GL_ALPHA8                         = 0x803C,
 GL_ALPHA12                        = 0x803D,
 GL_ALPHA16                        = 0x803E,
 GL_LUMINANCE4                     = 0x803F,
 GL_LUMINANCE8                     = 0x8040,
 GL_LUMINANCE12                    = 0x8041,
 GL_LUMINANCE16                    = 0x8042,
 GL_LUMINANCE4_ALPHA4              = 0x8043,
 GL_LUMINANCE6_ALPHA2              = 0x8044,
 GL_LUMINANCE8_ALPHA8              = 0x8045,
 GL_LUMINANCE12_ALPHA4             = 0x8046,
 GL_LUMINANCE12_ALPHA12            = 0x8047,
 GL_LUMINANCE16_ALPHA16            = 0x8048,
 GL_INTENSITY                      = 0x8049,
 GL_INTENSITY4                     = 0x804A,
 GL_INTENSITY8                     = 0x804B,
 GL_INTENSITY12                    = 0x804C,
 GL_INTENSITY16                    = 0x804D,
 GL_TEXTURE_LUMINANCE_SIZE         = 0x8060,
 GL_TEXTURE_INTENSITY_SIZE         = 0x8061,
 GL_TEXTURE_PRIORITY               = 0x8066,
 GL_TEXTURE_RESIDENT               = 0x8067,
 GL_NORMAL_ARRAY                   = 0x8075,
 GL_COLOR_ARRAY                    = 0x8076,
 GL_INDEX_ARRAY                    = 0x8077,
 GL_TEXTURE_COORD_ARRAY            = 0x8078,
 GL_EDGE_FLAG_ARRAY                = 0x8079,
 GL_VERTEX_ARRAY_SIZE              = 0x807A,
 GL_VERTEX_ARRAY_TYPE              = 0x807B,
 GL_VERTEX_ARRAY_STRIDE            = 0x807C,
 GL_NORMAL_ARRAY_TYPE              = 0x807E,
 GL_NORMAL_ARRAY_STRIDE            = 0x807F,
 GL_COLOR_ARRAY_SIZE               = 0x8081,
 GL_COLOR_ARRAY_TYPE               = 0x8082,
 GL_COLOR_ARRAY_STRIDE             = 0x8083,
 GL_INDEX_ARRAY_TYPE               = 0x8085,
 GL_INDEX_ARRAY_STRIDE             = 0x8086,
 GL_TEXTURE_COORD_ARRAY_SIZE       = 0x8088,
 GL_TEXTURE_COORD_ARRAY_TYPE       = 0x8089,
 GL_TEXTURE_COORD_ARRAY_STRIDE     = 0x808A,
 GL_EDGE_FLAG_ARRAY_STRIDE         = 0x808C,
 GL_VERTEX_ARRAY_POINTER           = 0x808E,
 GL_NORMAL_ARRAY_POINTER           = 0x808F,
 GL_COLOR_ARRAY_POINTER            = 0x8090,
 GL_INDEX_ARRAY_POINTER            = 0x8091,
 GL_TEXTURE_COORD_ARRAY_POINTER    = 0x8092,
 GL_EDGE_FLAG_ARRAY_POINTER        = 0x8093,
 GL_V2F                            = 0x2A20,
 GL_V3F                            = 0x2A21,
 GL_C4UB_V2F                       = 0x2A22,
 GL_C4UB_V3F                       = 0x2A23,
 GL_C3F_V3F                        = 0x2A24,
 GL_N3F_V3F                        = 0x2A25,
 GL_C4F_N3F_V3F                    = 0x2A26,
 GL_T2F_V3F                        = 0x2A27,
 GL_T4F_V4F                        = 0x2A28,
 GL_T2F_C4UB_V3F                   = 0x2A29,
 GL_T2F_C3F_V3F                    = 0x2A2A,
 GL_T2F_N3F_V3F                    = 0x2A2B,
 GL_T2F_C4F_N3F_V3F                = 0x2A2C,
 GL_T4F_C4F_N3F_V4F                = 0x2A2D,
 GL_COLOR_MATRIX                   = 0x80B1,
 GL_COLOR_MATRIX_STACK_DEPTH       = 0x80B2,
 GL_MAX_COLOR_MATRIX_STACK_DEPTH   = 0x80B3,
 GL_POST_COLOR_MATRIX_RED_SCALE    = 0x80B4,
 GL_POST_COLOR_MATRIX_GREEN_SCALE  = 0x80B5,
 GL_POST_COLOR_MATRIX_BLUE_SCALE   = 0x80B6,
 GL_POST_COLOR_MATRIX_ALPHA_SCALE  = 0x80B7,
 GL_POST_COLOR_MATRIX_RED_BIAS     = 0x80B8,
 GL_POST_COLOR_MATRIX_GREEN_BIAS   = 0x80B9,
 GL_POST_COLOR_MATRIX_BLUE_BIAS    = 0x80BA,
 GL_POST_COLOR_MATRIX_ALPHA_BIAS   = 0x80BB,
 GL_COLOR_TABLE                    = 0x80D0,
 GL_POST_CONVOLUTION_COLOR_TABLE   = 0x80D1,
 GL_POST_COLOR_MATRIX_COLOR_TABLE  = 0x80D2,
 GL_PROXY_COLOR_TABLE              = 0x80D3,
 GL_PROXY_POST_CONVOLUTION_COLOR_TABLE = 0x80D4,
 GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D5,
 GL_COLOR_TABLE_SCALE              = 0x80D6,
 GL_COLOR_TABLE_BIAS               = 0x80D7,
 GL_COLOR_TABLE_FORMAT             = 0x80D8,
 GL_COLOR_TABLE_WIDTH              = 0x80D9,
 GL_COLOR_TABLE_RED_SIZE           = 0x80DA,
 GL_COLOR_TABLE_GREEN_SIZE         = 0x80DB,
 GL_COLOR_TABLE_BLUE_SIZE          = 0x80DC,
 GL_COLOR_TABLE_ALPHA_SIZE         = 0x80DD,
 GL_COLOR_TABLE_LUMINANCE_SIZE     = 0x80DE,
 GL_COLOR_TABLE_INTENSITY_SIZE     = 0x80DF,
 GL_CONVOLUTION_1D                 = 0x8010,
 GL_CONVOLUTION_2D                 = 0x8011,
 GL_SEPARABLE_2D                   = 0x8012,
 GL_CONVOLUTION_BORDER_MODE        = 0x8013,
 GL_CONVOLUTION_FILTER_SCALE       = 0x8014,
 GL_CONVOLUTION_FILTER_BIAS        = 0x8015,
 GL_REDUCE                         = 0x8016,
 GL_CONVOLUTION_FORMAT             = 0x8017,
 GL_CONVOLUTION_WIDTH              = 0x8018,
 GL_CONVOLUTION_HEIGHT             = 0x8019,
 GL_MAX_CONVOLUTION_WIDTH          = 0x801A,
 GL_MAX_CONVOLUTION_HEIGHT         = 0x801B,
 GL_POST_CONVOLUTION_RED_SCALE     = 0x801C,
 GL_POST_CONVOLUTION_GREEN_SCALE   = 0x801D,
 GL_POST_CONVOLUTION_BLUE_SCALE    = 0x801E,
 GL_POST_CONVOLUTION_ALPHA_SCALE   = 0x801F,
 GL_POST_CONVOLUTION_RED_BIAS      = 0x8020,
 GL_POST_CONVOLUTION_GREEN_BIAS    = 0x8021,
 GL_POST_CONVOLUTION_BLUE_BIAS     = 0x8022,
 GL_POST_CONVOLUTION_ALPHA_BIAS    = 0x8023,
 GL_CONSTANT_BORDER                = 0x8151,
 GL_REPLICATE_BORDER               = 0x8153,
 GL_CONVOLUTION_BORDER_COLOR       = 0x8154,
 GL_HISTOGRAM                      = 0x8024,
 GL_PROXY_HISTOGRAM                = 0x8025,
 GL_HISTOGRAM_WIDTH                = 0x8026,
 GL_HISTOGRAM_FORMAT               = 0x8027,
 GL_HISTOGRAM_RED_SIZE             = 0x8028,
 GL_HISTOGRAM_GREEN_SIZE           = 0x8029,
 GL_HISTOGRAM_BLUE_SIZE            = 0x802A,
 GL_HISTOGRAM_ALPHA_SIZE           = 0x802B,
 GL_HISTOGRAM_LUMINANCE_SIZE       = 0x802C,
 GL_HISTOGRAM_SINK                 = 0x802D,
 GL_MINMAX                         = 0x802E,
 GL_MINMAX_FORMAT                  = 0x802F,
 GL_MINMAX_SINK                    = 0x8030,
 GL_TABLE_TOO_LARGE                = 0x8031,
 GL_SRC3_RGB                       = 0x8583,
 GL_SRC4_RGB                       = 0x8584,
 GL_SRC5_RGB                       = 0x8585,
 GL_SRC6_RGB                       = 0x8586,
 GL_SRC7_RGB                       = 0x8587,
 GL_SRC3_ALPHA                     = 0x858B,
 GL_SRC4_ALPHA                     = 0x858C,
 GL_SRC5_ALPHA                     = 0x858D,
 GL_SRC6_ALPHA                     = 0x858E,
 GL_SRC7_ALPHA                     = 0x858F,
 GL_SOURCE3_RGB                    = 0x8583,
 GL_SOURCE4_RGB                    = 0x8584,
 GL_SOURCE5_RGB                    = 0x8585,
 GL_SOURCE6_RGB                    = 0x8586,
 GL_SOURCE7_RGB                    = 0x8587,
 GL_SOURCE3_ALPHA                  = 0x858B,
 GL_SOURCE4_ALPHA                  = 0x858C,
 GL_SOURCE5_ALPHA                  = 0x858D,
 GL_SOURCE6_ALPHA                  = 0x858E,
 GL_SOURCE7_ALPHA                  = 0x858F,
 GL_OPERAND3_RGB                   = 0x8593,
 GL_OPERAND4_RGB                   = 0x8594,
 GL_OPERAND5_RGB                   = 0x8595,
 GL_OPERAND6_RGB                   = 0x8596,
 GL_OPERAND7_RGB                   = 0x8597,
 GL_OPERAND3_ALPHA                 = 0x859B,
 GL_OPERAND4_ALPHA                 = 0x859C,
 GL_OPERAND5_ALPHA                 = 0x859D,
 GL_OPERAND6_ALPHA                 = 0x859E,
 GL_OPERAND7_ALPHA                 = 0x859F,
};

//OpenGL 1.1
void glAccum (GLenum op, GLfloat value);
void glAlphaFunc (GLenum func, GLclampf ref);
GLboolean glAreTexturesResident (GLsizei n, const GLuint *textures, GLboolean *residences);
void glArrayElement (GLint i);
void glBegin (GLenum mode);
void glBitmap (GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, const GLubyte *bitmap);
void glCallList (GLuint list);
void glCallLists (GLsizei n, GLenum type, const GLvoid *lists);
void glClearAccum (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glClearIndex (GLfloat c);
void glClipPlane (GLenum plane, const GLdouble *equation);
void glColor3b (GLbyte red, GLbyte green, GLbyte blue);
void glColor3bv (const GLbyte *v);
void glColor3d (GLdouble red, GLdouble green, GLdouble blue);
void glColor3dv (const GLdouble *v);
void glColor3f (GLfloat red, GLfloat green, GLfloat blue);
void glColor3fv (const GLfloat *v);
void glColor3i (GLint red, GLint green, GLint blue);
void glColor3iv (const GLint *v);
void glColor3s (GLshort red, GLshort green, GLshort blue);
void glColor3sv (const GLshort *v);
void glColor3ub (GLubyte red, GLubyte green, GLubyte blue);
void glColor3ubv (const GLubyte *v);
void glColor3ui (GLuint red, GLuint green, GLuint blue);
void glColor3uiv (const GLuint *v);
void glColor3us (GLushort red, GLushort green, GLushort blue);
void glColor3usv (const GLushort *v);
void glColor4b (GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha);
void glColor4bv (const GLbyte *v);
void glColor4d (GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha);
void glColor4dv (const GLdouble *v);
void glColor4f (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glColor4fv (const GLfloat *v);
void glColor4i (GLint red, GLint green, GLint blue, GLint alpha);
void glColor4iv (const GLint *v);
void glColor4s (GLshort red, GLshort green, GLshort blue, GLshort alpha);
void glColor4sv (const GLshort *v);
void glColor4ub (GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
void glColor4ubv (const GLubyte *v);
void glColor4ui (GLuint red, GLuint green, GLuint blue, GLuint alpha);
void glColor4uiv (const GLuint *v);
void glColor4us (GLushort red, GLushort green, GLushort blue, GLushort alpha);
void glColor4usv (const GLushort *v);
void glColorMaterial (GLenum face, GLenum mode);
void glColorPointer (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
void glColorSubTable (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const GLvoid *data);
void glColorTable (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *table);
void glColorTableParameterfv (GLenum target, GLenum pname, const GLfloat *params);
void glColorTableParameteriv (GLenum target, GLenum pname, const GLint *params);
void glConvolutionFilter1D (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *image);
void glConvolutionFilter2D (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *image);
void glConvolutionParameterf (GLenum target, GLenum pname, GLfloat params);
void glConvolutionParameterfv (GLenum target, GLenum pname, const GLfloat *params);
void glConvolutionParameteri (GLenum target, GLenum pname, GLint params);
void glConvolutionParameteriv (GLenum target, GLenum pname, const GLint *params);
void glCopyColorSubTable (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
void glCopyColorTable (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void glCopyConvolutionFilter1D (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void glCopyConvolutionFilter2D (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
void glCopyPixels (GLint x, GLint y, GLsizei width, GLsizei height, GLenum type);
void glDeleteLists (GLuint list, GLsizei range);
void glDisableClientState (GLenum array);
void glDrawPixels (GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels);
void glEdgeFlag (GLboolean flag);
void glEdgeFlagPointer (GLsizei stride, const GLvoid *pointer);
void glEdgeFlagv (const GLboolean *flag);
void glEnableClientState (GLenum array);
void glEnd (void);
void glEndList (void);
void glEvalCoord1d (GLdouble u);
void glEvalCoord1dv (const GLdouble *u);
void glEvalCoord1f (GLfloat u);
void glEvalCoord1fv (const GLfloat *u);
void glEvalCoord2d (GLdouble u, GLdouble v);
void glEvalCoord2dv (const GLdouble *u);
void glEvalCoord2f (GLfloat u, GLfloat v);
void glEvalCoord2fv (const GLfloat *u);
void glEvalMesh1 (GLenum mode, GLint i1, GLint i2);
void glEvalMesh2 (GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2);
void glEvalPoint1 (GLint i);
void glEvalPoint2 (GLint i, GLint j);
void glFeedbackBuffer (GLsizei size, GLenum type, GLfloat *buffer);
void glFogf (GLenum pname, GLfloat param);
void glFogfv (GLenum pname, const GLfloat *params);
void glFogi (GLenum pname, GLint param);
void glFogiv (GLenum pname, const GLint *params);
void glFrustum (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
GLuint glGenLists (GLsizei range);
void glGetClipPlane (GLenum plane, GLdouble *equation);
void glGetColorTable (GLenum target, GLenum format, GLenum type, GLvoid *table);
void glGetColorTableParameterfv (GLenum target, GLenum pname, GLfloat *params);
void glGetColorTableParameteriv (GLenum target, GLenum pname, GLint *params);
void glGetConvolutionFilter (GLenum target, GLenum format, GLenum type, GLvoid *image);
void glGetConvolutionParameterfv (GLenum target, GLenum pname, GLfloat *params);
void glGetConvolutionParameteriv (GLenum target, GLenum pname, GLint *params);
void glGetHistogram (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
void glGetHistogramParameterfv (GLenum target, GLenum pname, GLfloat *params);
void glGetHistogramParameteriv (GLenum target, GLenum pname, GLint *params);
void glGetLightfv (GLenum light, GLenum pname, GLfloat *params);
void glGetLightiv (GLenum light, GLenum pname, GLint *params);
void glGetMapdv (GLenum target, GLenum query, GLdouble *v);
void glGetMapfv (GLenum target, GLenum query, GLfloat *v);
void glGetMapiv (GLenum target, GLenum query, GLint *v);
void glGetMaterialfv (GLenum face, GLenum pname, GLfloat *params);
void glGetMaterialiv (GLenum face, GLenum pname, GLint *params);
void glGetMinmax (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
void glGetMinmaxParameterfv (GLenum target, GLenum pname, GLfloat *params);
void glGetMinmaxParameteriv (GLenum target, GLenum pname, GLint *params);
void glGetPixelMapfv (GLenum map, GLfloat *values);
void glGetPixelMapuiv (GLenum map, GLuint *values);
void glGetPixelMapusv (GLenum map, GLushort *values);
void glGetPolygonStipple (GLubyte *mask);
void glGetSeparableFilter (GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span);
void glGetTexEnvfv (GLenum target, GLenum pname, GLfloat *params);
void glGetTexEnviv (GLenum target, GLenum pname, GLint *params);
void glGetTexGendv (GLenum coord, GLenum pname, GLdouble *params);
void glGetTexGenfv (GLenum coord, GLenum pname, GLfloat *params);
void glGetTexGeniv (GLenum coord, GLenum pname, GLint *params);
void glHistogram (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
void glIndexMask (GLuint mask);
void glIndexPointer (GLenum type, GLsizei stride, const GLvoid *pointer);
void glIndexd (GLdouble c);
void glIndexdv (const GLdouble *c);
void glIndexf (GLfloat c);
void glIndexfv (const GLfloat *c);
void glIndexi (GLint c);
void glIndexiv (const GLint *c);
void glIndexs (GLshort c);
void glIndexsv (const GLshort *c);
void glIndexub (GLubyte c);
void glIndexubv (const GLubyte *c);
void glInitNames (void);
void glInterleavedArrays (GLenum format, GLsizei stride, const GLvoid *pointer);
GLboolean glIsList (GLuint list);
void glLightModelf (GLenum pname, GLfloat param);
void glLightModelfv (GLenum pname, const GLfloat *params);
void glLightModeli (GLenum pname, GLint param);
void glLightModeliv (GLenum pname, const GLint *params);
void glLightf (GLenum light, GLenum pname, GLfloat param);
void glLightfv (GLenum light, GLenum pname, const GLfloat *params);
void glLighti (GLenum light, GLenum pname, GLint param);
void glLightiv (GLenum light, GLenum pname, const GLint *params);
void glLineStipple (GLint factor, GLushort pattern);
void glListBase (GLuint base);
void glLoadIdentity (void);
void glLoadMatrixd (const GLdouble *m);
void glLoadMatrixf (const GLfloat *m);
void glLoadName (GLuint name);
void glMap1d (GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble *points);
void glMap1f (GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat *points);
void glMap2d (GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble *points);
void glMap2f (GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat *points);
void glMapGrid1d (GLint un, GLdouble u1, GLdouble u2);
void glMapGrid1f (GLint un, GLfloat u1, GLfloat u2);
void glMapGrid2d (GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2);
void glMapGrid2f (GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2);
void glMaterialf (GLenum face, GLenum pname, GLfloat param);
void glMaterialfv (GLenum face, GLenum pname, const GLfloat *params);
void glMateriali (GLenum face, GLenum pname, GLint param);
void glMaterialiv (GLenum face, GLenum pname, const GLint *params);
void glMatrixMode (GLenum mode);
void glMinmax (GLenum target, GLenum internalformat, GLboolean sink);
void glMultMatrixd (const GLdouble *m);
void glMultMatrixf (const GLfloat *m);
void glNewList (GLuint list, GLenum mode);
void glNormal3b (GLbyte nx, GLbyte ny, GLbyte nz);
void glNormal3bv (const GLbyte *v);
void glNormal3d (GLdouble nx, GLdouble ny, GLdouble nz);
void glNormal3dv (const GLdouble *v);
void glNormal3f (GLfloat nx, GLfloat ny, GLfloat nz);
void glNormal3fv (const GLfloat *v);
void glNormal3i (GLint nx, GLint ny, GLint nz);
void glNormal3iv (const GLint *v);
void glNormal3s (GLshort nx, GLshort ny, GLshort nz);
void glNormal3sv (const GLshort *v);
void glNormalPointer (GLenum type, GLsizei stride, const GLvoid *pointer);
void glOrtho (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void glPassThrough (GLfloat token);
void glPixelMapfv (GLenum map, GLint mapsize, const GLfloat *values);
void glPixelMapuiv (GLenum map, GLint mapsize, const GLuint *values);
void glPixelMapusv (GLenum map, GLint mapsize, const GLushort *values);
void glPixelTransferf (GLenum pname, GLfloat param);
void glPixelTransferi (GLenum pname, GLint param);
void glPixelZoom (GLfloat xfactor, GLfloat yfactor);
void glPolygonStipple (const GLubyte *mask);
void glPopAttrib (void);
void glPopClientAttrib (void);
void glPopMatrix (void);
void glPopName (void);
void glPrioritizeTextures (GLsizei n, const GLuint *textures, const GLclampf *priorities);
void glPushAttrib (GLbitfield mask);
void glPushClientAttrib (GLbitfield mask);
void glPushMatrix (void);
void glPushName (GLuint name);
void glRasterPos2d (GLdouble x, GLdouble y);
void glRasterPos2dv (const GLdouble *v);
void glRasterPos2f (GLfloat x, GLfloat y);
void glRasterPos2fv (const GLfloat *v);
void glRasterPos2i (GLint x, GLint y);
void glRasterPos2iv (const GLint *v);
void glRasterPos2s (GLshort x, GLshort y);
void glRasterPos2sv (const GLshort *v);
void glRasterPos3d (GLdouble x, GLdouble y, GLdouble z);
void glRasterPos3dv (const GLdouble *v);
void glRasterPos3f (GLfloat x, GLfloat y, GLfloat z);
void glRasterPos3fv (const GLfloat *v);
void glRasterPos3i (GLint x, GLint y, GLint z);
void glRasterPos3iv (const GLint *v);
void glRasterPos3s (GLshort x, GLshort y, GLshort z);
void glRasterPos3sv (const GLshort *v);
void glRasterPos4d (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glRasterPos4dv (const GLdouble *v);
void glRasterPos4f (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glRasterPos4fv (const GLfloat *v);
void glRasterPos4i (GLint x, GLint y, GLint z, GLint w);
void glRasterPos4iv (const GLint *v);
void glRasterPos4s (GLshort x, GLshort y, GLshort z, GLshort w);
void glRasterPos4sv (const GLshort *v);
void glRectd (GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
void glRectdv (const GLdouble *v1, const GLdouble *v2);
void glRectf (GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
void glRectfv (const GLfloat *v1, const GLfloat *v2);
void glRecti (GLint x1, GLint y1, GLint x2, GLint y2);
void glRectiv (const GLint *v1, const GLint *v2);
void glRects (GLshort x1, GLshort y1, GLshort x2, GLshort y2);
void glRectsv (const GLshort *v1, const GLshort *v2);
GLint glRenderMode (GLenum mode);
void glResetHistogram (GLenum target);
void glResetMinmax (GLenum target);
void glRotated (GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
void glRotatef (GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
void glScaled (GLdouble x, GLdouble y, GLdouble z);
void glScalef (GLfloat x, GLfloat y, GLfloat z);
void glSelectBuffer (GLsizei size, GLuint *buffer);
void glSeparableFilter2D (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *row, const GLvoid *column);
void glShadeModel (GLenum mode);
void glTexCoord1d (GLdouble s);
void glTexCoord1dv (const GLdouble *v);
void glTexCoord1f (GLfloat s);
void glTexCoord1fv (const GLfloat *v);
void glTexCoord1i (GLint s);
void glTexCoord1iv (const GLint *v);
void glTexCoord1s (GLshort s);
void glTexCoord1sv (const GLshort *v);
void glTexCoord2d (GLdouble s, GLdouble t);
void glTexCoord2dv (const GLdouble *v);
void glTexCoord2f (GLfloat s, GLfloat t);
void glTexCoord2fv (const GLfloat *v);
void glTexCoord2i (GLint s, GLint t);
void glTexCoord2iv (const GLint *v);
void glTexCoord2s (GLshort s, GLshort t);
void glTexCoord2sv (const GLshort *v);
void glTexCoord3d (GLdouble s, GLdouble t, GLdouble r);
void glTexCoord3dv (const GLdouble *v);
void glTexCoord3f (GLfloat s, GLfloat t, GLfloat r);
void glTexCoord3fv (const GLfloat *v);
void glTexCoord3i (GLint s, GLint t, GLint r);
void glTexCoord3iv (const GLint *v);
void glTexCoord3s (GLshort s, GLshort t, GLshort r);
void glTexCoord3sv (const GLshort *v);
void glTexCoord4d (GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void glTexCoord4dv (const GLdouble *v);
void glTexCoord4f (GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void glTexCoord4fv (const GLfloat *v);
void glTexCoord4i (GLint s, GLint t, GLint r, GLint q);
void glTexCoord4iv (const GLint *v);
void glTexCoord4s (GLshort s, GLshort t, GLshort r, GLshort q);
void glTexCoord4sv (const GLshort *v);
void glTexCoordPointer (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
void glTexEnvf (GLenum target, GLenum pname, GLfloat param);
void glTexEnvfv (GLenum target, GLenum pname, const GLfloat *params);
void glTexEnvi (GLenum target, GLenum pname, GLint param);
void glTexEnviv (GLenum target, GLenum pname, const GLint *params);
void glTexGend (GLenum coord, GLenum pname, GLdouble param);
void glTexGendv (GLenum coord, GLenum pname, const GLdouble *params);
void glTexGenf (GLenum coord, GLenum pname, GLfloat param);
void glTexGenfv (GLenum coord, GLenum pname, const GLfloat *params);
void glTexGeni (GLenum coord, GLenum pname, GLint param);
void glTexGeniv (GLenum coord, GLenum pname, const GLint *params);
void glTranslated (GLdouble x, GLdouble y, GLdouble z);
void glTranslatef (GLfloat x, GLfloat y, GLfloat z);
void glVertex2d (GLdouble x, GLdouble y);
void glVertex2dv (const GLdouble *v);
void glVertex2f (GLfloat x, GLfloat y);
void glVertex2fv (const GLfloat *v);
void glVertex2i (GLint x, GLint y);
void glVertex2iv (const GLint *v);
void glVertex2s (GLshort x, GLshort y);
void glVertex2sv (const GLshort *v);
void glVertex3d (GLdouble x, GLdouble y, GLdouble z);
void glVertex3dv (const GLdouble *v);
void glVertex3f (GLfloat x, GLfloat y, GLfloat z);
void glVertex3fv (const GLfloat *v);
void glVertex3i (GLint x, GLint y, GLint z);
void glVertex3iv (const GLint *v);
void glVertex3s (GLshort x, GLshort y, GLshort z);
void glVertex3sv (const GLshort *v);
void glVertex4d (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertex4dv (const GLdouble *v);
void glVertex4f (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertex4fv (const GLfloat *v);
void glVertex4i (GLint x, GLint y, GLint z, GLint w);
void glVertex4iv (const GLint *v);
void glVertex4s (GLshort x, GLshort y, GLshort z, GLshort w);
void glVertex4sv (const GLshort *v);
void glVertexPointer (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
void glSamplePass (GLenum pass);
]]

local opengl_defines_1_2 = [[
#define GL_UNSIGNED_BYTE_3_3_2            0x8032
#define GL_UNSIGNED_SHORT_4_4_4_4         0x8033
#define GL_UNSIGNED_SHORT_5_5_5_1         0x8034
#define GL_UNSIGNED_INT_8_8_8_8           0x8035
#define GL_UNSIGNED_INT_10_10_10_2        0x8036
#define GL_TEXTURE_BINDING_3D             0x806A
#define GL_PACK_SKIP_IMAGES               0x806B
#define GL_PACK_IMAGE_HEIGHT              0x806C
#define GL_UNPACK_SKIP_IMAGES             0x806D
#define GL_UNPACK_IMAGE_HEIGHT            0x806E
#define GL_TEXTURE_3D                     0x806F
#define GL_PROXY_TEXTURE_3D               0x8070
#define GL_TEXTURE_DEPTH                  0x8071
#define GL_TEXTURE_WRAP_R                 0x8072
#define GL_MAX_3D_TEXTURE_SIZE            0x8073
#define GL_UNSIGNED_BYTE_2_3_3_REV        0x8362
#define GL_UNSIGNED_SHORT_5_6_5           0x8363
#define GL_UNSIGNED_SHORT_5_6_5_REV       0x8364
#define GL_UNSIGNED_SHORT_4_4_4_4_REV     0x8365
#define GL_UNSIGNED_SHORT_1_5_5_5_REV     0x8366
#define GL_UNSIGNED_INT_8_8_8_8_REV       0x8367
#define GL_UNSIGNED_INT_2_10_10_10_REV    0x8368
#define GL_BGR                            0x80E0
#define GL_BGRA                           0x80E1
#define GL_MAX_ELEMENTS_VERTICES          0x80E8
#define GL_MAX_ELEMENTS_INDICES           0x80E9
#define GL_CLAMP_TO_EDGE                  0x812F
#define GL_TEXTURE_MIN_LOD                0x813A
#define GL_TEXTURE_MAX_LOD                0x813B
#define GL_TEXTURE_BASE_LEVEL             0x813C
#define GL_TEXTURE_MAX_LEVEL              0x813D
#define GL_SMOOTH_POINT_SIZE_RANGE        0x0B12
#define GL_SMOOTH_POINT_SIZE_GRANULARITY  0x0B13
#define GL_SMOOTH_LINE_WIDTH_RANGE        0x0B22
#define GL_SMOOTH_LINE_WIDTH_GRANULARITY  0x0B23
#define GL_ALIASED_LINE_WIDTH_RANGE       0x846E
#define GL_RESCALE_NORMAL                 0x803A
#define GL_LIGHT_MODEL_COLOR_CONTROL      0x81F8
#define GL_SINGLE_COLOR                   0x81F9
#define GL_SEPARATE_SPECULAR_COLOR        0x81FA
#define GL_ALIASED_POINT_SIZE_RANGE       0x846D
]]

local opengl_symbols_1_2 = [[
void  glDrawRangeElements (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const void *indices);
void  glTexImage3D (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const void *pixels);
void  glTexSubImage3D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
void  glCopyTexSubImage3D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
]]

local opengl_defines_1_3 = [[
#define GL_TEXTURE0                       0x84C0
#define GL_TEXTURE1                       0x84C1
#define GL_TEXTURE2                       0x84C2
#define GL_TEXTURE3                       0x84C3
#define GL_TEXTURE4                       0x84C4
#define GL_TEXTURE5                       0x84C5
#define GL_TEXTURE6                       0x84C6
#define GL_TEXTURE7                       0x84C7
#define GL_TEXTURE8                       0x84C8
#define GL_TEXTURE9                       0x84C9
#define GL_TEXTURE10                      0x84CA
#define GL_TEXTURE11                      0x84CB
#define GL_TEXTURE12                      0x84CC
#define GL_TEXTURE13                      0x84CD
#define GL_TEXTURE14                      0x84CE
#define GL_TEXTURE15                      0x84CF
#define GL_TEXTURE16                      0x84D0
#define GL_TEXTURE17                      0x84D1
#define GL_TEXTURE18                      0x84D2
#define GL_TEXTURE19                      0x84D3
#define GL_TEXTURE20                      0x84D4
#define GL_TEXTURE21                      0x84D5
#define GL_TEXTURE22                      0x84D6
#define GL_TEXTURE23                      0x84D7
#define GL_TEXTURE24                      0x84D8
#define GL_TEXTURE25                      0x84D9
#define GL_TEXTURE26                      0x84DA
#define GL_TEXTURE27                      0x84DB
#define GL_TEXTURE28                      0x84DC
#define GL_TEXTURE29                      0x84DD
#define GL_TEXTURE30                      0x84DE
#define GL_TEXTURE31                      0x84DF
#define GL_ACTIVE_TEXTURE                 0x84E0
#define GL_MULTISAMPLE                    0x809D
#define GL_SAMPLE_ALPHA_TO_COVERAGE       0x809E
#define GL_SAMPLE_ALPHA_TO_ONE            0x809F
#define GL_SAMPLE_COVERAGE                0x80A0
#define GL_SAMPLE_BUFFERS                 0x80A8
#define GL_SAMPLES                        0x80A9
#define GL_SAMPLE_COVERAGE_VALUE          0x80AA
#define GL_SAMPLE_COVERAGE_INVERT         0x80AB
#define GL_TEXTURE_CUBE_MAP               0x8513
#define GL_TEXTURE_BINDING_CUBE_MAP       0x8514
#define GL_TEXTURE_CUBE_MAP_POSITIVE_X    0x8515
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_X    0x8516
#define GL_TEXTURE_CUBE_MAP_POSITIVE_Y    0x8517
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_Y    0x8518
#define GL_TEXTURE_CUBE_MAP_POSITIVE_Z    0x8519
#define GL_TEXTURE_CUBE_MAP_NEGATIVE_Z    0x851A
#define GL_PROXY_TEXTURE_CUBE_MAP         0x851B
#define GL_MAX_CUBE_MAP_TEXTURE_SIZE      0x851C
#define GL_COMPRESSED_RGB                 0x84ED
#define GL_COMPRESSED_RGBA                0x84EE
#define GL_TEXTURE_COMPRESSION_HINT       0x84EF
#define GL_TEXTURE_COMPRESSED_IMAGE_SIZE  0x86A0
#define GL_TEXTURE_COMPRESSED             0x86A1
#define GL_NUM_COMPRESSED_TEXTURE_FORMATS 0x86A2
#define GL_COMPRESSED_TEXTURE_FORMATS     0x86A3
#define GL_CLAMP_TO_BORDER                0x812D
#define GL_CLIENT_ACTIVE_TEXTURE          0x84E1
#define GL_MAX_TEXTURE_UNITS              0x84E2
#define GL_TRANSPOSE_MODELVIEW_MATRIX     0x84E3
#define GL_TRANSPOSE_PROJECTION_MATRIX    0x84E4
#define GL_TRANSPOSE_TEXTURE_MATRIX       0x84E5
#define GL_TRANSPOSE_COLOR_MATRIX         0x84E6
#define GL_MULTISAMPLE_BIT                0x20000000
#define GL_NORMAL_MAP                     0x8511
#define GL_REFLECTION_MAP                 0x8512
#define GL_COMPRESSED_ALPHA               0x84E9
#define GL_COMPRESSED_LUMINANCE           0x84EA
#define GL_COMPRESSED_LUMINANCE_ALPHA     0x84EB
#define GL_COMPRESSED_INTENSITY           0x84EC
#define GL_COMBINE                        0x8570
#define GL_COMBINE_RGB                    0x8571
#define GL_COMBINE_ALPHA                  0x8572
#define GL_SOURCE0_RGB                    0x8580
#define GL_SOURCE1_RGB                    0x8581
#define GL_SOURCE2_RGB                    0x8582
#define GL_SOURCE0_ALPHA                  0x8588
#define GL_SOURCE1_ALPHA                  0x8589
#define GL_SOURCE2_ALPHA                  0x858A
#define GL_OPERAND0_RGB                   0x8590
#define GL_OPERAND1_RGB                   0x8591
#define GL_OPERAND2_RGB                   0x8592
#define GL_OPERAND0_ALPHA                 0x8598
#define GL_OPERAND1_ALPHA                 0x8599
#define GL_OPERAND2_ALPHA                 0x859A
#define GL_RGB_SCALE                      0x8573
#define GL_ADD_SIGNED                     0x8574
#define GL_INTERPOLATE                    0x8575
#define GL_SUBTRACT                       0x84E7
#define GL_CONSTANT                       0x8576
#define GL_PRIMARY_COLOR                  0x8577
#define GL_PREVIOUS                       0x8578
#define GL_DOT3_RGB                       0x86AE
#define GL_DOT3_RGBA                      0x86AF
]]

local opengl_symbols_1_3 = [[
void  glActiveTexture (GLenum texture);
void  glSampleCoverage (GLfloat value, GLboolean invert);
void  glCompressedTexImage3D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const void *data);
void  glCompressedTexImage2D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const void *data);
void  glCompressedTexImage1D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const void *data);
void  glCompressedTexSubImage3D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const void *data);
void  glCompressedTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const void *data);
void  glCompressedTexSubImage1D (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const void *data);
void  glGetCompressedTexImage (GLenum target, GLint level, void *img);
void  glClientActiveTexture (GLenum texture);
void  glMultiTexCoord1d (GLenum target, GLdouble s);
void  glMultiTexCoord1dv (GLenum target, const GLdouble *v);
void  glMultiTexCoord1f (GLenum target, GLfloat s);
void  glMultiTexCoord1fv (GLenum target, const GLfloat *v);
void  glMultiTexCoord1i (GLenum target, GLint s);
void  glMultiTexCoord1iv (GLenum target, const GLint *v);
void  glMultiTexCoord1s (GLenum target, GLshort s);
void  glMultiTexCoord1sv (GLenum target, const GLshort *v);
void  glMultiTexCoord2d (GLenum target, GLdouble s, GLdouble t);
void  glMultiTexCoord2dv (GLenum target, const GLdouble *v);
void  glMultiTexCoord2f (GLenum target, GLfloat s, GLfloat t);
void  glMultiTexCoord2fv (GLenum target, const GLfloat *v);
void  glMultiTexCoord2i (GLenum target, GLint s, GLint t);
void  glMultiTexCoord2iv (GLenum target, const GLint *v);
void  glMultiTexCoord2s (GLenum target, GLshort s, GLshort t);
void  glMultiTexCoord2sv (GLenum target, const GLshort *v);
void  glMultiTexCoord3d (GLenum target, GLdouble s, GLdouble t, GLdouble r);
void  glMultiTexCoord3dv (GLenum target, const GLdouble *v);
void  glMultiTexCoord3f (GLenum target, GLfloat s, GLfloat t, GLfloat r);
void  glMultiTexCoord3fv (GLenum target, const GLfloat *v);
void  glMultiTexCoord3i (GLenum target, GLint s, GLint t, GLint r);
void  glMultiTexCoord3iv (GLenum target, const GLint *v);
void  glMultiTexCoord3s (GLenum target, GLshort s, GLshort t, GLshort r);
void  glMultiTexCoord3sv (GLenum target, const GLshort *v);
void  glMultiTexCoord4d (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void  glMultiTexCoord4dv (GLenum target, const GLdouble *v);
void  glMultiTexCoord4f (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void  glMultiTexCoord4fv (GLenum target, const GLfloat *v);
void  glMultiTexCoord4i (GLenum target, GLint s, GLint t, GLint r, GLint q);
void  glMultiTexCoord4iv (GLenum target, const GLint *v);
void  glMultiTexCoord4s (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
void  glMultiTexCoord4sv (GLenum target, const GLshort *v);
void  glLoadTransposeMatrixf (const GLfloat *m);
void  glLoadTransposeMatrixd (const GLdouble *m);
void  glMultTransposeMatrixf (const GLfloat *m);
void  glMultTransposeMatrixd (const GLdouble *m);
]]

local opengl_defines_1_4 = [[
#define GL_BLEND_DST_RGB                  0x80C8
#define GL_BLEND_SRC_RGB                  0x80C9
#define GL_BLEND_DST_ALPHA                0x80CA
#define GL_BLEND_SRC_ALPHA                0x80CB
#define GL_POINT_FADE_THRESHOLD_SIZE      0x8128
#define GL_DEPTH_COMPONENT16              0x81A5
#define GL_DEPTH_COMPONENT24              0x81A6
#define GL_DEPTH_COMPONENT32              0x81A7
#define GL_MIRRORED_REPEAT                0x8370
#define GL_MAX_TEXTURE_LOD_BIAS           0x84FD
#define GL_TEXTURE_LOD_BIAS               0x8501
#define GL_INCR_WRAP                      0x8507
#define GL_DECR_WRAP                      0x8508
#define GL_TEXTURE_DEPTH_SIZE             0x884A
#define GL_TEXTURE_COMPARE_MODE           0x884C
#define GL_TEXTURE_COMPARE_FUNC           0x884D
#define GL_POINT_SIZE_MIN                 0x8126
#define GL_POINT_SIZE_MAX                 0x8127
#define GL_POINT_DISTANCE_ATTENUATION     0x8129
#define GL_GENERATE_MIPMAP                0x8191
#define GL_GENERATE_MIPMAP_HINT           0x8192
#define GL_FOG_COORDINATE_SOURCE          0x8450
#define GL_FOG_COORDINATE                 0x8451
#define GL_FRAGMENT_DEPTH                 0x8452
#define GL_CURRENT_FOG_COORDINATE         0x8453
#define GL_FOG_COORDINATE_ARRAY_TYPE      0x8454
#define GL_FOG_COORDINATE_ARRAY_STRIDE    0x8455
#define GL_FOG_COORDINATE_ARRAY_POINTER   0x8456
#define GL_FOG_COORDINATE_ARRAY           0x8457
#define GL_COLOR_SUM                      0x8458
#define GL_CURRENT_SECONDARY_COLOR        0x8459
#define GL_SECONDARY_COLOR_ARRAY_SIZE     0x845A
#define GL_SECONDARY_COLOR_ARRAY_TYPE     0x845B
#define GL_SECONDARY_COLOR_ARRAY_STRIDE   0x845C
#define GL_SECONDARY_COLOR_ARRAY_POINTER  0x845D
#define GL_SECONDARY_COLOR_ARRAY          0x845E
#define GL_TEXTURE_FILTER_CONTROL         0x8500
#define GL_DEPTH_TEXTURE_MODE             0x884B
#define GL_COMPARE_R_TO_TEXTURE           0x884E
#define GL_BLEND_COLOR                    0x8005
#define GL_BLEND_EQUATION                 0x8009
#define GL_CONSTANT_COLOR                 0x8001
#define GL_ONE_MINUS_CONSTANT_COLOR       0x8002
#define GL_CONSTANT_ALPHA                 0x8003
#define GL_ONE_MINUS_CONSTANT_ALPHA       0x8004
#define GL_FUNC_ADD                       0x8006
#define GL_FUNC_REVERSE_SUBTRACT          0x800B
#define GL_FUNC_SUBTRACT                  0x800A
#define GL_MIN                            0x8007
#define GL_MAX                            0x8008
]]

local opengl_symbols_1_4 = [[
void  glBlendFuncSeparate (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
void  glMultiDrawArrays (GLenum mode, const GLint *first, const GLsizei *count, GLsizei drawcount);
void  glMultiDrawElements (GLenum mode, const GLsizei *count, GLenum type, const void *const*indices, GLsizei drawcount);
void  glPointParameterf (GLenum pname, GLfloat param);
void  glPointParameterfv (GLenum pname, const GLfloat *params);
void  glPointParameteri (GLenum pname, GLint param);
void  glPointParameteriv (GLenum pname, const GLint *params);
void  glFogCoordf (GLfloat coord);
void  glFogCoordfv (const GLfloat *coord);
void  glFogCoordd (GLdouble coord);
void  glFogCoorddv (const GLdouble *coord);
void  glFogCoordPointer (GLenum type, GLsizei stride, const void *pointer);
void  glSecondaryColor3b (GLbyte red, GLbyte green, GLbyte blue);
void  glSecondaryColor3bv (const GLbyte *v);
void  glSecondaryColor3d (GLdouble red, GLdouble green, GLdouble blue);
void  glSecondaryColor3dv (const GLdouble *v);
void  glSecondaryColor3f (GLfloat red, GLfloat green, GLfloat blue);
void  glSecondaryColor3fv (const GLfloat *v);
void  glSecondaryColor3i (GLint red, GLint green, GLint blue);
void  glSecondaryColor3iv (const GLint *v);
void  glSecondaryColor3s (GLshort red, GLshort green, GLshort blue);
void  glSecondaryColor3sv (const GLshort *v);
void  glSecondaryColor3ub (GLubyte red, GLubyte green, GLubyte blue);
void  glSecondaryColor3ubv (const GLubyte *v);
void  glSecondaryColor3ui (GLuint red, GLuint green, GLuint blue);
void  glSecondaryColor3uiv (const GLuint *v);
void  glSecondaryColor3us (GLushort red, GLushort green, GLushort blue);
void  glSecondaryColor3usv (const GLushort *v);
void  glSecondaryColorPointer (GLint size, GLenum type, GLsizei stride, const void *pointer);
void  glWindowPos2d (GLdouble x, GLdouble y);
void  glWindowPos2dv (const GLdouble *v);
void  glWindowPos2f (GLfloat x, GLfloat y);
void  glWindowPos2fv (const GLfloat *v);
void  glWindowPos2i (GLint x, GLint y);
void  glWindowPos2iv (const GLint *v);
void  glWindowPos2s (GLshort x, GLshort y);
void  glWindowPos2sv (const GLshort *v);
void  glWindowPos3d (GLdouble x, GLdouble y, GLdouble z);
void  glWindowPos3dv (const GLdouble *v);
void  glWindowPos3f (GLfloat x, GLfloat y, GLfloat z);
void  glWindowPos3fv (const GLfloat *v);
void  glWindowPos3i (GLint x, GLint y, GLint z);
void  glWindowPos3iv (const GLint *v);
void  glWindowPos3s (GLshort x, GLshort y, GLshort z);
void  glWindowPos3sv (const GLshort *v);
void  glBlendColor (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void  glBlendEquation (GLenum mode);
]]

local opengl_defines_1_5 = [[

//typedef khronos_ssize_t GLsizeiptr;
typedef long GLsizeiptr;

//typedef khronos_intptr_t GLintptr;
typedef long GLintptr;

#define GL_BUFFER_SIZE                    0x8764
#define GL_BUFFER_USAGE                   0x8765
#define GL_QUERY_COUNTER_BITS             0x8864
#define GL_CURRENT_QUERY                  0x8865
#define GL_QUERY_RESULT                   0x8866
#define GL_QUERY_RESULT_AVAILABLE         0x8867
#define GL_ARRAY_BUFFER                   0x8892
#define GL_ELEMENT_ARRAY_BUFFER           0x8893
#define GL_ARRAY_BUFFER_BINDING           0x8894
#define GL_ELEMENT_ARRAY_BUFFER_BINDING   0x8895
#define GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING 0x889F
#define GL_READ_ONLY                      0x88B8
#define GL_WRITE_ONLY                     0x88B9
#define GL_READ_WRITE                     0x88BA
#define GL_BUFFER_ACCESS                  0x88BB
#define GL_BUFFER_MAPPED                  0x88BC
#define GL_BUFFER_MAP_POINTER             0x88BD
#define GL_STREAM_DRAW                    0x88E0
#define GL_STREAM_READ                    0x88E1
#define GL_STREAM_COPY                    0x88E2
#define GL_STATIC_DRAW                    0x88E4
#define GL_STATIC_READ                    0x88E5
#define GL_STATIC_COPY                    0x88E6
#define GL_DYNAMIC_DRAW                   0x88E8
#define GL_DYNAMIC_READ                   0x88E9
#define GL_DYNAMIC_COPY                   0x88EA
#define GL_SAMPLES_PASSED                 0x8914
#define GL_SRC1_ALPHA                     0x8589
#define GL_VERTEX_ARRAY_BUFFER_BINDING    0x8896
#define GL_NORMAL_ARRAY_BUFFER_BINDING    0x8897
#define GL_COLOR_ARRAY_BUFFER_BINDING     0x8898
#define GL_INDEX_ARRAY_BUFFER_BINDING     0x8899
#define GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING 0x889A
#define GL_EDGE_FLAG_ARRAY_BUFFER_BINDING 0x889B
#define GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING 0x889C
#define GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING 0x889D
#define GL_WEIGHT_ARRAY_BUFFER_BINDING    0x889E
#define GL_FOG_COORD_SRC                  0x8450
#define GL_FOG_COORD                      0x8451
#define GL_CURRENT_FOG_COORD              0x8453
#define GL_FOG_COORD_ARRAY_TYPE           0x8454
#define GL_FOG_COORD_ARRAY_STRIDE         0x8455
#define GL_FOG_COORD_ARRAY_POINTER        0x8456
#define GL_FOG_COORD_ARRAY                0x8457
#define GL_FOG_COORD_ARRAY_BUFFER_BINDING 0x889D
#define GL_SRC0_RGB                       0x8580
#define GL_SRC1_RGB                       0x8581
#define GL_SRC2_RGB                       0x8582
#define GL_SRC0_ALPHA                     0x8588
#define GL_SRC2_ALPHA                     0x858A
]]

local opengl_symbols_1_5 = [[
void  glGenQueries (GLsizei n, GLuint *ids);
void  glDeleteQueries (GLsizei n, const GLuint *ids);
GLboolean  glIsQuery (GLuint id);
void  glBeginQuery (GLenum target, GLuint id);
void  glEndQuery (GLenum target);
void  glGetQueryiv (GLenum target, GLenum pname, GLint *params);
void  glGetQueryObjectiv (GLuint id, GLenum pname, GLint *params);
void  glGetQueryObjectuiv (GLuint id, GLenum pname, GLuint *params);
void  glBindBuffer (GLenum target, GLuint buffer);
void  glDeleteBuffers (GLsizei n, const GLuint *buffers);
void  glGenBuffers (GLsizei n, GLuint *buffers);
GLboolean  glIsBuffer (GLuint buffer);
void  glBufferData (GLenum target, GLsizeiptr size, const void *data, GLenum usage);
void  glBufferSubData (GLenum target, GLintptr offset, GLsizeiptr size, const void *data);
void  glGetBufferSubData (GLenum target, GLintptr offset, GLsizeiptr size, void *data);
void * glMapBuffer (GLenum target, GLenum access);
GLboolean  glUnmapBuffer (GLenum target);
void  glGetBufferParameteriv (GLenum target, GLenum pname, GLint *params);
void  glGetBufferPointerv (GLenum target, GLenum pname, void **params);
]]

local opengl_defines_2_0 = [[
//wgl wants this up above
//typedef char GLchar;

#define GL_BLEND_EQUATION_RGB             0x8009
#define GL_VERTEX_ATTRIB_ARRAY_ENABLED    0x8622
#define GL_VERTEX_ATTRIB_ARRAY_SIZE       0x8623
#define GL_VERTEX_ATTRIB_ARRAY_STRIDE     0x8624
#define GL_VERTEX_ATTRIB_ARRAY_TYPE       0x8625
#define GL_CURRENT_VERTEX_ATTRIB          0x8626
#define GL_VERTEX_PROGRAM_POINT_SIZE      0x8642
#define GL_VERTEX_ATTRIB_ARRAY_POINTER    0x8645
#define GL_STENCIL_BACK_FUNC              0x8800
#define GL_STENCIL_BACK_FAIL              0x8801
#define GL_STENCIL_BACK_PASS_DEPTH_FAIL   0x8802
#define GL_STENCIL_BACK_PASS_DEPTH_PASS   0x8803
#define GL_MAX_DRAW_BUFFERS               0x8824
#define GL_DRAW_BUFFER0                   0x8825
#define GL_DRAW_BUFFER1                   0x8826
#define GL_DRAW_BUFFER2                   0x8827
#define GL_DRAW_BUFFER3                   0x8828
#define GL_DRAW_BUFFER4                   0x8829
#define GL_DRAW_BUFFER5                   0x882A
#define GL_DRAW_BUFFER6                   0x882B
#define GL_DRAW_BUFFER7                   0x882C
#define GL_DRAW_BUFFER8                   0x882D
#define GL_DRAW_BUFFER9                   0x882E
#define GL_DRAW_BUFFER10                  0x882F
#define GL_DRAW_BUFFER11                  0x8830
#define GL_DRAW_BUFFER12                  0x8831
#define GL_DRAW_BUFFER13                  0x8832
#define GL_DRAW_BUFFER14                  0x8833
#define GL_DRAW_BUFFER15                  0x8834
#define GL_BLEND_EQUATION_ALPHA           0x883D
#define GL_MAX_VERTEX_ATTRIBS             0x8869
#define GL_VERTEX_ATTRIB_ARRAY_NORMALIZED 0x886A
#define GL_MAX_TEXTURE_IMAGE_UNITS        0x8872
#define GL_FRAGMENT_SHADER                0x8B30
#define GL_VERTEX_SHADER                  0x8B31
#define GL_MAX_FRAGMENT_UNIFORM_COMPONENTS 0x8B49
#define GL_MAX_VERTEX_UNIFORM_COMPONENTS  0x8B4A
#define GL_MAX_VARYING_FLOATS             0x8B4B
#define GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS 0x8B4C
#define GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS 0x8B4D
#define GL_SHADER_TYPE                    0x8B4F
#define GL_FLOAT_VEC2                     0x8B50
#define GL_FLOAT_VEC3                     0x8B51
#define GL_FLOAT_VEC4                     0x8B52
#define GL_INT_VEC2                       0x8B53
#define GL_INT_VEC3                       0x8B54
#define GL_INT_VEC4                       0x8B55
#define GL_BOOL                           0x8B56
#define GL_BOOL_VEC2                      0x8B57
#define GL_BOOL_VEC3                      0x8B58
#define GL_BOOL_VEC4                      0x8B59
#define GL_FLOAT_MAT2                     0x8B5A
#define GL_FLOAT_MAT3                     0x8B5B
#define GL_FLOAT_MAT4                     0x8B5C
#define GL_SAMPLER_1D                     0x8B5D
#define GL_SAMPLER_2D                     0x8B5E
#define GL_SAMPLER_3D                     0x8B5F
#define GL_SAMPLER_CUBE                   0x8B60
#define GL_SAMPLER_1D_SHADOW              0x8B61
#define GL_SAMPLER_2D_SHADOW              0x8B62
#define GL_DELETE_STATUS                  0x8B80
#define GL_COMPILE_STATUS                 0x8B81
#define GL_LINK_STATUS                    0x8B82
#define GL_VALIDATE_STATUS                0x8B83
#define GL_INFO_LOG_LENGTH                0x8B84
#define GL_ATTACHED_SHADERS               0x8B85
#define GL_ACTIVE_UNIFORMS                0x8B86
#define GL_ACTIVE_UNIFORM_MAX_LENGTH      0x8B87
#define GL_SHADER_SOURCE_LENGTH           0x8B88
#define GL_ACTIVE_ATTRIBUTES              0x8B89
#define GL_ACTIVE_ATTRIBUTE_MAX_LENGTH    0x8B8A
#define GL_FRAGMENT_SHADER_DERIVATIVE_HINT 0x8B8B
#define GL_SHADING_LANGUAGE_VERSION       0x8B8C
#define GL_CURRENT_PROGRAM                0x8B8D
#define GL_POINT_SPRITE_COORD_ORIGIN      0x8CA0
#define GL_LOWER_LEFT                     0x8CA1
#define GL_UPPER_LEFT                     0x8CA2
#define GL_STENCIL_BACK_REF               0x8CA3
#define GL_STENCIL_BACK_VALUE_MASK        0x8CA4
#define GL_STENCIL_BACK_WRITEMASK         0x8CA5
#define GL_VERTEX_PROGRAM_TWO_SIDE        0x8643
#define GL_POINT_SPRITE                   0x8861
#define GL_COORD_REPLACE                  0x8862
#define GL_MAX_TEXTURE_COORDS             0x8871
]]

local opengl_symbols_2_0 = [[
void  glBlendEquationSeparate (GLenum modeRGB, GLenum modeAlpha);
void  glDrawBuffers (GLsizei n, const GLenum *bufs);
void  glStencilOpSeparate (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
void  glStencilFuncSeparate (GLenum face, GLenum func, GLint ref, GLuint mask);
void  glStencilMaskSeparate (GLenum face, GLuint mask);
void  glAttachShader (GLuint program, GLuint shader);
void  glBindAttribLocation (GLuint program, GLuint index, const GLchar *name);
void  glCompileShader (GLuint shader);
GLuint  glCreateProgram (void);
GLuint  glCreateShader (GLenum type);
void  glDeleteProgram (GLuint program);
void  glDeleteShader (GLuint shader);
void  glDetachShader (GLuint program, GLuint shader);
void  glDisableVertexAttribArray (GLuint index);
void  glEnableVertexAttribArray (GLuint index);
void  glGetActiveAttrib (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLint *size, GLenum *type, GLchar *name);
void  glGetActiveUniform (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLint *size, GLenum *type, GLchar *name);
void  glGetAttachedShaders (GLuint program, GLsizei maxCount, GLsizei *count, GLuint *shaders);
GLint  glGetAttribLocation (GLuint program, const GLchar *name);
void  glGetProgramiv (GLuint program, GLenum pname, GLint *params);
void  glGetProgramInfoLog (GLuint program, GLsizei bufSize, GLsizei *length, GLchar *infoLog);
void  glGetShaderiv (GLuint shader, GLenum pname, GLint *params);
void  glGetShaderInfoLog (GLuint shader, GLsizei bufSize, GLsizei *length, GLchar *infoLog);
void  glGetShaderSource (GLuint shader, GLsizei bufSize, GLsizei *length, GLchar *source);
GLint  glGetUniformLocation (GLuint program, const GLchar *name);
void  glGetUniformfv (GLuint program, GLint location, GLfloat *params);
void  glGetUniformiv (GLuint program, GLint location, GLint *params);
void  glGetVertexAttribdv (GLuint index, GLenum pname, GLdouble *params);
void  glGetVertexAttribfv (GLuint index, GLenum pname, GLfloat *params);
void  glGetVertexAttribiv (GLuint index, GLenum pname, GLint *params);
void  glGetVertexAttribPointerv (GLuint index, GLenum pname, void **pointer);
GLboolean  glIsProgram (GLuint program);
GLboolean  glIsShader (GLuint shader);
void  glLinkProgram (GLuint program);
void  glShaderSource (GLuint shader, GLsizei count, const GLchar *const*string, const GLint *length);
void  glUseProgram (GLuint program);
void  glUniform1f (GLint location, GLfloat v0);
void  glUniform2f (GLint location, GLfloat v0, GLfloat v1);
void  glUniform3f (GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
void  glUniform4f (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
void  glUniform1i (GLint location, GLint v0);
void  glUniform2i (GLint location, GLint v0, GLint v1);
void  glUniform3i (GLint location, GLint v0, GLint v1, GLint v2);
void  glUniform4i (GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
void  glUniform1fv (GLint location, GLsizei count, const GLfloat *value);
void  glUniform2fv (GLint location, GLsizei count, const GLfloat *value);
void  glUniform3fv (GLint location, GLsizei count, const GLfloat *value);
void  glUniform4fv (GLint location, GLsizei count, const GLfloat *value);
void  glUniform1iv (GLint location, GLsizei count, const GLint *value);
void  glUniform2iv (GLint location, GLsizei count, const GLint *value);
void  glUniform3iv (GLint location, GLsizei count, const GLint *value);
void  glUniform4iv (GLint location, GLsizei count, const GLint *value);
void  glUniformMatrix2fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glUniformMatrix3fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glUniformMatrix4fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glValidateProgram (GLuint program);
void  glVertexAttrib1d (GLuint index, GLdouble x);
void  glVertexAttrib1dv (GLuint index, const GLdouble *v);
void  glVertexAttrib1f (GLuint index, GLfloat x);
void  glVertexAttrib1fv (GLuint index, const GLfloat *v);
void  glVertexAttrib1s (GLuint index, GLshort x);
void  glVertexAttrib1sv (GLuint index, const GLshort *v);
void  glVertexAttrib2d (GLuint index, GLdouble x, GLdouble y);
void  glVertexAttrib2dv (GLuint index, const GLdouble *v);
void  glVertexAttrib2f (GLuint index, GLfloat x, GLfloat y);
void  glVertexAttrib2fv (GLuint index, const GLfloat *v);
void  glVertexAttrib2s (GLuint index, GLshort x, GLshort y);
void  glVertexAttrib2sv (GLuint index, const GLshort *v);
void  glVertexAttrib3d (GLuint index, GLdouble x, GLdouble y, GLdouble z);
void  glVertexAttrib3dv (GLuint index, const GLdouble *v);
void  glVertexAttrib3f (GLuint index, GLfloat x, GLfloat y, GLfloat z);
void  glVertexAttrib3fv (GLuint index, const GLfloat *v);
void  glVertexAttrib3s (GLuint index, GLshort x, GLshort y, GLshort z);
void  glVertexAttrib3sv (GLuint index, const GLshort *v);
void  glVertexAttrib4Nbv (GLuint index, const GLbyte *v);
void  glVertexAttrib4Niv (GLuint index, const GLint *v);
void  glVertexAttrib4Nsv (GLuint index, const GLshort *v);
void  glVertexAttrib4Nub (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
void  glVertexAttrib4Nubv (GLuint index, const GLubyte *v);
void  glVertexAttrib4Nuiv (GLuint index, const GLuint *v);
void  glVertexAttrib4Nusv (GLuint index, const GLushort *v);
void  glVertexAttrib4bv (GLuint index, const GLbyte *v);
void  glVertexAttrib4d (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void  glVertexAttrib4dv (GLuint index, const GLdouble *v);
void  glVertexAttrib4f (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void  glVertexAttrib4fv (GLuint index, const GLfloat *v);
void  glVertexAttrib4iv (GLuint index, const GLint *v);
void  glVertexAttrib4s (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
void  glVertexAttrib4sv (GLuint index, const GLshort *v);
void  glVertexAttrib4ubv (GLuint index, const GLubyte *v);
void  glVertexAttrib4uiv (GLuint index, const GLuint *v);
void  glVertexAttrib4usv (GLuint index, const GLushort *v);
void  glVertexAttribPointer (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const void *pointer);
]]

local opengl_defines_2_1 = [[
#define GL_PIXEL_PACK_BUFFER              0x88EB
#define GL_PIXEL_UNPACK_BUFFER            0x88EC
#define GL_PIXEL_PACK_BUFFER_BINDING      0x88ED
#define GL_PIXEL_UNPACK_BUFFER_BINDING    0x88EF
#define GL_FLOAT_MAT2x3                   0x8B65
#define GL_FLOAT_MAT2x4                   0x8B66
#define GL_FLOAT_MAT3x2                   0x8B67
#define GL_FLOAT_MAT3x4                   0x8B68
#define GL_FLOAT_MAT4x2                   0x8B69
#define GL_FLOAT_MAT4x3                   0x8B6A
#define GL_SRGB                           0x8C40
#define GL_SRGB8                          0x8C41
#define GL_SRGB_ALPHA                     0x8C42
#define GL_SRGB8_ALPHA8                   0x8C43
#define GL_COMPRESSED_SRGB                0x8C48
#define GL_COMPRESSED_SRGB_ALPHA          0x8C49
#define GL_CURRENT_RASTER_SECONDARY_COLOR 0x845F
#define GL_SLUMINANCE_ALPHA               0x8C44
#define GL_SLUMINANCE8_ALPHA8             0x8C45
#define GL_SLUMINANCE                     0x8C46
#define GL_SLUMINANCE8                    0x8C47
#define GL_COMPRESSED_SLUMINANCE          0x8C4A
#define GL_COMPRESSED_SLUMINANCE_ALPHA    0x8C4B
]]

local opengl_symbols_2_1 = [[
void  glUniformMatrix2x3fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glUniformMatrix3x2fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glUniformMatrix2x4fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glUniformMatrix4x2fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glUniformMatrix3x4fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glUniformMatrix4x3fv (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
]]

local opengl_defines_3_0 = [[
//typedef khronos_uint16_t GLhalf;
typedef short GLhalf;

#define GL_COMPARE_REF_TO_TEXTURE         0x884E
#define GL_CLIP_DISTANCE0                 0x3000
#define GL_CLIP_DISTANCE1                 0x3001
#define GL_CLIP_DISTANCE2                 0x3002
#define GL_CLIP_DISTANCE3                 0x3003
#define GL_CLIP_DISTANCE4                 0x3004
#define GL_CLIP_DISTANCE5                 0x3005
#define GL_CLIP_DISTANCE6                 0x3006
#define GL_CLIP_DISTANCE7                 0x3007
#define GL_MAX_CLIP_DISTANCES             0x0D32
#define GL_MAJOR_VERSION                  0x821B
#define GL_MINOR_VERSION                  0x821C
#define GL_NUM_EXTENSIONS                 0x821D
#define GL_CONTEXT_FLAGS                  0x821E
#define GL_COMPRESSED_RED                 0x8225
#define GL_COMPRESSED_RG                  0x8226
#define GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT 0x00000001
#define GL_RGBA32F                        0x8814
#define GL_RGB32F                         0x8815
#define GL_RGBA16F                        0x881A
#define GL_RGB16F                         0x881B
#define GL_VERTEX_ATTRIB_ARRAY_INTEGER    0x88FD
#define GL_MAX_ARRAY_TEXTURE_LAYERS       0x88FF
#define GL_MIN_PROGRAM_TEXEL_OFFSET       0x8904
#define GL_MAX_PROGRAM_TEXEL_OFFSET       0x8905
#define GL_CLAMP_READ_COLOR               0x891C
#define GL_FIXED_ONLY                     0x891D
#define GL_MAX_VARYING_COMPONENTS         0x8B4B
#define GL_TEXTURE_1D_ARRAY               0x8C18
#define GL_PROXY_TEXTURE_1D_ARRAY         0x8C19
#define GL_TEXTURE_2D_ARRAY               0x8C1A
#define GL_PROXY_TEXTURE_2D_ARRAY         0x8C1B
#define GL_TEXTURE_BINDING_1D_ARRAY       0x8C1C
#define GL_TEXTURE_BINDING_2D_ARRAY       0x8C1D
#define GL_R11F_G11F_B10F                 0x8C3A
#define GL_UNSIGNED_INT_10F_11F_11F_REV   0x8C3B
#define GL_RGB9_E5                        0x8C3D
#define GL_UNSIGNED_INT_5_9_9_9_REV       0x8C3E
#define GL_TEXTURE_SHARED_SIZE            0x8C3F
#define GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH 0x8C76
#define GL_TRANSFORM_FEEDBACK_BUFFER_MODE 0x8C7F
#define GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS 0x8C80
#define GL_TRANSFORM_FEEDBACK_VARYINGS    0x8C83
#define GL_TRANSFORM_FEEDBACK_BUFFER_START 0x8C84
#define GL_TRANSFORM_FEEDBACK_BUFFER_SIZE 0x8C85
#define GL_PRIMITIVES_GENERATED           0x8C87
#define GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN 0x8C88
#define GL_RASTERIZER_DISCARD             0x8C89
#define GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS 0x8C8A
#define GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS 0x8C8B
#define GL_INTERLEAVED_ATTRIBS            0x8C8C
#define GL_SEPARATE_ATTRIBS               0x8C8D
#define GL_TRANSFORM_FEEDBACK_BUFFER      0x8C8E
#define GL_TRANSFORM_FEEDBACK_BUFFER_BINDING 0x8C8F
#define GL_RGBA32UI                       0x8D70
#define GL_RGB32UI                        0x8D71
#define GL_RGBA16UI                       0x8D76
#define GL_RGB16UI                        0x8D77
#define GL_RGBA8UI                        0x8D7C
#define GL_RGB8UI                         0x8D7D
#define GL_RGBA32I                        0x8D82
#define GL_RGB32I                         0x8D83
#define GL_RGBA16I                        0x8D88
#define GL_RGB16I                         0x8D89
#define GL_RGBA8I                         0x8D8E
#define GL_RGB8I                          0x8D8F
#define GL_RED_INTEGER                    0x8D94
#define GL_GREEN_INTEGER                  0x8D95
#define GL_BLUE_INTEGER                   0x8D96
#define GL_RGB_INTEGER                    0x8D98
#define GL_RGBA_INTEGER                   0x8D99
#define GL_BGR_INTEGER                    0x8D9A
#define GL_BGRA_INTEGER                   0x8D9B
#define GL_SAMPLER_1D_ARRAY               0x8DC0
#define GL_SAMPLER_2D_ARRAY               0x8DC1
#define GL_SAMPLER_1D_ARRAY_SHADOW        0x8DC3
#define GL_SAMPLER_2D_ARRAY_SHADOW        0x8DC4
#define GL_SAMPLER_CUBE_SHADOW            0x8DC5
#define GL_UNSIGNED_INT_VEC2              0x8DC6
#define GL_UNSIGNED_INT_VEC3              0x8DC7
#define GL_UNSIGNED_INT_VEC4              0x8DC8
#define GL_INT_SAMPLER_1D                 0x8DC9
#define GL_INT_SAMPLER_2D                 0x8DCA
#define GL_INT_SAMPLER_3D                 0x8DCB
#define GL_INT_SAMPLER_CUBE               0x8DCC
#define GL_INT_SAMPLER_1D_ARRAY           0x8DCE
#define GL_INT_SAMPLER_2D_ARRAY           0x8DCF
#define GL_UNSIGNED_INT_SAMPLER_1D        0x8DD1
#define GL_UNSIGNED_INT_SAMPLER_2D        0x8DD2
#define GL_UNSIGNED_INT_SAMPLER_3D        0x8DD3
#define GL_UNSIGNED_INT_SAMPLER_CUBE      0x8DD4
#define GL_UNSIGNED_INT_SAMPLER_1D_ARRAY  0x8DD6
#define GL_UNSIGNED_INT_SAMPLER_2D_ARRAY  0x8DD7
#define GL_QUERY_WAIT                     0x8E13
#define GL_QUERY_NO_WAIT                  0x8E14
#define GL_QUERY_BY_REGION_WAIT           0x8E15
#define GL_QUERY_BY_REGION_NO_WAIT        0x8E16
#define GL_BUFFER_ACCESS_FLAGS            0x911F
#define GL_BUFFER_MAP_LENGTH              0x9120
#define GL_BUFFER_MAP_OFFSET              0x9121
#define GL_DEPTH_COMPONENT32F             0x8CAC
#define GL_DEPTH32F_STENCIL8              0x8CAD
#define GL_FLOAT_32_UNSIGNED_INT_24_8_REV 0x8DAD
#define GL_INVALID_FRAMEBUFFER_OPERATION  0x0506
#define GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING 0x8210
#define GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE 0x8211
#define GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE 0x8212
#define GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE 0x8213
#define GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE 0x8214
#define GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE 0x8215
#define GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE 0x8216
#define GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE 0x8217
#define GL_FRAMEBUFFER_DEFAULT            0x8218
#define GL_FRAMEBUFFER_UNDEFINED          0x8219
#define GL_DEPTH_STENCIL_ATTACHMENT       0x821A
#define GL_MAX_RENDERBUFFER_SIZE          0x84E8
#define GL_DEPTH_STENCIL                  0x84F9
#define GL_UNSIGNED_INT_24_8              0x84FA
#define GL_DEPTH24_STENCIL8               0x88F0
#define GL_TEXTURE_STENCIL_SIZE           0x88F1
#define GL_TEXTURE_RED_TYPE               0x8C10
#define GL_TEXTURE_GREEN_TYPE             0x8C11
#define GL_TEXTURE_BLUE_TYPE              0x8C12
#define GL_TEXTURE_ALPHA_TYPE             0x8C13
#define GL_TEXTURE_DEPTH_TYPE             0x8C16
#define GL_UNSIGNED_NORMALIZED            0x8C17
#define GL_FRAMEBUFFER_BINDING            0x8CA6
#define GL_DRAW_FRAMEBUFFER_BINDING       0x8CA6
#define GL_RENDERBUFFER_BINDING           0x8CA7
#define GL_READ_FRAMEBUFFER               0x8CA8
#define GL_DRAW_FRAMEBUFFER               0x8CA9
#define GL_READ_FRAMEBUFFER_BINDING       0x8CAA
#define GL_RENDERBUFFER_SAMPLES           0x8CAB
#define GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE 0x8CD0
#define GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME 0x8CD1
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL 0x8CD2
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE 0x8CD3
#define GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER 0x8CD4
#define GL_FRAMEBUFFER_COMPLETE           0x8CD5
#define GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT 0x8CD6
#define GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT 0x8CD7
#define GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER 0x8CDB
#define GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER 0x8CDC
#define GL_FRAMEBUFFER_UNSUPPORTED        0x8CDD
#define GL_MAX_COLOR_ATTACHMENTS          0x8CDF
#define GL_COLOR_ATTACHMENT0              0x8CE0
#define GL_COLOR_ATTACHMENT1              0x8CE1
#define GL_COLOR_ATTACHMENT2              0x8CE2
#define GL_COLOR_ATTACHMENT3              0x8CE3
#define GL_COLOR_ATTACHMENT4              0x8CE4
#define GL_COLOR_ATTACHMENT5              0x8CE5
#define GL_COLOR_ATTACHMENT6              0x8CE6
#define GL_COLOR_ATTACHMENT7              0x8CE7
#define GL_COLOR_ATTACHMENT8              0x8CE8
#define GL_COLOR_ATTACHMENT9              0x8CE9
#define GL_COLOR_ATTACHMENT10             0x8CEA
#define GL_COLOR_ATTACHMENT11             0x8CEB
#define GL_COLOR_ATTACHMENT12             0x8CEC
#define GL_COLOR_ATTACHMENT13             0x8CED
#define GL_COLOR_ATTACHMENT14             0x8CEE
#define GL_COLOR_ATTACHMENT15             0x8CEF
#define GL_COLOR_ATTACHMENT16             0x8CF0
#define GL_COLOR_ATTACHMENT17             0x8CF1
#define GL_COLOR_ATTACHMENT18             0x8CF2
#define GL_COLOR_ATTACHMENT19             0x8CF3
#define GL_COLOR_ATTACHMENT20             0x8CF4
#define GL_COLOR_ATTACHMENT21             0x8CF5
#define GL_COLOR_ATTACHMENT22             0x8CF6
#define GL_COLOR_ATTACHMENT23             0x8CF7
#define GL_COLOR_ATTACHMENT24             0x8CF8
#define GL_COLOR_ATTACHMENT25             0x8CF9
#define GL_COLOR_ATTACHMENT26             0x8CFA
#define GL_COLOR_ATTACHMENT27             0x8CFB
#define GL_COLOR_ATTACHMENT28             0x8CFC
#define GL_COLOR_ATTACHMENT29             0x8CFD
#define GL_COLOR_ATTACHMENT30             0x8CFE
#define GL_COLOR_ATTACHMENT31             0x8CFF
#define GL_DEPTH_ATTACHMENT               0x8D00
#define GL_STENCIL_ATTACHMENT             0x8D20
#define GL_FRAMEBUFFER                    0x8D40
#define GL_RENDERBUFFER                   0x8D41
#define GL_RENDERBUFFER_WIDTH             0x8D42
#define GL_RENDERBUFFER_HEIGHT            0x8D43
#define GL_RENDERBUFFER_INTERNAL_FORMAT   0x8D44
#define GL_STENCIL_INDEX1                 0x8D46
#define GL_STENCIL_INDEX4                 0x8D47
#define GL_STENCIL_INDEX8                 0x8D48
#define GL_STENCIL_INDEX16                0x8D49
#define GL_RENDERBUFFER_RED_SIZE          0x8D50
#define GL_RENDERBUFFER_GREEN_SIZE        0x8D51
#define GL_RENDERBUFFER_BLUE_SIZE         0x8D52
#define GL_RENDERBUFFER_ALPHA_SIZE        0x8D53
#define GL_RENDERBUFFER_DEPTH_SIZE        0x8D54
#define GL_RENDERBUFFER_STENCIL_SIZE      0x8D55
#define GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE 0x8D56
#define GL_MAX_SAMPLES                    0x8D57
#define GL_INDEX                          0x8222
#define GL_TEXTURE_LUMINANCE_TYPE         0x8C14
#define GL_TEXTURE_INTENSITY_TYPE         0x8C15
#define GL_FRAMEBUFFER_SRGB               0x8DB9
#define GL_HALF_FLOAT                     0x140B
#define GL_MAP_READ_BIT                   0x0001
#define GL_MAP_WRITE_BIT                  0x0002
#define GL_MAP_INVALIDATE_RANGE_BIT       0x0004
#define GL_MAP_INVALIDATE_BUFFER_BIT      0x0008
#define GL_MAP_FLUSH_EXPLICIT_BIT         0x0010
#define GL_MAP_UNSYNCHRONIZED_BIT         0x0020
#define GL_COMPRESSED_RED_RGTC1           0x8DBB
#define GL_COMPRESSED_SIGNED_RED_RGTC1    0x8DBC
#define GL_COMPRESSED_RG_RGTC2            0x8DBD
#define GL_COMPRESSED_SIGNED_RG_RGTC2     0x8DBE
#define GL_RG                             0x8227
#define GL_RG_INTEGER                     0x8228
#define GL_R8                             0x8229
#define GL_R16                            0x822A
#define GL_RG8                            0x822B
#define GL_RG16                           0x822C
#define GL_R16F                           0x822D
#define GL_R32F                           0x822E
#define GL_RG16F                          0x822F
#define GL_RG32F                          0x8230
#define GL_R8I                            0x8231
#define GL_R8UI                           0x8232
#define GL_R16I                           0x8233
#define GL_R16UI                          0x8234
#define GL_R32I                           0x8235
#define GL_R32UI                          0x8236
#define GL_RG8I                           0x8237
#define GL_RG8UI                          0x8238
#define GL_RG16I                          0x8239
#define GL_RG16UI                         0x823A
#define GL_RG32I                          0x823B
#define GL_RG32UI                         0x823C
#define GL_VERTEX_ARRAY_BINDING           0x85B5
#define GL_CLAMP_VERTEX_COLOR             0x891A
#define GL_CLAMP_FRAGMENT_COLOR           0x891B
#define GL_ALPHA_INTEGER                  0x8D97
]]

local opengl_symbols_3_0 = [[
void  glColorMaski (GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
void  glGetBooleani_v (GLenum target, GLuint index, GLboolean *data);
void  glGetIntegeri_v (GLenum target, GLuint index, GLint *data);
void  glEnablei (GLenum target, GLuint index);
void  glDisablei (GLenum target, GLuint index);
GLboolean  glIsEnabledi (GLenum target, GLuint index);
void  glBeginTransformFeedback (GLenum primitiveMode);
void  glEndTransformFeedback (void);
void  glBindBufferRange (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
void  glBindBufferBase (GLenum target, GLuint index, GLuint buffer);
void  glTransformFeedbackVaryings (GLuint program, GLsizei count, const GLchar *const*varyings, GLenum bufferMode);
void  glGetTransformFeedbackVarying (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLsizei *size, GLenum *type, GLchar *name);
void  glClampColor (GLenum target, GLenum clamp);
void  glBeginConditionalRender (GLuint id, GLenum mode);
void  glEndConditionalRender (void);
void  glVertexAttribIPointer (GLuint index, GLint size, GLenum type, GLsizei stride, const void *pointer);
void  glGetVertexAttribIiv (GLuint index, GLenum pname, GLint *params);
void  glGetVertexAttribIuiv (GLuint index, GLenum pname, GLuint *params);
void  glVertexAttribI1i (GLuint index, GLint x);
void  glVertexAttribI2i (GLuint index, GLint x, GLint y);
void  glVertexAttribI3i (GLuint index, GLint x, GLint y, GLint z);
void  glVertexAttribI4i (GLuint index, GLint x, GLint y, GLint z, GLint w);
void  glVertexAttribI1ui (GLuint index, GLuint x);
void  glVertexAttribI2ui (GLuint index, GLuint x, GLuint y);
void  glVertexAttribI3ui (GLuint index, GLuint x, GLuint y, GLuint z);
void  glVertexAttribI4ui (GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
void  glVertexAttribI1iv (GLuint index, const GLint *v);
void  glVertexAttribI2iv (GLuint index, const GLint *v);
void  glVertexAttribI3iv (GLuint index, const GLint *v);
void  glVertexAttribI4iv (GLuint index, const GLint *v);
void  glVertexAttribI1uiv (GLuint index, const GLuint *v);
void  glVertexAttribI2uiv (GLuint index, const GLuint *v);
void  glVertexAttribI3uiv (GLuint index, const GLuint *v);
void  glVertexAttribI4uiv (GLuint index, const GLuint *v);
void  glVertexAttribI4bv (GLuint index, const GLbyte *v);
void  glVertexAttribI4sv (GLuint index, const GLshort *v);
void  glVertexAttribI4ubv (GLuint index, const GLubyte *v);
void  glVertexAttribI4usv (GLuint index, const GLushort *v);
void  glGetUniformuiv (GLuint program, GLint location, GLuint *params);
void  glBindFragDataLocation (GLuint program, GLuint color, const GLchar *name);
GLint  glGetFragDataLocation (GLuint program, const GLchar *name);
void  glUniform1ui (GLint location, GLuint v0);
void  glUniform2ui (GLint location, GLuint v0, GLuint v1);
void  glUniform3ui (GLint location, GLuint v0, GLuint v1, GLuint v2);
void  glUniform4ui (GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
void  glUniform1uiv (GLint location, GLsizei count, const GLuint *value);
void  glUniform2uiv (GLint location, GLsizei count, const GLuint *value);
void  glUniform3uiv (GLint location, GLsizei count, const GLuint *value);
void  glUniform4uiv (GLint location, GLsizei count, const GLuint *value);
void  glTexParameterIiv (GLenum target, GLenum pname, const GLint *params);
void  glTexParameterIuiv (GLenum target, GLenum pname, const GLuint *params);
void  glGetTexParameterIiv (GLenum target, GLenum pname, GLint *params);
void  glGetTexParameterIuiv (GLenum target, GLenum pname, GLuint *params);
void  glClearBufferiv (GLenum buffer, GLint drawbuffer, const GLint *value);
void  glClearBufferuiv (GLenum buffer, GLint drawbuffer, const GLuint *value);
void  glClearBufferfv (GLenum buffer, GLint drawbuffer, const GLfloat *value);
void  glClearBufferfi (GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil);
const GLubyte * glGetStringi (GLenum name, GLuint index);
GLboolean  glIsRenderbuffer (GLuint renderbuffer);
void  glBindRenderbuffer (GLenum target, GLuint renderbuffer);
void  glDeleteRenderbuffers (GLsizei n, const GLuint *renderbuffers);
void  glGenRenderbuffers (GLsizei n, GLuint *renderbuffers);
void  glRenderbufferStorage (GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
void  glGetRenderbufferParameteriv (GLenum target, GLenum pname, GLint *params);
GLboolean  glIsFramebuffer (GLuint framebuffer);
void  glBindFramebuffer (GLenum target, GLuint framebuffer);
void  glDeleteFramebuffers (GLsizei n, const GLuint *framebuffers);
void  glGenFramebuffers (GLsizei n, GLuint *framebuffers);
GLenum  glCheckFramebufferStatus (GLenum target);
void  glFramebufferTexture1D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void  glFramebufferTexture2D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void  glFramebufferTexture3D (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
void  glFramebufferRenderbuffer (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
void  glGetFramebufferAttachmentParameteriv (GLenum target, GLenum attachment, GLenum pname, GLint *params);
void  glGenerateMipmap (GLenum target);
void  glBlitFramebuffer (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
void  glRenderbufferStorageMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
void  glFramebufferTextureLayer (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
void * glMapBufferRange (GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access);
void  glFlushMappedBufferRange (GLenum target, GLintptr offset, GLsizeiptr length);
void  glBindVertexArray (GLuint array);
void  glDeleteVertexArrays (GLsizei n, const GLuint *arrays);
void  glGenVertexArrays (GLsizei n, GLuint *arrays);
GLboolean  glIsVertexArray (GLuint array);
]]

local opengl_defines_3_1 = [[
#define GL_SAMPLER_2D_RECT                0x8B63
#define GL_SAMPLER_2D_RECT_SHADOW         0x8B64
#define GL_SAMPLER_BUFFER                 0x8DC2
#define GL_INT_SAMPLER_2D_RECT            0x8DCD
#define GL_INT_SAMPLER_BUFFER             0x8DD0
#define GL_UNSIGNED_INT_SAMPLER_2D_RECT   0x8DD5
#define GL_UNSIGNED_INT_SAMPLER_BUFFER    0x8DD8
#define GL_TEXTURE_BUFFER                 0x8C2A
#define GL_MAX_TEXTURE_BUFFER_SIZE        0x8C2B
#define GL_TEXTURE_BINDING_BUFFER         0x8C2C
#define GL_TEXTURE_BUFFER_DATA_STORE_BINDING 0x8C2D
#define GL_TEXTURE_RECTANGLE              0x84F5
#define GL_TEXTURE_BINDING_RECTANGLE      0x84F6
#define GL_PROXY_TEXTURE_RECTANGLE        0x84F7
#define GL_MAX_RECTANGLE_TEXTURE_SIZE     0x84F8
#define GL_R8_SNORM                       0x8F94
#define GL_RG8_SNORM                      0x8F95
#define GL_RGB8_SNORM                     0x8F96
#define GL_RGBA8_SNORM                    0x8F97
#define GL_R16_SNORM                      0x8F98
#define GL_RG16_SNORM                     0x8F99
#define GL_RGB16_SNORM                    0x8F9A
#define GL_RGBA16_SNORM                   0x8F9B
#define GL_SIGNED_NORMALIZED              0x8F9C
#define GL_PRIMITIVE_RESTART              0x8F9D
#define GL_PRIMITIVE_RESTART_INDEX        0x8F9E
#define GL_COPY_READ_BUFFER               0x8F36
#define GL_COPY_WRITE_BUFFER              0x8F37
#define GL_UNIFORM_BUFFER                 0x8A11
#define GL_UNIFORM_BUFFER_BINDING         0x8A28
#define GL_UNIFORM_BUFFER_START           0x8A29
#define GL_UNIFORM_BUFFER_SIZE            0x8A2A
#define GL_MAX_VERTEX_UNIFORM_BLOCKS      0x8A2B
#define GL_MAX_GEOMETRY_UNIFORM_BLOCKS    0x8A2C
#define GL_MAX_FRAGMENT_UNIFORM_BLOCKS    0x8A2D
#define GL_MAX_COMBINED_UNIFORM_BLOCKS    0x8A2E
#define GL_MAX_UNIFORM_BUFFER_BINDINGS    0x8A2F
#define GL_MAX_UNIFORM_BLOCK_SIZE         0x8A30
#define GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS 0x8A31
#define GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS 0x8A32
#define GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS 0x8A33
#define GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT 0x8A34
#define GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH 0x8A35
#define GL_ACTIVE_UNIFORM_BLOCKS          0x8A36
#define GL_UNIFORM_TYPE                   0x8A37
#define GL_UNIFORM_SIZE                   0x8A38
#define GL_UNIFORM_NAME_LENGTH            0x8A39
#define GL_UNIFORM_BLOCK_INDEX            0x8A3A
#define GL_UNIFORM_OFFSET                 0x8A3B
#define GL_UNIFORM_ARRAY_STRIDE           0x8A3C
#define GL_UNIFORM_MATRIX_STRIDE          0x8A3D
#define GL_UNIFORM_IS_ROW_MAJOR           0x8A3E
#define GL_UNIFORM_BLOCK_BINDING          0x8A3F
#define GL_UNIFORM_BLOCK_DATA_SIZE        0x8A40
#define GL_UNIFORM_BLOCK_NAME_LENGTH      0x8A41
#define GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS  0x8A42
#define GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES 0x8A43
#define GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER 0x8A44
#define GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER 0x8A45
#define GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER 0x8A46
#define GL_INVALID_INDEX                  0xFFFFFFFFu
]]
local opengl_symbols_3_1 = [[
void  glDrawArraysInstanced (GLenum mode, GLint first, GLsizei count, GLsizei instancecount);
void  glDrawElementsInstanced (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei instancecount);
void  glTexBuffer (GLenum target, GLenum internalformat, GLuint buffer);
void  glPrimitiveRestartIndex (GLuint index);
void  glCopyBufferSubData (GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size);
void  glGetUniformIndices (GLuint program, GLsizei uniformCount, const GLchar *const*uniformNames, GLuint *uniformIndices);
void  glGetActiveUniformsiv (GLuint program, GLsizei uniformCount, const GLuint *uniformIndices, GLenum pname, GLint *params);
void  glGetActiveUniformName (GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei *length, GLchar *uniformName);
GLuint  glGetUniformBlockIndex (GLuint program, const GLchar *uniformBlockName);
void  glGetActiveUniformBlockiv (GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint *params);
void  glGetActiveUniformBlockName (GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei *length, GLchar *uniformBlockName);
void  glUniformBlockBinding (GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding);
]]

local opengl_defines_3_2 = [[

//typedef struct __GLsync *GLsync;
typedef void *GLsync;

//typedef khronos_uint64_t GLuint64;
typedef uint64_t GLuint64;

//typedef khronos_int64_t GLint64;
typedef int64_t GLint64;

#define GL_CONTEXT_CORE_PROFILE_BIT       0x00000001
#define GL_CONTEXT_COMPATIBILITY_PROFILE_BIT 0x00000002
#define GL_LINES_ADJACENCY                0x000A
#define GL_LINE_STRIP_ADJACENCY           0x000B
#define GL_TRIANGLES_ADJACENCY            0x000C
#define GL_TRIANGLE_STRIP_ADJACENCY       0x000D
#define GL_PROGRAM_POINT_SIZE             0x8642
#define GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS 0x8C29
#define GL_FRAMEBUFFER_ATTACHMENT_LAYERED 0x8DA7
#define GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS 0x8DA8
#define GL_GEOMETRY_SHADER                0x8DD9
#define GL_GEOMETRY_VERTICES_OUT          0x8916
#define GL_GEOMETRY_INPUT_TYPE            0x8917
#define GL_GEOMETRY_OUTPUT_TYPE           0x8918
#define GL_MAX_GEOMETRY_UNIFORM_COMPONENTS 0x8DDF
#define GL_MAX_GEOMETRY_OUTPUT_VERTICES   0x8DE0
#define GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS 0x8DE1
#define GL_MAX_VERTEX_OUTPUT_COMPONENTS   0x9122
#define GL_MAX_GEOMETRY_INPUT_COMPONENTS  0x9123
#define GL_MAX_GEOMETRY_OUTPUT_COMPONENTS 0x9124
#define GL_MAX_FRAGMENT_INPUT_COMPONENTS  0x9125
#define GL_CONTEXT_PROFILE_MASK           0x9126
#define GL_DEPTH_CLAMP                    0x864F
#define GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION 0x8E4C
#define GL_FIRST_VERTEX_CONVENTION        0x8E4D
#define GL_LAST_VERTEX_CONVENTION         0x8E4E
#define GL_PROVOKING_VERTEX               0x8E4F
#define GL_TEXTURE_CUBE_MAP_SEAMLESS      0x884F
#define GL_MAX_SERVER_WAIT_TIMEOUT        0x9111
#define GL_OBJECT_TYPE                    0x9112
#define GL_SYNC_CONDITION                 0x9113
#define GL_SYNC_STATUS                    0x9114
#define GL_SYNC_FLAGS                     0x9115
#define GL_SYNC_FENCE                     0x9116
#define GL_SYNC_GPU_COMMANDS_COMPLETE     0x9117
#define GL_UNSIGNALED                     0x9118
#define GL_SIGNALED                       0x9119
#define GL_ALREADY_SIGNALED               0x911A
#define GL_TIMEOUT_EXPIRED                0x911B
#define GL_CONDITION_SATISFIED            0x911C
#define GL_WAIT_FAILED                    0x911D
#define GL_TIMEOUT_IGNORED                0xFFFFFFFFFFFFFFFFull
#define GL_SYNC_FLUSH_COMMANDS_BIT        0x00000001
#define GL_SAMPLE_POSITION                0x8E50
#define GL_SAMPLE_MASK                    0x8E51
#define GL_SAMPLE_MASK_VALUE              0x8E52
#define GL_MAX_SAMPLE_MASK_WORDS          0x8E59
#define GL_TEXTURE_2D_MULTISAMPLE         0x9100
#define GL_PROXY_TEXTURE_2D_MULTISAMPLE   0x9101
#define GL_TEXTURE_2D_MULTISAMPLE_ARRAY   0x9102
#define GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY 0x9103
#define GL_TEXTURE_BINDING_2D_MULTISAMPLE 0x9104
#define GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY 0x9105
#define GL_TEXTURE_SAMPLES                0x9106
#define GL_TEXTURE_FIXED_SAMPLE_LOCATIONS 0x9107
#define GL_SAMPLER_2D_MULTISAMPLE         0x9108
#define GL_INT_SAMPLER_2D_MULTISAMPLE     0x9109
#define GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE 0x910A
#define GL_SAMPLER_2D_MULTISAMPLE_ARRAY   0x910B
#define GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY 0x910C
#define GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY 0x910D
#define GL_MAX_COLOR_TEXTURE_SAMPLES      0x910E
#define GL_MAX_DEPTH_TEXTURE_SAMPLES      0x910F
#define GL_MAX_INTEGER_SAMPLES            0x9110
]]

local opengl_symbols_3_2 = [[
void  glDrawElementsBaseVertex (GLenum mode, GLsizei count, GLenum type, const void *indices, GLint basevertex);
void  glDrawRangeElementsBaseVertex (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const void *indices, GLint basevertex);
void  glDrawElementsInstancedBaseVertex (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei instancecount, GLint basevertex);
void  glMultiDrawElementsBaseVertex (GLenum mode, const GLsizei *count, GLenum type, const void *const*indices, GLsizei drawcount, const GLint *basevertex);
void  glProvokingVertex (GLenum mode);
GLsync  glFenceSync (GLenum condition, GLbitfield flags);
GLboolean  glIsSync (GLsync sync);
void  glDeleteSync (GLsync sync);
GLenum  glClientWaitSync (GLsync sync, GLbitfield flags, GLuint64 timeout);
void  glWaitSync (GLsync sync, GLbitfield flags, GLuint64 timeout);
void  glGetInteger64v (GLenum pname, GLint64 *data);
void  glGetSynciv (GLsync sync, GLenum pname, GLsizei count, GLsizei *length, GLint *values);
void  glGetInteger64i_v (GLenum target, GLuint index, GLint64 *data);
void  glGetBufferParameteri64v (GLenum target, GLenum pname, GLint64 *params);
void  glFramebufferTexture (GLenum target, GLenum attachment, GLuint texture, GLint level);
void  glTexImage2DMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations);
void  glTexImage3DMultisample (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations);
void  glGetMultisamplefv (GLenum pname, GLuint index, GLfloat *val);
void  glSampleMaski (GLuint maskNumber, GLbitfield mask);
]]

local opengl_defines_3_3 = [[
#define GL_VERTEX_ATTRIB_ARRAY_DIVISOR    0x88FE
#define GL_SRC1_COLOR                     0x88F9
#define GL_ONE_MINUS_SRC1_COLOR           0x88FA
#define GL_ONE_MINUS_SRC1_ALPHA           0x88FB
#define GL_MAX_DUAL_SOURCE_DRAW_BUFFERS   0x88FC
#define GL_ANY_SAMPLES_PASSED             0x8C2F
#define GL_SAMPLER_BINDING                0x8919
#define GL_RGB10_A2UI                     0x906F
#define GL_TEXTURE_SWIZZLE_R              0x8E42
#define GL_TEXTURE_SWIZZLE_G              0x8E43
#define GL_TEXTURE_SWIZZLE_B              0x8E44
#define GL_TEXTURE_SWIZZLE_A              0x8E45
#define GL_TEXTURE_SWIZZLE_RGBA           0x8E46
#define GL_TIME_ELAPSED                   0x88BF
#define GL_TIMESTAMP                      0x8E28
#define GL_INT_2_10_10_10_REV             0x8D9F
]]

local opengl_symbols_3_3 = [[
void  glBindFragDataLocationIndexed (GLuint program, GLuint colorNumber, GLuint index, const GLchar *name);
GLint  glGetFragDataIndex (GLuint program, const GLchar *name);
void  glGenSamplers (GLsizei count, GLuint *samplers);
void  glDeleteSamplers (GLsizei count, const GLuint *samplers);
GLboolean  glIsSampler (GLuint sampler);
void  glBindSampler (GLuint unit, GLuint sampler);
void  glSamplerParameteri (GLuint sampler, GLenum pname, GLint param);
void  glSamplerParameteriv (GLuint sampler, GLenum pname, const GLint *param);
void  glSamplerParameterf (GLuint sampler, GLenum pname, GLfloat param);
void  glSamplerParameterfv (GLuint sampler, GLenum pname, const GLfloat *param);
void  glSamplerParameterIiv (GLuint sampler, GLenum pname, const GLint *param);
void  glSamplerParameterIuiv (GLuint sampler, GLenum pname, const GLuint *param);
void  glGetSamplerParameteriv (GLuint sampler, GLenum pname, GLint *params);
void  glGetSamplerParameterIiv (GLuint sampler, GLenum pname, GLint *params);
void  glGetSamplerParameterfv (GLuint sampler, GLenum pname, GLfloat *params);
void  glGetSamplerParameterIuiv (GLuint sampler, GLenum pname, GLuint *params);
void  glQueryCounter (GLuint id, GLenum target);
void  glGetQueryObjecti64v (GLuint id, GLenum pname, GLint64 *params);
void  glGetQueryObjectui64v (GLuint id, GLenum pname, GLuint64 *params);
void  glVertexAttribDivisor (GLuint index, GLuint divisor);
void  glVertexAttribP1ui (GLuint index, GLenum type, GLboolean normalized, GLuint value);
void  glVertexAttribP1uiv (GLuint index, GLenum type, GLboolean normalized, const GLuint *value);
void  glVertexAttribP2ui (GLuint index, GLenum type, GLboolean normalized, GLuint value);
void  glVertexAttribP2uiv (GLuint index, GLenum type, GLboolean normalized, const GLuint *value);
void  glVertexAttribP3ui (GLuint index, GLenum type, GLboolean normalized, GLuint value);
void  glVertexAttribP3uiv (GLuint index, GLenum type, GLboolean normalized, const GLuint *value);
void  glVertexAttribP4ui (GLuint index, GLenum type, GLboolean normalized, GLuint value);
void  glVertexAttribP4uiv (GLuint index, GLenum type, GLboolean normalized, const GLuint *value);
void  glVertexP2ui (GLenum type, GLuint value);
void  glVertexP2uiv (GLenum type, const GLuint *value);
void  glVertexP3ui (GLenum type, GLuint value);
void  glVertexP3uiv (GLenum type, const GLuint *value);
void  glVertexP4ui (GLenum type, GLuint value);
void  glVertexP4uiv (GLenum type, const GLuint *value);
void  glTexCoordP1ui (GLenum type, GLuint coords);
void  glTexCoordP1uiv (GLenum type, const GLuint *coords);
void  glTexCoordP2ui (GLenum type, GLuint coords);
void  glTexCoordP2uiv (GLenum type, const GLuint *coords);
void  glTexCoordP3ui (GLenum type, GLuint coords);
void  glTexCoordP3uiv (GLenum type, const GLuint *coords);
void  glTexCoordP4ui (GLenum type, GLuint coords);
void  glTexCoordP4uiv (GLenum type, const GLuint *coords);
void  glMultiTexCoordP1ui (GLenum texture, GLenum type, GLuint coords);
void  glMultiTexCoordP1uiv (GLenum texture, GLenum type, const GLuint *coords);
void  glMultiTexCoordP2ui (GLenum texture, GLenum type, GLuint coords);
void  glMultiTexCoordP2uiv (GLenum texture, GLenum type, const GLuint *coords);
void  glMultiTexCoordP3ui (GLenum texture, GLenum type, GLuint coords);
void  glMultiTexCoordP3uiv (GLenum texture, GLenum type, const GLuint *coords);
void  glMultiTexCoordP4ui (GLenum texture, GLenum type, GLuint coords);
void  glMultiTexCoordP4uiv (GLenum texture, GLenum type, const GLuint *coords);
void  glNormalP3ui (GLenum type, GLuint coords);
void  glNormalP3uiv (GLenum type, const GLuint *coords);
void  glColorP3ui (GLenum type, GLuint color);
void  glColorP3uiv (GLenum type, const GLuint *color);
void  glColorP4ui (GLenum type, GLuint color);
void  glColorP4uiv (GLenum type, const GLuint *color);
void  glSecondaryColorP3ui (GLenum type, GLuint color);
void  glSecondaryColorP3uiv (GLenum type, const GLuint *color);
]]

local opengl_defines_4_0 = [[
#define GL_SAMPLE_SHADING                 0x8C36
#define GL_MIN_SAMPLE_SHADING_VALUE       0x8C37
#define GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET 0x8E5E
#define GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET 0x8E5F
#define GL_TEXTURE_CUBE_MAP_ARRAY         0x9009
#define GL_TEXTURE_BINDING_CUBE_MAP_ARRAY 0x900A
#define GL_PROXY_TEXTURE_CUBE_MAP_ARRAY   0x900B
#define GL_SAMPLER_CUBE_MAP_ARRAY         0x900C
#define GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW  0x900D
#define GL_INT_SAMPLER_CUBE_MAP_ARRAY     0x900E
#define GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY 0x900F
#define GL_DRAW_INDIRECT_BUFFER           0x8F3F
#define GL_DRAW_INDIRECT_BUFFER_BINDING   0x8F43
#define GL_GEOMETRY_SHADER_INVOCATIONS    0x887F
#define GL_MAX_GEOMETRY_SHADER_INVOCATIONS 0x8E5A
#define GL_MIN_FRAGMENT_INTERPOLATION_OFFSET 0x8E5B
#define GL_MAX_FRAGMENT_INTERPOLATION_OFFSET 0x8E5C
#define GL_FRAGMENT_INTERPOLATION_OFFSET_BITS 0x8E5D
#define GL_MAX_VERTEX_STREAMS             0x8E71
#define GL_DOUBLE_VEC2                    0x8FFC
#define GL_DOUBLE_VEC3                    0x8FFD
#define GL_DOUBLE_VEC4                    0x8FFE
#define GL_DOUBLE_MAT2                    0x8F46
#define GL_DOUBLE_MAT3                    0x8F47
#define GL_DOUBLE_MAT4                    0x8F48
#define GL_DOUBLE_MAT2x3                  0x8F49
#define GL_DOUBLE_MAT2x4                  0x8F4A
#define GL_DOUBLE_MAT3x2                  0x8F4B
#define GL_DOUBLE_MAT3x4                  0x8F4C
#define GL_DOUBLE_MAT4x2                  0x8F4D
#define GL_DOUBLE_MAT4x3                  0x8F4E
#define GL_ACTIVE_SUBROUTINES             0x8DE5
#define GL_ACTIVE_SUBROUTINE_UNIFORMS     0x8DE6
#define GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS 0x8E47
#define GL_ACTIVE_SUBROUTINE_MAX_LENGTH   0x8E48
#define GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH 0x8E49
#define GL_MAX_SUBROUTINES                0x8DE7
#define GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS 0x8DE8
#define GL_NUM_COMPATIBLE_SUBROUTINES     0x8E4A
#define GL_COMPATIBLE_SUBROUTINES         0x8E4B
#define GL_PATCHES                        0x000E
#define GL_PATCH_VERTICES                 0x8E72
#define GL_PATCH_DEFAULT_INNER_LEVEL      0x8E73
#define GL_PATCH_DEFAULT_OUTER_LEVEL      0x8E74
#define GL_TESS_CONTROL_OUTPUT_VERTICES   0x8E75
#define GL_TESS_GEN_MODE                  0x8E76
#define GL_TESS_GEN_SPACING               0x8E77
#define GL_TESS_GEN_VERTEX_ORDER          0x8E78
#define GL_TESS_GEN_POINT_MODE            0x8E79
#define GL_ISOLINES                       0x8E7A
#define GL_FRACTIONAL_ODD                 0x8E7B
#define GL_FRACTIONAL_EVEN                0x8E7C
#define GL_MAX_PATCH_VERTICES             0x8E7D
#define GL_MAX_TESS_GEN_LEVEL             0x8E7E
#define GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS 0x8E7F
#define GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS 0x8E80
#define GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS 0x8E81
#define GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS 0x8E82
#define GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS 0x8E83
#define GL_MAX_TESS_PATCH_COMPONENTS      0x8E84
#define GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS 0x8E85
#define GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS 0x8E86
#define GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS 0x8E89
#define GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS 0x8E8A
#define GL_MAX_TESS_CONTROL_INPUT_COMPONENTS 0x886C
#define GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS 0x886D
#define GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS 0x8E1E
#define GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS 0x8E1F
#define GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER 0x84F0
#define GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER 0x84F1
#define GL_TESS_EVALUATION_SHADER         0x8E87
#define GL_TESS_CONTROL_SHADER            0x8E88
#define GL_TRANSFORM_FEEDBACK             0x8E22
#define GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED 0x8E23
#define GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE 0x8E24
#define GL_TRANSFORM_FEEDBACK_BINDING     0x8E25
#define GL_MAX_TRANSFORM_FEEDBACK_BUFFERS 0x8E70
]]

local opengl_symbols_4_0 = [[
void  glMinSampleShading (GLfloat value);
void  glBlendEquationi (GLuint buf, GLenum mode);
void  glBlendEquationSeparatei (GLuint buf, GLenum modeRGB, GLenum modeAlpha);
void  glBlendFunci (GLuint buf, GLenum src, GLenum dst);
void  glBlendFuncSeparatei (GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha);
void  glDrawArraysIndirect (GLenum mode, const void *indirect);
void  glDrawElementsIndirect (GLenum mode, GLenum type, const void *indirect);
void  glUniform1d (GLint location, GLdouble x);
void  glUniform2d (GLint location, GLdouble x, GLdouble y);
void  glUniform3d (GLint location, GLdouble x, GLdouble y, GLdouble z);
void  glUniform4d (GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void  glUniform1dv (GLint location, GLsizei count, const GLdouble *value);
void  glUniform2dv (GLint location, GLsizei count, const GLdouble *value);
void  glUniform3dv (GLint location, GLsizei count, const GLdouble *value);
void  glUniform4dv (GLint location, GLsizei count, const GLdouble *value);
void  glUniformMatrix2dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glUniformMatrix3dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glUniformMatrix4dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glUniformMatrix2x3dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glUniformMatrix2x4dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glUniformMatrix3x2dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glUniformMatrix3x4dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glUniformMatrix4x2dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glUniformMatrix4x3dv (GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glGetUniformdv (GLuint program, GLint location, GLdouble *params);
GLint  glGetSubroutineUniformLocation (GLuint program, GLenum shadertype, const GLchar *name);
GLuint  glGetSubroutineIndex (GLuint program, GLenum shadertype, const GLchar *name);
void  glGetActiveSubroutineUniformiv (GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint *values);
void  glGetActiveSubroutineUniformName (GLuint program, GLenum shadertype, GLuint index, GLsizei bufSize, GLsizei *length, GLchar *name);
void  glGetActiveSubroutineName (GLuint program, GLenum shadertype, GLuint index, GLsizei bufSize, GLsizei *length, GLchar *name);
void  glUniformSubroutinesuiv (GLenum shadertype, GLsizei count, const GLuint *indices);
void  glGetUniformSubroutineuiv (GLenum shadertype, GLint location, GLuint *params);
void  glGetProgramStageiv (GLuint program, GLenum shadertype, GLenum pname, GLint *values);
void  glPatchParameteri (GLenum pname, GLint value);
void  glPatchParameterfv (GLenum pname, const GLfloat *values);
void  glBindTransformFeedback (GLenum target, GLuint id);
void  glDeleteTransformFeedbacks (GLsizei n, const GLuint *ids);
void  glGenTransformFeedbacks (GLsizei n, GLuint *ids);
GLboolean  glIsTransformFeedback (GLuint id);
void  glPauseTransformFeedback (void);
void  glResumeTransformFeedback (void);
void  glDrawTransformFeedback (GLenum mode, GLuint id);
void  glDrawTransformFeedbackStream (GLenum mode, GLuint id, GLuint stream);
void  glBeginQueryIndexed (GLenum target, GLuint index, GLuint id);
void  glEndQueryIndexed (GLenum target, GLuint index);
void  glGetQueryIndexediv (GLenum target, GLuint index, GLenum pname, GLint *params);
]]

local opengl_defines_4_1 = [[
#define GL_FIXED                          0x140C
#define GL_IMPLEMENTATION_COLOR_READ_TYPE 0x8B9A
#define GL_IMPLEMENTATION_COLOR_READ_FORMAT 0x8B9B
#define GL_LOW_FLOAT                      0x8DF0
#define GL_MEDIUM_FLOAT                   0x8DF1
#define GL_HIGH_FLOAT                     0x8DF2
#define GL_LOW_INT                        0x8DF3
#define GL_MEDIUM_INT                     0x8DF4
#define GL_HIGH_INT                       0x8DF5
#define GL_SHADER_COMPILER                0x8DFA
#define GL_SHADER_BINARY_FORMATS          0x8DF8
#define GL_NUM_SHADER_BINARY_FORMATS      0x8DF9
#define GL_MAX_VERTEX_UNIFORM_VECTORS     0x8DFB
#define GL_MAX_VARYING_VECTORS            0x8DFC
#define GL_MAX_FRAGMENT_UNIFORM_VECTORS   0x8DFD
#define GL_RGB565                         0x8D62
#define GL_PROGRAM_BINARY_RETRIEVABLE_HINT 0x8257
#define GL_PROGRAM_BINARY_LENGTH          0x8741
#define GL_NUM_PROGRAM_BINARY_FORMATS     0x87FE
#define GL_PROGRAM_BINARY_FORMATS         0x87FF
#define GL_VERTEX_SHADER_BIT              0x00000001
#define GL_FRAGMENT_SHADER_BIT            0x00000002
#define GL_GEOMETRY_SHADER_BIT            0x00000004
#define GL_TESS_CONTROL_SHADER_BIT        0x00000008
#define GL_TESS_EVALUATION_SHADER_BIT     0x00000010
#define GL_ALL_SHADER_BITS                0xFFFFFFFF
#define GL_PROGRAM_SEPARABLE              0x8258
#define GL_ACTIVE_PROGRAM                 0x8259
#define GL_PROGRAM_PIPELINE_BINDING       0x825A
#define GL_MAX_VIEWPORTS                  0x825B
#define GL_VIEWPORT_SUBPIXEL_BITS         0x825C
#define GL_VIEWPORT_BOUNDS_RANGE          0x825D
#define GL_LAYER_PROVOKING_VERTEX         0x825E
#define GL_VIEWPORT_INDEX_PROVOKING_VERTEX 0x825F
#define GL_UNDEFINED_VERTEX               0x8260
]]

local opengl_symbols_4_1 = [[
void  glReleaseShaderCompiler (void);
void  glShaderBinary (GLsizei count, const GLuint *shaders, GLenum binaryFormat, const void *binary, GLsizei length);
void  glGetShaderPrecisionFormat (GLenum shadertype, GLenum precisiontype, GLint *range, GLint *precision);
void  glDepthRangef (GLfloat n, GLfloat f);
void  glClearDepthf (GLfloat d);
void  glGetProgramBinary (GLuint program, GLsizei bufSize, GLsizei *length, GLenum *binaryFormat, void *binary);
void  glProgramBinary (GLuint program, GLenum binaryFormat, const void *binary, GLsizei length);
void  glProgramParameteri (GLuint program, GLenum pname, GLint value);
void  glUseProgramStages (GLuint pipeline, GLbitfield stages, GLuint program);
void  glActiveShaderProgram (GLuint pipeline, GLuint program);
GLuint  glCreateShaderProgramv (GLenum type, GLsizei count, const GLchar *const*strings);
void  glBindProgramPipeline (GLuint pipeline);
void  glDeleteProgramPipelines (GLsizei n, const GLuint *pipelines);
void  glGenProgramPipelines (GLsizei n, GLuint *pipelines);
GLboolean  glIsProgramPipeline (GLuint pipeline);
void  glGetProgramPipelineiv (GLuint pipeline, GLenum pname, GLint *params);
void  glProgramUniform1i (GLuint program, GLint location, GLint v0);
void  glProgramUniform1iv (GLuint program, GLint location, GLsizei count, const GLint *value);
void  glProgramUniform1f (GLuint program, GLint location, GLfloat v0);
void  glProgramUniform1fv (GLuint program, GLint location, GLsizei count, const GLfloat *value);
void  glProgramUniform1d (GLuint program, GLint location, GLdouble v0);
void  glProgramUniform1dv (GLuint program, GLint location, GLsizei count, const GLdouble *value);
void  glProgramUniform1ui (GLuint program, GLint location, GLuint v0);
void  glProgramUniform1uiv (GLuint program, GLint location, GLsizei count, const GLuint *value);
void  glProgramUniform2i (GLuint program, GLint location, GLint v0, GLint v1);
void  glProgramUniform2iv (GLuint program, GLint location, GLsizei count, const GLint *value);
void  glProgramUniform2f (GLuint program, GLint location, GLfloat v0, GLfloat v1);
void  glProgramUniform2fv (GLuint program, GLint location, GLsizei count, const GLfloat *value);
void  glProgramUniform2d (GLuint program, GLint location, GLdouble v0, GLdouble v1);
void  glProgramUniform2dv (GLuint program, GLint location, GLsizei count, const GLdouble *value);
void  glProgramUniform2ui (GLuint program, GLint location, GLuint v0, GLuint v1);
void  glProgramUniform2uiv (GLuint program, GLint location, GLsizei count, const GLuint *value);
void  glProgramUniform3i (GLuint program, GLint location, GLint v0, GLint v1, GLint v2);
void  glProgramUniform3iv (GLuint program, GLint location, GLsizei count, const GLint *value);
void  glProgramUniform3f (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
void  glProgramUniform3fv (GLuint program, GLint location, GLsizei count, const GLfloat *value);
void  glProgramUniform3d (GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2);
void  glProgramUniform3dv (GLuint program, GLint location, GLsizei count, const GLdouble *value);
void  glProgramUniform3ui (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2);
void  glProgramUniform3uiv (GLuint program, GLint location, GLsizei count, const GLuint *value);
void  glProgramUniform4i (GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
void  glProgramUniform4iv (GLuint program, GLint location, GLsizei count, const GLint *value);
void  glProgramUniform4f (GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
void  glProgramUniform4fv (GLuint program, GLint location, GLsizei count, const GLfloat *value);
void  glProgramUniform4d (GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2, GLdouble v3);
void  glProgramUniform4dv (GLuint program, GLint location, GLsizei count, const GLdouble *value);
void  glProgramUniform4ui (GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
void  glProgramUniform4uiv (GLuint program, GLint location, GLsizei count, const GLuint *value);
void  glProgramUniformMatrix2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glProgramUniformMatrix3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glProgramUniformMatrix4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glProgramUniformMatrix2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glProgramUniformMatrix3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glProgramUniformMatrix4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glProgramUniformMatrix2x3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glProgramUniformMatrix3x2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glProgramUniformMatrix2x4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glProgramUniformMatrix4x2fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glProgramUniformMatrix3x4fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glProgramUniformMatrix4x3fv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void  glProgramUniformMatrix2x3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glProgramUniformMatrix3x2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glProgramUniformMatrix2x4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glProgramUniformMatrix4x2dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glProgramUniformMatrix3x4dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glProgramUniformMatrix4x3dv (GLuint program, GLint location, GLsizei count, GLboolean transpose, const GLdouble *value);
void  glValidateProgramPipeline (GLuint pipeline);
void  glGetProgramPipelineInfoLog (GLuint pipeline, GLsizei bufSize, GLsizei *length, GLchar *infoLog);
void  glVertexAttribL1d (GLuint index, GLdouble x);
void  glVertexAttribL2d (GLuint index, GLdouble x, GLdouble y);
void  glVertexAttribL3d (GLuint index, GLdouble x, GLdouble y, GLdouble z);
void  glVertexAttribL4d (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void  glVertexAttribL1dv (GLuint index, const GLdouble *v);
void  glVertexAttribL2dv (GLuint index, const GLdouble *v);
void  glVertexAttribL3dv (GLuint index, const GLdouble *v);
void  glVertexAttribL4dv (GLuint index, const GLdouble *v);
void  glVertexAttribLPointer (GLuint index, GLint size, GLenum type, GLsizei stride, const void *pointer);
void  glGetVertexAttribLdv (GLuint index, GLenum pname, GLdouble *params);
void  glViewportArrayv (GLuint first, GLsizei count, const GLfloat *v);
void  glViewportIndexedf (GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h);
void  glViewportIndexedfv (GLuint index, const GLfloat *v);
void  glScissorArrayv (GLuint first, GLsizei count, const GLint *v);
void  glScissorIndexed (GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height);
void  glScissorIndexedv (GLuint index, const GLint *v);
void  glDepthRangeArrayv (GLuint first, GLsizei count, const GLdouble *v);
void  glDepthRangeIndexed (GLuint index, GLdouble n, GLdouble f);
void  glGetFloati_v (GLenum target, GLuint index, GLfloat *data);
void  glGetDoublei_v (GLenum target, GLuint index, GLdouble *data);
]]

local opengl_defines_4_2 = [[
#define GL_COPY_READ_BUFFER_BINDING       0x8F36
#define GL_COPY_WRITE_BUFFER_BINDING      0x8F37
#define GL_TRANSFORM_FEEDBACK_ACTIVE      0x8E24
#define GL_TRANSFORM_FEEDBACK_PAUSED      0x8E23
#define GL_UNPACK_COMPRESSED_BLOCK_WIDTH  0x9127
#define GL_UNPACK_COMPRESSED_BLOCK_HEIGHT 0x9128
#define GL_UNPACK_COMPRESSED_BLOCK_DEPTH  0x9129
#define GL_UNPACK_COMPRESSED_BLOCK_SIZE   0x912A
#define GL_PACK_COMPRESSED_BLOCK_WIDTH    0x912B
#define GL_PACK_COMPRESSED_BLOCK_HEIGHT   0x912C
#define GL_PACK_COMPRESSED_BLOCK_DEPTH    0x912D
#define GL_PACK_COMPRESSED_BLOCK_SIZE     0x912E
#define GL_NUM_SAMPLE_COUNTS              0x9380
#define GL_MIN_MAP_BUFFER_ALIGNMENT       0x90BC
#define GL_ATOMIC_COUNTER_BUFFER          0x92C0
#define GL_ATOMIC_COUNTER_BUFFER_BINDING  0x92C1
#define GL_ATOMIC_COUNTER_BUFFER_START    0x92C2
#define GL_ATOMIC_COUNTER_BUFFER_SIZE     0x92C3
#define GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE 0x92C4
#define GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS 0x92C5
#define GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES 0x92C6
#define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER 0x92C7
#define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER 0x92C8
#define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER 0x92C9
#define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER 0x92CA
#define GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER 0x92CB
#define GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS 0x92CC
#define GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS 0x92CD
#define GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS 0x92CE
#define GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS 0x92CF
#define GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS 0x92D0
#define GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS 0x92D1
#define GL_MAX_VERTEX_ATOMIC_COUNTERS     0x92D2
#define GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS 0x92D3
#define GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS 0x92D4
#define GL_MAX_GEOMETRY_ATOMIC_COUNTERS   0x92D5
#define GL_MAX_FRAGMENT_ATOMIC_COUNTERS   0x92D6
#define GL_MAX_COMBINED_ATOMIC_COUNTERS   0x92D7
#define GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE 0x92D8
#define GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS 0x92DC
#define GL_ACTIVE_ATOMIC_COUNTER_BUFFERS  0x92D9
#define GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX 0x92DA
#define GL_UNSIGNED_INT_ATOMIC_COUNTER    0x92DB
#define GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT 0x00000001
#define GL_ELEMENT_ARRAY_BARRIER_BIT      0x00000002
#define GL_UNIFORM_BARRIER_BIT            0x00000004
#define GL_TEXTURE_FETCH_BARRIER_BIT      0x00000008
#define GL_SHADER_IMAGE_ACCESS_BARRIER_BIT 0x00000020
#define GL_COMMAND_BARRIER_BIT            0x00000040
#define GL_PIXEL_BUFFER_BARRIER_BIT       0x00000080
#define GL_TEXTURE_UPDATE_BARRIER_BIT     0x00000100
#define GL_BUFFER_UPDATE_BARRIER_BIT      0x00000200
#define GL_FRAMEBUFFER_BARRIER_BIT        0x00000400
#define GL_TRANSFORM_FEEDBACK_BARRIER_BIT 0x00000800
#define GL_ATOMIC_COUNTER_BARRIER_BIT     0x00001000
#define GL_ALL_BARRIER_BITS               0xFFFFFFFF
#define GL_MAX_IMAGE_UNITS                0x8F38
#define GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS 0x8F39
#define GL_IMAGE_BINDING_NAME             0x8F3A
#define GL_IMAGE_BINDING_LEVEL            0x8F3B
#define GL_IMAGE_BINDING_LAYERED          0x8F3C
#define GL_IMAGE_BINDING_LAYER            0x8F3D
#define GL_IMAGE_BINDING_ACCESS           0x8F3E
#define GL_IMAGE_1D                       0x904C
#define GL_IMAGE_2D                       0x904D
#define GL_IMAGE_3D                       0x904E
#define GL_IMAGE_2D_RECT                  0x904F
#define GL_IMAGE_CUBE                     0x9050
#define GL_IMAGE_BUFFER                   0x9051
#define GL_IMAGE_1D_ARRAY                 0x9052
#define GL_IMAGE_2D_ARRAY                 0x9053
#define GL_IMAGE_CUBE_MAP_ARRAY           0x9054
#define GL_IMAGE_2D_MULTISAMPLE           0x9055
#define GL_IMAGE_2D_MULTISAMPLE_ARRAY     0x9056
#define GL_INT_IMAGE_1D                   0x9057
#define GL_INT_IMAGE_2D                   0x9058
#define GL_INT_IMAGE_3D                   0x9059
#define GL_INT_IMAGE_2D_RECT              0x905A
#define GL_INT_IMAGE_CUBE                 0x905B
#define GL_INT_IMAGE_BUFFER               0x905C
#define GL_INT_IMAGE_1D_ARRAY             0x905D
#define GL_INT_IMAGE_2D_ARRAY             0x905E
#define GL_INT_IMAGE_CUBE_MAP_ARRAY       0x905F
#define GL_INT_IMAGE_2D_MULTISAMPLE       0x9060
#define GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY 0x9061
#define GL_UNSIGNED_INT_IMAGE_1D          0x9062
#define GL_UNSIGNED_INT_IMAGE_2D          0x9063
#define GL_UNSIGNED_INT_IMAGE_3D          0x9064
#define GL_UNSIGNED_INT_IMAGE_2D_RECT     0x9065
#define GL_UNSIGNED_INT_IMAGE_CUBE        0x9066
#define GL_UNSIGNED_INT_IMAGE_BUFFER      0x9067
#define GL_UNSIGNED_INT_IMAGE_1D_ARRAY    0x9068
#define GL_UNSIGNED_INT_IMAGE_2D_ARRAY    0x9069
#define GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY 0x906A
#define GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE 0x906B
#define GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY 0x906C
#define GL_MAX_IMAGE_SAMPLES              0x906D
#define GL_IMAGE_BINDING_FORMAT           0x906E
#define GL_IMAGE_FORMAT_COMPATIBILITY_TYPE 0x90C7
#define GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE 0x90C8
#define GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS 0x90C9
#define GL_MAX_VERTEX_IMAGE_UNIFORMS      0x90CA
#define GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS 0x90CB
#define GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS 0x90CC
#define GL_MAX_GEOMETRY_IMAGE_UNIFORMS    0x90CD
#define GL_MAX_FRAGMENT_IMAGE_UNIFORMS    0x90CE
#define GL_MAX_COMBINED_IMAGE_UNIFORMS    0x90CF
#define GL_COMPRESSED_RGBA_BPTC_UNORM     0x8E8C
#define GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM 0x8E8D
#define GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT 0x8E8E
#define GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT 0x8E8F
#define GL_TEXTURE_IMMUTABLE_FORMAT       0x912F
]]

local opengl_symbols_4_2 = [[
void  glDrawArraysInstancedBaseInstance (GLenum mode, GLint first, GLsizei count, GLsizei instancecount, GLuint baseinstance);
void  glDrawElementsInstancedBaseInstance (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei instancecount, GLuint baseinstance);
void  glDrawElementsInstancedBaseVertexBaseInstance (GLenum mode, GLsizei count, GLenum type, const void *indices, GLsizei instancecount, GLint basevertex, GLuint baseinstance);
void  glGetInternalformativ (GLenum target, GLenum internalformat, GLenum pname, GLsizei count, GLint *params);
void  glGetActiveAtomicCounterBufferiv (GLuint program, GLuint bufferIndex, GLenum pname, GLint *params);
void  glBindImageTexture (GLuint unit, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLenum format);
void  glMemoryBarrier (GLbitfield barriers);
void  glTexStorage1D (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width);
void  glTexStorage2D (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height);
void  glTexStorage3D (GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth);
void  glDrawTransformFeedbackInstanced (GLenum mode, GLuint id, GLsizei instancecount);
void  glDrawTransformFeedbackStreamInstanced (GLenum mode, GLuint id, GLuint stream, GLsizei instancecount);
]]

local opengl_defines_exts = [[
enum {
	//extensions:
	GL_ALPHA32F_ARB                   = 0x8816,
	GL_INTENSITY32F_ARB               = 0x8817,
	GL_LUMINANCE32F_ARB               = 0x8818,
	GL_LUMINANCE_ALPHA32F_ARB         = 0x8819,
	GL_HALF_FLOAT_ARB                 = 0x140B,
};
]]

local opengl_symbols_exts = [[
void glActiveTextureARB (GLenum);
void glClientActiveTextureARB (GLenum);
void glMultiTexCoord1dARB (GLenum, GLdouble);
void glMultiTexCoord1dvARB (GLenum, const GLdouble *);
void glMultiTexCoord1fARB (GLenum, GLfloat);
void glMultiTexCoord1fvARB (GLenum, const GLfloat *);
void glMultiTexCoord1iARB (GLenum, GLint);
void glMultiTexCoord1ivARB (GLenum, const GLint *);
void glMultiTexCoord1sARB (GLenum, GLshort);
void glMultiTexCoord1svARB (GLenum, const GLshort *);
void glMultiTexCoord2dARB (GLenum, GLdouble, GLdouble);
void glMultiTexCoord2dvARB (GLenum, const GLdouble *);
void glMultiTexCoord2fARB (GLenum, GLfloat, GLfloat);
void glMultiTexCoord2fvARB (GLenum, const GLfloat *);
void glMultiTexCoord2iARB (GLenum, GLint, GLint);
void glMultiTexCoord2ivARB (GLenum, const GLint *);
void glMultiTexCoord2sARB (GLenum, GLshort, GLshort);
void glMultiTexCoord2svARB (GLenum, const GLshort *);
void glMultiTexCoord3dARB (GLenum, GLdouble, GLdouble, GLdouble);
void glMultiTexCoord3dvARB (GLenum, const GLdouble *);
void glMultiTexCoord3fARB (GLenum, GLfloat, GLfloat, GLfloat);
void glMultiTexCoord3fvARB (GLenum, const GLfloat *);
void glMultiTexCoord3iARB (GLenum, GLint, GLint, GLint);
void glMultiTexCoord3ivARB (GLenum, const GLint *);
void glMultiTexCoord3sARB (GLenum, GLshort, GLshort, GLshort);
void glMultiTexCoord3svARB (GLenum, const GLshort *);
void glMultiTexCoord4dARB (GLenum, GLdouble, GLdouble, GLdouble, GLdouble);
void glMultiTexCoord4dvARB (GLenum, const GLdouble *);
void glMultiTexCoord4fARB (GLenum, GLfloat, GLfloat, GLfloat, GLfloat);
void glMultiTexCoord4fvARB (GLenum, const GLfloat *);
void glMultiTexCoord4iARB (GLenum, GLint, GLint, GLint, GLint);
void glMultiTexCoord4ivARB (GLenum, const GLint *);
void glMultiTexCoord4sARB (GLenum, GLshort, GLshort, GLshort, GLshort);
void glMultiTexCoord4svARB (GLenum, const GLshort *);
void glLoadTransposeMatrixfARB (const GLfloat *);
void glLoadTransposeMatrixdARB (const GLdouble *);
void glMultTransposeMatrixfARB (const GLfloat *);
void glMultTransposeMatrixdARB (const GLdouble *);
void glSampleCoverageARB (GLclampf, GLboolean);
void glSamplePassARB (GLenum);
void glCompressedTexImage3DARB (GLenum, GLint, GLenum, GLsizei, GLsizei, GLsizei, GLint, GLsizei, const GLvoid *);
void glCompressedTexImage2DARB (GLenum, GLint, GLenum, GLsizei, GLsizei, GLint, GLsizei, const GLvoid *);
void glCompressedTexImage1DARB (GLenum, GLint, GLenum, GLsizei, GLint, GLsizei, const GLvoid *);
void glCompressedTexSubImage3DARB (GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLsizei, const GLvoid *);
void glCompressedTexSubImage2DARB (GLenum, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLsizei, const GLvoid *);
void glCompressedTexSubImage1DARB (GLenum, GLint, GLint, GLsizei, GLenum, GLsizei, const GLvoid *);
void glGetCompressedTexImageARB (GLenum, GLint, GLvoid *);
void glWeightbvARB(GLint, const GLbyte *);
void glWeightsvARB(GLint, const GLshort *);
void glWeightivARB(GLint, const GLint *);
void glWeightfvARB(GLint, const GLfloat *);
void glWeightdvARB(GLint, const GLdouble *);
void glWeightubvARB(GLint, const GLubyte *);
void glWeightusvARB(GLint, const GLushort *);
void glWeightuivARB(GLint, const GLuint *);
void glWeightPointerARB(GLint, GLenum, GLsizei, const GLvoid *);
void glVertexBlendARB(GLint);
void glWindowPos2dARB (GLdouble, GLdouble);
void glWindowPos2dvARB (const GLdouble *);
void glWindowPos2fARB (GLfloat, GLfloat);
void glWindowPos2fvARB (const GLfloat *);
void glWindowPos2iARB (GLint, GLint);
void glWindowPos2ivARB (const GLint *);
void glWindowPos2sARB (GLshort, GLshort);
void glWindowPos2svARB (const GLshort *);
void glWindowPos3dARB (GLdouble, GLdouble, GLdouble);
void glWindowPos3dvARB (const GLdouble *);
void glWindowPos3fARB (GLfloat, GLfloat, GLfloat);
void glWindowPos3fvARB (const GLfloat *);
void glWindowPos3iARB (GLint, GLint, GLint);
void glWindowPos3ivARB (const GLint *);
void glWindowPos3sARB (GLshort, GLshort, GLshort);
void glWindowPos3svARB (const GLshort *);
void glGenQueriesARB(GLsizei n, GLuint *ids);
void glDeleteQueriesARB(GLsizei n, const GLuint *ids);
GLboolean glIsQueryARB(GLuint id);
void glBeginQueryARB(GLenum target, GLuint id);
void glEndQueryARB(GLenum target);
void glGetQueryivARB(GLenum target, GLenum pname, GLint *params);
void glGetQueryObjectivARB(GLuint id, GLenum pname, GLint *params);
void glGetQueryObjectuivARB(GLuint id, GLenum pname, GLuint *params);
void glPointParameterfARB(GLenum pname, GLfloat param);
void glPointParameterfvARB(GLenum pname, const GLfloat *params);
void glBindProgramARB(GLenum target, GLuint program);
void glDeleteProgramsARB(GLsizei n, const GLuint *programs);
void glGenProgramsARB(GLsizei n, GLuint *programs);
GLboolean glIsProgramARB(GLuint program);
void glProgramEnvParameter4dARB(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramEnvParameter4dvARB(GLenum target, GLuint index, const GLdouble *params);
void glProgramEnvParameter4fARB(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glProgramEnvParameter4fvARB(GLenum target, GLuint index, const GLfloat *params);
void glProgramLocalParameter4dARB(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glProgramLocalParameter4dvARB(GLenum target, GLuint index, const GLdouble *params);
void glProgramLocalParameter4fARB(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glProgramLocalParameter4fvARB(GLenum target, GLuint index, const GLfloat *params);
void glGetProgramEnvParameterdvARB(GLenum target, GLuint index, GLdouble *params);
void glGetProgramEnvParameterfvARB(GLenum target, GLuint index, GLfloat *params);
void glProgramEnvParameters4fvEXT(GLenum target, GLuint index, GLsizei count, const GLfloat *params);
void glProgramLocalParameters4fvEXT(GLenum target, GLuint index, GLsizei count, const GLfloat *params);
void glGetProgramLocalParameterdvARB(GLenum target, GLuint index, GLdouble *params);
void glGetProgramLocalParameterfvARB(GLenum target, GLuint index, GLfloat *params);
void glProgramStringARB(GLenum target, GLenum format, GLsizei len, const GLvoid *string);
void glGetProgramStringARB(GLenum target, GLenum pname, GLvoid *string);
void glGetProgramivARB(GLenum target, GLenum pname, GLint *params);
void glVertexAttrib1dARB(GLuint index, GLdouble x);
void glVertexAttrib1dvARB(GLuint index, const GLdouble *v);
void glVertexAttrib1fARB(GLuint index, GLfloat x);
void glVertexAttrib1fvARB(GLuint index, const GLfloat *v);
void glVertexAttrib1sARB(GLuint index, GLshort x);
void glVertexAttrib1svARB(GLuint index, const GLshort *v);
void glVertexAttrib2dARB(GLuint index, GLdouble x, GLdouble y);
void glVertexAttrib2dvARB(GLuint index, const GLdouble *v);
void glVertexAttrib2fARB(GLuint index, GLfloat x, GLfloat y);
void glVertexAttrib2fvARB(GLuint index, const GLfloat *v);
void glVertexAttrib2sARB(GLuint index, GLshort x, GLshort y);
void glVertexAttrib2svARB(GLuint index, const GLshort *v);
void glVertexAttrib3dARB(GLuint index, GLdouble x, GLdouble y, GLdouble z);
void glVertexAttrib3dvARB(GLuint index, const GLdouble *v);
void glVertexAttrib3fARB(GLuint index, GLfloat x, GLfloat y, GLfloat z);
void glVertexAttrib3fvARB(GLuint index, const GLfloat *v);
void glVertexAttrib3sARB(GLuint index, GLshort x, GLshort y, GLshort z);
void glVertexAttrib3svARB(GLuint index, const GLshort *v);
void glVertexAttrib4NbvARB(GLuint index, const GLbyte *v);
void glVertexAttrib4NivARB(GLuint index, const GLint *v);
void glVertexAttrib4NsvARB(GLuint index, const GLshort *v);
void glVertexAttrib4NubARB(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
void glVertexAttrib4NubvARB(GLuint index, const GLubyte *v);
void glVertexAttrib4NuivARB(GLuint index, const GLuint *v);
void glVertexAttrib4NusvARB(GLuint index, const GLushort *v);
void glVertexAttrib4bvARB(GLuint index, const GLbyte *v);
void glVertexAttrib4dARB(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertexAttrib4dvARB(GLuint index, const GLdouble *v);
void glVertexAttrib4fARB(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertexAttrib4fvARB(GLuint index, const GLfloat *v);
void glVertexAttrib4ivARB(GLuint index, const GLint *v);
void glVertexAttrib4sARB(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
void glVertexAttrib4svARB(GLuint index, const GLshort *v);
void glVertexAttrib4ubvARB(GLuint index, const GLubyte *v);
void glVertexAttrib4uivARB(GLuint index, const GLuint *v);
void glVertexAttrib4usvARB(GLuint index, const GLushort *v);
void glVertexAttribPointerARB(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const GLvoid *pointer);
void glDisableVertexAttribArrayARB(GLuint index);
void glEnableVertexAttribArrayARB(GLuint index);
void glGetVertexAttribPointervARB(GLuint index, GLenum pname, GLvoid **pointer);
void glGetVertexAttribdvARB(GLuint index, GLenum pname, GLdouble *params);
void glGetVertexAttribfvARB(GLuint index, GLenum pname, GLfloat *params);
void glGetVertexAttribivARB(GLuint index, GLenum pname, GLint *params);
void glDeleteObjectARB(GLhandleARB obj);
GLhandleARB glGetHandleARB(GLenum pname);
void glDetachObjectARB(GLhandleARB containerObj, GLhandleARB attachedObj);
GLhandleARB glCreateShaderObjectARB(GLenum shaderType);
void glShaderSourceARB(GLhandleARB shaderObj, GLsizei count, const GLcharARB **string, const GLint *length);
void glCompileShaderARB(GLhandleARB shaderObj);
GLhandleARB glCreateProgramObjectARB(void);
void glAttachObjectARB(GLhandleARB containerObj, GLhandleARB obj);
void glLinkProgramARB(GLhandleARB programObj);
void glUseProgramObjectARB(GLhandleARB programObj);
void glValidateProgramARB(GLhandleARB programObj);
void glUniform1fARB(GLint location, GLfloat v0);
void glUniform2fARB(GLint location, GLfloat v0, GLfloat v1);
void glUniform3fARB(GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
void glUniform4fARB(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
void glUniform1iARB(GLint location, GLint v0);
void glUniform2iARB(GLint location, GLint v0, GLint v1);
void glUniform3iARB(GLint location, GLint v0, GLint v1, GLint v2);
void glUniform4iARB(GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
void glUniform1fvARB(GLint location, GLsizei count, const GLfloat *value);
void glUniform2fvARB(GLint location, GLsizei count, const GLfloat *value);
void glUniform3fvARB(GLint location, GLsizei count, const GLfloat *value);
void glUniform4fvARB(GLint location, GLsizei count, const GLfloat *value);
void glUniform1ivARB(GLint location, GLsizei count, const GLint *value);
void glUniform2ivARB(GLint location, GLsizei count, const GLint *value);
void glUniform3ivARB(GLint location, GLsizei count, const GLint *value);
void glUniform4ivARB(GLint location, GLsizei count, const GLint *value);
void glUniformMatrix2fvARB(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glUniformMatrix3fvARB(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glUniformMatrix4fvARB(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
void glGetObjectParameterfvARB(GLhandleARB obj, GLenum pname, GLfloat *params);
void glGetObjectParameterivARB(GLhandleARB obj, GLenum pname, GLint *params);
void glGetInfoLogARB(GLhandleARB obj, GLsizei maxLength, GLsizei *length, GLcharARB *infoLog);
void glGetAttachedObjectsARB(GLhandleARB containerObj, GLsizei maxCount, GLsizei *count, GLhandleARB *obj);
GLint glGetUniformLocationARB(GLhandleARB programObj, const GLcharARB *name);
void glGetActiveUniformARB(GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei *length, GLint *size, GLenum *type, GLcharARB *name);
void glGetUniformfvARB(GLhandleARB programObj, GLint location, GLfloat *params);
void glGetUniformivARB(GLhandleARB programObj, GLint location, GLint *params);
void glGetShaderSourceARB(GLhandleARB obj, GLsizei maxLength, GLsizei *length, GLcharARB *source);
void glBindAttribLocationARB(GLhandleARB programObj, GLuint index, const GLcharARB *name);
void glGetActiveAttribARB(GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei *length, GLint *size, GLenum *type, GLcharARB *name);
GLint glGetAttribLocationARB(GLhandleARB programObj, const GLcharARB *name);
void glBindBufferARB(GLenum target, GLuint buffer);
void glDeleteBuffersARB(GLsizei n, const GLuint *buffers);
void glGenBuffersARB(GLsizei n, GLuint *buffers);
GLboolean glIsBufferARB(GLuint buffer);
void glBufferDataARB(GLenum target, GLsizeiptrARB size, const GLvoid *data, GLenum usage);
void glBufferSubDataARB(GLenum target, GLintptrARB offset, GLsizeiptrARB size, const GLvoid *data);
void glGetBufferSubDataARB(GLenum target, GLintptrARB offset, GLsizeiptrARB size, GLvoid *data);
GLvoid *glMapBufferARB(GLenum target, GLenum access);
GLboolean glUnmapBufferARB(GLenum target);
void glGetBufferParameterivARB(GLenum target, GLenum pname, GLint *params);
void glGetBufferPointervARB(GLenum target, GLenum pname, GLvoid **params);
void glDrawBuffersARB(GLsizei n, const GLenum *bufs);
void glClampColorARB(GLenum target, GLenum clamp);
void glDrawArraysInstancedARB(GLenum mode, GLint first, GLsizei count, GLsizei primcount);
void glDrawElementsInstancedARB(GLenum mode, GLsizei count, GLenum type, const GLvoid *indices, GLsizei primcount);
void glVertexAttribDivisorARB(GLuint index, GLuint divisor);
void glGetUniformIndices(GLuint program, GLsizei uniformCount, const GLchar** uniformNames, GLuint* uniformIndices);
void glGetActiveUniformsiv(GLuint program, GLsizei uniformCount, const GLuint* uniformIndices, GLenum pname, GLint* params);
void glGetActiveUniformName(GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformName);
GLuint glGetUniformBlockIndex(GLuint program, const GLchar* uniformBlockName);
void glGetActiveUniformBlockiv(GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint* params);
void glGetActiveUniformBlockName(GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformBlockName);
void glBindBufferRange(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
void glBindBufferBase(GLenum target, GLuint index, GLuint buffer);
void glGetIntegeri_v(GLenum pname, GLuint index, GLint* data);
void glUniformBlockBinding(GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding);
void glBlendColorEXT (GLclampf, GLclampf, GLclampf, GLclampf);
void glBlendEquationEXT (GLenum);
void glLockArraysEXT (GLint, GLsizei);
void glUnlockArraysEXT (void);
void glDrawRangeElementsEXT (GLenum, GLuint, GLuint, GLsizei, GLenum, const GLvoid *);
void glSecondaryColor3bEXT (GLbyte, GLbyte, GLbyte);
void glSecondaryColor3bvEXT (const GLbyte *);
void glSecondaryColor3dEXT (GLdouble, GLdouble, GLdouble);
void glSecondaryColor3dvEXT (const GLdouble *);
void glSecondaryColor3fEXT (GLfloat, GLfloat, GLfloat);
void glSecondaryColor3fvEXT (const GLfloat *);
void glSecondaryColor3iEXT (GLint, GLint, GLint);
void glSecondaryColor3ivEXT (const GLint *);
void glSecondaryColor3sEXT (GLshort, GLshort, GLshort);
void glSecondaryColor3svEXT (const GLshort *);
void glSecondaryColor3ubEXT (GLubyte, GLubyte, GLubyte);
void glSecondaryColor3ubvEXT (const GLubyte *);
void glSecondaryColor3uiEXT (GLuint, GLuint, GLuint);
void glSecondaryColor3uivEXT (const GLuint *);
void glSecondaryColor3usEXT (GLushort, GLushort, GLushort);
void glSecondaryColor3usvEXT (const GLushort *);
void glSecondaryColorPointerEXT (GLint, GLenum, GLsizei, const GLvoid *);
void glMultiDrawArraysEXT (GLenum, const GLint *, const GLsizei *, GLsizei);
void glMultiDrawElementsEXT (GLenum, const GLsizei *, GLenum, const GLvoid* *, GLsizei);
void glFogCoordfEXT (GLfloat);
void glFogCoordfvEXT (const GLfloat *);
void glFogCoorddEXT (GLdouble);
void glFogCoorddvEXT (const GLdouble *);
void glFogCoordPointerEXT (GLenum, GLsizei, const GLvoid *);
void glBlendFuncSeparateEXT (GLenum, GLenum, GLenum, GLenum);
void glActiveStencilFaceEXT(GLenum face);
void glDepthBoundsEXT(GLclampd zmin, GLclampd zmax);
void glBlendEquationSeparateEXT(GLenum modeRGB, GLenum modeAlpha);
GLboolean glIsRenderbufferEXT(GLuint renderbuffer);
void glBindRenderbufferEXT(GLenum target, GLuint renderbuffer);
void glDeleteRenderbuffersEXT(GLsizei n, const GLuint *renderbuffers);
void glGenRenderbuffersEXT(GLsizei n, GLuint *renderbuffers);
void glRenderbufferStorageEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
void glGetRenderbufferParameterivEXT(GLenum target, GLenum pname, GLint *params);
GLboolean glIsFramebufferEXT(GLuint framebuffer);
void glBindFramebufferEXT(GLenum target, GLuint framebuffer);
void glDeleteFramebuffersEXT(GLsizei n, const GLuint *framebuffers);
void glGenFramebuffersEXT(GLsizei n, GLuint *framebuffers);
GLenum glCheckFramebufferStatusEXT(GLenum target);
void glFramebufferTexture1DEXT(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glFramebufferTexture2DEXT(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
void glFramebufferTexture3DEXT(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
void glFramebufferRenderbufferEXT(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
void glGetFramebufferAttachmentParameterivEXT(GLenum target, GLenum attachment, GLenum pname, GLint *params);
void glGenerateMipmapEXT(GLenum target);
void glBlitFramebufferEXT(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);
void glRenderbufferStorageMultisampleEXT(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
void glProgramParameteriEXT(GLuint program, GLenum pname, GLint value);
void glFramebufferTextureEXT(GLenum target, GLenum attachment, GLuint texture, GLint level);
void glFramebufferTextureFaceEXT(GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face);
void glFramebufferTextureLayerEXT(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
GLboolean glIsRenderbuffer (GLuint);
void glBindRenderbuffer (GLenum, GLuint);
void glDeleteRenderbuffers (GLsizei, const GLuint *);
void glGenRenderbuffers (GLsizei, GLuint *);
void glRenderbufferStorage (GLenum, GLenum, GLsizei, GLsizei);
void glGetRenderbufferParameteriv (GLenum, GLenum, GLint *);
GLboolean glIsFramebuffer (GLuint);
void glBindFramebuffer (GLenum, GLuint);
void glDeleteFramebuffers (GLsizei, const GLuint *);
void glGenFramebuffers (GLsizei, GLuint *);
GLenum glCheckFramebufferStatus (GLenum);
void glFramebufferTexture1D (GLenum, GLenum, GLenum, GLuint, GLint);
void glFramebufferTexture2D (GLenum, GLenum, GLenum, GLuint, GLint);
void glFramebufferTexture3D (GLenum, GLenum, GLenum, GLuint, GLint, GLint);
void glFramebufferRenderbuffer (GLenum, GLenum, GLenum, GLuint);
void glGetFramebufferAttachmentParameteriv (GLenum, GLenum, GLenum, GLint *);
void glGenerateMipmap (GLenum);
void glBlitFramebuffer (GLint, GLint, GLint, GLint, GLint, GLint, GLint, GLint, GLbitfield, GLenum);
void glRenderbufferStorageMultisample (GLenum, GLsizei, GLenum, GLsizei, GLsizei);
void glFramebufferTextureLayer (GLenum, GLenum, GLuint, GLint, GLint);
void glBindBufferRangeEXT(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
void glBindBufferOffsetEXT(GLenum target, GLuint index, GLuint buffer, GLintptr offset);
void glBindBufferBaseEXT(GLenum target, GLuint index, GLuint buffer);
void glBeginTransformFeedbackEXT(GLenum primitiveMode);
void glEndTransformFeedbackEXT(void);
void glTransformFeedbackVaryingsEXT(GLuint program, GLsizei count, const GLchar **varyings, GLenum bufferMode);
void glGetTransformFeedbackVaryingEXT(GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLsizei *size, GLenum *type, GLchar *name);
void glGetIntegerIndexedvEXT(GLenum param, GLuint index, GLint *values);
void glGetBooleanIndexedvEXT(GLenum param, GLuint index, GLboolean *values);
void glUniformBufferEXT(GLuint program, GLint location, GLuint buffer);
GLint glGetUniformBufferSizeEXT(GLuint program, GLint location);
GLintptr glGetUniformOffsetEXT(GLuint program, GLint location);
void glClearColorIiEXT( GLint r, GLint g, GLint b, GLint a );
void glClearColorIuiEXT( GLuint r, GLuint g, GLuint b, GLuint a );
void glTexParameterIivEXT( GLenum target, GLenum pname, GLint *params );
void glTexParameterIuivEXT( GLenum target, GLenum pname, GLuint *params );
void glGetTexParameterIivEXT( GLenum target, GLenum pname, GLint *params);
void glGetTexParameterIuivEXT( GLenum target, GLenum pname, GLuint *params);
void glVertexAttribI1iEXT(GLuint index, GLint x);
void glVertexAttribI2iEXT(GLuint index, GLint x, GLint y);
void glVertexAttribI3iEXT(GLuint index, GLint x, GLint y, GLint z);
void glVertexAttribI4iEXT(GLuint index, GLint x, GLint y, GLint z, GLint w);
void glVertexAttribI1uiEXT(GLuint index, GLuint x);
void glVertexAttribI2uiEXT(GLuint index, GLuint x, GLuint y);
void glVertexAttribI3uiEXT(GLuint index, GLuint x, GLuint y, GLuint z);
void glVertexAttribI4uiEXT(GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
void glVertexAttribI1ivEXT(GLuint index, const GLint *v);
void glVertexAttribI2ivEXT(GLuint index, const GLint *v);
void glVertexAttribI3ivEXT(GLuint index, const GLint *v);
void glVertexAttribI4ivEXT(GLuint index, const GLint *v);
void glVertexAttribI1uivEXT(GLuint index, const GLuint *v);
void glVertexAttribI2uivEXT(GLuint index, const GLuint *v);
void glVertexAttribI3uivEXT(GLuint index, const GLuint *v);
void glVertexAttribI4uivEXT(GLuint index, const GLuint *v);
void glVertexAttribI4bvEXT(GLuint index, const GLbyte *v);
void glVertexAttribI4svEXT(GLuint index, const GLshort *v);
void glVertexAttribI4ubvEXT(GLuint index, const GLubyte *v);
void glVertexAttribI4usvEXT(GLuint index, const GLushort *v);
void glVertexAttribIPointerEXT(GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
void glGetVertexAttribIivEXT(GLuint index, GLenum pname, GLint *params);
void glGetVertexAttribIuivEXT(GLuint index, GLenum pname, GLuint *params);
void glUniform1uiEXT(GLint location, GLuint v0);
void glUniform2uiEXT(GLint location, GLuint v0, GLuint v1);
void glUniform3uiEXT(GLint location, GLuint v0, GLuint v1, GLuint v2);
void glUniform4uiEXT(GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
void glUniform1uivEXT(GLint location, GLsizei count, const GLuint *value);
void glUniform2uivEXT(GLint location, GLsizei count, const GLuint *value);
void glUniform3uivEXT(GLint location, GLsizei count, const GLuint *value);
void glUniform4uivEXT(GLint location, GLsizei count, const GLuint *value);
void glGetUniformuivEXT(GLuint program, GLint location, GLuint *params);
void glBindFragDataLocationEXT(GLuint program, GLuint colorNumber, const GLchar *name);
GLint glGetFragDataLocationEXT(GLuint program, const GLchar *name);
void glColorMaskIndexedEXT(GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
void glEnableIndexedEXT(GLenum target, GLuint index);
void glDisableIndexedEXT(GLenum target, GLuint index);
GLboolean glIsEnabledIndexedEXT(GLenum target, GLuint index);
void glProvokingVertexEXT(GLenum mode);
void glTextureRangeAPPLE(GLenum target, GLsizei length, const GLvoid *pointer);
void glGetTexParameterPointervAPPLE(GLenum target, GLenum pname, GLvoid **params);
void glVertexArrayRangeAPPLE(GLsizei length, const GLvoid *pointer);
void glFlushVertexArrayRangeAPPLE(GLsizei length, const GLvoid *pointer);
void glVertexArrayParameteriAPPLE(GLenum pname, GLint param);
void glBindVertexArrayAPPLE(GLuint id);
void glDeleteVertexArraysAPPLE(GLsizei n, const GLuint *ids);
void glGenVertexArraysAPPLE(GLsizei n, GLuint *ids);
GLboolean glIsVertexArrayAPPLE(GLuint id);
void glGenFencesAPPLE(GLsizei n, GLuint *fences);
void glDeleteFencesAPPLE(GLsizei n, const GLuint *fences);
void glSetFenceAPPLE(GLuint fence);
GLboolean glIsFenceAPPLE(GLuint fence);
GLboolean glTestFenceAPPLE(GLuint fence);
void glFinishFenceAPPLE(GLuint fence);
GLboolean glTestObjectAPPLE(GLenum object, GLuint name);
void glFinishObjectAPPLE(GLenum object, GLuint name);
void glElementPointerAPPLE(GLenum type, const GLvoid *pointer);
void glDrawElementArrayAPPLE(GLenum mode, GLint first, GLsizei count);
void glDrawRangeElementArrayAPPLE(GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count);
void glMultiDrawElementArrayAPPLE(GLenum mode, const GLint *first, const GLsizei *count, GLsizei primcount);
void glMultiDrawRangeElementArrayAPPLE(GLenum mode, GLuint start, GLuint end, const GLint *first, const GLsizei *count, GLsizei primcount);
void glFlushRenderAPPLE(void);
void glFinishRenderAPPLE(void);
void glSwapAPPLE(void);
void glEnableVertexAttribAPPLE(GLuint index, GLenum pname);
void glDisableVertexAttribAPPLE(GLuint index, GLenum pname);
GLboolean glIsVertexAttribEnabledAPPLE(GLuint index, GLenum pname);
void glMapVertexAttrib1dAPPLE(GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble *points);
void glMapVertexAttrib1fAPPLE(GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat *points);
void glMapVertexAttrib2dAPPLE(GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble *points);
void glMapVertexAttrib2fAPPLE(GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat *points);
void glBufferParameteriAPPLE(GLenum target, GLenum pname, GLint param);
void glFlushMappedBufferRangeAPPLE(GLenum target, GLintptr offset, GLsizeiptr size);
GLenum glObjectPurgeableAPPLE(GLenum objectType, GLuint name, GLenum option);
GLenum glObjectUnpurgeableAPPLE(GLenum objectType, GLuint name, GLenum option);
void glGetObjectParameterivAPPLE(GLenum objectType, GLuint name, GLenum pname, GLint* params);
void glPNTrianglesiATI(GLenum pname, GLint param);
void glPNTrianglesfATI(GLenum pname, GLfloat param);
void glBlendEquationSeparateATI(GLenum equationRGB, GLenum equationAlpha);
void glStencilOpSeparateATI(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
void glStencilFuncSeparateATI(GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask);
void glPNTrianglesiATIX(GLenum pname, GLint param);
void glPNTrianglesfATIX(GLenum pname, GLfloat param);
void glPointParameteriNV(GLenum pname, GLint param);
void glPointParameterivNV(GLenum pname, const GLint *params);
void glBeginConditionalRenderNV (GLuint id, GLenum mode);
void glEndConditionalRenderNV (void);
]]

local code = table.concat({
	opengl_defines_1_0,
	opengl_symbols_1_0,
	opengl_defines_1_1,
	opengl_symbols_1_1,
	opengl_extra_cdef,
	opengl_defines_1_2,
	opengl_symbols_1_2,
	opengl_defines_1_3,
	opengl_symbols_1_3,
	opengl_defines_1_4,
	opengl_symbols_1_4,
	opengl_defines_1_5,
	opengl_symbols_1_5,
	opengl_defines_2_0,
	opengl_symbols_2_0,
	opengl_defines_2_1,
	opengl_symbols_2_1,
	opengl_defines_3_0,
	opengl_symbols_3_0,
	opengl_defines_3_1,	
	opengl_symbols_3_1,
	opengl_defines_3_2,
	opengl_symbols_3_2,
	opengl_defines_4_0,
	opengl_symbols_4_0,
	opengl_defines_4_1,	
	opengl_symbols_4_1,
	opengl_defines_4_2,
	opengl_symbols_4_2,
	
	opengl_defines_exts,
	opengl_symbols_exts,
}, '\n')
code = require 'preproc'()(code)
xpcall(function()
	ffi.cdef(code)	
end, function(err)
	print(require 'template.showcode'(code))
	print(err..debug.traceback())
	os.exit(1)
end)

if ffi.os == 'Windows' then
	--[[
	windows needs functions overloaded from glext/wglGetProc
	but if I assign a meta __index wrapper later, anything that requires 'OpenGL' before that point will have the wrong package.loaded reference
	unless I make the wrapper here
	and while I'm at it, use this table to pass on the symbols to the windows init
	--]]
	return setmetatable({
		code = code,
		opengl_symbols_1_2 = opengl_symbols_1_2,
		opengl_symbols_1_3 = opengl_symbols_1_3,
		opengl_symbols_1_4 = opengl_symbols_1_4,
		opengl_symbols_1_5 = opengl_symbols_1_5,
		opengl_symbols_2_0 = opengl_symbols_2_0,
		opengl_symbols_2_1 = opengl_symbols_2_1,
		opengl_symbols_3_0 = opengl_symbols_3_0,
		opengl_symbols_3_1 = opengl_symbols_3_1,
		opengl_symbols_3_2 = opengl_symbols_3_2,
		opengl_symbols_4_0 = opengl_symbols_4_0,
		opengl_symbols_4_1 = opengl_symbols_4_1,
		opengl_symbols_4_2 = opengl_symbols_4_2,
	}, {__index=gl})
else
	return gl
end
