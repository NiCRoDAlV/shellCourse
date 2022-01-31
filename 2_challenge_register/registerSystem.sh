# !/bin/bash

#Solicitar la información de cada uno de ustedes como nombres, apellidos, edad, dirección y números telefónicos; y posterior imprima toda la información.


#Autor: Nicolás Rodríguez @chino.rodgz


answer=""

#expresiones regulares. 
nameRegex='^[a-z]|[A-Z]|[á-ú]|[Á-Ú]$'
surnameRegex='^[a-z]|[A-Z]|[á-ú]|[Á-Ú]$'
ageRegex='^[0-9]{2}$'
adressRegex='^[0-9]|[a-z]|[A-Z]$'
telephoneRegex='^[0-9]{11}$'







echo "PROGRAMA DE REGISTROS"
echo "Si desea ingresar un nuevo registro presione 'y', de lo contrario presione 'n' "
read -p "y/n: " answer

if [[ $answer == "y" ]]
then 
    clear
    read -p "Nombre: " name
    read -p "Apellidos: " surname
    read -p "Edad: " age
    read -p "Dirección: " adress
    read -p "Número telefónico: " telephoneNumber
    
    clear
    echo -e "\n"
    echo "--NUEVO REGISTRO--"
    echo "Nombre: $name"
    echo "Apellidos: $surname"
    echo "Edad: $age"
    echo "Dirección: $adress"
    echo "Número telefónico: $telephoneNumber"

    #Validación de la información. 



    echo -e "\n"
    echo "--VALIDACIÓN--"
    if [[ $name =~ $nameRegex ]];then
        echo "Nombre $name válido"
    else 
        echo "Nombre $name inválido"
    fi
    
    if [[ $surname =~ $surnameRegex ]];then
        echo "Apellido $surname válido"
    else 
        echo "Apellido $surname inválido"
    fi

    if [[ $age =~ $ageRegex ]];then
        echo "Edad $age válida"
    else 
        echo "Edad $age inválida"
    fi

    if [[ $adress =~ $adressRegex ]];then
        echo "Dirección $adress válida"
    else 
        echo "Dirección $adress inválida"
    fi

    if [[ $telephoneNumber =~ $telephoneRegex ]];then
        echo "Número telefónico $telephoneNumber válido"
    else 
        echo "Número telefónico $telephoneNumber inválido"
    fi
elif [[ $answer == "n" ]]
then
    exit 0

else
    echo "Presione un valor válido"

fi

