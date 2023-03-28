#!/bin/bash
echo "atualizando sistema"
	apt-get update -y
	apt-get upgrade -y

echo "instalando apache"
	apt-get install apache2 -y

echo "instalando unzip"
	apt-get install unzip -y
	
echo "indo para pasta tmp"
cd /tmp
echo "baixando projeto html e copiando para pasta do apache"
	wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
	unzip main.zip
	cd linux-site-dio-main
	cp -R * /var/www/html/

