#!/bin/bash

#Module 3
# Author: Ali Raza
# Edith Cowan University, SYD Campus

read -p "type the file name to read:> " fileName
#if the name is a valid directory
if [ -d $fileName ]
then
echo "file name $fileName found"
else
echo "Sorry! File not found"

fi