#!/bin/bash
#Programa para manejar archivos

#Autor: Nicolás Rodríguez - @chino.rodgz



echo " Manejando archivos "

mkdir -m 755 backupScripts

echo "Copiamos los archivos del directorio actual al nuevo directorio"

cp *.* backupScripts/
ls -la backupScripts/



echo -e "Movemos backupScripts a $HOME "
mv backupScripts $HOME



echo -e "Eliminamos los archivos .txt"

rm *.txt



