#!/bin/bash
#Programa para empaquetar archivos con tar. 

#Autor: Nicolás Rodríguez - @chino.rodgz



echo " Empaquetamiento de los scripts en la carpeta con tar "

#Cuando empaquetamos con gzip el empaquetamiento anterior se elimina entonces ejecutando la siguiente linea se elimina shellCourse.tar. 
#Se utiliza en conjunto con tar ya que gzip empaqueta un solo archivo. 

gzip shellCourse.tar 


echo "Empaquetamos un solo archivo, con un ratio = 9"

gzip -9 16_loopFor.sh



