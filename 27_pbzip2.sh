#!/bin/bash
#Programa para empaquetar archivos con pbzip2. 

#Autor: Nicolás Rodríguez - @chino.rodgz

#Este comando soporta multicore, y al igual que gzip permite comprimir un solo archivo. 





echo " Empaquetamiento de los scripts en la carpeta con tar y luego con pbzip2 "

tar -cvf shellCourse.tar *.sh 
pbzip2 -f shellCourse.tar


echo "Empaquetamos un directorio con tar y pbzip2"

#En el siguiente comando primero empaquetamos con tar y luego esta carpeta la comprimimos con pbzip2. 

tar -cf *.sh -c > shellCourse_2.tar.bz2 



