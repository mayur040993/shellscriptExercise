#!/bin/sh

sum()
{
 c=`expr $1 $3 $2`
echo "$c"
}

if [ $# -gt 2 ]
then
echo "Argument is greater than 2";
elif [ $# -lt 2 ]
then 
echo "Argument is less than 2 ";
else
echo "Enter the Operator (+,-,/,*)";
read a;
while ( [ "$a" != "+" ] && [ "$a" != "-" ] && [ "$a" != "/" ] && [ "$a" != "*" ] ) 
do
echo "Please Enter the Appropriate Operator (+,-,/,*)";
read a
done
sum $1 $2 $a
fi
