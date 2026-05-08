read -p "enter folder to backup: " dir
if [ -d "$dir" ] ; then
	time=$(date +"%Y-%m-%d_%H-%M")
	name="backup_$time.tar.gz"
	tar -czf "$name" "$dir"
	size=$(du -h "$name" | awk '{print $1}')
	echo "$time | $dir | $name | $size" >> backup.log
	echo "backup done: $name"
else
	echo "folder not found"
fi
