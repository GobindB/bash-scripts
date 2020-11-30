#!/bin/sh
usage="$(basename "$0") [-h] -- program to calculate the factorial and sum of a number

where:
    -h  show this help text"

if [ "$1" == "-h" ] || [ "$1" -lt 1 ] || [ "$1" -gt 10 ]
then
  echo "Usage: `basename $0` please enter a number argument between 1-10"
  exit 0
fi

number=${1:?echo "$usage" }
sum=0
product=1

for (( i=1; i <= $number; ++i ))
do
    sum=`expr $sum + $i`
    product=`expr $product \* $i`
done

echo "The sum of $1 is: $sum"
echo "The factorial of $1 is: $product"