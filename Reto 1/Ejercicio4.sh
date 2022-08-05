#!/bin/bash -e

wget -E https://es.wikipedia.org/wiki/DevOps

if [ -z "$1" ] 
then
    echo 'no se introdujo parametro'
else
    grep -c $1 ./DevOps.html
fi