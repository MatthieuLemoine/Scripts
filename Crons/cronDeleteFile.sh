#!/bin/bash

echo "Check expired files"
let "expiredTime=73*60*60" # en secondes

for file in *
do	
	now=`date +%s`
	filetime=`stat -c %Y "$file"`
	let "age=$now-$filetime"
	if [[ $age -gt $expiredTime ]]
	then
		rm -rf $file
		echo "Deleting $file"
	fi
done

