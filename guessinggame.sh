#!/bin/bash
echo "Bienvenido al juego de la adivinanza de archivos de Unix"

shopt -s nullglob
numeroarchivos=(*)
numeroarchivos=${#numeroarchivos[@]}

function preguntar { 
	echo "Intenta adivinar el numero de archivos en la direccion actual"
    
	read intento

}

preguntar
while [[ $intento -ne $numeroarchivos ]]
do
	if [[ $intento -gt $numeroarchivos ]]
	then
		echo "Muy arriba"
		
	else
		echo "Muy abajo"
	fi
	preguntar
done

echo "Muy bien! Haz adivinado con exito el numero de archivos!"