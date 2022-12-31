#!/bin/bash 
 
if [ "$#" -lt "2" ] ; then 
	echo "Incorrect usage ! Example:" 
	echo './countdown.sh -d  "Jun 10 2011 16:06"' 
	echo 'or' 
	echo './countdown.sh -m  90' 
	exit 1 
fi 
 
now=`date +%s` 
target=""
 
if [ "$1" = "-d" ] ; then 
	target=`date -d "$2"`
	until=`date -d "$2" +%s` 
	sec_rem=`expr $until - $now` 
	echo "-d" 
	if [ $sec_rem -lt 1 ]; then 
		echo "$2 is already history !" 
	fi 
fi 
 
if [ "$1" = "-m" ] ; then 
	target="$2 Minutes"
	until=`expr 60 \* $2` 
	until=`expr $until + $now` 
	sec_rem=`expr $until - $now` 
	echo "-m" 
	if [ $sec_rem -lt 1 ]; then 
		echo "$2 is already history !" 
	fi 
fi 
 
while [ $sec_rem -gt 0 ]; do 
	clear 
	date 
	now=`date +%s` 
	if [ "$1" = "-d" ] ; then 
		until=`date -d "$2" +%s` 
		sec_rem=`expr $until - $now` 
		if [ $sec_rem -lt 1 ]; then 
			echo "$2 is already history !" 
		fi 
	fi 
	 
	if [ "$1" = "-m" ] ; then 
		until=`expr 60 \* $2` 
		until=`expr $until + $now` 
		sec_rem=`expr $until - $now` 
		if [ $sec_rem -lt 1 ]; then 
			echo "$2 is already history !" 
		fi 
	fi 
 
	interval=$sec_rem 
	seconds=`expr $interval % 60` 
	interval=`expr $interval - $seconds` 
	minutes=`expr $interval % 3600 / 60` 
	interval=`expr $interval - $minutes` 
	hours=`expr $interval % 86400 / 3600` 
	interval=`expr $interval - $hours` 
	days=`expr $interval % 604800 / 86400` 
	interval=`expr $interval - $hours` 
	weeks=`expr $interval / 604800` 
	echo "----------------------------" 
	echo "Target:  " $target
	echo "Seconds: " $seconds 
	echo "Minutes: " $minutes 
	echo "Hours:   " $hours 
	echo "Days:    " $days 
	echo "Weeks:   " $weeks 

	sleep 1
done
printf "\n"
