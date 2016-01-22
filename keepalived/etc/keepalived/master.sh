#!/bin/sh
logger $0

killall -USR1 collector
if [ $? -ne 0 ]; then
	/etc/init.d/collector restart
	sleep 1
	killall -USR1 collector
fi
