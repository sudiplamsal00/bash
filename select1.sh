#!/bin/bash
#this is select script
select options in one two three four quite
do
        case $options in
        one)
                echo "one selected";;
        two)
                echo "two selected";;
        three)
                echo "three selected";;
        four)
                echo "four selected";;
	quite)
		break;;
        *)
                echo "Error! Please select between 1....5";;
        esac
done
echo "please enter your options"
read -p "this is output test? (y/n)" cred
echo $cred
