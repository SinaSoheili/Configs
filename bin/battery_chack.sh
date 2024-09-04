#! /bin/bash

# add following line to cron 
# m h  dom mon dow   command
# * *  *   *   *     DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus ~/bin/./battery_chack

threshold=95
current_capacity=$(cat /sys/class/power_supply/BAT1/capacity)

if [ $current_capacity -ge $threshold ]
then 
	notify-send "charge full"
fi
