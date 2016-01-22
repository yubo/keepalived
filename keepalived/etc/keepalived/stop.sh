#!/bin/sh
logger $0
killall -USR2 collector
if [ $? -ne 0 ]; then
	/etc/init.d/collector restart
	sleep 1
	killall -USR2 collector
fi
