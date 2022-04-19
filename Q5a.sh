#!/bin/bash
$string
read string;
for ((index=0; index<${#string};index++))
do
new_string="$new_string${string:`expr ${#string}-$index-1`:1}"
done
echo $new_string 