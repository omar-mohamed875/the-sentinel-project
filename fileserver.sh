#!/bin/bash
pid_file="/home/kali/sentinel_project/server.pid"
echo "====== FILE SERVER ======"
echo "1) start server"
echo "2) stop server"
read -p "choose : " ch
if [ "$ch" == "1" ] ; then
	read -p "enter folder to share: " dir
	if [ -d "$dir" ] ; then
		cd "$dir"
		python3 -m http.server 8000 > /dev/null 2>&1 &
		pid=$!
		echo "$pid" > "$OLDPWD/$pid_file"
		time=$(date)
		echo "$time server started in $dir" >> "$OLDPWD/fileserver_access.log"
		echo "server started on port 8000"
	else
		echo "folder not found"
	fi
fi
if [ "$ch" == "2" ] ; then
	if [ -f "$pid_file" ] ; then
		pid=$(cat "$pid_file")
		kill "$pid"
		time=$(date)
		echo "$time server stopped" >> fileserver_access.log
		rm "$pid_file"
		echo "server stopped"
	else
		echo "no server running"
	fi
fi
