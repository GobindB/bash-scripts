#!/bin/sh
read -p "Please enter a color: " color
color=$(echo "$color" | tr '[:upper:]' '[:lower:]')
echo $color
case $color in
	[Bb][Ll]*)
		echo "The sky color is $color"
		;;
	red|yellow)
		echo "The sun is sometimes this color."
		;; 
	*)
		echo "That color is not in any of the categories defined"
esac