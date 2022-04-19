#!/bin/bash
touch textfile.txt
file="$1"

printf "Number of Lines = " 
wc -l < $file