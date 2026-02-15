#!/bin/bash
#

read -p "Enter a number " value

if [ $((value % 2 )) -eq 0 ]; then
	echo "Even number"
else
	echo "Odd Number"
fi
