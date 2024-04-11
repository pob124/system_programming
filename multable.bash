#!/bin/bash

a=3
count=1
while [ $count -lt  9 ];do

	while [ $a -lt 10 ];do

		echo -n "$a * $count = $(expr $a \* $count)"
		echo -ne "\t"
		
		a=`expr $a + 1`
	done	
	
	count=`expr $count + 1`
	a=3

	echo ""

done



