#!/bin/sh

d=`cat $1`
echo " " |cat>filehelp 
for i in $d
do
	#c=$2+$i+$3
	
	echo "$2$i$3" | cat>>filehelp
done
mv filehelp $1
