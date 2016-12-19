if [ ! -z "$1" ]
then 
	echo "entered the input as $1"
	wget -c  http://mirror.centos.org/centos/6/os/x86_64/Packages/tree-1.5.3-3.el6.x86_64.rpm
else
	echo "did not enter the input"
fi
