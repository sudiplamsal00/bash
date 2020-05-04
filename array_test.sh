#!/bin/bash
<< EOF
################### this i8s heare document in shell
declare -a var
var[0]="hello"
var[1]="red"
var[2]="apple"
echo "this is comment"
echo ${var[0]}
EOF

echo "please enter the IP address sepearted by space"
read -a iplist

for i in ${iplist[@]}
do
	echo "..................................."
	ping -c 1 -w 3 $i 2>&1 >/dev/null
	if [ $? -eq 0 ]
	then
		echo "Host $i is alive"
	else
		echo "Host $i is down"
	fi
done
echo "this is test for git commit"
