#Script : creating a new user
#/bin/bash
if [ ! -z "$1" ] 
then
	echo " username  is entered as $1"
	cat /etc/passwd | grep '^$1:'
	if [ $? -eq 0 ]
	then
		echo "the username is already  exist"
		exit	
	else 
		if [ ! -z "$2" ]
		then
			echo "password is entered" 
			echo "user is creating"
			useradd $1 -p $2
		else
			echo "the password  does not entered"
   			exit
		fi
	fi
else
	echo  "did not entered the user name so user is does not created"
fi
