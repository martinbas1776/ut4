#!/bin/bash

# Mostrar un cuadro de diálogo de aceptar/cancelar
pkill -f menuPIDS
zenity --question --title="Confirmar acción" --text="¿Estás seguro de que quieres salir?"

# Comprobar el código de salida para determinar qué botón se presionó
if [[ $? == 0 ]]; then
    echo "El usuario ha aceptado."
    pkill -f menuPIDS
else
    echo "El usuario ha cancelado."
    bash menu.sh
fi
