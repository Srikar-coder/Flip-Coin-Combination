#!/bin/bash -x
declare -A dict
dict[HHH]=0
dict[HHT]=0
dict[HTH]=0
dict[HTT]=0
dict[TTT]=0
dict[TTH]=0
dict[THT]=0
dict[THH]=0

for ((var=1; var<=10; var++))
do
toss=$((RANDOM%2))
toss2=$((RANDOM%2))
toss3=$((RANDOM%2))
if [[ $toss -eq 0 && $toss2 -eq 0 && $toss3 -eq 0 ]]
then
((dict[HHH]++))
elif [[ $toss -eq 0 && $toss2 -eq 0 && $toss3 -eq 1 ]]
then
((dict[HHT]++))
elif [[ $toss -eq 0 && $toss2 -eq 1 && $toss3 -eq 0 ]]
then
((dict[HTH]++))
elif [[ $toss -eq 0 && $toss2 -eq 1 && $toss3 -eq 1 ]]
then
((dict[HTT]++))
elif [[ $toss -eq 1 && $toss2 -eq 1 && $toss3 -eq 1 ]]
then
((dict[TTT]++))
elif [[ $toss -eq 1 && $toss2 -eq 1 && $toss3 -eq 0 ]]
then
((dict[TTH]++))
elif [[ $toss -eq 1 && $toss2 -eq 0 && $toss3 -eq 1 ]]
then
((dict[THT]++))
elif [[ $toss -eq 1 && $toss2 -eq 0 && $toss3 -eq 0 ]]
then
((dict[THH]++))
fi
done
echo  HHH $((${dict[HHH]}*10))
echo  HHT $((${dict[HHT]}*10))
echo  HTH $((${dict[HTH]}*10))
echo  HTT $((${dict[HTT]}*10))
echo  TTT $((${dict[TTT]}*10))
echo  TTH $((${dict[TTH]}*10))
echo  THT $((${dict[THT]}*10))
echo  THH $((${dict[THH]}*10))
