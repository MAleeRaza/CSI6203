#!/bin/bash

# Module 9
# Author: Ali Raza
# Edith Cowan University, SYD Campus

echo "Your shopping List: "

awk 'BEGIN {
    FS=","; currency="$"; 
    print "Items       | Quantity | Price    |"
    print "------------|----------|----------|" 
}

{
    total=$2 * $3
    printf "%-12s| %-2d       |%c%05.2f    |\n", $1, $2, currency, $3, currency, total
        totalPrice=totalPrice + $3;
        Quantity=Quantity + $2;

        GrandTotal=GrandTotal + total;
}
    END{
        print "------------|----------|----------|"
        printf "GrandTotal: | %d       | %c%05.2f   |\n", Quantity, currency, GrandTotal


}' shopping.csv
