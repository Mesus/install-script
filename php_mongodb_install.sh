os="";
grep "centos" /etc/issue -i -q
if [ $? = '0' ];then
os='centos'
echo $os
yum -y install gcc php-pear php-devel
pecl install mongo
fi

grep "Ubuntu" /etc/issue -i -q
if [ $? = '0' ];then
os='ubuntu'
echo $os
sudo apt-get install php-mongodb
fi

exit 1
