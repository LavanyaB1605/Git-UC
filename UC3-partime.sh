#!/bin/bash -x 

isPartTime=1
isFullTime=2
randomCheck=$(($RANDOM%3))

if [ $isPartTime -eq $randomCheck ]
then
	empRatePerHr=5000
	empHrs=4
	sal=$(($empRatePerHr*$empHrs))
	echo "Employee is Partime with" $sal "Salary"

elif [ $isFullTime -eq $randomCheck ]
then
	empRatePerHr=5000
	empHrs=8
	sal=$(($empRatePerHr*$empHrs))
	echo "Employee is Fulltime with" $sal "Salary"

else
	echo "Employee is Absent"
fi
