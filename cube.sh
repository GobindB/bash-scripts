#!/bin/sh
# A simple script with a function...

cal_cube()
{
  echo "The number is: $1"
  cube=`expr $1 \* $1 \* $1`
  echo "The cube is: $cube"
}

cal_cube $1