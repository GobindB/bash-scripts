#!/bin/sh
counter=1
num=7
while [ $counter -lt 8 ]
do
	echo "${@:$counter:$num}"
	counter=`expr $counter + 1`
done