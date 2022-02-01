#!/bin/bash
#Programa para empaquetar con clave de acceso con zip. 

#Autor: Nicolás Rodríguez - @chino.rodgz


echo " Empaquetamiento de los scripts en la carpeta y asignado de clave de seguridad"

#Este comando nos pedirá un password para empaquetar
zip -e shellCourse.zip  *.sh

#Cuando queramos descomprimirlo utilizamos el comando unzip y ingresamos la contraseña correcta. 



