#!/bin/bash
file="/home/kali/sentinel_project/.watchlist.conf"
if [ ! -f "$file" ] ; then
	touch "$file"
fi
echo "====== UPTIME ======"
while read server
do
	if ping -c 1 "$server" > /dev/null 2>&1 ; then
		echo "$server is up"
	else
		echo "$server is down"
		time=$(date)
		echo "$time $server down" >> uptime.log
	fi
done < "$file"
