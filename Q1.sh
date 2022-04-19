#!/bin/bash

file="$1"
touch tempfile.txt
tempfile="tempfile.txt"

grep . $file > $tempfile
awk '!no_of_repetitions[$0]++' $tempfile > $temp_file

while read line
do
echo $line 
done <$tempfile
rm $tempfile