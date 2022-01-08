#! /bin/bash

isPartTime=1
isFullTime=2
totalSalary=0
empRatePerHr=20
noWorkingDays=20

for (( day=1; day<=$noWorkingDays; day++ ))
do
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
salary=$(($empHrs*$empRatePerHr))
totalSalary=$(($totalSalary+$salary))
done
echo $totalSalary
