# #!/bin/bash

#Parameter Expansion
text=${1:-"Que me gusta la bash!!!"}

FILE1=./foo/dummy/file1.txt
FILE2=./foo/empty/file2.txt

if [ -d ${FILE1:0:12} ]
then
  if [ -e $FILE1 ] && [ $(cat $FILE1 | wc -l) ] 
  then
    text=$(cat $FILE1)
  else
    touch $FILE1
    echo $text > $FILE1
  fi
  #echo ${FILE1//[1]/2}
  if [ -e ${FILE1//[1]/2} ] 
  then
    cat $FILE1 > ${FILE1//[1]/2}
  else
    touch ${FILE1//[1]/2}
    cat $FILE1 > ${FILE1//[1]/2}
    #cat ${FILE1//[1]/2}
  fi
else
  mkdir -p ${FILE1:0:12}
  touch $FILE1 ${FILE1//[1]/2}
  echo $text > $FILE1
fi

if [ -d ${FILE2:0:12} ]
then
  mv ${FILE1//[1]/2} $FILE2
else
  mkdir -p ${FILE2:0:12}
  cat $FILE1 > ${FILE1//[1]/2}
  mv ${FILE1//[1]/2} $FILE2
fi
#echo $text