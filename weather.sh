while [ true ]
do
	time=`cat config.ini`
	wget pogoda.by -q index.html
	tempo=`grep "%<br>" < index.html | grep -o "[+ -][0-9]*\.[0-9]*"`
	echo $tempo
	rm -f index.html
	sleep $time
done
