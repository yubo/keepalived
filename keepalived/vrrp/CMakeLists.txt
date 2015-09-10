cmake_minimum_required(VERSION 2.6)

ADD_DEFINITIONS(-I../include -I../../lib -I${CMAKE_SOURCE_DIR}/lib/openssl-1.0.0s/include -g -O2  -I/usr/src/linux/include -I/usr/src/linux/include -Wall -Wunused -Wstrict-prototypes -D_KRNL_2_6_ -D_WITHOUT_LVS_ -D_WITHOUT_IPVS_SYNCD_ -D_HAVE_VRRP_VMAC_ -D_WITHOUT_SNMP_) 
SET(SOURCES vrrp_daemon.c vrrp_print.c vrrp_data.c vrrp_parser.c vrrp.c vrrp_notify.c vrrp_scheduler.c vrrp_sync.c vrrp_index.c vrrp_netlink.c vrrp_arp.c vrrp_if.c vrrp_track.c vrrp_ipaddress.c vrrp_iproute.c vrrp_ipsecah.c vrrp_ndisc.c vrrp_vmac.c)
ADD_LIBRARY(vrrp STATIC ${SOURCES})
