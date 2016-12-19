#Scripts : creating soft-link
#/bin/bash
if [ -f "$1" ] && [ ! -z "$2" ]
then    
	echo "Inputs are provided"
 	ls $1
	if [ $? -eq 0 ]
	then
		echo "The given source file exist"
		ln -s $1 $2
		ls -l $2
	else
		echo "The source file does not exist"
	fi
else 
	echo "Inputs are not provided"
fi 
 






