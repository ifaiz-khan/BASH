############################
#
#Script : creating group
#
#############################

if [ ! -z "$1" ] 
then
	echo "the group name entered as $1"
	cat /etc/gshadow  | grep "^$1"
	if [ $? -eq 0 ]
	then
		echo " group nmae is already exist"
		exit
	else 
		echo " group is created"
		groupadd $1
	fi	
else
	echo "does not entered the group name"
fi	
