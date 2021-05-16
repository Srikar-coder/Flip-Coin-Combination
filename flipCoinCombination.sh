#!/bin/bash 
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
declare -A dict2
dict2[HH]=0
dict2[TT]=0
dict2[HT]=0
dict2[TH]=0

for ((var=1; var<=10; var++))
do
toss=$((RANDOM%2))
toss2=$((RANDOM%2))
if [[ $toss -eq 0 && $toss2 -eq 0 ]]
then
((dict2[HH]++))
elif [[ $toss -eq 1 && $toss2 -eq 0 ]]
then
((dict2[TH]++))
elif [[ $toss -eq 0 && $toss2 -eq 1 ]]
then
((dict2[HT]++))
else
((dict[2TT]++))
fi
done
echo HH $((${dict2[HH]}*10))
echo TT $((${dict2[TT]}*10))
echo HT $((${dict2[HT]}*10))
echo TH $((${dict2[TH]}*10))

declare -A dict3
dict3[H]=0
dict3[T]=0

for ((var=1; var<=10; var++))
do
toss=$((RANDOM%2))

if [ $toss -eq 0 ]
then
((dict3[H]++))
else
((dict3[T]++))
fi
done
echo H $((${dict3[H]}*10))
echo T $((${dict3[T]}*10))

maxToss=$(printf '%s\n' "${dict3[@]}" | sort -n | tail -1 )
maxToss2=$(printf '%s\n' "${dict2[@]}" | sort -n | tail -1 )
maxToss3=$(printf '%s\n' "${dict[@]}" | sort -n | tail -1 )
for key in ${!dict[@]}
do
maxKey=${dict[$key]}
if [ $maxKey -eq $maxToss3 ]
then
echo maximum combination is $key
break
fi
done
for key in ${!dict2[@]}
do
maxKey=${dict2[$key]}
if [ $maxKey -eq $maxToss2 ]
then
echo maximum combination is $key
break
fi
done
for key in ${!dict3[@]}
do
maxKey=${dict3[$key]}
if [ $maxKey -eq $maxToss ]
then
echo maximum combination is $key
break
fi
done
