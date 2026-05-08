#!/bin/bash
clear
echo "==============sentinel==============="
users_files="/home/kali/sentinel_project/sentinel_users"
if [ ! -f "$users_files" ] ; then
	touch "$users_files"
	chmod 600 "$users_files"
fi
success=0
export success
echo "1)sign up"
echo "2)sign in"
echo "3)exit"
read -p "choose what do you want " ch

while true ; do
	if [ "$ch" == "1" ] ; then
		read -p "enter your username :" name
		read -sp "enter your password :" pass
		echo
		hashed=$(echo "$pass" | sha256sum | awk '{print $1}')
		echo "$name:$hashed" >> "$users_files"
		echo -e "user added ! "
		break
	elif [ "$ch" == "2" ] ; then
		read -p "enter your name :" name
		read -sp "enter your password :" pass
		echo
		hashed=$(echo "$pass" | sha256sum | awk '{print $1}')
		if grep -q "^$name:$hashed$" "$users_files" ; then
			echo "Login successful!"
			success=1
			break
		else
			echo "login failed"
			success=0
			break
		fi
	elif [ "$ch" == "3" ] ; then
		exit
	else
		echo "wrong choice"
		read -p "choose what do you want " ch
	fi
done

if [ "$success" == 1 ] ; then
	echo
	echo "welcome $name"
fi
