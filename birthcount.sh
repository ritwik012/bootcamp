#!/bin/bash


declare -A birthCount


#The index 0 corresponds to jan-92, 1 to feb-92 on till dec-93
for((i=0;i<24;i++))
do
birthCount[$i]=0
^cdone




for((i=0;i<50;i++))
do


bornOn=$((RANDOM%24))


echo $bornOn
#echo ${birthCount[@]}
#echo ${!birthCount[@]}




currVal=${birthCount[$bornOn]}
echo "currVal" $currVal
birthCount[$bornOn]=$((currVal++))


done


echo ${birthCount[@]}
echo ${!birthCount[@]}
