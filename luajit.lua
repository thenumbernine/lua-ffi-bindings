local ffi = require 'ffi'

ffi.cdef[[
enum { LUA_REGISTRYINDEX = -10000 };
enum { LUA_ENVIRONINDEX = -10001 };
enum { LUA_GLOBALSINDEX = -10002 };

enum { LUA_OK = 0 };
enum { LUA_YIELD = 1 };
enum { LUA_ERRRUN = 2 };
enum { LUA_ERRSYNTAX = 3 };
enum { LUA_ERRMEM = 4 };
enum { LUA_ERRERR = 5 };

enum { LUA_MULTRET = -1 };
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
enum { LUA_TPROTO = 9 };
enum { LUA_TCDATA = 10 };

typedef double lua_Number;
typedef struct lua_State lua_State;
typedef ptrdiff_t lua_Integer;
typedef int (*lua_CFunction) (lua_State *L);

void lua_close(lua_State* L);

int lua_pcall(lua_State* L, int nargs, int nresults, int errfunc);

void lua_getfield(lua_State* L, int index, const char* k);

void lua_rawget(lua_State *L, int idx);
void lua_rawgeti(lua_State *L, int idx, int n);
void lua_rawset(lua_State *L, int idx);
void lua_rawseti(lua_State *L, int idx, int n);

void lua_settop(lua_State* L, int index);
int lua_gettop(lua_State* L);

int lua_type(lua_State* L, int idx);
const char* lua_typename(lua_State* L, int tp);

int lua_toboolean(lua_State* L, int idx);
const char* lua_tolstring(lua_State* L, int index, size_t* len);
ptrdiff_t lua_tointeger(lua_State* L, int index);
const void* lua_topointer(lua_State* L, int index);
double lua_tonumber(lua_State* L, int index);
void* lua_touserdata(lua_State* L, int idx);

void lua_remove(lua_State* L, int idx);
void lua_pushvalue(lua_State* L, int idx);
void lua_pushnil(lua_State* L);
void lua_pushnumber(lua_State* L, lua_Number n);
void lua_pushinteger(lua_State* L, lua_Integer n);
void lua_pushlstring(lua_State* L, const char* p, size_t len);
void lua_pushstring(lua_State* L, const char* s);
const char *lua_pushfstring(lua_State *L, const char *fmt, ...);
void lua_pushcclosure(lua_State *L, lua_CFunction fn, int n);
void lua_pushboolean(lua_State* L, int b);
void lua_pushlightuserdata(lua_State *L, void *p);
int lua_pushthread(lua_State *L);

lua_State* luaL_newstate();
void luaL_openlibs(lua_State* L);
int luaL_loadstring(lua_State* L, const char* s);
int luaL_ref(lua_State* L, int i);
void luaL_unref(lua_State *L, int t, int ref);
int luaL_loadbuffer(lua_State *L, const char *buff, size_t sz, const char* name);
int luaL_loadbufferx(lua_State *L, const char *buff, size_t sz, const char* name, const char* mode);

]]

local lib = require 'ffi.load' 'luajit'
return setmetatable({
	lua_pop = function(L, n)
		lib.lua_settop(L, -n-1)
	end,
	lua_tostring = function(L, i)
		return lib.lua_tolstring(L, i, nil)
	end,
	lua_upvalueindex = function(i)
		return lib.LUA_GLOBALSINDEX - i
	end,
}, {
	__index = lib,
})
