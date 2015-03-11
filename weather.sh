while [ true ]
do
wget pogoda.by -q index.html
	tempo=`grep "%<br>" < index.html | grep -o "[+ -][0-9]*\.[0-9]*"`
	echo $tempo
	rm -f index.html
	sleep 5s
done
