#!/bin/bash

#Module 5
# Author: Ali Raza
# Edith Cowan University, SYD Campus

echo -e " \033[32mCHOOSE THE MENU TO PROCEED:\033[0m "

echo "1 to Create a folder
2 to show List files in a folder
3 to Copy a folder
4 to Save a password
5 to Read a password
6 to Print newest file"
echo -e " \033[31mType Exit to Quit\033[0m "

read -p "Type any number to Proceed or exit to quit:> " number

while (( $number != "exit" ))
do
    
        case $number in

        1) ~/CSI6203/portfolio/week3/folderMaker.sh
        ;;

        2) ~/CSI6203/portfolio/week3/folderList.sh
        ;;

        3) ~/CSI6203/portfolio/week3/folderCopier.sh
        ;;

        4) ~/CSI6203/portfolio/week3/savePassword.sh
        ;;

        5) cd ~/CSI6203/portfolio/week3/temp ;cat secret.txt
        ;;

        6) cd ~/CSI6203/portfolio/week3/ ;find / -cnewer *.sh
        ;;
    
        esac
 
done
exit 0