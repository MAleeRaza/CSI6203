#!/bin/bash

# Module 7
# Author: Ali Raza
# Edith Cowan University, SYD Campus

../week6/triangle.sh | sed -e '
s/the area for a triangle with //
s/and //
s/is/Area:/
s/h/H/
s/b/B/
'
