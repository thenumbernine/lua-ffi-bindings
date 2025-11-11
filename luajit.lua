local ffi = require 'ffi'

ffi.cdef[[
typedef struct lua_State lua_State;
lua_State *luaL_newstate(void);
void luaL_openlibs(lua_State *L);
void lua_close(lua_State *L);
int luaL_loadstring(lua_State *L, const char *s);
int lua_pcall(lua_State *L, int nargs, int nresults, int errfunc);
void lua_getfield(lua_State *L, int index, const char *k);
void lua_settop(lua_State *L, int index);
void lua_pop(lua_State *L, int n);
const char *lua_tolstring(lua_State *L, int index, size_t *len);
ptrdiff_t lua_tointeger(lua_State *L, int index);
int lua_gettop(lua_State *L);
void lua_pushstring(lua_State *L, const char *s);
const void *lua_topointer(lua_State *L, int index);
double lua_tonumber(lua_State *L, int index);
void *lua_touserdata(lua_State *L, int idx);
void lua_pushlstring(lua_State *L, const char *p, size_t len);
]]

return require 'ffi.load' 'luajit'
