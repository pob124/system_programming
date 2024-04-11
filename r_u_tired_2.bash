#!/bin/bash



answer = ''

while [[ $answer != [qQ] ]]
do

 	echo "지금 건강하신가요? [y/n]"
 	echo "종료[q/Q]"
 	read answer

 	if [[ $answer == [yYnN] ]]; then

		if [[ $answer == [yY] ]]; then
			echo "건강하시네요"
		elif [[ $answer == [nN] ]];then		
			echo "피곤하시군요"
		else
	        	echo "잘못입력하셨습니다"
		fi	
 	fi


done 

echo "프로그램 종료"
