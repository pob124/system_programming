#!/bin/bash


num=0;
path=""
if [ $# -eq 0 ];then
	path=$(pwd)
fi

if [ ! -e $0 ];then
	echo "디렉터리가 존재하지 않습니다"
	echo "사용법 : listdir [디렉터리] "
	exit
else
	path=$0
	if [ -d $path ];then
	echo "$path 로 이동"
	cd $path
	fi

	for file in *;do

		echo "$num : $file"
		echo -n "파일을 삭제하시겠습니까?(Y/y or N/n) : "
		read answer
		if [[ $answer == [yY] ]];then			
			rm -rf  $file
		elif [[ $answer == [Nn] ]];then
			echo "파일을 삭제하지 않습니다"
		else 
			echo "입력됨 : $answer"
			echo "잘못 입력하셨습니다"		
		fi
		let num+=1
	done

fi
