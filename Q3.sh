#!/bin/bash
touch textfile.txt
file="textfile.txt"
cat > $file
while read text
do
    echo $text
done
printf "Number of Characters = " wc -c < $file
printf "Number of Lines = " wc -l < $file
printf "Number of Words = " wc -w < $file
touch temp_file
i=0
while read line
do
    let $((i++))
    echo $line > temp_file
    printf "Number of Words in line $i\n" wc -w <temp_file
done < $file
rm temp_file
grep -wo '[[:alnum:]]\+' $file  | sort | uniq -cd |
while read count word
do
    echo ${word}: ${count}
done