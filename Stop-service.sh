#############################
#
# Script : STOP Services
#
#############################
if [ ! -z "$1" ]
then
	echo "Entered the service name as $1"
	systemctl -t service -a | grep  -i ${1}.service >> /dev/null
	if [ $? -eq 0 ]
	then
		echo "The service available"
	else
		echo "The service is not available"
		exit
	fi
	systemctl status $1 | grep -i 'Active: active (running)'
	if [ $? -eq 0 ]
	then
		echo "service is running, so now stopping the service $1"
		systemctl stop $1
	else
		echo "service is not running " 	
	fi
else
	echo " does not enetred the service name"
fi
