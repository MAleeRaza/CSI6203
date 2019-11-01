#!/bin/bash

# Module 10
# Author: Ali Raza
# Edith Cowan University, SYD Campus

echo "Your shopping List: "

awk 'BEGIN {
    FS=","; Total=0; QTY=0; currency="$"; 
    print "Items       | Quantity | Price    |    TOTAL   | Comment"
    print "------------|----------|----------|------------|--------" 
}

        {
            if(SUM > 5)
            {
            if($2 > 5)
                Comment="Are you ok with this much? "
                else
                Comment="Bit Expensive! Sure to Continue..? "
            }
            else if(TOTAL <3)
            Comment="Hmmmm good cheaper! "
            else
            Comment=""
        

    
    printf "%-13s| %-2d         | %c%05.2f  | %c%05.2f  | %s \n" $1 $2 currency $2*$3 Comment currency TOTAL+$3 currency SUM+TOTAL
    }
    END{ printf "Total:         | $-2d      | %c%-05.2f | %c%05.2f \n" QTY currency TOTAL currency SUM
        

}' /home/alee/CSI6203/portfolio/week9/shopping.csv