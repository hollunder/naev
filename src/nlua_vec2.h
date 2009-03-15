/*
 * See Licensing and Copyright notice in naev.h
 */


#ifndef NLUA_VEC2_H
#  define NLUA_VEC2_H


#include "lua.h"
#include "physics.h"


#define VECTOR_METATABLE   "Vec2"   /**< Vector metatable identifier. */


/**
 * @brief Lua Vector2d Wrapper.
 */
typedef struct LuaVector_s {
   Vector2d vec; /**< The actual Vector2d. */
} LuaVector;


/*
 * Vector library.
 */
int vectorL_createmetatable( lua_State *L );
int lua_loadVector( lua_State *L );

/*
 * Vector operations.
 */
LuaVector* lua_tovector( lua_State *L, int ind );
LuaVector* lua_pushvector( lua_State *L, LuaVector vec );
int lua_isvector( lua_State *L, int ind );


#endif /* NLUA_VEC2_H */


