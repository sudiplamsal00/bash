#!/bin/bash
main_function()
{
	read -p "what do you want command do you want to test?" insert
	sleep 2
	echo "you have : $insert" 
	sleep 1
	test
	echo $insert
	sleep 10
	test
	$insert
	echo 
	echo
	sleep 2
	echo "Thank you!!"
}
main_function
echo "do you want to continue? (y/n)"
read input
if [ $input = "y" ] #| [ $input = "Y" ]
then
	echo "contining..............."
	sleep 7
	input
else
		echo "exiting"	
fi

#<<EOF
test()
{
	PID=$!
	i=1
	sp="/-\|"
	echo -n ' '
	while [ -d /proc/$PID ]
	do
  		printf "\b${sp:i++%${#sp}:1}"
	done
}
#EOF
