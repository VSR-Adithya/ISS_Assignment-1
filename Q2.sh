#!/bin/bash
file="$1"
out_file="speech.txt"
>$out_file
while read line
do
    echo $line | awk 'BEGIN{FS="~"} {printf "%s once said, \"%s\"\n ",$2, $1 }' >> $out_file
done < $file