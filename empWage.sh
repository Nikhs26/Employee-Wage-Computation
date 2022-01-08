#! /bin/bash -x

isPartTime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHr=20
noWorkingDays=20
totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $noWorkingDays ]]
do
((totalWorkingDays++))
empCheck=$((RANDOM%3))

case $empCheck in
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

totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$(($totalEmpHr*$empRatePerHr))
echo $totalSalary
