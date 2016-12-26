############################
#
#Script : creating group
#
#############################

if [ ! -z "$1" ] 
then
	echo "The group name entered is $1"
	cat /etc/gshadow  | grep "^${1}:" > /dev/null
	if [ $? -eq 0 ]
	then
		echo "Group $1 already exists"
		exit
	else 
		echo "Creating the group $1"
		groupadd $1
	fi	
else
	echo "Group name is not provided"
fi	
