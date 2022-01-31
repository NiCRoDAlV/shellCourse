#!/bin/bash
#Programa para practicar arreglos

#Autor: Nicolás Rodríguez - @chino.rodgz


numbersArray=(1 2 3 4 5 6)
stringsArray=(Emilia, Rocío, Ana)
rangesArray=({A..Z} {1..10})

#Imprimimos en consola los valores

echo "Arreglo de números ${numbersArray[*]}"
echo "Arreglo de cadenas ${stringsArray[*]}"
echo "Arreglo de rangos de valores ${rangesArray[*]}"

#Imprimimos los tamaños de los arreglos
echo "Tamaño de números ${#numbersArray[*]}"
echo "Tamaño de cadenas ${#stringsArray[*]}"
echo "Tamaño de rangos de valores ${#rangesArray[*]}"



#Imprimir una posición en específico
#Por ejemplo, para la posición 3

echo "Posición 3 de números ${numbersArray[3]}"
echo "Posición 2 de cadenas ${stringsArray[2]}"
echo "Posición 1 de rangos de valores ${rangesArray[1]}"


#Añadir e eliminar valores en un arreglo

#Agregamos 
numbersArray[7]=20
echo "Arreglo de números ${numbersArray[*]}"


#eliminamos
unset numbersArray[0]
echo "Tamaño de números ${#numbersArray[*]}"






