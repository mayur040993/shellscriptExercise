#!/bin/sh

c=`find $1 -type f`

for i in $c
do 
	mv $i $2
done

d=`find $1 -type d`

for i in $d
do
        mv $i $3 2>/dev/null
done

