local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Users/Chris/include/lua.h */
enum { lua_h = 1 };
/* ++ BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/stdarg.h */
]] require 'ffi.req' 'c.stdarg' ffi.cdef[[
/* ++ END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/stdarg.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/stddef.h */
/* ++ BEGIN C:/Users/Chris/include/luaconf.h */
enum { luaconf_h = 1 };
/* +++ BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* +++ END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/limits.h */
enum { LUA_USE_WINDOWS = 1 };
enum { LUA_DL_DLL = 1 };
enum { LUA_USE_C89 = 1 };
enum { LUAI_BITSINT = 32 };
enum { LUA_INT_INT = 1 };
enum { LUA_INT_LONG = 2 };
enum { LUA_INT_LONGLONG = 3 };
enum { LUA_FLOAT_FLOAT = 1 };
enum { LUA_FLOAT_DOUBLE = 2 };
enum { LUA_FLOAT_LONGDOUBLE = 3 };
enum { LUA_INT_TYPE = 3 };
enum { LUA_FLOAT_TYPE = 2 };
/* #define LUA_PATH_SEP            ";" ### string, not number "\";\"" */
/* #define LUA_PATH_MARK           "?" ### string, not number "\"?\"" */
/* #define LUA_EXEC_DIR            "!" ### string, not number "\"!\"" */
/* #define LUA_VDIR	LUA_VERSION_MAJOR "." LUA_VERSION_MINOR ### string, not number "LUA_VERSION_MAJOR \".\" LUA_VERSION_MINOR" */
/* #define LUA_LDIR	"!\\lua\\" ### string, not number "\"!\\\\lua\\\\\"" */
/* #define LUA_CDIR	"!\\" ### string, not number "\"!\\\\\"" */
/* #define LUA_SHRDIR	"!\\..\\share\\lua\\" LUA_VDIR "\\" ### string, not number "\"!\\\\..\\\\share\\\\lua\\\\\" LUA_VDIR \"\\\\\"" */
/* #define LUA_PATH_DEFAULT   		LUA_LDIR"?.lua;"  LUA_LDIR"?\\init.lua;"  		LUA_CDIR"?.lua;"  LUA_CDIR"?\\init.lua;"  		LUA_SHRDIR"?.lua;" LUA_SHRDIR"?\\init.lua;"  		".\\?.lua;" ".\\?\\init.lua" ### string, not number "LUA_LDIR\"?.lua;\"  LUA_LDIR\"?\\\\init.lua;\"  \9\9LUA_CDIR\"?.lua;\"  LUA_CDIR\"?\\\\init.lua;\"  \9\9LUA_SHRDIR\"?.lua;\" LUA_SHRDIR\"?\\\\init.lua;\"  \9\9\".\\\\?.lua;\" \".\\\\?\\\\init.lua\"" */
/* #define LUA_CPATH_DEFAULT  		LUA_CDIR"?.dll;"  		LUA_CDIR"..\\lib\\lua\\" LUA_VDIR "\\?.dll;"  		LUA_CDIR"loadall.dll;" ".\\?.dll" ### string, not number "LUA_CDIR\"?.dll;\"  \9\9LUA_CDIR\"..\\\\lib\\\\lua\\\\\" LUA_VDIR \"\\\\?.dll;\"  \9\9LUA_CDIR\"loadall.dll;\" \".\\\\?.dll\"" */
/* #define LUA_DIRSEP	"\\" ### string, not number "\"\\\\\"" */
enum { LUA_API = 0 };
enum { LUALIB_API = 0 };
enum { LUAMOD_API = 0 };
enum { LUAI_FUNC = 0 };
enum { LUAI_DDEC = 0 };
enum { LUAI_DDEF = 1 };
enum { LUA_NUMBER = 0 };
enum { LUAI_UACNUMBER = 0 };
/* #define LUA_NUMBER_FRMLEN	"" ### string, not number "\"\"" */
/* #define LUA_NUMBER_FMT		"%.14g" ### string, not number "\"%.14g\"" */
/* #define LUA_INTEGER_FMT		"%" LUA_INTEGER_FRMLEN "d" ### string, not number "\"%\" LUA_INTEGER_FRMLEN \"d\"" */
enum { LUAI_UACINT = 0 };
/* #define LUA_UNSIGNED		unsigned LUAI_UACINT ### string, not number "unsigned LUAI_UACINT" */
/* #define LUA_INTEGER		long long ### string, not number "long long" */
/* #define LUA_INTEGER_FRMLEN	"ll" ### string, not number "\"ll\"" */
/* #define LUA_MAXINTEGER		LLONG_MAX ### string, not number "LLONG_MAX" */
/* #define LUA_MININTEGER		LLONG_MIN ### string, not number "LLONG_MIN" */
enum { LUA_KCONTEXT = 0 };
enum { LUAI_MAXSTACK = 1000000 };
/* #define LUA_EXTRASPACE		(sizeof(void *)) ### string, not number "(sizeof(void *))" */
enum { LUA_IDSIZE = 60 };
/* #define LUAL_BUFFERSIZE   ((int)(0x80 * sizeof(void*) * sizeof(lua_Integer))) ### string, not number "((int)(0x80 * sizeof(void*) * sizeof(lua_Integer)))" */
/* #define LUA_QS		LUA_QL("%s") ### string, not number "LUA_QL(\"%s\")" */
/* ++ END   C:/Users/Chris/include/luaconf.h */
/* #define LUA_VERSION_MAJOR	"5" ### string, not number "\"5\"" */
/* #define LUA_VERSION_MINOR	"3" ### string, not number "\"3\"" */
enum { LUA_VERSION_NUM = 503 };
/* #define LUA_VERSION_RELEASE	"6" ### string, not number "\"6\"" */
/* #define LUA_VERSION	"Lua " LUA_VERSION_MAJOR "." LUA_VERSION_MINOR ### string, not number "\"Lua \" LUA_VERSION_MAJOR \".\" LUA_VERSION_MINOR" */
/* #define LUA_RELEASE	LUA_VERSION "." LUA_VERSION_RELEASE ### string, not number "LUA_VERSION \".\" LUA_VERSION_RELEASE" */
/* #define LUA_COPYRIGHT	LUA_RELEASE "  Copyright (C) 1994-2020 Lua.org, PUC-Rio" ### string, not number "LUA_RELEASE \"  Copyright (C) 1994-2020 Lua.org, PUC-Rio\"" */
/* #define LUA_AUTHORS	"R. Ierusalimschy, L. H. de Figueiredo, W. Celes" ### string, not number "\"R. Ierusalimschy, L. H. de Figueiredo, W. Celes\"" */
/* #define LUA_SIGNATURE	"\x1bLua" ### string, not number "\"\\x1bLua\"" */
enum { LUA_MULTRET = -1 };
enum { LUA_REGISTRYINDEX = -1001000 };
enum { LUA_OK = 0 };
enum { LUA_YIELD = 1 };
enum { LUA_ERRRUN = 2 };
enum { LUA_ERRSYNTAX = 3 };
enum { LUA_ERRMEM = 4 };
enum { LUA_ERRGCMM = 5 };
enum { LUA_ERRERR = 6 };
typedef struct lua_State lua_State;
enum { LUA_TNONE = -1 };
enum { LUA_TNIL = 0 };
enum { LUA_TBOOLEAN = 1 };
enum { LUA_TLIGHTUSERDATA = 2 };
enum { LUA_TNUMBER = 3 };
enum { LUA_TSTRING = 4 };
enum { LUA_TTABLE = 5 };
enum { LUA_TFUNCTION = 6 };
enum { LUA_TUSERDATA = 7 };
enum { LUA_TTHREAD = 8 };
enum { LUA_NUMTAGS = 9 };
enum { LUA_MINSTACK = 20 };
enum { LUA_RIDX_MAINTHREAD = 1 };
enum { LUA_RIDX_GLOBALS = 2 };
enum { LUA_RIDX_LAST = 2 };
typedef double lua_Number;
typedef long long lua_Integer;
typedef unsigned long long lua_Unsigned;
typedef ptrdiff_t lua_KContext;
typedef int (*lua_CFunction) (lua_State *L);
typedef int (*lua_KFunction) (lua_State *L, int status, lua_KContext ctx);
typedef const char * (*lua_Reader) (lua_State *L, void *ud, size_t *sz);
typedef int (*lua_Writer) (lua_State *L, const void *p, size_t sz, void *ud);
typedef void * (*lua_Alloc) (void *ud, void *ptr, size_t osize, size_t nsize);
extern const char lua_ident[];
extern lua_State *(lua_newstate) (lua_Alloc f, void *ud);
extern void (lua_close) (lua_State *L);
extern lua_State *(lua_newthread) (lua_State *L);
extern lua_CFunction (lua_atpanic) (lua_State *L, lua_CFunction panicf);
extern const lua_Number *(lua_version) (lua_State *L);
extern int (lua_absindex) (lua_State *L, int idx);
extern int (lua_gettop) (lua_State *L);
extern void (lua_settop) (lua_State *L, int idx);
extern void (lua_pushvalue) (lua_State *L, int idx);
extern void (lua_rotate) (lua_State *L, int idx, int n);
extern void (lua_copy) (lua_State *L, int fromidx, int toidx);
extern int (lua_checkstack) (lua_State *L, int n);
extern void (lua_xmove) (lua_State *from, lua_State *to, int n);
extern int (lua_isnumber) (lua_State *L, int idx);
extern int (lua_isstring) (lua_State *L, int idx);
extern int (lua_iscfunction) (lua_State *L, int idx);
extern int (lua_isinteger) (lua_State *L, int idx);
extern int (lua_isuserdata) (lua_State *L, int idx);
extern int (lua_type) (lua_State *L, int idx);
extern const char *(lua_typename) (lua_State *L, int tp);
extern lua_Number (lua_tonumberx) (lua_State *L, int idx, int *isnum);
extern lua_Integer (lua_tointegerx) (lua_State *L, int idx, int *isnum);
extern int (lua_toboolean) (lua_State *L, int idx);
extern const char *(lua_tolstring) (lua_State *L, int idx, size_t *len);
extern size_t (lua_rawlen) (lua_State *L, int idx);
extern lua_CFunction (lua_tocfunction) (lua_State *L, int idx);
extern void *(lua_touserdata) (lua_State *L, int idx);
extern lua_State *(lua_tothread) (lua_State *L, int idx);
extern const void *(lua_topointer) (lua_State *L, int idx);
enum { LUA_OPADD = 0 };
enum { LUA_OPSUB = 1 };
enum { LUA_OPMUL = 2 };
enum { LUA_OPMOD = 3 };
enum { LUA_OPPOW = 4 };
enum { LUA_OPDIV = 5 };
enum { LUA_OPIDIV = 6 };
enum { LUA_OPBAND = 7 };
enum { LUA_OPBOR = 8 };
enum { LUA_OPBXOR = 9 };
enum { LUA_OPSHL = 10 };
enum { LUA_OPSHR = 11 };
enum { LUA_OPUNM = 12 };
enum { LUA_OPBNOT = 13 };
extern void (lua_arith) (lua_State *L, int op);
enum { LUA_OPEQ = 0 };
enum { LUA_OPLT = 1 };
enum { LUA_OPLE = 2 };
extern int (lua_rawequal) (lua_State *L, int idx1, int idx2);
extern int (lua_compare) (lua_State *L, int idx1, int idx2, int op);
extern void (lua_pushnil) (lua_State *L);
extern void (lua_pushnumber) (lua_State *L, lua_Number n);
extern void (lua_pushinteger) (lua_State *L, lua_Integer n);
extern const char *(lua_pushlstring) (lua_State *L, const char *s, size_t len);
extern const char *(lua_pushstring) (lua_State *L, const char *s);
extern const char *(lua_pushvfstring) (lua_State *L, const char *fmt, va_list argp);
extern const char *(lua_pushfstring) (lua_State *L, const char *fmt, ...);
extern void (lua_pushcclosure) (lua_State *L, lua_CFunction fn, int n);
extern void (lua_pushboolean) (lua_State *L, int b);
extern void (lua_pushlightuserdata) (lua_State *L, void *p);
extern int (lua_pushthread) (lua_State *L);
extern int (lua_getglobal) (lua_State *L, const char *name);
extern int (lua_gettable) (lua_State *L, int idx);
extern int (lua_getfield) (lua_State *L, int idx, const char *k);
extern int (lua_geti) (lua_State *L, int idx, lua_Integer n);
extern int (lua_rawget) (lua_State *L, int idx);
extern int (lua_rawgeti) (lua_State *L, int idx, lua_Integer n);
extern int (lua_rawgetp) (lua_State *L, int idx, const void *p);
extern void (lua_createtable) (lua_State *L, int narr, int nrec);
extern void *(lua_newuserdata) (lua_State *L, size_t sz);
extern int (lua_getmetatable) (lua_State *L, int objindex);
extern int (lua_getuservalue) (lua_State *L, int idx);
extern void (lua_setglobal) (lua_State *L, const char *name);
extern void (lua_settable) (lua_State *L, int idx);
extern void (lua_setfield) (lua_State *L, int idx, const char *k);
extern void (lua_seti) (lua_State *L, int idx, lua_Integer n);
extern void (lua_rawset) (lua_State *L, int idx);
extern void (lua_rawseti) (lua_State *L, int idx, lua_Integer n);
extern void (lua_rawsetp) (lua_State *L, int idx, const void *p);
extern int (lua_setmetatable) (lua_State *L, int objindex);
extern void (lua_setuservalue) (lua_State *L, int idx);
extern void (lua_callk) (lua_State *L, int nargs, int nresults, lua_KContext ctx, lua_KFunction k);
extern int (lua_pcallk) (lua_State *L, int nargs, int nresults, int errfunc, lua_KContext ctx, lua_KFunction k);
extern int (lua_load) (lua_State *L, lua_Reader reader, void *dt, const char *chunkname, const char *mode);
extern int (lua_dump) (lua_State *L, lua_Writer writer, void *data, int strip);
extern int (lua_yieldk) (lua_State *L, int nresults, lua_KContext ctx, lua_KFunction k);
extern int (lua_resume) (lua_State *L, lua_State *from, int narg);
extern int (lua_status) (lua_State *L);
extern int (lua_isyieldable) (lua_State *L);
enum { LUA_GCSTOP = 0 };
enum { LUA_GCRESTART = 1 };
enum { LUA_GCCOLLECT = 2 };
enum { LUA_GCCOUNT = 3 };
enum { LUA_GCCOUNTB = 4 };
enum { LUA_GCSTEP = 5 };
enum { LUA_GCSETPAUSE = 6 };
enum { LUA_GCSETSTEPMUL = 7 };
enum { LUA_GCISRUNNING = 9 };
extern int (lua_gc) (lua_State *L, int what, int data);
extern int (lua_error) (lua_State *L);
extern int (lua_next) (lua_State *L, int idx);
extern void (lua_concat) (lua_State *L, int n);
extern void (lua_len) (lua_State *L, int idx);
extern size_t (lua_stringtonumber) (lua_State *L, const char *s);
extern lua_Alloc (lua_getallocf) (lua_State *L, void **ud);
extern void (lua_setallocf) (lua_State *L, lua_Alloc f, void *ud);
enum { LUA_HOOKCALL = 0 };
enum { LUA_HOOKRET = 1 };
enum { LUA_HOOKLINE = 2 };
enum { LUA_HOOKCOUNT = 3 };
enum { LUA_HOOKTAILCALL = 4 };
enum { LUA_MASKCALL = 1 };
enum { LUA_MASKRET = 2 };
enum { LUA_MASKLINE = 4 };
enum { LUA_MASKCOUNT = 8 };
typedef struct lua_Debug lua_Debug;
typedef void (*lua_Hook) (lua_State *L, lua_Debug *ar);
extern int (lua_getstack) (lua_State *L, int level, lua_Debug *ar);
extern int (lua_getinfo) (lua_State *L, const char *what, lua_Debug *ar);
extern const char *(lua_getlocal) (lua_State *L, const lua_Debug *ar, int n);
extern const char *(lua_setlocal) (lua_State *L, const lua_Debug *ar, int n);
extern const char *(lua_getupvalue) (lua_State *L, int funcindex, int n);
extern const char *(lua_setupvalue) (lua_State *L, int funcindex, int n);
extern void *(lua_upvalueid) (lua_State *L, int fidx, int n);
extern void (lua_upvaluejoin) (lua_State *L, int fidx1, int n1, int fidx2, int n2);
extern void (lua_sethook) (lua_State *L, lua_Hook func, int mask, int count);
extern lua_Hook (lua_gethook) (lua_State *L);
extern int (lua_gethookmask) (lua_State *L);
extern int (lua_gethookcount) (lua_State *L);
struct lua_Debug {
	int event;
	const char *name;
	const char *namewhat;
	const char *what;
	const char *source;
	int currentline;
	int linedefined;
	int lastlinedefined;
	unsigned char nups;
	unsigned char nparams;
	char isvararg;
	char istailcall;
	char short_src[60];
	struct CallInfo *i_ci;
};
/* + END   C:/Users/Chris/include/lua.h */
/* + BEGIN C:/Users/Chris/include/lualib.h */
enum { lualib_h = 1 };
/* ++ BEGIN C:/Users/Chris/include/lua.h */
/* ++ END   C:/Users/Chris/include/lua.h */
/* #define LUA_VERSUFFIX          "_" LUA_VERSION_MAJOR "_" LUA_VERSION_MINOR ### string, not number "\"_\" LUA_VERSION_MAJOR \"_\" LUA_VERSION_MINOR" */
extern int (luaopen_base) (lua_State *L);
/* #define LUA_COLIBNAME	"coroutine" ### string, not number "\"coroutine\"" */
extern int (luaopen_coroutine) (lua_State *L);
/* #define LUA_TABLIBNAME	"table" ### string, not number "\"table\"" */
extern int (luaopen_table) (lua_State *L);
/* #define LUA_IOLIBNAME	"io" ### string, not number "\"io\"" */
extern int (luaopen_io) (lua_State *L);
/* #define LUA_OSLIBNAME	"os" ### string, not number "\"os\"" */
extern int (luaopen_os) (lua_State *L);
/* #define LUA_STRLIBNAME	"string" ### string, not number "\"string\"" */
extern int (luaopen_string) (lua_State *L);
/* #define LUA_UTF8LIBNAME	"utf8" ### string, not number "\"utf8\"" */
extern int (luaopen_utf8) (lua_State *L);
/* #define LUA_BITLIBNAME	"bit32" ### string, not number "\"bit32\"" */
extern int (luaopen_bit32) (lua_State *L);
/* #define LUA_MATHLIBNAME	"math" ### string, not number "\"math\"" */
extern int (luaopen_math) (lua_State *L);
/* #define LUA_DBLIBNAME	"debug" ### string, not number "\"debug\"" */
extern int (luaopen_debug) (lua_State *L);
/* #define LUA_LOADLIBNAME	"package" ### string, not number "\"package\"" */
extern int (luaopen_package) (lua_State *L);
extern void (luaL_openlibs) (lua_State *L);
/* + END   C:/Users/Chris/include/lualib.h */
/* + BEGIN C:/Users/Chris/include/lauxlib.h */
enum { lauxlib_h = 1 };
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/stdio.h */
]] require 'ffi.req' 'c.stdio' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/stdio.h */
/* ++ BEGIN C:/Users/Chris/include/lua.h */
/* ++ END   C:/Users/Chris/include/lua.h */
enum { LUA_ERRFILE = 7 };
/* #define LUA_LOADED_TABLE	"_LOADED" ### string, not number "\"_LOADED\"" */
/* #define LUA_PRELOAD_TABLE	"_PRELOAD" ### string, not number "\"_PRELOAD\"" */
typedef struct luaL_Reg {
	const char *name;
	lua_CFunction func;
} luaL_Reg;
/* #define LUAL_NUMSIZES	(sizeof(lua_Integer)*16 + sizeof(lua_Number)) ### string, not number "(sizeof(lua_Integer)*16 + sizeof(lua_Number))" */
extern void (luaL_checkversion_) (lua_State *L, lua_Number ver, size_t sz);
extern int (luaL_getmetafield) (lua_State *L, int obj, const char *e);
extern int (luaL_callmeta) (lua_State *L, int obj, const char *e);
extern const char *(luaL_tolstring) (lua_State *L, int idx, size_t *len);
extern int (luaL_argerror) (lua_State *L, int arg, const char *extramsg);
extern const char *(luaL_checklstring) (lua_State *L, int arg, size_t *l);
extern const char *(luaL_optlstring) (lua_State *L, int arg, const char *def, size_t *l);
extern lua_Number (luaL_checknumber) (lua_State *L, int arg);
extern lua_Number (luaL_optnumber) (lua_State *L, int arg, lua_Number def);
extern lua_Integer (luaL_checkinteger) (lua_State *L, int arg);
extern lua_Integer (luaL_optinteger) (lua_State *L, int arg, lua_Integer def);
extern void (luaL_checkstack) (lua_State *L, int sz, const char *msg);
extern void (luaL_checktype) (lua_State *L, int arg, int t);
extern void (luaL_checkany) (lua_State *L, int arg);
extern int (luaL_newmetatable) (lua_State *L, const char *tname);
extern void (luaL_setmetatable) (lua_State *L, const char *tname);
extern void *(luaL_testudata) (lua_State *L, int ud, const char *tname);
extern void *(luaL_checkudata) (lua_State *L, int ud, const char *tname);
extern void (luaL_where) (lua_State *L, int lvl);
extern int (luaL_error) (lua_State *L, const char *fmt, ...);
extern int (luaL_checkoption) (lua_State *L, int arg, const char *def, const char *const lst[]);
extern int (luaL_fileresult) (lua_State *L, int stat, const char *fname);
extern int (luaL_execresult) (lua_State *L, int stat);
enum { LUA_NOREF = -2 };
enum { LUA_REFNIL = -1 };
extern int (luaL_ref) (lua_State *L, int t);
extern void (luaL_unref) (lua_State *L, int t, int ref);
extern int (luaL_loadfilex) (lua_State *L, const char *filename, const char *mode);
extern int (luaL_loadbufferx) (lua_State *L, const char *buff, size_t sz, const char *name, const char *mode);
extern int (luaL_loadstring) (lua_State *L, const char *s);
extern lua_State *(luaL_newstate) (void);
extern lua_Integer (luaL_len) (lua_State *L, int idx);
extern const char *(luaL_gsub) (lua_State *L, const char *s, const char *p, const char *r);
extern void (luaL_setfuncs) (lua_State *L, const luaL_Reg *l, int nup);
extern int (luaL_getsubtable) (lua_State *L, int idx, const char *fname);
extern void (luaL_traceback) (lua_State *L, lua_State *L1, const char *msg, int level);
extern void (luaL_requiref) (lua_State *L, const char *modname, lua_CFunction openf, int glb);
typedef struct luaL_Buffer {
	char *b;
	size_t size;
	size_t n;
	lua_State *L;
	char initb[((int)(0x80 * sizeof(void*) * sizeof(lua_Integer)))];
} luaL_Buffer;
extern void (luaL_buffinit) (lua_State *L, luaL_Buffer *B);
extern char *(luaL_prepbuffsize) (luaL_Buffer *B, size_t sz);
extern void (luaL_addlstring) (luaL_Buffer *B, const char *s, size_t l);
extern void (luaL_addstring) (luaL_Buffer *B, const char *s);
extern void (luaL_addvalue) (luaL_Buffer *B);
extern void (luaL_pushresult) (luaL_Buffer *B);
extern void (luaL_pushresultsize) (luaL_Buffer *B, size_t sz);
extern char *(luaL_buffinitsize) (lua_State *L, luaL_Buffer *B, size_t sz);
/* #define LUA_FILEHANDLE          "FILE*" ### string, not number "\"FILE*\"" */
typedef struct luaL_Stream {
	FILE *f;
	lua_CFunction closef;
} luaL_Stream;
/* + END   C:/Users/Chris/include/lauxlib.h */
]]
return require 'ffi.load' 'lua'
