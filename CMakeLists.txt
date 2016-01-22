cmake_minimum_required(VERSION 2.6)

SET(CMAKE_INSTALL_PREFIX /usr)

IF(NOT DEFINED EXECUTABLE_OUTPUT_PATH)
	SET(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin)
ENDIF(NOT DEFINED EXECUTABLE_OUTPUT_PATH)

IF(NOT DEFINED CARCH)
	SET(CARCH x86_64)
ENDIF(NOT DEFINED CARCH)

add_subdirectory(lib)
add_subdirectory(keepalived)
add_subdirectory(genhash)

INSTALL(FILES keepalived/etc/keepalived/keepalived.conf 
	DESTINATION /etc/keepalived)

INSTALL(FILES keepalived/etc/keepalived/backup.sh
	keepalived/etc/keepalived/backup.sh
	keepalived/etc/keepalived/fault.sh
	keepalived/etc/keepalived/master.sh
	keepalived/etc/keepalived/stop.sh
	DESTINATION /etc/keepalived
	PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE)

INSTALL(PROGRAMS keepalived/etc/init.d/keepalived.ubuntu.init
	DESTINATION /etc/init.d RENAME keepalived
	PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE)
