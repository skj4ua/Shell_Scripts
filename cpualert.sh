#!/bin/bash

PATHS="/"
HOSTNAME=$(hostname)
CRITICAL=90
CRITICAL_MAIL=sonukrj8@gmail.com
mkdir -p /home/skj/log/cputilihist
LOGFILE=/home/skj/log/cputilihist/cpusage-`date +%h%d%y`.log

touch $LOGFILE

for path in $PATHS
do 
	CPULOAD=`top -b -n 2 -d1 | grep "Cpu(s)"| tail -n1 |awk '{print 100-$8}'`
if [[ CRITICAL -ge 90 ]];then 
	echo "`date "+%F %H:%M:%S"` CRITICAL - $CPULOAD on host $HOSTNAME" >> $LOGFILE
	exit 1
fi
done

