#!/bin/bash

echo "지금피곤하신가요(y/n)? : "

read answer

case $answer in

	"y" | "Y" ) echo "피곤하시군요.";;
	"n" | "N" ) echo "건강하시군요.";;
	*) echo "다른 키를 입력해주세요";;
esac


