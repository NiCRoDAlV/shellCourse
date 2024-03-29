12_IfAnidado.sh                                                                                     0000755 0001750 0001750 00000000744 14176020432 013415  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                #!/bin/bash
# Programa para practicar Ifs anidados. 
#Autor Nicolás Rodríguez @chino.rodgz

read -n1 -p "Indique la nota del alumno (0-10)" qualification
echo -e "\n"
if [ $qualification -ge 7 ];then
    echo "El alumno aprueba la materia"
    read -p "¿Seguirá estudiando en el siguiente nivel? (s/n)" answer

    if [ $answer = "s" ];then

        echo "Bienvenido al siguiente nivel"
    elif [ $answer = "n" ];then
        echo "Gracias por asistir hasta aquí"
    fi
fi




                            13_conditionalExpresions.sh                                                                         0000755 0001750 0001750 00000001752 14176046267 016201  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                #!/bin/bash
# Programa para practicar expresiones condicionales 
#Autor Nicolás Rodríguez @chino.rodgz


edad=0
pais=""
archivePath=""

read -p "Ingrese su edad: " age

read -p "Ingrese su País: " country
read -p "Ingrese el path de su archivo: " archivePath

echo -e "\nExpresiones condicionales con números"

if [ $age -lt 10 ];then
    echo "La persona es niñe"
elif [ $age -ge 10 ] && [ $age -le 17 ]; then

    echo "La persona es adolescente"
else
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones condicionales con cadenas"

if [ $country = "EEUU" ];then
    echo "La persona es norteamericana"
elif [ $country = "Ecuador" ] || [ $country == "Colombia" ]; then

    echo "La persona es Sudamericana"
else
    echo "Se desconoce su nacionalidad"
fi


echo -e "\nExpresiones condicionales con archivos"
#Con -d verificamos si existe un archivo
if [ -d $archivePath ];then
    echo "El directorio $archivePath existe"
else
    echo "El directorio $archivePath no existe"
fi



                      14_caseSentence.sh                                                                                  0000755 0001750 0001750 00000000662 14176050453 014206  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                #!/bin/bash
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

                                                                              15_arrays.sh                                                                                        0000755 0001750 0001750 00000001750 14176054707 013115  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                #!/bin/bash
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






                        17_loopWhile.sh                                                                                     0000755 0001750 0001750 00000000316 14176063527 013555  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                #!/bin/bash
#Programa para practicar iteración for

#Autor: Nicolás Rodríguez - @chino.rodgz

number=1


while [ $number -ne 10 ]
do
    echo "Iteración: $number"
    number=$(( number+1 ))
done







                                                                                                                                                                                                                                                                                                                  18_nestedLoops.sh                                                                                   0000755 0001750 0001750 00000000370 14176066150 014106  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                #!/bin/bash
#Programa para practicar iteraciónes anidadas

#Autor: Nicolás Rodríguez - @chino.rodgz



echo " Loops anidados "

for file in $(ls)
do
    for name in {1..4}
    do
        echo "Nombre archivo: $file _ $name"
    done
done







                                                                                                                                                                                                                                                                        19_breakContinue.sh                                                                                 0000755 0001750 0001750 00000000617 14176073647 014416  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                #!/bin/bash
#Programa para practicar breack y continue

#Autor: Nicolás Rodríguez - @chino.rodgz



echo " Break y continue "

for file in $(ls)
do
    for name in {1..4}
    do
        if [ $file = "10_download.sh" ]; then
            break;
        elif [[ $file == 4* ]]; then
            continue;
        else

            echo "Nombre archivo: $file _ $name"
        fi
    done
done







                                                                                                                 1_utilityPostgres.sh                                                                                0000775 0001750 0001750 00000000231 14172550203 014740  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                #!/bin/bash
#Comentario: Pograma para realizar algunas operaciones utilitarias de Postgres. 

echo "Hola!, este es el cursod de programación en bash"


                                                                                                                                                                                                                                                                                                                                                                       20_optionsMenu.sh                                                                                   0000755 0001750 0001750 00000002533 14176073545 014131  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                #!/bin/bash

#Menú de opciones - lo vamos a utilizar para manejar las utilidades de Postgres. 

#Autor: Nicolás Rodríguez  -  @chino.rodgz


option=0


#Con el siguiente while logramos que el programa no termine hasta que el usuario ingrese la opcion 5. 

while :
do
    clear 
    #Desplegar menú de opciones
    echo "-------------------------------------------"
    echo "PGUTIL - Programa de utilidades de Postgres"
    echo "-------------------------------------------"
    echo "               MENÚ PRINCIPAL              "
    echo "-------------------------------------------"
    echo "(1) Instalar Postgres"
    echo "(2) Desinstalar Postgres"
    echo "(3) Sacar un respaldo"
    echo "(4) Restaurar respaldo"
    echo "(5) Salir"


    #Obtenemos la opción del usuario
    read -p "Ingrese una opción [1-5]:  " option

    #validar la opción ingresada

    case $option in 
        1)
            echo -e "\nInstalando Postgres"
            sleep 3
        ;;
        
        2)
            echo -e "\nDesinstalando Postgres"
            sleep 3
        ;;


        3)
            echo -e "\nSacando respaldo"
            sleep 3
        ;;
        4)
            echo -e "\nRestaurando Postgres"
            sleep 3
        ;;
        5)
            echo -e "\nSaliendo del programa"
            sleep 1
            exit 0
   esac

