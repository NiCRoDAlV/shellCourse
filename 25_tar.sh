#!/bin/bash
#Programa para empaquetar archivos con tar. 

#Autor: Nicolás Rodríguez - @chino.rodgz



echo " Empaquetamiento de los scripts en la carpeta con tar "
#c-> create, v->verbose (Para ver en la consola lo que empaqueto) , f->file

tar -cvf shellCourse.tar *.sh




