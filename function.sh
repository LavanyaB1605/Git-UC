#!/bin/bash -x

function my_func()
{
	result=$(($num1*$num2))
	echo $result
}

echo "Enter 2 Numbers:"
read num1 
read num2
my_func $num1 $num2
echo "The output is" $result
