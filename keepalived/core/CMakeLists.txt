cmake_minimum_required(VERSION 2.6)

ADD_DEFINITIONS(-I../include -I../../lib -g -O2 -Wall -Wunused -Wstrict-prototypes -D_KRNL_2_6_ -D_WITHOUT_LVS_ -D_WITH_VRRP_ -D_WITHOUT_SNMP_ -D_WITH_SO_MARK_)  
SET(SOURCES main.c daemon.c pidfile.c layer4.c smtp.c global_data.c global_parser.c)

ADD_EXECUTABLE(keepalived ${SOURCES})
TARGET_LINK_LIBRARIES(keepalived vrrp ka ssl crypto crypt dl)
