#!/bin/bash

# Module 10
# Author: Ali Raza
# Edith Cowan University, SYD Campus

echo "Recent Auth Log"

awk 'BEGIN{
    FS=" ";
    var_d=$(date)
    }

    /root/
{
        if ($1 == var_d($1))
        {
            print $1, $2, $3
            printf "%s \n", $5
            for (i = 7; i <= NF; i++)
                {
                    printf "%s", $1
                }
        }
        print "\n"


}' /var/log/auth.log