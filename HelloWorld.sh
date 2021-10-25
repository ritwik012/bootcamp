arr=unset
greatest=0
secondGreatest=0
smallest=1000
secondSmallest=1000
for((i=0;i<=10;i++))
do
echo ${#arr[@]}
num =$((RANDOM%900+100))

arr[$1]=$num
if[ $num -ge $greatest ]
then
secondGreatest=$greatest
greatest=$num
fi
if[ $num -le $smallest ]
then
secondSmallest=$smallest
smallest=$num
fi
done

echo $len
echo $secondGreatest $secondSmallest


