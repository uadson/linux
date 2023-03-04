#!/bin/bash

echo "Atualizando o servidor ..."
apt-get update && apt-get upgrade -y

echo "Instalando apache unzip ..."
apt-get install apache2 -y

apt-get install unzip -y


echo "Copiandos os arquivos do projeto para o diretorio do Apache ..."
cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/
