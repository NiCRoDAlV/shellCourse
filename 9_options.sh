# !/bin/bash

#Programa para ejemplificar el paso de opciones con o sin parámetros. 

#Autor: Nicolás Rodríguez



echo "Programa para el manejo de opciones"
echo "Opción 1 enviada: $1"
 
echo "Opción 1 enviada: $2"

echo "Opciónes enviadas: $*"

echo -e "\n"

echo "Recuperamos los valores"
while [ -n "$1" ]
do
case "$1" in
-a) echo "opción -a";;
-b) echo "opción -b";;

-c) echo "opción -c";;
*) echo "$! no es una opción";;
esac
shift
done


