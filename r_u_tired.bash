#!/bin/bash



echo "지금 건강 하신가요? [y/n]"

read answer

if [[ $answer == [yYnN] ]]; then

	if [[ $answer == [yY] ]]; then
		echo "건강하시네요"
	else
		echo "피곤하시군요"
	fi
fi
	
