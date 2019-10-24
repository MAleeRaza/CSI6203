#!/bin/bash

#Module 6
# Author: Ali Raza
# Edith Cowan University, SYD Campus

download()
{
    read -p "Please Type the URL of a file to download: " url
    read -p "Type Download location: " path
    wget "$url" -nv -P "$path"
}

echo "Running..."
download
echo "download completed"