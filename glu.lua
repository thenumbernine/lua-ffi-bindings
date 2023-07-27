local ffi = require 'ffi'
ffi.cdef[[

enum { GLU_EXT_object_space_tess = 1 };
enum { GLU_EXT_nurbs_tessellator = 1 };

enum { GLU_FALSE = 0 };
enum { GLU_TRUE = 1 };

enum { GLU_VERSION_1_1 = 1 };
enum { GLU_VERSION_1_2 = 1 };
enum { GLU_VERSION_1_3 = 1 };

enum { GLU_VERSION = 100800 };
enum { GLU_EXTENSIONS = 100801 };

enum { GLU_INVALID_ENUM = 100900 };
enum { GLU_INVALID_VALUE = 100901 };
enum { GLU_OUT_OF_MEMORY = 100902 };
enum { GLU_INCOMPATIBLE_GL_VERSION = 100903 };
enum { GLU_INVALID_OPERATION = 100904 };

enum { GLU_OUTLINE_POLYGON = 100240 };
enum { GLU_OUTLINE_PATCH = 100241 };

enum { GLU_NURBS_ERROR = 100103 };
enum { GLU_ERROR = 100103 };
enum { GLU_NURBS_BEGIN = 100164 };
enum { GLU_NURBS_BEGIN_EXT = 100164 };
enum { GLU_NURBS_VERTEX = 100165 };
enum { GLU_NURBS_VERTEX_EXT = 100165 };
enum { GLU_NURBS_NORMAL = 100166 };
enum { GLU_NURBS_NORMAL_EXT = 100166 };
enum { GLU_NURBS_COLOR = 100167 };
enum { GLU_NURBS_COLOR_EXT = 100167 };
enum { GLU_NURBS_TEXTURE_COORD = 100168 };
enum { GLU_NURBS_TEX_COORD_EXT = 100168 };
enum { GLU_NURBS_END = 100169 };
enum { GLU_NURBS_END_EXT = 100169 };
enum { GLU_NURBS_BEGIN_DATA = 100170 };
enum { GLU_NURBS_BEGIN_DATA_EXT = 100170 };
enum { GLU_NURBS_VERTEX_DATA = 100171 };
enum { GLU_NURBS_VERTEX_DATA_EXT = 100171 };
enum { GLU_NURBS_NORMAL_DATA = 100172 };
enum { GLU_NURBS_NORMAL_DATA_EXT = 100172 };
enum { GLU_NURBS_COLOR_DATA = 100173 };
enum { GLU_NURBS_COLOR_DATA_EXT = 100173 };
enum { GLU_NURBS_TEXTURE_COORD_DATA = 100174 };
enum { GLU_NURBS_TEX_COORD_DATA_EXT = 100174 };
enum { GLU_NURBS_END_DATA = 100175 };
enum { GLU_NURBS_END_DATA_EXT = 100175 };

enum { GLU_NURBS_ERROR1 = 100251 };
enum { GLU_NURBS_ERROR2 = 100252 };
enum { GLU_NURBS_ERROR3 = 100253 };
enum { GLU_NURBS_ERROR4 = 100254 };
enum { GLU_NURBS_ERROR5 = 100255 };
enum { GLU_NURBS_ERROR6 = 100256 };
enum { GLU_NURBS_ERROR7 = 100257 };
enum { GLU_NURBS_ERROR8 = 100258 };
enum { GLU_NURBS_ERROR9 = 100259 };
enum { GLU_NURBS_ERROR10 = 100260 };
enum { GLU_NURBS_ERROR11 = 100261 };
enum { GLU_NURBS_ERROR12 = 100262 };
enum { GLU_NURBS_ERROR13 = 100263 };
enum { GLU_NURBS_ERROR14 = 100264 };
enum { GLU_NURBS_ERROR15 = 100265 };
enum { GLU_NURBS_ERROR16 = 100266 };
enum { GLU_NURBS_ERROR17 = 100267 };
enum { GLU_NURBS_ERROR18 = 100268 };
enum { GLU_NURBS_ERROR19 = 100269 };
enum { GLU_NURBS_ERROR20 = 100270 };
enum { GLU_NURBS_ERROR21 = 100271 };
enum { GLU_NURBS_ERROR22 = 100272 };
enum { GLU_NURBS_ERROR23 = 100273 };
enum { GLU_NURBS_ERROR24 = 100274 };
enum { GLU_NURBS_ERROR25 = 100275 };
enum { GLU_NURBS_ERROR26 = 100276 };
enum { GLU_NURBS_ERROR27 = 100277 };
enum { GLU_NURBS_ERROR28 = 100278 };
enum { GLU_NURBS_ERROR29 = 100279 };
enum { GLU_NURBS_ERROR30 = 100280 };
enum { GLU_NURBS_ERROR31 = 100281 };
enum { GLU_NURBS_ERROR32 = 100282 };
enum { GLU_NURBS_ERROR33 = 100283 };
enum { GLU_NURBS_ERROR34 = 100284 };
enum { GLU_NURBS_ERROR35 = 100285 };
enum { GLU_NURBS_ERROR36 = 100286 };
enum { GLU_NURBS_ERROR37 = 100287 };

enum { GLU_AUTO_LOAD_MATRIX = 100200 };
enum { GLU_CULLING = 100201 };
enum { GLU_SAMPLING_TOLERANCE = 100203 };
enum { GLU_DISPLAY_MODE = 100204 };
enum { GLU_PARAMETRIC_TOLERANCE = 100202 };
enum { GLU_SAMPLING_METHOD = 100205 };
enum { GLU_U_STEP = 100206 };
enum { GLU_V_STEP = 100207 };
enum { GLU_NURBS_MODE = 100160 };
enum { GLU_NURBS_MODE_EXT = 100160 };
enum { GLU_NURBS_TESSELLATOR = 100161 };
enum { GLU_NURBS_TESSELLATOR_EXT = 100161 };
enum { GLU_NURBS_RENDERER = 100162 };
enum { GLU_NURBS_RENDERER_EXT = 100162 };

enum { GLU_OBJECT_PARAMETRIC_ERROR = 100208 };
enum { GLU_OBJECT_PARAMETRIC_ERROR_EXT = 100208 };
enum { GLU_OBJECT_PATH_LENGTH = 100209 };
enum { GLU_OBJECT_PATH_LENGTH_EXT = 100209 };
enum { GLU_PATH_LENGTH = 100215 };
enum { GLU_PARAMETRIC_ERROR = 100216 };
enum { GLU_DOMAIN_DISTANCE = 100217 };

enum { GLU_MAP1_TRIM_2 = 100210 };
enum { GLU_MAP1_TRIM_3 = 100211 };

enum { GLU_POINT = 100010 };
enum { GLU_LINE = 100011 };
enum { GLU_FILL = 100012 };
enum { GLU_SILHOUETTE = 100013 };


enum { GLU_SMOOTH = 100000 };
enum { GLU_FLAT = 100001 };
enum { GLU_NONE = 100002 };

enum { GLU_OUTSIDE = 100020 };
enum { GLU_INSIDE = 100021 };

enum { GLU_TESS_BEGIN = 100100 };
enum { GLU_BEGIN = 100100 };
enum { GLU_TESS_VERTEX = 100101 };
enum { GLU_VERTEX = 100101 };
enum { GLU_TESS_END = 100102 };
enum { GLU_END = 100102 };
enum { GLU_TESS_ERROR = 100103 };
enum { GLU_TESS_EDGE_FLAG = 100104 };
enum { GLU_EDGE_FLAG = 100104 };
enum { GLU_TESS_COMBINE = 100105 };
enum { GLU_TESS_BEGIN_DATA = 100106 };
enum { GLU_TESS_VERTEX_DATA = 100107 };
enum { GLU_TESS_END_DATA = 100108 };
enum { GLU_TESS_ERROR_DATA = 100109 };
enum { GLU_TESS_EDGE_FLAG_DATA = 100110 };
enum { GLU_TESS_COMBINE_DATA = 100111 };

enum { GLU_CW = 100120 };
enum { GLU_CCW = 100121 };
enum { GLU_INTERIOR = 100122 };
enum { GLU_EXTERIOR = 100123 };
enum { GLU_UNKNOWN = 100124 };

enum { GLU_TESS_WINDING_RULE = 100140 };
enum { GLU_TESS_BOUNDARY_ONLY = 100141 };
enum { GLU_TESS_TOLERANCE = 100142 };

enum { GLU_TESS_ERROR1 = 100151 };
enum { GLU_TESS_ERROR2 = 100152 };
enum { GLU_TESS_ERROR3 = 100153 };
enum { GLU_TESS_ERROR4 = 100154 };
enum { GLU_TESS_ERROR5 = 100155 };
enum { GLU_TESS_ERROR6 = 100156 };
enum { GLU_TESS_ERROR7 = 100157 };
enum { GLU_TESS_ERROR8 = 100158 };
enum { GLU_TESS_MISSING_BEGIN_POLYGON = 100151 };
enum { GLU_TESS_MISSING_BEGIN_CONTOUR = 100152 };
enum { GLU_TESS_MISSING_END_POLYGON = 100153 };
enum { GLU_TESS_MISSING_END_CONTOUR = 100154 };
enum { GLU_TESS_COORD_TOO_LARGE = 100155 };
enum { GLU_TESS_NEED_COMBINE_CALLBACK = 100156 };

enum { GLU_TESS_WINDING_ODD = 100130 };
enum { GLU_TESS_WINDING_NONZERO = 100131 };
enum { GLU_TESS_WINDING_POSITIVE = 100132 };
enum { GLU_TESS_WINDING_NEGATIVE = 100133 };
enum { GLU_TESS_WINDING_ABS_GEQ_TWO = 100134 };



typedef struct GLUnurbs      GLUnurbs;
typedef struct GLUquadric    GLUquadric;
typedef struct GLUtesselator GLUtesselator;
typedef struct GLUnurbs      GLUnurbsObj;
typedef struct GLUquadric    GLUquadricObj;
typedef struct GLUtesselator GLUtesselatorObj;
typedef struct GLUtesselator GLUtriangulatorObj;
void           gluBeginCurve (GLUnurbs* nurb);
void           gluBeginPolygon (GLUtesselator* tess);
void           gluBeginSurface (GLUnurbs* nurb);
void           gluBeginTrim (GLUnurbs* nurb);
GLint          gluBuild1DMipmapLevels (GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, GLint level, GLint base, GLint max, const void *data);
GLint          gluBuild1DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLenum format, GLenum type, const void *data);
GLint          gluBuild2DMipmapLevels (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, GLint level, GLint base, GLint max, const void *data);
GLint          gluBuild2DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *data);
GLint          gluBuild3DMipmapLevels (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, GLint level, GLint base, GLint max, const void *data);
GLint          gluBuild3DMipmaps (GLenum target, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *data);
GLboolean      gluCheckExtension (const GLubyte *extName, const GLubyte *extString);
void           gluCylinder (GLUquadric* quad, GLdouble base, GLdouble top, GLdouble height, GLint slices, GLint stacks);
void           gluDeleteNurbsRenderer (GLUnurbs* nurb);
void           gluDeleteQuadric (GLUquadric* quad);
void           gluDeleteTess (GLUtesselator* tess);
void           gluDisk (GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops);
void           gluEndCurve (GLUnurbs* nurb);
void           gluEndPolygon (GLUtesselator* tess);
void           gluEndSurface (GLUnurbs* nurb);
void           gluEndTrim (GLUnurbs* nurb);
const GLubyte* gluErrorString (GLenum error);
void           gluGetNurbsProperty (GLUnurbs* nurb, GLenum property, GLfloat* data);
const GLubyte* gluGetString (GLenum name);
void           gluGetTessProperty (GLUtesselator* tess, GLenum which, GLdouble* data);
void           gluLoadSamplingMatrices (GLUnurbs* nurb, const GLfloat *model, const GLfloat *perspective, const GLint *view);
void           gluLookAt (GLdouble eyeX, GLdouble eyeY, GLdouble eyeZ, GLdouble centerX, GLdouble centerY, GLdouble centerZ, GLdouble upX, GLdouble upY, GLdouble upZ);
GLUnurbs*      gluNewNurbsRenderer (void);
GLUquadric*    gluNewQuadric (void);
GLUtesselator* gluNewTess (void);
void           gluNextContour (GLUtesselator* tess, GLenum type);
void           gluNurbsCallback (GLUnurbs* nurb, GLenum which, GLvoid (*CallBackFunc)());
void           gluNurbsCallbackData (GLUnurbs* nurb, GLvoid* userData);
void           gluNurbsCallbackDataEXT (GLUnurbs* nurb, GLvoid* userData);
void           gluNurbsCurve (GLUnurbs* nurb, GLint knotCount, GLfloat *knots, GLint stride, GLfloat *control, GLint order, GLenum type);
void           gluNurbsProperty (GLUnurbs* nurb, GLenum property, GLfloat value);
void           gluNurbsSurface (GLUnurbs* nurb, GLint sKnotCount, GLfloat* sKnots, GLint tKnotCount, GLfloat* tKnots, GLint sStride, GLint tStride, GLfloat* control, GLint sOrder, GLint tOrder, GLenum type);
void           gluOrtho2D (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top);
void           gluPartialDisk (GLUquadric* quad, GLdouble inner, GLdouble outer, GLint slices, GLint loops, GLdouble start, GLdouble sweep);
void           gluPerspective (GLdouble fovy, GLdouble aspect, GLdouble zNear, GLdouble zFar);
void           gluPickMatrix (GLdouble x, GLdouble y, GLdouble delX, GLdouble delY, GLint *viewport);
GLint          gluProject (GLdouble objX, GLdouble objY, GLdouble objZ, const GLdouble *model, const GLdouble *proj, const GLint *view, GLdouble* winX, GLdouble* winY, GLdouble* winZ);
void           gluPwlCurve (GLUnurbs* nurb, GLint count, GLfloat* data, GLint stride, GLenum type);
void           gluQuadricCallback (GLUquadric* quad, GLenum which, GLvoid (*CallBackFunc)());
void           gluQuadricDrawStyle (GLUquadric* quad, GLenum draw);
void           gluQuadricNormals (GLUquadric* quad, GLenum normal);
void           gluQuadricOrientation (GLUquadric* quad, GLenum orientation);
void           gluQuadricTexture (GLUquadric* quad, GLboolean texture);
GLint          gluScaleImage (GLenum format, GLsizei wIn, GLsizei hIn, GLenum typeIn, const void *dataIn, GLsizei wOut, GLsizei hOut, GLenum typeOut, GLvoid* dataOut);
void           gluSphere (GLUquadric* quad, GLdouble radius, GLint slices, GLint stacks);
void           gluTessBeginContour (GLUtesselator* tess);
void           gluTessBeginPolygon (GLUtesselator* tess, GLvoid* data);
void           gluTessCallback (GLUtesselator* tess, GLenum which, GLvoid (*CallBackFunc)());
void           gluTessEndContour (GLUtesselator* tess);
void           gluTessEndPolygon (GLUtesselator* tess);
void           gluTessNormal (GLUtesselator* tess, GLdouble valueX, GLdouble valueY, GLdouble valueZ);
void           gluTessProperty (GLUtesselator* tess, GLenum which, GLdouble data);
void           gluTessVertex (GLUtesselator* tess, GLdouble *location, GLvoid* data);
GLint          gluUnProject (GLdouble winX, GLdouble winY, GLdouble winZ, const GLdouble *model, const GLdouble *proj, const GLint *view, GLdouble* objX, GLdouble* objY, GLdouble* objZ);
GLint          gluUnProject4 (GLdouble winX, GLdouble winY, GLdouble winZ, GLdouble clipW, const GLdouble *model, const GLdouble *proj, const GLint *view, GLdouble nearPlane, GLdouble farPlane, GLdouble* objX, GLdouble* objY, GLdouble* objZ, GLdouble* objW);
]]
return require 'ffi.load' 'GLU'
