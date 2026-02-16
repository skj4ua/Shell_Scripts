#!/bin/bash
#
opt=y
while [[ $opt = y || $opt = Y ]]
do
	read -p "Enter the number" a
	sq=$((a*a))
	echo "square of provided number is: $sq"

	read -p "Do you wish to continue" choice

	if [[ $choice = y || $choice = Y ]]; then
		continue
	else
		echo "Thank you for exiting"
		exit
	fi
done
