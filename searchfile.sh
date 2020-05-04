#!/bin/bash
#file reader

echo "Enter file to search"
read filename

if [[ -f $filename ]]
then
	echo "Enter the text to search"
	read grepvar
	grep -r $grepvar *
else
	echo "nothing found"
fi
