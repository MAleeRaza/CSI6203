#!/bin/bash

read -p "Enter first Number:> " num1
read -p "Enter second Number:> " num2

echo "Enter Operator:> +, -, *, /"

read Operation

case $Operation in
+) 
echo -e "Answer is = \\033[34m$((num1+num2))\\033[0m"
;;
-) 
echo -e "Answer is =  \\033[32m$((num1-num2))\\033[0m;"
;;
*) 
echo -e "Answer is =  \\033[31m$((num1*num2))\\033[0m;"
;;
/) 
echo -e "Answer is =  \\033[33m$((num1/num2))\\033[0m;"
;;
esac
