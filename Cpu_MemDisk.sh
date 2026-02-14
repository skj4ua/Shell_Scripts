#!/bin/bash
#

HOSTNAME=$(hostname)
DATET=$(date "+%Y-%m-%d %H:%M:%S")
CPU_USAGE=$(top -b -n 2 -d1 | grep "Cpu(s)"|tail -n1|awk '{print 100-$8}')
MEMUSAGE=$(free | grep Mem| awk '{print $3/$2 * 100.00}')
DISK_USAGE=$(df -h / |awk '{print $5}' |tail -n 1|sed 's/%//g')

echo 'Hostname, Date&Time, CPU(%), MEM(%), DISK(%)' >> ~/usagereport
echo "$HOSTNAME, $DATET, $CPUUSAGE,$MEMUSAGE,$DISK_USAGE" >> ~/usagereport
