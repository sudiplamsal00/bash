#!/bin/bash
select options in one two three four
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
	*)
		echo "Error! Please select between 1....5";;
	esac
done
