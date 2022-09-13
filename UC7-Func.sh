#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
maxRateInMonth=100
numOfWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

function getWorkHours()
{
        case $rc in
                        $isPartTime )
                                empHrs=4
                        ;;
                        $isFullTime )
                                empHrs=8
                        ;;
			*)
				empHrs=0
			;;
	esac
}

while [[ $totalEmpHr -lt $maxRateInMonth &&
        $totalWorkingDays -lt $numOfWorkingDays ]]
do
        ((totalWorkingDays++))
        rc=$((RANDOM%3))
	getWorkHours $rc
	totalEmpHr=$((totalEmpHr+empHrs))
done

totalSalary=$((totalEmpHr*empRatePerHr))

