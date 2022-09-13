#!/bin/bash 

isFullTime=1
isPartTime=2
empRatePerHr=500
randomCheck=$(($RANDOM%3))

case $randomCheck in
			$isFullTime )
				empHrs=8
			;;
			$isPartTime )
				empHrs=4
			;;
			*) 
				empHrs=0
				echo "Employee is absent"
			;;
esac

Sal=$((empRatePerHr*empHrs))
echo "Employee Salary is" $Sal 
