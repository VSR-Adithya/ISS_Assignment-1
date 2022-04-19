#!/bin/bash
touch textfile.txt
file="$1"

printf "Number of Words = " 
wc -w < $file