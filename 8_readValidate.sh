# !/bin/bash

#Programa para ejemplificar como capturar información y validarla

#Autor: Nicolás Rodríguez


option=0
backupName=""
password=""

echo "Programa de utilidades Postgres"

#Solo valida si la entrada es de un único caracter con "-n1" saltamos a la siguiente linea ni bien ponga un caracter
read -n1 -p "Ingresar una opción: " option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo de backup: " backupName

echo -e "\n"

echo "Opción: $option, Nombre: $backupName"
#con -s (silent) no dejamos que se vea la información ingresada por el usuario.
read -s -p "Clave: " password

echo -e "\n"

echo "Clave: $password"

 



