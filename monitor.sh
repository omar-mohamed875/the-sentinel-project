#!/bin/bash
clear
while true
do
	echo "====== SYSTEM MONITOR ======"
	echo "CPU:"
	top -bn1 | grep "Cpu"
	echo
	echo "RAM:"
	free -h
	echo
	echo "DISK:"
	df -h
	echo
	echo "==========================="
	read -p "press (q) to exit or enter to refresh: " x
	if [ "$x" == "q" ] ; then
		break
	fi

	clear
done
