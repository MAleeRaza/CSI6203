#!/bin/bash

#Module 6
# Author: Ali Raza
# Edith Cowan University, SYD Campus

printError()
{
    echo -e "\033[31mERROR:\033[0m $1"
}



#This functionwill get a value between the 2nd and 3rd arguments
getNumber()
{
    read -p "$1: "
    while (( $REPLY < $2 || $REPLY > $3)); do

    printError "Input must be between $2 and $3 "
    read -p "$1: " 
    done
}

getNumber "please type a number between 1 and 10" 1 10
echo "First value marked as correct :)"

getNumber "please type a number between 50 and 100" 50 100
echo "Thank you! second task is also correct:)"
