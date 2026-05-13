#!/bin/bash
tasks_file="/home/kali/sentinel_project/.admin_tasks"
if [ ! -f "$tasks_file" ] ; then
	touch "$tasks_file"
fi
while true
do
	echo
	echo "====== TASKS ======"
	echo "1) add task"
	echo "2) view tasks"
	echo "3) delete task"
	echo "0) back"
	read -p "choose : " x
	if [ "$x" == "1" ] ; then
		read -p "task: " task
		read -p "priority (HIGH/MED/LOW): " pr
		read -p "date: " dt
		echo "$task | $pr | $dt" >> "$tasks_file"
		echo "added"
	elif [ "$x" == "2" ] ; then
		cat "$tasks_file"
	elif [ "$x" == "3" ] ; then
		cat "$tasks_file"
		read -p "enter task to delete: " del
		grep -v "$del" "$tasks_file" > temp.txt
		mv temp.txt "$tasks_file"
		echo "deleted"
	elif [ "$x" == "0" ] ; then
		break
	else
		echo "wrong"
	fi
done
