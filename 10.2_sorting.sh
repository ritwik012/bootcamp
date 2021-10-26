#!/bin/bash -x

declare -A valuesDict

read -p "enter value of a" a
read -p "enter value of b" b
read -p "enter value of c" c

valuesDict[x]=$((a+b*c))
valuesDict[y]=$((a*b+c))
valuesDict[z]=$((c+a/b))

valuesArr[0]=$((a+b*c))
valuesArr[1]=$((a*b+c))
valuesArr[2]=$((c+a/b))


#valuesArr=${valuesDict[@]}


echo "valuesDict:"${valuesDict[@]}


echo "valuesAATrr" ${valuesArr[@]}
 # Performing Bubble sort
 for((i=0; i<3; i++))
 do
    for((j=0; j<3-i-1; j++))
    do
        
        if [[ ${valuesArr[j]} -gt ${valuesArr[$((j+1))]} ]]
        then
            # swap
            temp=${valuesArr[j]}
            valuesArr[j]=${valuesArr[$((j+1))]}
            valuesArr[$((j+1))]=$temp
        fi




    done
done
echo "sorted" ${valuesArr[@]}
