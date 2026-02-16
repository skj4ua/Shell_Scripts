#!/bin/bash

read -p "Enter a number to print its table" number
i=1
while [ $i -le 10 ]
do
	echo "$number * $i = $((number*i))"
	((i++))
done
