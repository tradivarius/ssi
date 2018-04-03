#!/bin/bash
cd  importante
fecha=$(date +%Y%m%d)
for i in */; do tar -cvzf /media/backup/"${i%/}_$fecha.tgz" "$i";done
n=$(ls /media/backup | wc -l)
let numero=$n-5
if [ $n -gt 5 ]; then
	   ls -tQ /media/backup | head -n $numero | xargs rm 

fi
