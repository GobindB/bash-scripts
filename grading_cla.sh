#!/bin/sh
score=${1:?"requires an argument" }
if [ $score -ge 90 ] && [ $score -le 100 ]
then
	echo "You got A"
elif [ $score -ge 80 ] && [ $score -lt 90 ]
then
	echo "You got B"
elif [ $score -ge 70 ] && [ $score -lt 80 ]
then
	echo "You got C"
elif [ $score -ge 60 ] && [ $score -lt 70 ]
then
	echo "You got D"
elif [ $score -lt 60 ]
then
	echo "You failed"
fi
