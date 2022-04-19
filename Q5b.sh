#!/bin/bash
$string
read string;
for ((index=0; index<${#string};index++))
do
new_string_a="$new_string_a${string:`expr ${#string}-$index-1`:1}"
done

for ((index=0; index<${#new_string_a};index++))
do
var=$(printf '%d' "'${new_string_a:$index:1}'") 
let var=$var+1
printf "\x$(printf '%x' "$var")" 
done