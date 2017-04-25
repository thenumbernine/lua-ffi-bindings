local ffi   = require( "ffi" )
local libs  = ffi_gles1_libs or {
   OSX     = { x86 = "bin/OSX/libGLESv1.dylib", x64 = "bin/OSX/libGLESv1.dylib" },
   Windows  = { x86 = "bin/Windows/x86/libGLESv1.dll", x64 = "bin/Windows/x64/libGLESv1.dll" },
   Linux    = { x86 = "bin/Linux/x86/libGLESv1.so", x64 = "bin/Linux/x64/libGLESv1.so", arm = "GLESv1_CM" }
}

local lib   = ffi_OpenGLES1_lib or libs[ ffi.os ][ ffi.arch ]

local gles1 = ffi.load( lib )

ffi.cdef[[
 
enum {
	GL_VERSION_ES_CM_1_0 = 1,
	GL_VERSION_ES_CL_1_0 = 1,
	GL_VERSION_ES_CM_1_1 = 1,
	GL_VERSION_ES_CL_1_1 = 1,
	GL_DEPTH_BUFFER_BIT = 0x00000100,
	GL_STENCIL_BUFFER_BIT = 0x00000400,
	GL_COLOR_BUFFER_BIT = 0x00004000,
	GL_FALSE = 0,
	GL_TRUE = 1,
	GL_POINTS = 0x0000,
	GL_LINES = 0x0001,
	GL_LINE_LOOP = 0x0002,
	GL_LINE_STRIP = 0x0003,
	GL_TRIANGLES = 0x0004,
	GL_TRIANGLE_STRIP = 0x0005,
	GL_TRIANGLE_FAN = 0x0006,
	GL_NEVER = 0x0200,
	GL_LESS = 0x0201,
	GL_EQUAL = 0x0202,
	GL_LEQUAL = 0x0203,
	GL_GREATER = 0x0204,
	GL_NOTEQUAL = 0x0205,
	GL_GEQUAL = 0x0206,
	GL_ALWAYS = 0x0207,
	GL_ZERO = 0,
	GL_ONE = 1,
	GL_SRC_COLOR = 0x0300,
	GL_ONE_MINUS_SRC_COLOR = 0x0301,
	GL_SRC_ALPHA = 0x0302,
	GL_ONE_MINUS_SRC_ALPHA = 0x0303,
	GL_DST_ALPHA = 0x0304,
	GL_ONE_MINUS_DST_ALPHA = 0x0305,
	GL_DST_COLOR = 0x0306,
	GL_ONE_MINUS_DST_COLOR = 0x0307,
	GL_SRC_ALPHA_SATURATE = 0x0308,
	GL_CLIP_PLANE0 = 0x3000,
	GL_CLIP_PLANE1 = 0x3001,
	GL_CLIP_PLANE2 = 0x3002,
	GL_CLIP_PLANE3 = 0x3003,
	GL_CLIP_PLANE4 = 0x3004,
	GL_CLIP_PLANE5 = 0x3005,
	GL_FRONT = 0x0404,
	GL_BACK = 0x0405,
	GL_FRONT_AND_BACK = 0x0408,
	GL_FOG = 0x0B60,
	GL_LIGHTING = 0x0B50,
	GL_TEXTURE_2D = 0x0DE1,
	GL_CULL_FACE = 0x0B44,
	GL_ALPHA_TEST = 0x0BC0,
	GL_BLEND = 0x0BE2,
	GL_COLOR_LOGIC_OP = 0x0BF2,
	GL_DITHER = 0x0BD0,
	GL_STENCIL_TEST = 0x0B90,
	GL_DEPTH_TEST = 0x0B71,
	GL_POINT_SMOOTH = 0x0B10,
	GL_LINE_SMOOTH = 0x0B20,
	GL_SCISSOR_TEST = 0x0C11,
	GL_COLOR_MATERIAL = 0x0B57,
	GL_NORMALIZE = 0x0BA1,
	GL_RESCALE_NORMAL = 0x803A,
	GL_POLYGON_OFFSET_FILL = 0x8037,
	GL_VERTEX_ARRAY = 0x8074,
	GL_NORMAL_ARRAY = 0x8075,
	GL_COLOR_ARRAY = 0x8076,
	GL_TEXTURE_COORD_ARRAY = 0x8078,
	GL_MULTISAMPLE = 0x809D,
	GL_SAMPLE_ALPHA_TO_COVERAGE = 0x809E,
	GL_SAMPLE_ALPHA_TO_ONE = 0x809F,
	GL_SAMPLE_COVERAGE = 0x80A0,
	GL_NO_ERROR = 0,
	GL_INVALID_ENUM = 0x0500,
	GL_INVALID_VALUE = 0x0501,
	GL_INVALID_OPERATION = 0x0502,
	GL_STACK_OVERFLOW = 0x0503,
	GL_STACK_UNDERFLOW = 0x0504,
	GL_OUT_OF_MEMORY = 0x0505,
	GL_EXP = 0x0800,
	GL_EXP2 = 0x0801,
	GL_FOG_DENSITY = 0x0B62,
	GL_FOG_START = 0x0B63,
	GL_FOG_END = 0x0B64,
	GL_FOG_MODE = 0x0B65,
	GL_FOG_COLOR = 0x0B66,
	GL_CW = 0x0900,
	GL_CCW = 0x0901,
	GL_CURRENT_COLOR = 0x0B00,
	GL_CURRENT_NORMAL = 0x0B02,
	GL_CURRENT_TEXTURE_COORDS = 0x0B03,
	GL_POINT_SIZE = 0x0B11,
	GL_POINT_SIZE_MIN = 0x8126,
	GL_POINT_SIZE_MAX = 0x8127,
	GL_POINT_FADE_THRESHOLD_SIZE = 0x8128,
	GL_POINT_DISTANCE_ATTENUATION = 0x8129,
	GL_SMOOTH_POINT_SIZE_RANGE = 0x0B12,
	GL_LINE_WIDTH = 0x0B21,
	GL_SMOOTH_LINE_WIDTH_RANGE = 0x0B22,
	GL_ALIASED_POINT_SIZE_RANGE = 0x846D,
	GL_ALIASED_LINE_WIDTH_RANGE = 0x846E,
	GL_CULL_FACE_MODE = 0x0B45,
	GL_FRONT_FACE = 0x0B46,
	GL_SHADE_MODEL = 0x0B54,
	GL_DEPTH_RANGE = 0x0B70,
	GL_DEPTH_WRITEMASK = 0x0B72,
	GL_DEPTH_CLEAR_VALUE = 0x0B73,
	GL_DEPTH_FUNC = 0x0B74,
	GL_STENCIL_CLEAR_VALUE = 0x0B91,
	GL_STENCIL_FUNC = 0x0B92,
	GL_STENCIL_VALUE_MASK = 0x0B93,
	GL_STENCIL_FAIL = 0x0B94,
	GL_STENCIL_PASS_DEPTH_FAIL = 0x0B95,
	GL_STENCIL_PASS_DEPTH_PASS = 0x0B96,
	GL_STENCIL_REF = 0x0B97,
	GL_STENCIL_WRITEMASK = 0x0B98,
	GL_MATRIX_MODE = 0x0BA0,
	GL_VIEWPORT = 0x0BA2,
	GL_MODELVIEW_STACK_DEPTH = 0x0BA3,
	GL_PROJECTION_STACK_DEPTH = 0x0BA4,
	GL_TEXTURE_STACK_DEPTH = 0x0BA5,
	GL_MODELVIEW_MATRIX = 0x0BA6,
	GL_PROJECTION_MATRIX = 0x0BA7,
	GL_TEXTURE_MATRIX = 0x0BA8,
	GL_ALPHA_TEST_FUNC = 0x0BC1,
	GL_ALPHA_TEST_REF = 0x0BC2,
	GL_BLEND_DST = 0x0BE0,
	GL_BLEND_SRC = 0x0BE1,
	GL_LOGIC_OP_MODE = 0x0BF0,
	GL_SCISSOR_BOX = 0x0C10,
	GL_COLOR_CLEAR_VALUE = 0x0C22,
	GL_COLOR_WRITEMASK = 0x0C23,
	GL_UNPACK_ALIGNMENT = 0x0CF5,
	GL_PACK_ALIGNMENT = 0x0D05,
	GL_MAX_LIGHTS = 0x0D31,
	GL_MAX_CLIP_PLANES = 0x0D32,
	GL_MAX_TEXTURE_SIZE = 0x0D33,
	GL_MAX_MODELVIEW_STACK_DEPTH = 0x0D36,
	GL_MAX_PROJECTION_STACK_DEPTH = 0x0D38,
	GL_MAX_TEXTURE_STACK_DEPTH = 0x0D39,
	GL_MAX_VIEWPORT_DIMS = 0x0D3A,
	GL_MAX_TEXTURE_UNITS = 0x84E2,
	GL_SUBPIXEL_BITS = 0x0D50,
	GL_RED_BITS = 0x0D52,
	GL_GREEN_BITS = 0x0D53,
	GL_BLUE_BITS = 0x0D54,
	GL_ALPHA_BITS = 0x0D55,
	GL_DEPTH_BITS = 0x0D56,
	GL_STENCIL_BITS = 0x0D57,
	GL_POLYGON_OFFSET_UNITS = 0x2A00,
	GL_POLYGON_OFFSET_FACTOR = 0x8038,
	GL_TEXTURE_BINDING_2D = 0x8069,
	GL_VERTEX_ARRAY_SIZE = 0x807A,
	GL_VERTEX_ARRAY_TYPE = 0x807B,
	GL_VERTEX_ARRAY_STRIDE = 0x807C,
	GL_NORMAL_ARRAY_TYPE = 0x807E,
	GL_NORMAL_ARRAY_STRIDE = 0x807F,
	GL_COLOR_ARRAY_SIZE = 0x8081,
	GL_COLOR_ARRAY_TYPE = 0x8082,
	GL_COLOR_ARRAY_STRIDE = 0x8083,
	GL_TEXTURE_COORD_ARRAY_SIZE = 0x8088,
	GL_TEXTURE_COORD_ARRAY_TYPE = 0x8089,
	GL_TEXTURE_COORD_ARRAY_STRIDE = 0x808A,
	GL_VERTEX_ARRAY_POINTER = 0x808E,
	GL_NORMAL_ARRAY_POINTER = 0x808F,
	GL_COLOR_ARRAY_POINTER = 0x8090,
	GL_TEXTURE_COORD_ARRAY_POINTER = 0x8092,
	GL_SAMPLE_BUFFERS = 0x80A8,
	GL_SAMPLES = 0x80A9,
	GL_SAMPLE_COVERAGE_VALUE = 0x80AA,
	GL_SAMPLE_COVERAGE_INVERT = 0x80AB,
	GL_NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2,
	GL_COMPRESSED_TEXTURE_FORMATS = 0x86A3,
	GL_DONT_CARE = 0x1100,
	GL_FASTEST = 0x1101,
	GL_NICEST = 0x1102,
	GL_PERSPECTIVE_CORRECTION_HINT = 0x0C50,
	GL_POINT_SMOOTH_HINT = 0x0C51,
	GL_LINE_SMOOTH_HINT = 0x0C52,
	GL_FOG_HINT = 0x0C54,
	GL_GENERATE_MIPMAP_HINT = 0x8192,
	GL_LIGHT_MODEL_AMBIENT = 0x0B53,
	GL_LIGHT_MODEL_TWO_SIDE = 0x0B52,
	GL_AMBIENT = 0x1200,
	GL_DIFFUSE = 0x1201,
	GL_SPECULAR = 0x1202,
	GL_POSITION = 0x1203,
	GL_SPOT_DIRECTION = 0x1204,
	GL_SPOT_EXPONENT = 0x1205,
	GL_SPOT_CUTOFF = 0x1206,
	GL_CONSTANT_ATTENUATION = 0x1207,
	GL_LINEAR_ATTENUATION = 0x1208,
	GL_QUADRATIC_ATTENUATION = 0x1209,
	GL_BYTE = 0x1400,
	GL_UNSIGNED_BYTE = 0x1401,
	GL_SHORT = 0x1402,
	GL_UNSIGNED_SHORT = 0x1403,
	GL_FLOAT = 0x1406,
	GL_FIXED = 0x140C,
	GL_CLEAR = 0x1500,
	GL_AND = 0x1501,
	GL_AND_REVERSE = 0x1502,
	GL_COPY = 0x1503,
	GL_AND_INVERTED = 0x1504,
	GL_NOOP = 0x1505,
	GL_XOR = 0x1506,
	GL_OR = 0x1507,
	GL_NOR = 0x1508,
	GL_EQUIV = 0x1509,
	GL_INVERT = 0x150A,
	GL_OR_REVERSE = 0x150B,
	GL_COPY_INVERTED = 0x150C,
	GL_OR_INVERTED = 0x150D,
	GL_NAND = 0x150E,
	GL_SET = 0x150F,
	GL_EMISSION = 0x1600,
	GL_SHININESS = 0x1601,
	GL_AMBIENT_AND_DIFFUSE = 0x1602,
	GL_MODELVIEW = 0x1700,
	GL_PROJECTION = 0x1701,
	GL_TEXTURE = 0x1702,
	GL_ALPHA = 0x1906,
	GL_RGB = 0x1907,
	GL_RGBA = 0x1908,
	GL_LUMINANCE = 0x1909,
	GL_LUMINANCE_ALPHA = 0x190A,
	GL_UNSIGNED_SHORT_4_4_4_4 = 0x8033,
	GL_UNSIGNED_SHORT_5_5_5_1 = 0x8034,
	GL_UNSIGNED_SHORT_5_6_5 = 0x8363,
	GL_FLAT = 0x1D00,
	GL_SMOOTH = 0x1D01,
	GL_KEEP = 0x1E00,
	GL_REPLACE = 0x1E01,
	GL_INCR = 0x1E02,
	GL_DECR = 0x1E03,
	GL_VENDOR = 0x1F00,
	GL_RENDERER = 0x1F01,
	GL_VERSION = 0x1F02,
	GL_EXTENSIONS = 0x1F03,
	GL_MODULATE = 0x2100,
	GL_DECAL = 0x2101,
	GL_ADD = 0x0104,
	GL_TEXTURE_ENV_MODE = 0x2200,
	GL_TEXTURE_ENV_COLOR = 0x2201,
	GL_TEXTURE_ENV = 0x2300,
	GL_NEAREST = 0x2600,
	GL_LINEAR = 0x2601,
	GL_NEAREST_MIPMAP_NEAREST = 0x2700,
	GL_LINEAR_MIPMAP_NEAREST = 0x2701,
	GL_NEAREST_MIPMAP_LINEAR = 0x2702,
	GL_LINEAR_MIPMAP_LINEAR = 0x2703,
	GL_TEXTURE_MAG_FILTER = 0x2800,
	GL_TEXTURE_MIN_FILTER = 0x2801,
	GL_TEXTURE_WRAP_S = 0x2802,
	GL_TEXTURE_WRAP_T = 0x2803,
	GL_GENERATE_MIPMAP = 0x8191,
	GL_TEXTURE0 = 0x84C0,
	GL_TEXTURE1 = 0x84C1,
	GL_TEXTURE2 = 0x84C2,
	GL_TEXTURE3 = 0x84C3,
	GL_TEXTURE4 = 0x84C4,
	GL_TEXTURE5 = 0x84C5,
	GL_TEXTURE6 = 0x84C6,
	GL_TEXTURE7 = 0x84C7,
	GL_TEXTURE8 = 0x84C8,
	GL_TEXTURE9 = 0x84C9,
	GL_TEXTURE10 = 0x84CA,
	GL_TEXTURE11 = 0x84CB,
	GL_TEXTURE12 = 0x84CC,
	GL_TEXTURE13 = 0x84CD,
	GL_TEXTURE14 = 0x84CE,
	GL_TEXTURE15 = 0x84CF,
	GL_TEXTURE16 = 0x84D0,
	GL_TEXTURE17 = 0x84D1,
	GL_TEXTURE18 = 0x84D2,
	GL_TEXTURE19 = 0x84D3,
	GL_TEXTURE20 = 0x84D4,
	GL_TEXTURE21 = 0x84D5,
	GL_TEXTURE22 = 0x84D6,
	GL_TEXTURE23 = 0x84D7,
	GL_TEXTURE24 = 0x84D8,
	GL_TEXTURE25 = 0x84D9,
	GL_TEXTURE26 = 0x84DA,
	GL_TEXTURE27 = 0x84DB,
	GL_TEXTURE28 = 0x84DC,
	GL_TEXTURE29 = 0x84DD,
	GL_TEXTURE30 = 0x84DE,
	GL_TEXTURE31 = 0x84DF,
	GL_ACTIVE_TEXTURE = 0x84E0,
	GL_CLIENT_ACTIVE_TEXTURE = 0x84E1,
	GL_REPEAT = 0x2901,
	GL_CLAMP_TO_EDGE = 0x812F,
	GL_LIGHT0 = 0x4000,
	GL_LIGHT1 = 0x4001,
	GL_LIGHT2 = 0x4002,
	GL_LIGHT3 = 0x4003,
	GL_LIGHT4 = 0x4004,
	GL_LIGHT5 = 0x4005,
	GL_LIGHT6 = 0x4006,
	GL_LIGHT7 = 0x4007,
	GL_ARRAY_BUFFER = 0x8892,
	GL_ELEMENT_ARRAY_BUFFER = 0x8893,
	GL_ARRAY_BUFFER_BINDING = 0x8894,
	GL_ELEMENT_ARRAY_BUFFER_BINDING = 0x8895,
	GL_VERTEX_ARRAY_BUFFER_BINDING = 0x8896,
	GL_NORMAL_ARRAY_BUFFER_BINDING = 0x8897,
	GL_COLOR_ARRAY_BUFFER_BINDING = 0x8898,
	GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 0x889A,
	GL_STATIC_DRAW = 0x88E4,
	GL_DYNAMIC_DRAW = 0x88E8,
	GL_BUFFER_SIZE = 0x8764,
	GL_BUFFER_USAGE = 0x8765,
	GL_SUBTRACT = 0x84E7,
	GL_COMBINE = 0x8570,
	GL_COMBINE_RGB = 0x8571,
	GL_COMBINE_ALPHA = 0x8572,
	GL_RGB_SCALE = 0x8573,
	GL_ADD_SIGNED = 0x8574,
	GL_INTERPOLATE = 0x8575,
	GL_CONSTANT = 0x8576,
	GL_PRIMARY_COLOR = 0x8577,
	GL_PREVIOUS = 0x8578,
	GL_OPERAND0_RGB = 0x8590,
	GL_OPERAND1_RGB = 0x8591,
	GL_OPERAND2_RGB = 0x8592,
	GL_OPERAND0_ALPHA = 0x8598,
	GL_OPERAND1_ALPHA = 0x8599,
	GL_OPERAND2_ALPHA = 0x859A,
	GL_ALPHA_SCALE = 0x0D1C,
	GL_SRC0_RGB = 0x8580,
	GL_SRC1_RGB = 0x8581,
	GL_SRC2_RGB = 0x8582,
	GL_SRC0_ALPHA = 0x8588,
	GL_SRC1_ALPHA = 0x8589,
	GL_SRC2_ALPHA = 0x858A,
	GL_DOT3_RGB = 0x86AE,
	GL_DOT3_RGBA = 0x86AF,
	GL_IMPLEMENTATION_COLOR_READ_TYPE_OES = 0x8B9A,
	GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES = 0x8B9B,
	GL_PALETTE4_RGB8_OES = 0x8B90,
	GL_PALETTE4_RGBA8_OES = 0x8B91,
	GL_PALETTE4_R5_G6_B5_OES = 0x8B92,
	GL_PALETTE4_RGBA4_OES = 0x8B93,
	GL_PALETTE4_RGB5_A1_OES = 0x8B94,
	GL_PALETTE8_RGB8_OES = 0x8B95,
	GL_PALETTE8_RGBA8_OES = 0x8B96,
	GL_PALETTE8_R5_G6_B5_OES = 0x8B97,
	GL_PALETTE8_RGBA4_OES = 0x8B98,
	GL_PALETTE8_RGB5_A1_OES = 0x8B99,
	GL_POINT_SIZE_ARRAY_OES = 0x8B9C,
	GL_POINT_SIZE_ARRAY_TYPE_OES = 0x898A,
	GL_POINT_SIZE_ARRAY_STRIDE_OES = 0x898B,
	GL_POINT_SIZE_ARRAY_POINTER_OES = 0x898C,
	GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES = 0x8B9F,
	GL_POINT_SPRITE_OES = 0x8861,
	GL_COORD_REPLACE_OES = 0x8862,
	GL_OES_read_format = 1,
	GL_OES_compressed_paletted_texture = 1,
	GL_OES_point_size_array = 1,
	GL_OES_point_sprite = 1,
};
 

      typedef void             GLvoid;
      typedef char             GLchar;
      typedef unsigned int     GLenum;
      typedef unsigned char    GLboolean;
      typedef unsigned int     GLbitfield;
      typedef int8_t           GLbyte;
      typedef short            GLshort;
      typedef int              GLint;
      typedef int              GLsizei;
      typedef uint8_t          GLubyte;
      typedef unsigned short   GLushort;
      typedef unsigned int     GLuint;
      typedef float            GLfloat;
      typedef float            GLclampf;
      typedef float            GLclampx;
      typedef int32_t          GLfixed;
      typedef intptr_t         GLintptr;
      typedef size_t           GLsizeiptr;
 
/* Available only in Common profile */
 void  glAlphaFunc (GLenum func, GLclampf ref);
 void  glClearColor (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
 void  glClearDepthf (GLclampf depth);
 void  glClipPlanef (GLenum plane, const GLfloat *equation);
 void  glColor4f (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
 void  glDepthRangef (GLclampf zNear, GLclampf zFar);
 void  glFogf (GLenum pname, GLfloat param);
 void  glFogfv (GLenum pname, const GLfloat *params);
 void  glFrustumf (GLfloat left, GLfloat right, GLfloat bottom, GLfloat top, GLfloat zNear, GLfloat zFar);
 void  glGetClipPlanef (GLenum pname, GLfloat eqn[4]);
 void  glGetFloatv (GLenum pname, GLfloat *params);
 void  glGetLightfv (GLenum light, GLenum pname, GLfloat *params);
 void  glGetMaterialfv (GLenum face, GLenum pname, GLfloat *params);
 void  glGetTexEnvfv (GLenum env, GLenum pname, GLfloat *params);
 void  glGetTexParameterfv (GLenum target, GLenum pname, GLfloat *params);
 void  glLightModelf (GLenum pname, GLfloat param);
 void  glLightModelfv (GLenum pname, const GLfloat *params);
 void  glLightf (GLenum light, GLenum pname, GLfloat param);
 void  glLightfv (GLenum light, GLenum pname, const GLfloat *params);
 void  glLineWidth (GLfloat width);
 void  glLoadMatrixf (const GLfloat *m);
 void  glMaterialf (GLenum face, GLenum pname, GLfloat param);
 void  glMaterialfv (GLenum face, GLenum pname, const GLfloat *params);
 void  glMultMatrixf (const GLfloat *m);
 void  glMultiTexCoord4f (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
 void  glNormal3f (GLfloat nx, GLfloat ny, GLfloat nz);
 void  glOrthof (GLfloat left, GLfloat right, GLfloat bottom, GLfloat top, GLfloat zNear, GLfloat zFar);
 void  glPointParameterf (GLenum pname, GLfloat param);
 void  glPointParameterfv (GLenum pname, const GLfloat *params);
 void  glPointSize (GLfloat size);
 void  glPolygonOffset (GLfloat factor, GLfloat units);
 void  glRotatef (GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
 void  glScalef (GLfloat x, GLfloat y, GLfloat z);
 void  glTexEnvf (GLenum target, GLenum pname, GLfloat param);
 void  glTexEnvfv (GLenum target, GLenum pname, const GLfloat *params);
 void  glTexParameterf (GLenum target, GLenum pname, GLfloat param);
 void  glTexParameterfv (GLenum target, GLenum pname, const GLfloat *params);
 void  glTranslatef (GLfloat x, GLfloat y, GLfloat z);

/* Available in both Common and Common-Lite profiles */
 void  glActiveTexture (GLenum texture);
 void  glAlphaFuncx (GLenum func, GLclampx ref);
 void  glBindBuffer (GLenum target, GLuint buffer);
 void  glBindTexture (GLenum target, GLuint texture);
 void  glBlendFunc (GLenum sfactor, GLenum dfactor);
 void  glBufferData (GLenum target, GLsizeiptr size, const GLvoid *data, GLenum usage);
 void  glBufferSubData (GLenum target, GLintptr offset, GLsizeiptr size, const GLvoid *data);
 void  glClear (GLbitfield mask);
 void  glClearColorx (GLclampx red, GLclampx green, GLclampx blue, GLclampx alpha);
 void  glClearDepthx (GLclampx depth);
 void  glClearStencil (GLint s);
 void  glClientActiveTexture (GLenum texture);
 void  glClipPlanex (GLenum plane, const GLfixed *equation);
 void  glColor4ub (GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
 void  glColor4x (GLfixed red, GLfixed green, GLfixed blue, GLfixed alpha);
 void  glColorMask (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
 void  glColorPointer (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
 void  glCompressedTexImage2D (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *data);
 void  glCompressedTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *data);
 void  glCopyTexImage2D (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
 void  glCopyTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
 void  glCullFace (GLenum mode);
 void  glDeleteBuffers (GLsizei n, const GLuint *buffers);
 void  glDeleteTextures (GLsizei n, const GLuint *textures);
 void  glDepthFunc (GLenum func);
 void  glDepthMask (GLboolean flag);
 void  glDepthRangex (GLclampx zNear, GLclampx zFar);
 void  glDisable (GLenum cap);
 void  glDisableClientState (GLenum array);
 void  glDrawArrays (GLenum mode, GLint first, GLsizei count);
 void  glDrawElements (GLenum mode, GLsizei count, GLenum type, const GLvoid *indices);
 void  glEnable (GLenum cap);
 void  glEnableClientState (GLenum array);
 void  glFinish (void);
 void  glFlush (void);
 void  glFogx (GLenum pname, GLfixed param);
 void  glFogxv (GLenum pname, const GLfixed *params);
 void  glFrontFace (GLenum mode);
 void  glFrustumx (GLfixed left, GLfixed right, GLfixed bottom, GLfixed top, GLfixed zNear, GLfixed zFar);
 void  glGetBooleanv (GLenum pname, GLboolean *params);
 void  glGetBufferParameteriv (GLenum target, GLenum pname, GLint *params);
 void  glGetClipPlanex (GLenum pname, GLfixed eqn[4]);
 void  glGenBuffers (GLsizei n, GLuint *buffers);
 void  glGenTextures (GLsizei n, GLuint *textures);
 GLenum  glGetError (void);
 void  glGetFixedv (GLenum pname, GLfixed *params);
 void  glGetIntegerv (GLenum pname, GLint *params);
 void  glGetLightxv (GLenum light, GLenum pname, GLfixed *params);
 void  glGetMaterialxv (GLenum face, GLenum pname, GLfixed *params);
 void  glGetPointerv (GLenum pname, GLvoid **params);
 const GLubyte *  glGetString (GLenum name);
 void  glGetTexEnviv (GLenum env, GLenum pname, GLint *params);
 void  glGetTexEnvxv (GLenum env, GLenum pname, GLfixed *params);
 void  glGetTexParameteriv (GLenum target, GLenum pname, GLint *params);
 void  glGetTexParameterxv (GLenum target, GLenum pname, GLfixed *params);
 void  glHint (GLenum target, GLenum mode);
 GLboolean  glIsBuffer (GLuint buffer);
 GLboolean  glIsEnabled (GLenum cap);
 GLboolean  glIsTexture (GLuint texture);
 void  glLightModelx (GLenum pname, GLfixed param);
 void  glLightModelxv (GLenum pname, const GLfixed *params);
 void  glLightx (GLenum light, GLenum pname, GLfixed param);
 void  glLightxv (GLenum light, GLenum pname, const GLfixed *params);
 void  glLineWidthx (GLfixed width);
 void  glLoadIdentity (void);
 void  glLoadMatrixx (const GLfixed *m);
 void  glLogicOp (GLenum opcode);
 void  glMaterialx (GLenum face, GLenum pname, GLfixed param);
 void  glMaterialxv (GLenum face, GLenum pname, const GLfixed *params);
 void  glMatrixMode (GLenum mode);
 void  glMultMatrixx (const GLfixed *m);
 void  glMultiTexCoord4x (GLenum target, GLfixed s, GLfixed t, GLfixed r, GLfixed q);
 void  glNormal3x (GLfixed nx, GLfixed ny, GLfixed nz);
 void  glNormalPointer (GLenum type, GLsizei stride, const GLvoid *pointer);
 void  glOrthox (GLfixed left, GLfixed right, GLfixed bottom, GLfixed top, GLfixed zNear, GLfixed zFar);
 void  glPixelStorei (GLenum pname, GLint param);
 void  glPointParameterx (GLenum pname, GLfixed param);
 void  glPointParameterxv (GLenum pname, const GLfixed *params);
 void  glPointSizex (GLfixed size);
 void  glPolygonOffsetx (GLfixed factor, GLfixed units);
 void  glPopMatrix (void);
 void  glPushMatrix (void);
 void  glReadPixels (GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels);
 void  glRotatex (GLfixed angle, GLfixed x, GLfixed y, GLfixed z);
 void  glSampleCoverage (GLclampf value, GLboolean invert);
 void  glSampleCoveragex (GLclampx value, GLboolean invert);
 void  glScalex (GLfixed x, GLfixed y, GLfixed z);
 void  glScissor (GLint x, GLint y, GLsizei width, GLsizei height);
 void  glShadeModel (GLenum mode);
 void  glStencilFunc (GLenum func, GLint ref, GLuint mask);
 void  glStencilMask (GLuint mask);
 void  glStencilOp (GLenum fail, GLenum zfail, GLenum zpass);
 void  glTexCoordPointer (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
 void  glTexEnvi (GLenum target, GLenum pname, GLint param);
 void  glTexEnvx (GLenum target, GLenum pname, GLfixed param);
 void  glTexEnviv (GLenum target, GLenum pname, const GLint *params);
 void  glTexEnvxv (GLenum target, GLenum pname, const GLfixed *params);
 void  glTexImage2D (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
 void  glTexParameteri (GLenum target, GLenum pname, GLint param);
 void  glTexParameterx (GLenum target, GLenum pname, GLfixed param);
 void  glTexParameteriv (GLenum target, GLenum pname, const GLint *params);
 void  glTexParameterxv (GLenum target, GLenum pname, const GLfixed *params);
 void  glTexSubImage2D (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels);
 void  glTranslatex (GLfixed x, GLfixed y, GLfixed z);
 void  glVertexPointer (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
 void  glViewport (GLint x, GLint y, GLsizei width, GLsizei height);


]]

return gles1 
