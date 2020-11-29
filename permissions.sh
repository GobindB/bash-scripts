#!/bin/sh

file=$1

if [ -d $file ]
then
	echo "$file is a directory"
elif [ -f $file]
then
	if [ -r $file -a -x $file -a -x $file ]
	then
		echo "You have read, write, and execute permission on $file."
	fi
else
	echo "$File is neither a file or a directory"
fi