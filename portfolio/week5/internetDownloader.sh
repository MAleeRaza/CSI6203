#!/bin/bash

#Module 5
# Author: Ali Raza
# Edith Cowan University, SYD Campus

ping -c3 8.8.8.8

    if [ $? -eq 0 ]
        then
        echo "Internet connected!"
    else 
        echo "No Internet!"
        exit 1
    fi

    flag_exit=0

    until(($flag_exit==1))
    do
        read -p "Please enter URL to Download or type "exit" for Exit:> " getURL
        echo $getURL
        if [ $getURL == "exit" ]
            then 
            flag_exit=1; 
            cd ; clear # Clear and whole Reset Screen
        else 
            wget $getURL
        fi
    done

    exit 0