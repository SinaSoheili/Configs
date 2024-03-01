#! /bin/bash

threshold=95
current_capacity=$(cat /sys/class/power_supply/BAT1/capacity)

if [ $current_capacity -ge $threshold ]
then 
	notify-send "charge full"
fi
