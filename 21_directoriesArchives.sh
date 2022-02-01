#!/bin/bash
#Programa para practicar la creación de archivos y directorios

#Autor: Nicolás Rodríguez - @chino.rodgz



echo " Archivos y directorios"

# el primer argumento será si es un directorio o un archivo 
# el segundo argumento será el nombre del archivo o directorio. 

clear
if [ $1 == "d" ];then
    mkdir -m 755 $2
    ls -la $2
elif [ $1 == "f" ];then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "Argumentos inválidos, ingrese [d/f] [nombre]"
fi






