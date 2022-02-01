# !/bin/bash

#RETO: Modificar el archivo utilityHost.sh para escribir la información solicitada a un archivo de log cuyo nombre será log donde yyyy representa el año, MM el mes, DD el día, HH la hora, mm los minutos y SS los segundos.

#Autor: Nicolás Rodríguez - @chino.rodgz





echo "RETO 5: Login"

read -e -p "Usuario: " user
read -s -p "Contraseña: " password

date=`date +"%Y-%m-%d"`
hour=`date +"%T"`

echo "Usuario: $user   ;    Fecha: $date   ;  Hour: $hour" >> log.txt 





