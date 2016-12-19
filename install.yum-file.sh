##############################################
#
# Script : Installing packages by using yum 
#
##############################################
if [ ! -z "$1" ] 
then
	echo "entered the package name as $1"
	rpm -qa | grep -i ${1}
	if [ $? -eq 0 ]
	then
		echo " given package is exist so its already installed"
		exit
	else
		echo "does not exist the package"
		yum search $1 | grep "^${1}"	
		if [ $? -eq 0 ]
		then
			echo " the given package is exist in yum repository"
			echo "installing the package"
			yum  install -y  $1
		else
			echo "does not exist in yum repository"
			exit 
		fi 	
	fi 
else
		echo "did not enter the package name"
fi		
