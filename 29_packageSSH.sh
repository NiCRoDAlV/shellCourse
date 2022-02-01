#!/bin/bash
#Programa para transferir archivos y directorios a través de la red
# con rsync.  

#Autor: Nicolás Rodríguez - @chino.rodgz


echo " Empaquetamiento de los scripts en la carpeta y transferirlos por la red a otro equipo utilizando rsync"


read -p "Ingresar el host: " host
read -p "Ingresar el usuario: " user
echo -e "\nSe procede a empaquetar la carpeta shellCourse y transferirla"

rsync -avz ~/shellCourse $user@$host:C:\Users\nicol

