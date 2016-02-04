#!/bin/sh

sum()
{
 c=`expr $1 + $2`
echo "$c"
}

if [ $# -gt 2 ]
then
echo "Argument is greater than 2";
elif [ $# -lt 2 ]
then 
echo "Argument is less than 2 ";
else
sum $1 $2
fi
