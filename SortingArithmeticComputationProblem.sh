#!/bin/bash -x

echo "Welcome To Sorting Arithmetic Computation Problem"

#TAKING THREE INPUTS FROM USER
read -p "Enter Value Of a: " a
read -p "Enter Value Of b: " b
read -p "Enter Value Of c: " c

#COMPUTING FIRST ARITMETIC EXPRESSION
result1=$(($a+$b*$c))
echo "result1 = $result1"
