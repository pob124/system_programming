#!/bin/bash

declare -i stop_point
stop_point=0

echo "명령어 메뉴"
cat << MENU

	1.디렉터리 리스트

	2.파일삭제

	3.메일 보내기

	4.시스템 정보

	5.종료

MENU

while [ $stop_point -eq 0 ]; do

	echo "번호입력 1~5 : "
	read menu_number
	
	case $menu_number in

		"1" ) echo "디렉토리 경로 입력 : "
		      read dir_path
		      if [ -d $dir_path ];then
				
			      echo "-----------------------------------"
			      echo "디렉터리 $dir_path 내의 파일 리스트"
			      echo "-----------------------------------"
			      echo ""
			      ls -asl $dir_path
			      echo ""
			      echo "-----------------------------------"
		      else
			      echo "잘못된 경로입니다"
		      fi		     
		      ;;

		"2" ) echo "삭제할 파일의 경로 : "
		      read dir_path
		      if [ -e $dir_path ];then

			      rm -i $dir_path
			      echo "파일삭제 완료"
		      else

			      echo "잘못된 경로입니다"
		      fi
		      ;;
		"3" ) echo "메일을 보낼 상대의 주소(address) : "
  		      read address
		      echo "메일 제목 :"
		      read headline
		      echo "메세지 내용 :"
		      message=$(cat)
		      msg_tmp=$(mktemp)
		      chmod 7777 $msg_tmp
		      echo $message > $msg_tmp
		      mail -s "$headline" "$address"  < "$msg_tmp"
		      rm $msg_tmp		      
		      echo "메일 발송 완료"
		      ;;
		"4" ) echo "시스템 정보"
		      echo "------------------------------"
		      echo ""
		      echo -n "현재 시간과 날짜 : "
		      echo  $(date)
		      echo "------------------------------"
		      echo ""
		      echo -n "사용자 정보 : "
		      echo  $(who)  
		      echo "------------------------------"
		      echo ""
		      echo -n "시스템 업타임 : "
		      echo  $(uptime)
		      echo "------------------------------"
		      ;;
		"5" ) echo "끝내기"
		      stop_point=1
		      ;;
		* ) echo "잘못된 입력" ;;

	esac

done
