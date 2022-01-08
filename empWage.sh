#! /bin/bash

isPartTime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHr=20
noWorkingDays=20
totalEmpHr=0;
totalWorkingDays=0;

function getWorkingHours(){
case $1 in
        $isPartTime)
                empHrs=4
                ;;
        $isFullTime)
                empHrs=8
                ;;
        *)
                empHrs=0
                ;;
esac
echo $empHrs
}

while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $noWorkingDays ]]
do
((totalWorkingDays++))
workHrs=$( getWorkingHours $((RANDOM%3)) )
totalEmpHr=$(($totalEmpHr+$workHrs))
done
totalSalary=$(($totalEmpHr*$empRatePerHr))
echo $totalSalary
