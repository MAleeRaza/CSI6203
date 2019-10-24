#!/bin/bash

# Module 7
# Author: Ali Raza
# Edith Cowan University, SYD Campus

download()
{
    read -p "Type the URL of a file to download: " url
    read -p "Type the download location: " path
    wget "$url" -nv -P "$path"
}

download

# There are many ways to do this for example regex in Module 8

if [ -f $path/index.html ]; then
    title=$(sed -n '/<title>/ {
                s/<title>//
                s/<\/title>//
                p
            }' $path/index.html)
    echo "Downloaded a page with the title: $title"
else
    echo "No index.html found."
fi
