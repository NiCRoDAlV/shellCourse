#!/bin/bash
# Programa para practicar Ifs anidados. 
#Autor Nicolás Rodríguez @chino.rodgz


option=""

echo "Ejemplo sentencia 'case'"
read -n1 -p "Ingrese una opción en  [A-E]: " option
echo -e "\n"
case $option in

    "A") echo -e "\nOperación: Guardar archivo"
    ;;
    "B") echo -e "\nOperación: Eliminar archivo"
    ;;

    [C-E]) echo "No está implementada la operación"
    ;;

    *) echo "Valor inválido" 
esac

