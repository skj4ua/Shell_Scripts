#!/bin/bash
#
#

fruits=( "Apple" "Orange" "Banana" "Sapota" )
fruits[3]='Green Apple'

for fruit in ${fruits[@]}
do
	echo "Fruits name is $fruit"
done

echo "Number of fruits is ${#fruits[@]}"
echo "All fruits ${fruits[@]}"
