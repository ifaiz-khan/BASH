##############################
#
# Script : Finding file exist
#
##############################
if [ ! -z "$1" ]
then    
	echo "entered the file name as $1"
	ls $1
        if [ $?  -eq 0 ]
	then
		echo " the file exist "
	else
		echo " the file does not exist"
	fi 
else
echo " did i not enter the filename "	
fi
