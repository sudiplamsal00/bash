#!/bin/bash
# THis is test 
count=0
ls -l
echo "this is output from a shell script"
echo "Total Number of arguments $#"
echo "Script Name is $0"
echo "Script name without leading path `basename $0`"
echo "First argument is $1"
sleep 2
######################################################
echo "for loop test"
sleep 1
for i in "$*"
do 
	echo $i
	echo "this is output of for loop"
done
echo "############################"
sleep 1 
echo "for loop test 2"
for (( c=1; c<=5; c++ ))
do
	echo "this is for loop2"
	sleep 1
done
############################################
echo "fro while loop"
sleep 2
while [ $count -lt 5 ]
do
	echo "this is while loop"
	sleep 1
	count=$((count+1))
done
echo "while loop success"
##############################################
sleep 1
echo "until is calling"
sleep 1
until [ $count -le 3 ]
do
	echo "this is until"
	count=$((count -1))
	echo "value of count=$count"
	sleep 1
done
sleep 2
##################################
echo "###################################"
echo "if condition output"
sleep 2
if [ $count -gt 0 ] ; then 
	echo "count is positive"
	printf "My current directory is \n $PWD \n"
else
	echo "wrong if"
fi

echo 2

echo "calling function " 
sleep 2

#df_function

df_function() #no parameter no return type
{
	echo "You server storage details:"
	sleep 2
	df -h
	echo "your server storage details only:"
	sleep 2
	df -h | awk {'print $4'}
	echo "Please find the data" 
}
if [ $(id -u) = "1000" ]
then
	echo "you are rockshot"
	echo "here is your requested details"
	sleep 2
	df_function
else
	echo "please login as user to run this script" 
fi
#df_function

