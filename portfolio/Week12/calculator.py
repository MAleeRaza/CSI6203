#!/usr/bin/python3

#Module 4
# Author: Ali Raza
# Edith Cowan University, SYD Campus

num1 = int(input("please type first number:")) 
num2 = int(input("please type second number:")) 

 print ("Enter Operator:> +, -, *, /")

Operation = int(input("Select Operation:")) 

case $Operation in
+) 
print ("Answer is = \\033[34m$((num1+num2))\\033[0m")
;;
-) 
print ("Answer is =  \\033[32m$((num1-num2))\\033[0m;")
;;
*) 
print ("Answer is =  \\033[31m$((num1*num2))\\033[0m;")
;;
/) 
print ("Answer is =  \\033[33m$((num1/num2))\\033[0m;")
;;
esac