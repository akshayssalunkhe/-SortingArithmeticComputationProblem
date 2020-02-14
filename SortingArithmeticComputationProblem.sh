#!/bin/bash -x
echo "Welcome To Sorting Arithmetic Computation Problem"

#DECLARING DICTIONARY
declare -A resultDictionary

#VARIABLES
count=0;
result=0;
position=1;
firstInput=0;
secondInput=0;
thirdInput=0;
firstResult=0;
secondResult=0;
thirdResult=0;

#TAKING THREE INPUTS FROM USER
read -p "Enter Value Of firstInput: " firstInput
read -p "Enter Value Of secondInput: " secondInput
read -p "Enter Value Of thirdInput: " thirdInput

#COMPUTING FIRST ARITMETIC EXPRESSION
firstResult=`echo " $firstInput+$secondInput*$thirdInput" | bc`

#COMPUTING SECOND ARITHMETIC EXPRESSION
secondResult=`echo "scale=2; $firstInput*$secondInput+$thirdInput" | bc`

#COMPUTING THIRD ARITHMETIC EXPRESSION
thirdResult=`echo "scale=2; $thirdInput+$firstInput/$secondInput" | bc`

#COMPUTING FOURTH ARITHMETIC EXPRESSION
fourthResult=`echo " $firstInput%$secondInput+$thirdInput" | bc`

#STORING RESULTS IN DICTIONARY
resultDictionary[result$((position++))]=$firstResult
resultDictionary[result$((position++))]=$secondResult
resultDictionary[result$((position++))]=$thirdResult
resultDictionary[result$((position++))]=$fourthResult

#READING VALUES FROM DICTIONARY TO ARRAY
for (( index=1; index<=${#resultDictionary[@]}; index++ ))
do
	resultArray[index]=${resultDictionary[result$((index))]}
done
