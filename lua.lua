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
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h */
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stdarg.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h */
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stddef.h */
/* BEGIN /usr/include/lua5.3/luaconf.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/limits.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/syslimits.h */
/* BEGIN /usr/include/limits.h */
enum { _LIBC_LIMITS_H_ = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* END /usr/include/x86_64-1-gnu/bits/libc-header-start.h */
enum { MB_LEN_MAX = 16 };
/* END /usr/include/limits.h */
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/syslimits.h */
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
/* BEGIN /usr/include/x86_64-linux-gnu/lua5.3-deb-multiarch.h */
/* END /usr/include/x86_64-1-gnu/lua5.3-deb-multiarch.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h */
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stdint.h */
enum { LUAI_MAXSTACK = 1000000 };
enum { LUA_IDSIZE = 60 };
enum { LUAL_BUFFERSIZE = 8192 };
/* END /usr/include/lua5.3/luaconf.h */
enum { LUA_VERSION_NUM = 503 };
enum { LUA_OK = 0 };
enum { LUA_YIELD = 1 };
enum { LUA_ERRRUN = 2 };
enum { LUA_ERRSYNTAX = 3 };
enum { LUA_ERRMEM = 4 };
enum { LUA_ERRGCMM = 5 };
enum { LUA_ERRERR = 6 };
typedef struct lua_State lua_State;
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
extern void       (lua_close) (lua_State *L);
extern lua_State *(lua_newthread) (lua_State *L);
extern lua_CFunction (lua_atpanic) (lua_State *L, lua_CFunction panicf);
extern const lua_Number *(lua_version) (lua_State *L);
extern int   (lua_absindex) (lua_State *L, int idx);
extern int   (lua_gettop) (lua_State *L);
extern void  (lua_settop) (lua_State *L, int idx);
extern void  (lua_pushvalue) (lua_State *L, int idx);
extern void  (lua_rotate) (lua_State *L, int idx, int n);
extern void  (lua_copy) (lua_State *L, int fromidx, int toidx);
extern int   (lua_checkstack) (lua_State *L, int n);
extern void  (lua_xmove) (lua_State *from, lua_State *to, int n);
extern int             (lua_isnumber) (lua_State *L, int idx);
extern int             (lua_isstring) (lua_State *L, int idx);
extern int             (lua_iscfunction) (lua_State *L, int idx);
extern int             (lua_isinteger) (lua_State *L, int idx);
extern int             (lua_isuserdata) (lua_State *L, int idx);
extern int             (lua_type) (lua_State *L, int idx);
extern const char     *(lua_typename) (lua_State *L, int tp);
extern lua_Number      (lua_tonumberx) (lua_State *L, int idx, int *isnum);
extern lua_Integer     (lua_tointegerx) (lua_State *L, int idx, int *isnum);
extern int             (lua_toboolean) (lua_State *L, int idx);
extern const char     *(lua_tolstring) (lua_State *L, int idx, size_t *len);
extern size_t          (lua_rawlen) (lua_State *L, int idx);
extern lua_CFunction   (lua_tocfunction) (lua_State *L, int idx);
extern void	       *(lua_touserdata) (lua_State *L, int idx);
extern lua_State      *(lua_tothread) (lua_State *L, int idx);
extern const void     *(lua_topointer) (lua_State *L, int idx);
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
extern void  (lua_arith) (lua_State *L, int op);
enum { LUA_OPEQ = 0 };
enum { LUA_OPLT = 1 };
enum { LUA_OPLE = 2 };
extern int   (lua_rawequal) (lua_State *L, int idx1, int idx2);
extern int   (lua_compare) (lua_State *L, int idx1, int idx2, int op);
extern void        (lua_pushnil) (lua_State *L);
extern void        (lua_pushnumber) (lua_State *L, lua_Number n);
extern void        (lua_pushinteger) (lua_State *L, lua_Integer n);
extern const char *(lua_pushlstring) (lua_State *L, const char *s, size_t len);
extern const char *(lua_pushstring) (lua_State *L, const char *s);
extern const char *(lua_pushvfstring) (lua_State *L, const char *fmt, va_list argp);
extern const char *(lua_pushfstring) (lua_State *L, const char *fmt, ...);
extern void  (lua_pushcclosure) (lua_State *L, lua_CFunction fn, int n);
extern void  (lua_pushboolean) (lua_State *L, int b);
extern void  (lua_pushlightuserdata) (lua_State *L, void *p);
extern int   (lua_pushthread) (lua_State *L);
extern int (lua_getglobal) (lua_State *L, const char *name);
extern int (lua_gettable) (lua_State *L, int idx);
extern int (lua_getfield) (lua_State *L, int idx, const char *k);
extern int (lua_geti) (lua_State *L, int idx, lua_Integer n);
extern int (lua_rawget) (lua_State *L, int idx);
extern int (lua_rawgeti) (lua_State *L, int idx, lua_Integer n);
extern int (lua_rawgetp) (lua_State *L, int idx, const void *p);
extern void  (lua_createtable) (lua_State *L, int narr, int nrec);
extern void *(lua_newuserdata) (lua_State *L, size_t sz);
extern int   (lua_getmetatable) (lua_State *L, int objindex);
extern int  (lua_getuservalue) (lua_State *L, int idx);
extern void  (lua_setglobal) (lua_State *L, const char *name);
extern void  (lua_settable) (lua_State *L, int idx);
extern void  (lua_setfield) (lua_State *L, int idx, const char *k);
extern void  (lua_seti) (lua_State *L, int idx, lua_Integer n);
extern void  (lua_rawset) (lua_State *L, int idx);
extern void  (lua_rawseti) (lua_State *L, int idx, lua_Integer n);
extern void  (lua_rawsetp) (lua_State *L, int idx, const void *p);
extern int   (lua_setmetatable) (lua_State *L, int objindex);
extern void  (lua_setuservalue) (lua_State *L, int idx);
extern void  (lua_callk) (lua_State *L, int nargs, int nresults, lua_KContext ctx, lua_KFunction k);
extern int   (lua_pcallk) (lua_State *L, int nargs, int nresults, int errfunc, lua_KContext ctx, lua_KFunction k);
extern int   (lua_load) (lua_State *L, lua_Reader reader, void *dt, const char *chunkname, const char *mode);
extern int (lua_dump) (lua_State *L, lua_Writer writer, void *data, int strip);
extern int  (lua_yieldk)     (lua_State *L, int nresults, lua_KContext ctx, lua_KFunction k);
extern int  (lua_resume)     (lua_State *L, lua_State *from, int narg);
extern int  (lua_status)     (lua_State *L);
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
extern int   (lua_error) (lua_State *L);
extern int   (lua_next) (lua_State *L, int idx);
extern void  (lua_concat) (lua_State *L, int n);
extern void  (lua_len)    (lua_State *L, int idx);
extern size_t   (lua_stringtonumber) (lua_State *L, const char *s);
extern lua_Alloc (lua_getallocf) (lua_State *L, void **ud);
extern void      (lua_setallocf) (lua_State *L, lua_Alloc f, void *ud);
enum { LUA_HOOKCALL = 0 };
enum { LUA_HOOKRET = 1 };
enum { LUA_HOOKLINE = 2 };
enum { LUA_HOOKCOUNT = 3 };
enum { LUA_HOOKTAILCALL = 4 };
typedef struct lua_Debug lua_Debug;
typedef void (*lua_Hook) (lua_State *L, lua_Debug *ar);
extern int (lua_getstack) (lua_State *L, int level, lua_Debug *ar);
extern int (lua_getinfo) (lua_State *L, const char *what, lua_Debug *ar);
extern const char *(lua_getlocal) (lua_State *L, const lua_Debug *ar, int n);
extern const char *(lua_setlocal) (lua_State *L, const lua_Debug *ar, int n);
extern const char *(lua_getupvalue) (lua_State *L, int funcindex, int n);
extern const char *(lua_setupvalue) (lua_State *L, int funcindex, int n);
extern void *(lua_upvalueid) (lua_State *L, int fidx, int n);
extern void  (lua_upvaluejoin) (lua_State *L, int fidx1, int n1, int fidx2, int n2);
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
