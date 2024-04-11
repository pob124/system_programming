#!/bin/bash

date > $1.$$

ls -l $1.$$

echo "사용법: datefile.bash myFIle"
