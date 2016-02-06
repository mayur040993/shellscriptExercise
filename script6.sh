#!/bin/sh
file="/etc/passwd"
c=0
d=0
while IFS=: read -r f1 f2 f3 f4 f5 f6 f7 
do
	c=`expr $f4 + $c`
   	d=`expr $f3 + $d`     
done <"$file"
echo "sum of uuids $d"
echo "sum of guids $c"

if [ $c -gt $d ]
then 
echo "Sum of guids is greater "
else
echo "Sum of uuids is greater "
fi
