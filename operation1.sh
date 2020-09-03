#!/bin/bash -x

read -p "enter first value " a
read -p "enter second value " b
read -p "enter third value " c

operation1=$(( $a+$b*$c ))
