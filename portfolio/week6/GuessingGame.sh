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

 input=0;
while (( $input != 42)); do

   getNumber "please type a number between 1 and 100" 1 100
    input=$REPLY;
        if (( $REPLY == 42 )); then
        
            echo "Correct :) You wins Program Terminated!"
        
        elif (( $REPLY < 42 )); then
            
            echo "Too low!"
        
        else (( $REPLY > 42 ));
        
            echo "Too high!"
        
        fi

done