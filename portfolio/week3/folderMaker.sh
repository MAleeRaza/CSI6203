#!/bin/bash

#Module 3
# Author: Ali Raza
# Edith Cowan University, SYD Campus

###reading or getting value from the keybaord in the foldername variable
read -p "type the name of folder you whould like to create: " foldername
###making folder with the name which entered by keyboard with "mkdir" command
mkdir $foldername