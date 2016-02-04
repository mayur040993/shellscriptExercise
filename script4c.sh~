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
	if [ "$1" = "-h" ]
	then
	sh ./help4c.sh
	else 
		echo "Argument4 is less than 2 ";
	fi
else
	if echo $1 | egrep '^[0-9]+$'
	then
		if echo $2 | egrep '^[0-9]*$'
		then
		echo "Enter the operator (+,-,*,/)";
		read a
		while ( [ "$a" != "+" ] && [ "$a" != "-" ] && [ "$a" != "/" ] && [ "$a" != "*" ] ) 
		do
			echo "Please Enter the Appropriate Operator (+,-,/,*)";
			read a
		done
		case $a in
	  		"+" ) sum $1 $2 $a
			;;
			"-" ) sum $1 $2 $a
			;;
			"/" ) sum $1 $2 $a
			;;
			"*" ) sum $1 $2 $a
			;;
	
		esac
		else
			echo "Second Argument should be Number"
		fi
	else
		echo "First Argument should be Number"
	fi
fi
