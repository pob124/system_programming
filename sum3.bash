#!/bin/bash

declare -a j
declare -a five
declare -i mod3

echo "정수들을 입력 : "

read -a i

count=0
fcount=0
jcount=0
sum3=0
sum5=0
while [ $count -lt ${#i[*]} ];do

	mod3=`expr ${i[$count]} % 3`
	mod5=`expr ${i[$count]} % 5`
	if [ $mod3 -eq 0 ];then
		j[$jcount]=${i[$count]}
		let sum3+=${i[$count]}
		let jcount+=1
	elif [ $mod5 -eq 0 ];then
		five[$fcount]=${i[$count]}
		let sum5+=${i[$count]}
		let fcount+=1
	fi

	let count+=1
done

echo "3의 배수의 배열 : { ${j[*]} }"
echo "3의 배수의 합 : $sum3"
echo "-----------------------------"
echo "5의 배수의 배열 : { ${five[*]} }"
echo "5의 배수의 합 : $sum5"
