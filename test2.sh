#!/bin/bash
filename="test.sh"
if [ -f $filename ] && [ -x $filename ]
then 
	echo "$filename exist in the folder and is executable"
else
	echo "file doesn't exist in the current folder \ $PWD \n"
fi

