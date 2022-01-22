# !/bin/bash

#Programa para ejemplificar la capturación de información utilizando echo, read y $REPLY. 


#Autor: Nicolás Rodríguez


option=0
backupName=""
echo "Programa de utilidades Postgres"
echo -n "Ingresar una opción: "
read
option=$REPLY
echo -n "Ingresar el nombre del archivo: "
read
backupName=$REPLY
echo "Opción: $option, Nombre: $backupName"


 



