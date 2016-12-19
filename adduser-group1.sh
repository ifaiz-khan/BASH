##############################
#
# Script : Adding User to Group
#
##############################

if [ ! -z "$1" ] && [ ! -z "$2" ]
then
	echo "entered the Group as $1 and User as $2"
	cat /etc/gshadow | grep "$1"
	if [ $? -eq 0 ]
	then
		echo "the group name is exist"
	else
		echo "the group name does not exist"
		exit 2
	fi
	cat /etc/passwd | grep "$2"
	if [ $? -eq 0 ]
	then
		echo "user is exist"
	else
		echo "user does not exist"
		exit 3
	fi

	echo "Both given inputs are exist. so adding user $2 to group $1"
	usermod -G $1 $2
	echo "abc"
	if [ $? -eq 0 ]
	then
	echo $?
	else
		echo $?
	fi
else
	echo " does not entered the inputs"  
fi	
