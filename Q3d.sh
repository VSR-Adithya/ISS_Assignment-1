#!/bin/bash
touch textfile.txt
file="$1"

touch temp_file.txt
temp_file="temp_file.txt"
i=0

printf "\n=================\n"
while read line
do
    let $((i++))
    echo $line > $temp_file
    printf "Number of Words in line $i: " 
    wc -w <$temp_file
done < $file
rm $temp_file
printf "=================\n"