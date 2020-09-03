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

i=0
array[((i++))]=comp[op1]
array[((i++))]=comp[op2]
array[((i++))]=comp[op3]
array[((i++))]=comp[op4]


