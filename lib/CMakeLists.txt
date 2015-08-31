cmake_minimum_required(VERSION 2.6)

ADD_DEFINITIONS( -I. -g -O2 -Wall -Wunused -Wstrict-prototypes -D_WITHOUT_SNMP_)
SET(SOURCES memory.c utils.c notify.c timer.c scheduler.c vector.c list.c html.c parser.c signals.c logger.c)

ADD_LIBRARY(ka STATIC ${SOURCES})
#ADD_LIBRARY(keepalived-static STATIC ${SOURCES})
#SET_TARGET_PROPERTIES(keepalived-static PROPERTIES OUTPUT_NAME keepalived)
