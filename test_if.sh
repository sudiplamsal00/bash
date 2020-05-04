
#!/bin/bash
path=/home/rockshot/test1
echo "please input age:$age"
read age
sleep 1
if [ $age -gt 18 ] && [ $age -lt 40 ] 
then
	ls-l   2&>1 >>test.txt
#	echo "You are right age"  1>>test.txt
else
	echo "You are to chicken"
fi
