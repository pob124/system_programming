#!/bin/bash

a="$(whoami)"
b="/home/${a}/trash" 
declare -a option;

for item in $@;
do
	case "$item" in
		-r)
	   		option+=("-r")
   	   		shift
	   	;;
		-l)
     	   		option+=("-l")		
	   		shift
	   		;;
		-rl)
     	   		option+=("-rl")		
	   		shift
	   		;;
	esac
done

for file in $@; do
	if [ ! -e "$file" ]; then
	echo "$file 가 존재하지 않습니다"
	echo "사용법: trash -[rl] [파일*]"
	exit
	fi
done

if [ ! -e  ${b} ]; then
echo $(mkdir ${b})
echo "trash 생성완료"
fi

if [ ${#option} -eq 0 ];then
	if [ $# != 0 ]; then	
		echo $(mv "$@" "${b}")
		echo "옮기기 완료"
		ls ${b}
	fi
else
	for cmd in $option;
	do
		if [ $cmd == "-r" ];then
	              echo  "$cmd 옵션 실행"
		       rm -rf "${b}/*"	
		elif [ $cmd == "-l" ];then
		      echo"$cmd 옵션 실행"
		      echo "${b} 의 목록"
		       ls ${b}
		elif [ $cmd == "-rl" ];then
		      echo "$cmd 옵션 실행"
		       rm -rf "${b}/*"
		       echo "${b} 의 목록"
	       	       ls ${b}
		fi
	done
	if [ $# != 0 ]; then	
		echo $(mv "$@" "${b}")
	fi
fi



