#!/bin/sh
today=$(date +'%Y-%m-%d')
start=0
substr_len=4

for (( i=0; i<${#today}; i++ )); do
	if [ "${today:$i:1}" == "-" ] || [ $i -eq 8 ]
	then
		echo "${today:start:substr_len}"
		substr_len=2
		start=$i+1
	fi
done