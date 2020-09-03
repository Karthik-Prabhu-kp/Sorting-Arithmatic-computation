#!/bin/bash -x

read -p "enter first value " a
read -p "enter second value " b
read -p "enter third value " c

operation1=$(( $a+$b*$c ))
operation2=$(( $a*$b+$c ))
operation3=$(( $c+$a/$b ))
operation4=$(( $a%$b+$c ))

declare -A Comp
comp[op1]=$operation1
comp[op2]=$operation2
comp[op3]=$operation3
comp[op4]=$operation4

count=i

array[((i))]=${comp[op1]}
array[((i++))]=${comp[op2]}
array[((i++))]=${comp[op3]}
array[((i++))]=${comp[op4]}

temp=0

for ((i=0; i<=4 ; i++))
do
   for((j=i+1; j<4; j++))
   do
   if [[ ${array[i]} -lt ${array[$((j+1))]} ]]
   then
         temp=${array[i]}
         Array[$i]=${array[$((j+1))]}
         Array[$((j+1))]=$temp
   fi
   done
done

echo "descending ${array[@]}"


for ((i=0; i<=4 ; i++))
do
   for((j=i+1; j<4; j++))
   do
   if [[ ${array[i]} -gt ${array[$((j+1))]} ]]
   then
         temp=${array[i]}
         Array[$i]=${array[$((j+1))]}
         Array[$((j+1))]=$temp
   fi
   done
done

echo "assending ${array[@]}"
