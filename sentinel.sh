#!/bin/bash
clear
echo "==============sentinel==============="
source auth.sh
if [ "$success" == "1" ] ; then
	while true
	do
		echo
		echo "========== MENU =========="
		echo "1) monitor system"
		echo "2) backup"
		echo "3) tasks"
		echo "4) uptime"
		echo "5) fileserver"
		echo "0) exit"
		read -p "choose : " op

		if [ "$op" == "1" ] ; then
			bash monitor.sh
		elif [ "$op" == "2" ] ; then
			bash backup.sh
		elif [ "$op" == "3" ] ; then
			bash tasks.sh
		elif [ "$op" == "4" ] ; then
			bash uptime.sh
		elif [ "$op" == "5" ] ; then
			bash fileserver.sh
		elif [ "$op" == "0" ] ; then
			break
		else
			echo "wrong choice "
		fi
	done
fi
