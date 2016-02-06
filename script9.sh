#!/bin/sh
#Make a list of files in /usr/bin that have the letter "a" as the second character. Put the result in a temporary file.

c=`find /usr/bin -type f`
for i in $c
do 
	`basename $i | grep ^.a >> filehelp`
done
#echo $c


