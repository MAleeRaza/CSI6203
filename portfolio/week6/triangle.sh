#!/bin/bash

#Module 6
# Author: Ali Raza
# Edith Cowan University, SYD Campus

#Main Function
func()
{
    
    for (( base = 1; base <= 10; base++ ))
    do
        
            for (( height = 1; height <= 10; height++ ))
            do
            area=$( triangleArea $base $height ) #Function Call with values
                echo "the area of triangle with base $base and height $height is $area"
            
            done
        
    done    

}

triangleArea()
{
    echo $(( $1*$2/2 ))
}

func