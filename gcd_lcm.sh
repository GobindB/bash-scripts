#!/bin/sh
if [[ $1 == $null ]];then
    echo -e "At least one number is required."
    exit 1
fi 

max=$1
min=$2
if [ $1 -lt $2 ]
then 
	max=$2
	min=$1
fi

while [ $max -ne 0 ]
do
	num1=`expr $1 % $max`
	num2=`expr $2 % $max`
	if [ $num1 -eq 0 -a $num2 -eq 0 ]
	then
		echo "GCD of $1 & $2 is: ${max##*[+-]}"
		break
	fi
	max=`expr $max - $min`
done

lcm=`expr $2 \* $1 / $max`
echo "LCM of $1 & $2 is: ${lcm##*[+-]}"

