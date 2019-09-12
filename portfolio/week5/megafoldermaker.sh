#!/bin/bash
#If there aren't two arguments to the script

read -p "enter first folder do you want to create from:> " start
read -p "enter last folder:> " end


if(($start==0 || $end==0 || $start>=$end)); then
#Print an error and exit
echo "Error, Please enter valid numbers" && exit 1
fi
#For every number between the first argument and the last
for ((i =$start; i <= $end; i++))
do
#Create a new folder for that number
echo "Creating directory number $i"

mkdir "week$i"

done