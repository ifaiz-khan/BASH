##############################################
#
# Script : Installing packages by using yum 
#
##############################################
if [ ! -z "$1" ] 
then
	echo "entered the package name as $1"
	yum remove $1
	exit
else
	echo "did not enter the package name"
fi		
