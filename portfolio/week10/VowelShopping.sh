#!/bin/bash

# Module 10
# Author: Ali Raza
# Edith Cowan University, SYD Campus

echo "YOur shopping List: "

awk 'BEGIN {
    FS=","

}
    /^[aeiou]/
        {
        print "WHich start with a Vowel: " $1
        }

        /[a-z] [a-z]/
        {
            print "has more than one word: " $1
        

        if($3==int($3))
        {
            print "Whole number price: " $1
        }


    }' /home/alee/CSI6203/portfolio/week9/shopping.csv