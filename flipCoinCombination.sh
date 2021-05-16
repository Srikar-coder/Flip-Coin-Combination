#!/bin/bash -x
declare -A dict
dict[HH]=0
dict[TT]=0
dict[HT]=0
dict[TH]=0

for ((var=1; var<=10; var++))
do
toss=$((RANDOM%2))
toss2=$((RANDOM%2))
if [[ $toss -eq 0 && $toss2 -eq 0 ]]
then
((dict[HH]++))
elif [[ $toss -eq 1 && $toss2 -eq 0 ]]
then
((dict[TH]++))
elif [[ $toss -eq 0 && $toss2 -eq 1 ]]
then
((dict[HT]++))
else
((dict[TT]++))
fi
done
echo percentage of two heads $((${dict[HH]}*10))
echo percentage of two tails $((${dict[TT]}*10))

echo percentage of heads tails $((${dict[HT]}*10))
echo percentage of tails heads $((${dict[TH]}*10))
