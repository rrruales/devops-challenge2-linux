#!/bin/bash
# Script para automatizar descarga y busqueda de texto en archivo

wget -O webPage.html https://es.wikipedia.org/wiki/DevOps

if [[ -e "webPage.html" ]];
then
    echo "¡Archivo creado correctamente!"
    grep -w "$@" webPage.html
else
    echo "Ocurrió un error en la creación del archivo"
fi

exit