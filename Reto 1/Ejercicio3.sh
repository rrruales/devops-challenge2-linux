#!/bin/bash
f1='foo/dummy/file1.txt'
f2='foo/dummy/file2.txt'
texto='Que me gusta bash!!!!'

mkdir foo
mkdir foo/dummy
mkdir foo/empty 

if [ -z $1 ]; then
    echo $texto > $f1
else    
    echo $1 > $f1
fi

echo '' > $f2
cp $f1 $f2
mv $f2 foo/empty
exit 0