# !/bin/bash

#Programa para aprender declaración de variables. 

opcion=0
nombre=Nico
echo "OPCIÓN: $opcion y NOMBRE: $nombre"

#Exportamos la variable nombre para que sea accesible desde otros procesos o scripts. 

export nombre

#Llamamos al siguiente script para recuperar la variable

./2_variables_2.sh
