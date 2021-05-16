#!/bin/bash -x
declare -A dict
dict[H]=0
dict[T]=0

for ((var=1; var<=10; var++))
do
toss=$((RANDOM%2))

if [ $toss -eq 0 ]
then
((dict[H]++))
else
((dict[T]++))
fi
done
echo percentage of heads $((${dict[H]}*10))
echo percentage of tails $((${dict[T]}*10))
