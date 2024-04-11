#!/bin/bash

while true ;do

	echo "지금피곤하신가요(y/n)(끝내기:q/Q) ? : "
	read answer
	case $answer in

		"y" | "Y" ) echo "피곤하시군요.";;
		"n" | "N" ) echo "건강하시군요.";;
		"q" | "Q" ) break;;
		*) echo "다른 키를 입력해주세요";;
	esac

done

echo "프로그램종료."
