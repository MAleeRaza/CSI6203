#!/bin/bash

# Module 9
# Author: Ali Raza
# Edith Cowan University, SYD Campus

#PROGRAM TO PRINT DATA AS IT IS WITH A FILED SEPARATER
echo "Your shopping List: "

awk 'BEGIN {
    FS=","
}

{
    print $1
}' shopping.csv

