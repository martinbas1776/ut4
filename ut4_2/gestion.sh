#!/bin/bash

export GDK_BACKEND=x11

nombre_proceso=$1

echo "el nombre del proceso es: $nombre_proceso"

pidof $nombre_proceso
if [[ $? == 0 ]]; then
	pkill -f $nombre_proceso
else
	$nombre_proceso
fi
