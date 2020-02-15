#!/bin/bash -x
echo "Welcome To Sorting Arithmetic Computation Problem"

#DECLARING DICTIONARY
declare -A resultDictionary

#VARIABLES
result=0;
position=1;
firstInput=0;
secondInput=0;
thirdInput=0;
firstResult=0;
secondResult=0;
thirdResult=0;
temp=0;

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
for (( index=0; index<${#resultDictionary[@]}; index++ ))
do
	resultArray[index]=${resultDictionary[result$((index+1))]}
done

#SORTING RESULT ARRAY IN DESCENDING ORDER
function getDescendingSort() {
	for(( i=0; i<${#resultArray[@]}; i++ ))
	do
		for(( j=0; j<${#resultArray[@]}-1; j++ ))
		do
			if (( $(echo "${resultArray[j]} < ${resultArray[j+1]}" | bc -l) ))
			then
				temp=${resultArray[j]}
				resultArray[j]=${resultArray[j+1]}
				resultArray[j+1]=$temp
			fi
		done
	done
echo ${resultArray[@]}
}

#CALLING DESCENDING SORT FUNCTION OF ARRAY
getDescendingSort ${resultArray[@]}

#SORT FUNCTION OF DICTIONARY
function getDescendingSortDictionary() {
	for(( i=1; i<${#resultDictionary[@]}; i++ ))
	do
		for(( j=1; j<${#resultDictionary[@]}; j++ ))
		do
			if (( $(echo "${resultDictionary[result$((j))]} < ${resultDictionary[result$((j+1))]}" | bc -l) ))
			then
				temp=${resultDictionary[result$((j))]}
				resultDictionary[result$((j))]=${resultDictionary[result$((j+1))]}
				resultDictionary[result$((j+1))]=$temp
			fi
		done
	done
#DISPLAYING VALUES OF DICTIONARY
	echo ${resultDictionary[@]}
#DISPLAYING KEYS OF DICTIONARY
	echo ${!resultDictionary[@]}
}

#CALLING DESCENDING SORT FUNCTION OF DICTIONARY
getDescendingSortDictionary ${resultDictionary[@]}


#SORTING RESULT ARRAY IN ASCENDING ORDER
function getAscendingSort() {
	for(( i=0; i<${#resultArray[@]}; i++ ))
	do
		for(( j=0; j<${#resultArray[@]}-1; j++ ))
		do
			if (( $(echo "${resultArray[j]} > ${resultArray[j+1]}" | bc -l) ))
			then
				temp=${resultArray[j]}
				resultArray[j]=${resultArray[j+1]}
				resultArray[j+1]=$temp
			fi
		done
	done
echo ${resultArray[@]}
}

#CALLING ASCENDING SORT FUNCTION OF ARRAY FUNCTION
getAscendingSort ${resultArray[@]}


#SORT FUNCTION OF DICTIONARY
function getAscendingSortDictionary() {
	for(( i=1; i<${#resultDictionary[@]}; i++ ))
	do
		for(( j=1; j<${#resultDictionary[@]}; j++ ))
		do
			if (( $(echo "${resultDictionary[result$((j))]} > ${resultDictionary[result$((j+1))]}" | bc -l) ))
			then
				temp=${resultDictionary[result$((j))]}
				resultDictionary[result$((j))]=${resultDictionary[result$((j+1))]}
				resultDictionary[result$((j+1))]=$temp
			fi
		done
	done
#DISPLAYING VALUES OF DICTIONARY
	echo ${resultDictionary[@]}
#DISPLAYING KEYS OF DICTIONARY
	echo ${!resultDictionary[@]}
}

#CALLING ASCENDING SORT FUNCTION OF DICTIONARY
getAscendingSortDictionary ${resultDictionary[@]}
