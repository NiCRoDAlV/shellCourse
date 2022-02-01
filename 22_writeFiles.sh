#!/bin/bash
#Programa para escribir en un archivo

#Autor: Nicolás Rodríguez - @chino.rodgz



echo " Escribiendo en un archivo "

#Todo lo que pasemos en el segundo argumento se escribirá en el primero (que será el path de un archivo)
#Sirve para una sola línea

##echo $2 >> $1


#Edición multilinea

cat <<EOM>>$1
$2
EOM


