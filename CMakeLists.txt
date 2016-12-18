cmake_minimum_required (VERSION 3.0)

project(lua-intf)

add_library (lua-intf INTERFACE)
file(GLOB LUAINTF_PUBLIC_HEADERS LuaIntf/*.h)

install(DIRECTORY LuaIntf
	DESTINATION include)

install(TARGETS lua-intf
	EXPORT lua-intf-config
	INCLUDES DESTINATION include/LuaIntf)
install(EXPORT lua-intf-config
	DESTINATION cmake)
install(FILES ${LUAINTF_PUBLIC_HEADERS} DESTINATION include/LuaIntf)


