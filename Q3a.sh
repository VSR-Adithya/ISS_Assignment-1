#!/bin/bash
touch textfile.txt
file="$1"

printf "Number of Characters = " 
wc -c < $file