# !/bin/bash

#Validamos la información ingresada por el usuario a través de expresiones regulares. 

#Autor: Nicolás Rodríguez Álvarez 


#La identificación puede contener los números del 0 al 9 y tener 10 dígitos. 
id_regEx='^[0-9]{10}$'

#El país debe ser EC COL o ARG
country_regEx='^EC|COL|ARG$'

#La fecha de nacimiento debe ser con el formato yyyyMMDD
birthday_regEx='^19|20[0-9]{2}[1-12][1-31]$'


echo "Expresiones regulares"

read -p "Identificación: " id
read -p "País (EC, COl, ARG): " country
read -p "Fecha de nacimiento: " birthday



#Ahora validamos las expresiones regulares utilizando if [[ $datoIngresado =~ datoIngresadoRegEx ]]

if [[ $id =~ $id_regEx ]];then
    echo "identificación $id válida"
else
    echo "identificación $id inválida"
fi


if [[ $country =~ $country_regEx ]];then
    echo "País $country válido"
else
    echo "País $country inválido"
fi

if [[ $birthday =~ $birthday_regEx ]];then
    echo "Fecha de nacimiento $birthday válida"
else
    echo "Fecha de nacimiento $birthday inválida"
fi
