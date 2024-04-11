#!/bin/bash

answer = ""

answer_case = ("y","Y","n","N")

echo "피곤하시나요?(y/n) : "

read answer



case answer_case in

	"y" | "Y" ) echo "피곤하시군요.";;

	"n" | "N" ) echo "건강하시군요.";;

	*) echo "잘못입력하셨습니다";;

esac
	


