#!/bin/sh

#find 4 character in 10 line
c=`head -n10 filehelp |tail -n1| head -c 4 | tail -c 1`
echo $c

