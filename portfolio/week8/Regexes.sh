#!/bin/bash

# Module 8
# Author: Ali Raza
# Edith Cowan University, SYD Campus

echo 1
grep -r -I '.*sed.*'
echo 2
grep -r -I '^m.*'
echo 3
grep -E -r -I '[[:digit:]]{3,}'
echo 4
grep -r -I -E '^[aeiouAEIOU].*'
echo 5
grep -r -E -I '(while)|(for)|(until)'
echo 6
grep -r -I 'echo.*".* .* .*"'