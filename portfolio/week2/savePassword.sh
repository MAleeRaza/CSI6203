#!/bin/bash

#Module 2
# Author: Ali Raza
# Edith Cowan University, SYD Campus

read -p "Give your required foler Name:> " folderName
mkdir $folderName

read -s -p "Type Password for your folder:> " pass

cd $folderName
touch secret.txt
echo $pass > secret.txt

exit 0