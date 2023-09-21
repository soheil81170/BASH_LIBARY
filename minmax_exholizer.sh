#!/bin/bash

read -p "Enter a number: " first_number

# Initialize min and max with the first input value
min=$first_number
max=$first_number

for value in {1..5}
do
    read -p "Enter a number: " number
    integer_value=$((number))

    if [ $integer_value -lt $min ]
    then
        min=$number
    elif [ $integer_value -gt $max ]
    then
        max=$number
    fi
    
done

echo  Minimum Number: "$min"
echo  Maximum Number: "$max"
