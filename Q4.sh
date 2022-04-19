#!/bin/bash
while read line
do
    Array=("${Array[*]}" $line)
done

array_size=${#Array[*]}
for ((j=0; j < $array_size ; j++))
do
    for ((i=0; i < $array_size-j-1 ; i++))
    do
        if [[ ${Array[$i]} -le ${Array[ (($i+1)) ]} ]]
        then
            continue
        else
            {
                temp=${Array[$i]};
                Array[$i]=${Array[ (($i+1)) ]}
                Array[ (($i+1)) ]=$temp
            }
        fi
    done
done

echo ${Array[@]}