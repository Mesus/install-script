#!/bin/bash
if [[ $1 == "" ]]
 then
 echo "Please set project name"
 else
 sudo apt-get -y install composer
 sudo apt-get -y install php-mbstring php-dom 
 composer create-project laravel/laravel $1
 echo $1
fi
