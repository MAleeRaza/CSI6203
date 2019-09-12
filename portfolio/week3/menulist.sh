#!/bin/bash

echo "Choose the Menu to proceed: "

echo "1.Create a folder
2.List files in a folder
3.Copy a folder
4.Save a password
5.Read a password
6.Print newest file"

read -p "Type any number to Proceed:> " number

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

exit 0