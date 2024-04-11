#!/bin/bash

a=2

for gugu in {1..9}
do	
	echo "$a * $gugu = "  $(expr $a \* $gugu)

done


