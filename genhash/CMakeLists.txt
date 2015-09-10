cmake_minimum_required(VERSION 2.6)

ADD_DEFINITIONS(-I../lib -I${CMAKE_SOURCE_DIR}/lib/openssl-1.0.0s/include -g -O2 -D_WITH_SO_MARK_  -I/usr/src/linux/include -I/usr/src/linux/include -Wall -Wunused -Wstrict-prototypes) 
SET(SOURCES main.c sock.c layer4.c http.c ssl.c)

ADD_EXECUTABLE(genhash ${SOURCES})
TARGET_LINK_LIBRARIES(genhash vrrp ka
	${CMAKE_SOURCE_DIR}/lib/libssl_${CARCH}.a
	${CMAKE_SOURCE_DIR}/lib/libcrypto_${CARCH}.a dl)

INSTALL(TARGETS genhash 
	RUNTIME DESTINATION sbin)
