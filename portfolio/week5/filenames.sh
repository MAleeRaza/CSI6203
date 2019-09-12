#!/bin/bash

#Module 5
# Author: Ali Raza
# Edith Cowan University, SYD Campus

INI_IFS=IFS
TFILE=$'\n' ##ISF Seprater to read line by line in a file

echo "Hi! TO Check valid file or directory, please give me text file"

read -r txtFile ## Just to get file
echo $TFILE

for file in $(cat $txtFile)
do
    #echo $file
    if [ -d "$file" ]
     then 
        echo "$file is a directory" 
    elif [ -f "$file" ]
        then
        echo "$file is a file"

    else
        echo " $file Niether file nor a directory!"
    fi 

done
IFS=INI_IFS
exit 0
