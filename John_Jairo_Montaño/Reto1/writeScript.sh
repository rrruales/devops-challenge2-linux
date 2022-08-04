#!/bin/bash
# Script para automatizar texto entre archivos
if [[ -n "$@" ]];
then
    echo "$@" >> foo/dummy/file1.txt
else
    echo "Que me gusta bash!!!!" >> foo/dummy/file1.txt
    echo "Que me gusta bash!!!!" >> foo/empty/file2.txt    
fi  

exit