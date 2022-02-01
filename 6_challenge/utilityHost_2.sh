# !/bin/bash
#RETO 6: Modificar programa utilityHost. sh para empaquetar los logs generados utilizando algún formato de compresión, colocarle una clave y pasarlo a otra máquina a través de SSH, cuando se seleccione la opción 7. Backup de Información


#Autor: Nicolás Rodríguez - @chino.rodgz





echo "RETO 5: Login"


option=0



while :
do
    clear
    #Desplegar menú de opciones
    echo "-------------------------------------------"
    echo "               MENÚ PRINCIPAL              "
    echo "-------------------------------------------"
    echo "(1) Procesos actuales"
    echo "(2) Memoria disponible"
    echo "(3) Espacio de disco"
    echo "(4) Información de red"
    echo "(5) Variables de entorno configuradas"
    echo "(6) Información de programa"
    echo "(7) Backup información"
    echo "(8) Salir"

    #Obtenemos la opción del usuario
    read -p "Ingrese una opción [1-8]:  " option

    #validar la opción ingresada

    case $option in
        1)
            echo -e "\nProcesos actuales"
            sleep 3
        ;;

        2)
            echo -e "\nMemoria disponible"
            sleep 3
        ;;


        3)
            echo -e "\nEspacio disco"
            sleep 3
        ;;
        4)
            echo -e "\nInformación de red"
            sleep 3
        ;;
        5)
            echo -e "\nVariables de entorno configuradas"
            sleep 3
        ;;
        6)
            echo -e "\nInformación programa"
            sleep 3
        ;;
        7)

            read -e -p "Usuario: " user
            read -s -p "Contraseña: " password
            date=`date +"%Y-%m-%d"`
            hour=`date +"%T"`
            echo "Usuario: $user   ;    Fecha: $date   ;  Hour: $hour" >> log.txt 
            read -p "Ingresar el host: " host
            read -p "Ingresar el usuario: " user
            echo -e"\nSe procede a empaquetar la carpeta shellCourse y transferirla"
            rsync -avz $(pwd) $user@$host:\Users\nicol
        ;;
        8)
            clear
            echo -e "\nSaliendo del programa..."
            sleep 1
            exit 0
        ;;
   esac

done
















