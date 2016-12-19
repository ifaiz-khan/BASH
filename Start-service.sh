#####################################
#
#  Script : Start Service
#
######################################

if [ ! -z  "$1" ]
then
	echo "Entered the input servername as $1"

	systemctl -t service -a | grep -i "${1}.service" >> /dev/null

        if [ $? -eq 0 ]
        then
                echo "Service is available"

        	systemctl status $1 | grep -i 'active:*'
        	if [ $? -eq 0 ]
        	then
                	echo "Service is running. Hence exiting the script"
                	exit
        	else
                	echo "service is not running ,so now starting the service $1"
                	systemctl start $1
        	fi


        else
                echo "Service is not available"
        fi


else
	echo "The  input  is not entered "
fi
