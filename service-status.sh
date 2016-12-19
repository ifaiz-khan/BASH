
#############################
#
# Script : STATUS of a service
#
#############################
if [ ! -z  "$1" ]
then
	echo "The service name entered is $1"
	systemctl -t service -a | grep -i ${1}.service >> /dev/null
	if [ $? -eq 0 ]
	then
		echo "The given service $1 is available on the server. Below is the status of the service!!!!!"

		systemctl status $1 | grep -i "Active:*"
 
	else
		echo "the service is not available"
	fi

else
	echo " does not enetred the service  name"
fi
