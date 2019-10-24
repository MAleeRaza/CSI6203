#!/bin/bash

# Module 9
# Author: Ali Raza
# Edith Cowan University, SYD Campus

#PROGRAM TO PRINT DATA AS IT IS WITH A FILED SEPARATER
echo "Your shopping List: "

awk 'BEGIN {
    FS=","; currency="$"; 
    print "Items       | Quantity | Price    |"
    print "------------|----------|----------|" 
}

{
    printf "%-12s| %-2d       |%c%05.2f    |\n", $1, $2, currency, $3
}' shopping.csv
