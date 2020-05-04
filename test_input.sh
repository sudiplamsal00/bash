#!/bin/bash

#echo "Please input the number:"
#read NUM

#echo "The input number is $NUM"
#echo "please input new number:"
#read -n2 NUM 

#echo "\n the number is: $NUM"

##################################
echo "file_handling_test1"

cat test.sh | while read LINE
do
	echo $LINEi
	echo "file read successful"
done
