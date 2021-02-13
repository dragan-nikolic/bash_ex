#!/bin/bash
# Usage: $ ./bash_arguments.sh today is beautiful day yes it is indeed
echo "The number of arguments is: $#"
a=${@}
echo "The total length of all arguments is: ${#a}: "
count=0
for var in "$@"
do
    echo "The length of argument '$var' is: ${#var}"
    (( count++ ))
    (( accum += ${#var} ))
done
echo "The counted number of arguments is: $count"
echo "The accumulated length of all arguments is: $accum"

echo "get all arguments"
echo $@

echo "get all arguments except first one"
echo ${@:2}

echo "get 3rd and 4th argument"
echo ${@:3:2}

echo "get second argument"
echo $2
