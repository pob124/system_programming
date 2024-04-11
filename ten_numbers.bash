#!/bin/bash

max_num=0 
min_num=$1
even_num=""
odd_num=""

for item in "$@" 
do
	case $item in

		[a-z] | [A-Z] ) 
			echo "문자을 입력하면 안됩니다"
			exit;;		
	esac

	if [ $item -gt $max_num ]; then
		 max_num=$item
	fi

	if [ $min_num -ge $item ]; then
	         min_num=$item
	fi

	if [ $(expr $item % 2) -eq 0 ];then
	       even_num+=" $item"
	else
	       odd_num+=" $item"
	fi
	

done

echo "a.가장 작은 숫자: ${min_num}"

echo "b.가장 큰 숫자: ${max_num}"

echo "c.짝수 : ${even_num}"

echo "d.홀수 : ${odd_num}"
