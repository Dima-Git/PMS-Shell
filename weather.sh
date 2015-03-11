wget pogoda.by -q index.html
grep "%<br>" < index.html | grep -o "[+ -][0-9]*\.[0-9]*"
rm -f index.html
