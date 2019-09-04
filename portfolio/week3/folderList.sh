#!/bin/bash

###reading or getting value from the keybaord in the foldername variable
read -p "type the name of folder to Display content: " foldername
###making folder with the name which entered by keyboard with "mkdir" command
cd $foldername ### Variable for getting Folder Name from User to check
ls -a ### list all the * inside

### For list all with permissions > ls -al ### To 