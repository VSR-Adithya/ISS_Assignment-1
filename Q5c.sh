#!/bin/bash
$string
read string;
string_length=${#string}
let half_string_length=${#string}/2
for ((index=0; index<$string_length;index++))
do
    if [ $index -lt $half_string_length ];
    then
    new_string="$new_string${string:(( ${#string}/2-$index-1 )):1}"
    else 
    new_string="$new_string${string:$index:1}"
    fi
done
echo $new_string