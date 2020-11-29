#!/bin/sh

echo -e "Please enter a number: \c"
read number
if [ $((number % 2)) == 0 ]
then
	echo "$number is an even number."
else
	echo "$number is an odd number."
fi