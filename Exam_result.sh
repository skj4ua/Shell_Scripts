#!/bin/bash
#

read -p "Enter marks for math" m_marks
read -p "Enter marks for physics" p_marks
read -p "Enter marks for Chemistry" c_marks

if [[ $m_marks -ge 35 && $p_marks -ge 35 && $c_marks -ge 35 ]]; then
	
	total=$((m_marks + p_marks + c_marks))
	avg=$((total / 3))
	
	echo "Total marks: $total"
	echo "Average marks: $avg"
	if [[ $avg -ge 75 ]]; then
		echo "Congrats you got destinction"
	elif [[ $avg -ge 60 ]]; then
		echo "Congrats you got First Class"
	elif [[ $avg -ge 50 ]]; then
		echo "Congrats you got Second Class"
	elif [[ $avg -ge 35 ]]; then
		echo "Congrats you got Third Class"
	fi
else
	echo "Sorry you failed"
fi

