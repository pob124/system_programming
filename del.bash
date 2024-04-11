#!/bin/bash

a="$(whoami)"

 
b="/home/${a}/trash_tong" 

for file in $@; do
	if [ ! -e "$file" ]; then
	echo "$file 가 존재하지 않습니다"
	echo "사용법: del [파일*]"
	exit
	fi
done

if [ ! -e  ${b} ]; then
echo $(mkdir ${b})
echo "trash_tong 생성완료"

fi

echo $(mv "$@" "${b}")

ls $b
