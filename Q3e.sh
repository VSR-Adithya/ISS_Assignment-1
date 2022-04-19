#!/bin/bash
file="$1"

printf "\n=================\n"
grep -wo '[[:alnum:]]\+' $file  | sort | uniq -c |
while read count word
do
    echo ${word}: ${count}
done
printf "=================\n"