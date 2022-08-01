#!/bin/bash

text=${1:-"DevOps"}

curl "https://es.wikipedia.org/wiki/DevOps"  > fichero1.txt

grep -n $text fichero1.txt > fichero.txt

rm -rf fichero1.txt
#echo $text
grep -o -e ^[0-9]* fichero.txt