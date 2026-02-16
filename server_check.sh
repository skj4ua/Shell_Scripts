#!/bin/bash
#

for server in `cat servers`
	do
		ping -c 1 $server > /tmp/ping
		valid=`echo $?`
		
		if [[ $valid -eq 0 ]];then
			echo '$server is up'
		else
			echo '$server is down'
		fi
	done

