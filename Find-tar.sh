#script :  finding group
#/bin/bash
if [ ! -z "$1" ] && [ ! -z "$2" ]
then
	echo "The tarfile name as $1"
	echo "The compression files are  $2"
	ls $2 
	if [ $? -eq 0 ]
	then
		echo "The given files are  exist, so Compressing the given files"
		tar -cf $1 $2  
		ls
	else
		echo "The source file does not exist"
		exit
	fi
else
	echo "Did not entered the inputs"
fi

