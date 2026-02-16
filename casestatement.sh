#!/bin/bash
#

read -p "Enter a number " a
read -p "Enter a number " b

echo "1. Sum of values"
echo "2. Subtraction "
echo "3. Multiplication"
echo "4. Division"
echo "5. Modulo Division"
read -p "Enter your choice"  choice

case $choice in 
	1) echo "sum of 2 values is $((a+b))";;
	2) echo "subtraction of 2 values is $((a-b))";;
	3) echo "Multiplication of 2 values are $((a*b))";;
	4) echo "Division of 2 numbers are $((a/b))";;
	5) echo "Modulo Division of 2 numbers are $((a%b))";;
	*) echo "Invalid option provided"
esac