done
        ;;
                                                                                                                                                                     21_directoriesArchives.sh                                                                           0000755 0001750 0001750 00000000774 14176113113 015602  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                #!/bin/bash
#Programa para practicar la creación de archivos y directorios

#Autor: Nicolás Rodríguez - @chino.rodgz



echo " Archivos y directorios"

# el primer argumento será si es un directorio o un archivo 
# el segundo argumento será el nombre del archivo o directorio. 

clear
if [ $1 == "d" ];then
    mkdir -m 755 $2
    ls -la $2
elif [ $1 == "f" ];then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "Argumentos inválidos, ingrese [d/f] [nombre]"
fi






    22_writeFiles.sh                                                                                    0000755 0001750 0001750 00000000514 14176230317 013715  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                #!/bin/bash
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


                                                                                                                                                                                    23_readFiles.sh                                                                                     0000755 0001750 0001750 00000000732 14176230040 013472  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                #!/bin/bash
#Programa para leer un archivo

#Autor: Nicolás Rodríguez - @chino.rodgz



echo " Leyendo en archivo "

echo "Forma directa con cat"
cat $1

echo -e "\nForma indirecta, almacenando los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"


#Utilizamos IFS (Internal Field Separator)
#para evitar que los espacios de sangría se recorten

echo -e "\nLeer archivos linea por linea utilizando while"
while IFS= read linea
do
    echo "$linea"
done < $1


                                      24_filesOperations.sh                                                                               0000755 0001750 0001750 00000000602 14176116716 014754  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                #!/bin/bash
#Programa para manejar archivos

#Autor: Nicolás Rodríguez - @chino.rodgz



echo " Manejando archivos "

mkdir -m 755 backupScripts

echo "Copiamos los archivos del directorio actual al nuevo directorio"

cp *.* backupScripts/
ls -la backupScripts/



echo -e "Movemos backupScripts a $HOME "
mv backupScripts $HOME



echo -e "Eliminamos los archivos .txt"

rm *.txt



                                                                                                                              25_tar.sh                                                                                           0000755 0001750 0001750 00000000425 14176236640 012377  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                #!/bin/bash
#Programa para empaquetar archivos con tar. 

#Autor: Nicolás Rodríguez - @chino.rodgz



echo " Empaquetamiento de los scripts en la carpeta con tar "
#c-> create, v->verbose (Para ver en la consola lo que empaqueto) , f->file

tar -cvf shellCourse.tar *.sh




                                                                                                                                                                                                                                           26_gzip.sh                                                                                          0000755 0001750 0001750 00000000741 14176237357 012572  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                #!/bin/bash
#Programa para empaquetar archivos con tar. 

#Autor: Nicolás Rodríguez - @chino.rodgz



echo " Empaquetamiento de los scripts en la carpeta con tar "

#Cuando empaquetamos con gzip el empaquetamiento anterior se elimina entonces ejecutando la siguiente linea se elimina shellCourse.tar. 
#Se utiliza en conjunto con tar ya que gzip empaqueta un solo archivo. 

gzip shellCourse.tar 


echo "Empaquetamos un solo archivo, con un ratio = 9"

gzip -9 16_loopFor.sh



                               27_pbzip2.sh                                                                                        0000755 0001750 0001750 00000001034 14176240301 013003  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                #!/bin/bash
#Programa para empaquetar archivos con pbzip2. 

#Autor: Nicolás Rodríguez - @chino.rodgz

#Este comando soporta multicore, y al igual que gzip permite comprimir un solo archivo. 





echo " Empaquetamiento de los scripts en la carpeta con tar y luego con pbzip2 "

tar -cvf shellCourse.tar *.sh 
pbzip2 -f shellCourse.tar


echo "Empaquetamos un directorio con tar y pbzip2"

#En el siguiente comando primero empaquetamos con tar y luego esta carpeta la comprimimos con pbzip2. 

tar -cf *.sh -c > shellCourse_2.tar.bz2 



                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    2_variables.sh                                                                                      0000755 0001750 0001750 00000000467 14172571674 013507  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                # !/bin/bash

#Programa para aprender declaración de variables. 

opcion=0
nombre=Nico
echo "OPCIÓN: $opcion y NOMBRE: $nombre"

#Exportamos la variable nombre para que sea accesible desde otros procesos o scripts. 

export nombre

#Llamamos al siguiente script para recuperar la variable

