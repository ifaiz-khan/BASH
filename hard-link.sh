# Script : creating the hard-link file
#/bin/bash
if [ -f "$1" ] &&  [ ! -z "$2" ]
then
	echo "Provided the inputs "
	ls $1
	if [ $? -eq 0 ]
	then
		echo "Source file is exist"
		ln $1 $2
		ls -l $2
	else
		echo "does not exist the source file"
		exit
	fi
else
	echo "Inputs are does not provided"
	
fi



