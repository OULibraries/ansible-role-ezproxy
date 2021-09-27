#!/bin/bash

EZPATH=/srv/ezproxy
LOGPATH=/srv/ezproxy/log

PATH=/usr/local/bin:/usr/bin:/bin:$PATH

CURDATE=`date +%Y%m%d`
TODAYSLOG=ezproxy-${CURDATE}.log

# Rotate log file
systemctl stop ezproxy
mv ${EZPATH}/ezproxy.log ${LOGPATH}/${TODAYSLOG}
touch ezproxy.log
systemctl start ezproxy


# Clean up old log files
find ${LOGPATH} -mtime +30 -print | xargs rm -v 
