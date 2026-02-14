#!/bin/bash
#Purpose:Arthemetic Operators
#Version:1.0
#Created Date: Sat Feb 14 11:26 AM 2026
#Modified Date:
#Author : Sonu Jha
#START#


read -p "Please enter some value: " a
read -p "Please enter another value: " b

echo "a+b value is $((a+b))" #it will add both the values
echo "a-b value is $((a-b))" #it will subtract b from a
echo "axb value is $((a*b))" #it will multiply both a and b
echo "a/b value is $((a/b))" #it will divide b from a
echo "a%b value is $((a%b))" #it will give the reminder when a is divided by b

echo "Completed Successfully"

# END #

