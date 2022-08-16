-- lua 5.3
local ffi = require 'ffi'
local lua
if ffi.os == 'OSX' then
	lua = ffi.load(os.getenv'LUAJIT_LIBPATH' .. '/bin/OSX/liblua.dylib')
elseif ffi.os == 'Windows' then
	lua = ffi.load(os.getenv'LUAJIT_LIBPATH' .. '/bin/Windows/' .. ffi.arch .. '/liblua1.dll')
elseif ffi.os == 'Linux' then
	-- TODO pkg-config --libs lua ?
	lua = ffi.load'lua'
else
	lua = ffi.load(os.getenv'LUAJIT_LIBPATH' .. '/bin/linux/liblua.so')
end
ffi.cdef[[
/* BEGIN /usr/include/lua5.3/lua.h */
enum { lua_h = 1 };
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h */
]] require 'ffi.c.stdarg' ffi.cdef[[
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stdarg.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h */
]] require 'ffi.c.stddef' ffi.cdef[[
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stddef.h */
/* BEGIN /usr/include/lua5.3/luaconf.h */
enum { luaconf_h = 1 };
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/limits.h */
]] require 'ffi.c.limits' ffi.cdef[[
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/limits.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h */
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stddef.h */
enum { LUAI_BITSINT = 32 };
enum { LUA_INT_INT = 1 };
enum { LUA_INT_LONG = 2 };
enum { LUA_INT_LONGLONG = 3 };
enum { LUA_FLOAT_FLOAT = 1 };
enum { LUA_FLOAT_DOUBLE = 2 };
enum { LUA_FLOAT_LONGDOUBLE = 3 };
enum { LUA_INT_TYPE = 3 };
enum { LUA_FLOAT_TYPE = 2 };
/* #define LUA_VDIR	LUA_VERSION_MAJOR "." LUA_VERSION_MINOR ### string, not number "LUA_VERSION_MAJOR \".\" LUA_VERSION_MINOR" */
/* BEGIN /usr/include/x86_64-linux-gnu/lua5.3-deb-multiarch.h */
enum { _LUA_DEB_MULTIARCH_ = 1 };
/* #define DEB_HOST_MULTIARCH "x86_64-linux-gnu" ### string, not number "\"x86_64-linux-gnu\"" */
/* END /usr/include/x86_64-1-gnu/lua5.3-deb-multiarch.h */
/* #define LUA_ROOT	"/usr/local/" ### string, not number "\"/usr/local/\"" */
/* #define LUA_ROOT2	"/usr/" ### string, not number "\"/usr/\"" */
/* #define LUA_LDIR	LUA_ROOT "share/lua/" LUA_VDIR "/" ### string, not number "LUA_ROOT \"share/lua/\" LUA_VDIR \"/\"" */
/* #define LUA_LDIR2	LUA_ROOT2 "share/lua/" LUA_VDIR "/" ### string, not number "LUA_ROOT2 \"share/lua/\" LUA_VDIR \"/\"" */
/* #define LUA_CDIR	LUA_ROOT "lib/lua/" LUA_VDIR "/" ### string, not number "LUA_ROOT \"lib/lua/\" LUA_VDIR \"/\"" */
/* #define LUA_CDIR2	LUA_ROOT2 "lib/" DEB_HOST_MULTIARCH "/lua/" LUA_VDIR "/" ### string, not number "LUA_ROOT2 \"lib/\" DEB_HOST_MULTIARCH \"/lua/\" LUA_VDIR \"/\"" */
/* #define LUA_CDIR3	LUA_ROOT2 "lib/lua/" LUA_VDIR "/" ### string, not number "LUA_ROOT2 \"lib/lua/\" LUA_VDIR \"/\"" */
/* #define LUA_PATH_DEFAULT   		LUA_LDIR"?.lua;"  LUA_LDIR"?/init.lua;"  		LUA_CDIR"?.lua;"  LUA_CDIR"?/init.lua;"  		LUA_LDIR2"?.lua;"  LUA_LDIR2"?/init.lua;"  		"./?.lua;" "./?/init.lua" ### string, not number "LUA_LDIR\"?.lua;\"  LUA_LDIR\"?/init.lua;\"  \9\9LUA_CDIR\"?.lua;\"  LUA_CDIR\"?/init.lua;\"  \9\9LUA_LDIR2\"?.lua;\"  LUA_LDIR2\"?/init.lua;\"  \9\9\"./?.lua;\" \"./?/init.lua\"" */
/* #define LUA_CPATH_DEFAULT  		LUA_CDIR"?.so;" LUA_CDIR2"?.so;" LUA_CDIR3"?.so;" LUA_CDIR"loadall.so;" "./?.so" ### string, not number "LUA_CDIR\"?.so;\" LUA_CDIR2\"?.so;\" LUA_CDIR3\"?.so;\" LUA_CDIR\"loadall.so;\" \"./?.so\"" */
/* #define LUA_DIRSEP	"/" ### string, not number "\"/\"" */
enum { LUA_API = 0 };
enum { LUALIB_API = 0 };
enum { LUAMOD_API = 0 };
/* #define LUAI_FUNC	__attribute__((visibility("hidden"))) extern ### string, not number "__attribute__((visibility(\"hidden\"))) extern" */
/* #define LUAI_DDEC	LUAI_FUNC ### string, not number "LUAI_FUNC" */
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
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h */
]] require 'ffi.c.stdint' ffi.cdef[[
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stdint.h */
/* redefining matching value: #define LUA_KCONTEXT	intptr_t */
enum { LUAI_MAXSTACK = 1000000 };
/* #define LUA_EXTRASPACE		(sizeof(void *)) ### string, not number "(sizeof(void *))" */
enum { LUA_IDSIZE = 60 };
enum { LUAL_BUFFERSIZE = 8192 };
/* #define LUA_QS		LUA_QL("%s") ### string, not number "LUA_QL(\"%s\")" */
/* END /usr/include/lua5.3/luaconf.h */
/* #define LUA_VERSION_MAJOR	"5" ### string, not number "\"5\"" */
/* #define LUA_VERSION_MINOR	"3" ### string, not number "\"3\"" */
enum { LUA_VERSION_NUM = 503 };
/* #define LUA_VERSION_RELEASE	"3" ### string, not number "\"3\"" */
/* #define LUA_VERSION	"Lua " LUA_VERSION_MAJOR "." LUA_VERSION_MINOR ### string, not number "\"Lua \" LUA_VERSION_MAJOR \".\" LUA_VERSION_MINOR" */
/* #define LUA_RELEASE	LUA_VERSION "." LUA_VERSION_RELEASE ### string, not number "LUA_VERSION \".\" LUA_VERSION_RELEASE" */
/* #define LUA_COPYRIGHT	LUA_RELEASE "  Copyright (C) 1994-2016 Lua.org, PUC-Rio" ### string, not number "LUA_RELEASE \"  Copyright (C) 1994-2016 Lua.org, PUC-Rio\"" */
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
typedef intptr_t lua_KContext;
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
struct lua_Debug { int event;
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
/* END /usr/include/lua5.3/lua.h */
]]
return lua