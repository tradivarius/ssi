cd  importante
fecha=$(date +%Y%m%d)
for i in */; do tar -cvzf /media/backup/"${i%/}_$fecha.tgz" "$i";done
n_fichero=$(ls /media/backup | wc -l)
if [ $n_fichero -gt 6 ]; then
	 ls -tQ /media/backup/ | head -n 1 | xargs rm -Rf
fi
