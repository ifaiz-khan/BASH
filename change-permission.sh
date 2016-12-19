#############################

Script : changing the permissions of a file

#############################

if [ -f "$1" ]
then
	echo "file is eixst "
	echo "changing th permissions to the file"
	chmod  777 $1	
else
	echo " file does not exist"	
fi	
