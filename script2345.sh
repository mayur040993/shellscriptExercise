#!/bin/sh
: '
2 (arguments)Write a script 	
a.
which takes  in two arguments and print those arguments.	
b.	
which checks the number of arguments passed and if the number is greater than 
message along with printing the number of arguments.

3. Continue with the above script	
a.
check the two arguments are only integer values and if these are not integers print 
error on terminal and also log it into a file.
b.
perform addition on the two arguments and print result on screen. Use function 

4. Create a calculator using the above script which would perform addition,subtraction,division and multliplication.
a. the script should ask user which operation the user wants to perform:+,-,*,/
b. if user enters other than “+.-,*,/”, print proper message on terminal and keeps on 
(use while loop to accomplish this).
c. Use case statement instead of if
5. Write proper help documentation and print it with -h for above script.'

sum()
{
	c=`expr $1 $3 $2`
	echo "$c"
}

if [ $# -gt 2 ]
	then
	echo "Argument is greater than 2";
	exit 1
elif [ $# -lt 2 ]
	then
	if [ "$1" = "-h" ]
	then
	sh ./help4c.sh
	else 
		echo "Argument is less than 2 ";
		exit 1
	fi
else
	if echo $1 | egrep '^[0-9]+$'
	then
		if echo $2 | egrep '^[0-9]+$'
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
