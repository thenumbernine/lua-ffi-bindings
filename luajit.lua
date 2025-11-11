local ffi = require 'ffi'

ffi.cdef[[
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

lua_State *luaL_newstate();
void luaL_openlibs(lua_State *L);
void lua_close(lua_State *L);

int luaL_loadstring(lua_State *L, const char *s);
int lua_pcall(lua_State *L, int nargs, int nresults, int errfunc);

void lua_getfield(lua_State *L, int index, const char *k);
void lua_settop(lua_State *L, int index);
void lua_pop(lua_State *L, int n);
int lua_gettop(lua_State *L);

int lua_type(lua_State *L, int idx);
const char *lua_typename(lua_State *L, int tp);

const char *lua_tolstring(lua_State *L, int index, size_t *len);
ptrdiff_t lua_tointeger(lua_State *L, int index);
const void *lua_topointer(lua_State *L, int index);
double lua_tonumber(lua_State *L, int index);
void *lua_touserdata(lua_State *L, int idx);

void lua_pushstring(lua_State *L, const char *s);
void lua_pushlstring(lua_State *L, const char *p, size_t len);
void lua_pushnil(lua_State *L);
void lua_pushnumber(lua_State *L, lua_Number n);
void lua_pushinteger(lua_State *L, lua_Integer n);
void lua_pushboolean(lua_State *L, int b);
]]

return require 'ffi.load' 'luajit'