./2_variables_2.sh
                                                                                                                                                                                                         2_variables_2.sh                                                                                    0000755 0001750 0001750 00000000174 14172572063 013714  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                # !/bin/bash
#Programa para aprender a importar variables


echo "OPCIÓN nombre desde el script 2_variables.sh: $nombre"


                                                                                                                                                                                                                                                                                                                                                                                                    3_operatorsType.sh                                                                                  0000755 0001750 0001750 00000002104 14172575367 014411  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                # !/bin/bash

#Programa para aprender tipos de operadores.

numA=10
numB=4

#con ESC + u podemos borrar lo que hicimos anteriormente. 
#para copiar una linea nos ubicamos en la línea que queremos copiar y luego ESC "Y" y luego p
# con ESC númeroLineas + "y" + "y" podemos copiar varias lineas


echo "Operadores aritméticos"
echo "Números: A = $numA ; B = $numB "
echo "Sumar A + B = $((numA+numB))"
echo "Multiplicar A * B = $((numA*numB))"
echo "Dividir A / B = $((numA/numB))"
echo "Residuo A % B = $((numA%numB))"

echo -e"\nOperadores Relacionales"
echo "Números: A = $numA ; B = $numB "
echo "A > B : $((numA > numB))"
echo "A < B : $((numA < numB))"
echo "A >= B :$((numA >= numB))"
echo "A <= B :$((numA <= numB))"
echo "A == B :$((numA == numB))"
echo "A != B :$((numA != numB))"


echo -e"\nOperadores de Asignación"
echo "Números: A = $numA ; B = $numB "
echo "Sumar A += B : $((numA += numB))" 
echo "Restar A -= B : $((numA -= numB))"
echo "Multiplicar A *= B : $((numA *= numB))" 
echo "Dividir A /= B : $((numA /= numB))"
echo "Residuo A %= B : $((numA %= numB))"

 



                                                                                                                                                                                                                                                                                                                                                                                                                                                            4_arguments.sh                                                                                      0000755 0001750 0001750 00000000455 14172577046 013542  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                # !/bin/bash
#Programa para ejemplificar el paso de argumentos
#Autor: Nicolás Rodríguez. 

nombreCurso=$1
horarioCurso=$2


echo "El nombre del curso es: $nombreCurso, dictado en el horario $horarioCurso"
echo "El número de parámetros enviados es $#"
echo "Los parámetros enviados son: $*"





                                                                                                                                                                                                                   5_substitutionCommand.sh                                                                            0000755 0001750 0001750 00000000574 14172600534 015600  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                # !/bin/bash

#Programa para aprender la ejecución de comandos dentro de un programa y guardarlo en una variable para su posterior utilización. 

#Autor: Nicolás Rodríguez

#con ESC + d podemos borrar la linea en la que estamos. 

actualUbication='pwd'
infoKernel=$(uname -a)

echo "La ubicación actual es: $actualUbication"
echo "Información del kernel: $infoKernel"

 



                                                                                                                                    6_readEcho.sh                                                                                       0000755 0001750 0001750 00000000563 14172615515 013243  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                # !/bin/bash

#Programa para ejemplificar la capturación de información utilizando echo, read y $REPLY. 


#Autor: Nicolás Rodríguez


option=0
backupName=""
echo "Programa de utilidades Postgres"
echo -n "Ingresar una opción: "
read
option=$REPLY
echo -n "Ingresar el nombre del archivo: "
read
backupName=$REPLY
echo "Opción: $option, Nombre: $backupName"


 



                                                                                                                                             7_read.sh                                                                                           0000755 0001750 0001750 00000000526 14172621255 012442  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                # !/bin/bash

#Programa para ejemplificar la capturación de información utilizando read 


#Autor: Nicolás Rodríguez


option=0
backupName=""
echo "Programa de utilidades Postgres"
read -p "Ingresar una opción: " option
read -p "Ingresar el nombre del archivo de backup: " backupName
echo "Opción: $option, Nombre: $backupName"



 



                                                                                                                                                                          8_readValidate.sh                                                                                   0000755 0001750 0001750 00000001210 14172626473 014113  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                # !/bin/bash

#Programa para ejemplificar como capturar información y validarla

#Autor: Nicolás Rodríguez


option=0
backupName=""
password=""

echo "Programa de utilidades Postgres"

#Solo valida si la entrada es de un único caracter con "-n1" saltamos a la siguiente linea ni bien ponga un caracter
read -n1 -p "Ingresar una opción: " option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo de backup: " backupName

echo -e "\n"

echo "Opción: $option, Nombre: $backupName"
#con -s (silent) no dejamos que se vea la información ingresada por el usuario.
read -s -p "Clave: " password

echo -e "\n"

echo "Clave: $password"

 



                                                                                                                                                                                                                                                                                                                                                                                        9_options.sh                                                                                        0000755 0001750 0001750 00000000710 14172627505 013223  0                                                                                                    ustar   nicorod                         nicorod                                                                                                                                                                                                                # !/bin/bash

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


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        