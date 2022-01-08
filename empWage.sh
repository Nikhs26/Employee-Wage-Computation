#! /bin/bash

isPartTime=1
isFullTime=2
empRatePerHr=20
empCheck=$((RANDOM%3))

if [ $isPartTime -eq $empCheck ];
then
	empHrs=4
elif [ $isFullTime -eq $empCheck ];
then
	empHrs=8
else
	empHrs=0
fi

salary=$(($empHrs*$empRatePerHr))
echo $salary
