#!/bin/bash

# Module 10
# Author: Ali Raza
# Edith Cowan University, SYD Campus


curl -s htts://www.ecu.edu.au/degrees/study-area/science |

#using grep, sed and awk to find all the descipline areas
grep 'www.ecu.edu.au/degrees/study-area/science ' |
sed 's/ <a href=\"https:\/\/www.ecu.edu.au\/degrees\study-areas\/science\//""/g
s/title=.*>//g
s/-/ /g' |

awk 'BEGIN {
    RN=3;
    FS="\""
    }

{
    if (NR >4 && NR <14)
            printf "% \n", $3
}'