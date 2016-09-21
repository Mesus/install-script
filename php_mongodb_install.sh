os="";
grep "centos" /etc/issue -i -q
if [ $? = '0' ];then
os='centos'
echo $os
yum -y install gcc php-pear php-devel
pecl install mongo
vim /etc/php.ini
#extension=mongo.so
fi

grep "Ubuntu" /etc/issue -i -q
if [ $? = '0' ];then
os='ubuntu'
echo $os
sudo apt-get install php-mongodb
php -m | grep -i mongo
fi

exit 1
